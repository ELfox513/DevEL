--[[
Static Gems

Replaces DUMMY tiles with gems that can be attacked by towers.
Gems use invisible generic enemies on their part.

StaticGemEnemies.createGems() can be called at any time to initialize gem visuals,
then StaticGemEnemies.spawnGemEnemies() will spawn actual enemies so that towers can attack them.

Gems will inherit DUMMY tile color.
DUMMY tile data:
  - sType = "staticGemEnemy"
  - sGemShape - shape of the gem ("triangle" by default), will use "gem-[shape]-base" and "gem-[shape]-overlay" textures to draw the gem
  - iXp - xp given to towers for destroying the gem
  - iHp - gem HP
  - iScore - score given for destroying the gem
  - iBounty - coins given for killing the enemy
  - SAction - script that'll be called when the gem is destroyed, accepts varargs: gem, enemy, tower, damageType, fromAbility = ... (globals like SP can also be used)
  - SEnemyModifiers - script that'll be called for each enemy that is being created, accepts varargs: enemy, gem, tile = ... (+ globals)
--]]

if bind == nil then dofile("scripts/utils/binder.lua") end

StaticGemEnemies = {}
StaticGemEnemies.UDI_GEM = 1500 + 1 -- userDataIndex used to store data in enemy
StaticGemEnemies.gems = {}

local aimTargetResetCounter = 1
local targetResetFilter = nil

local sideMenuContainer = nil
local sideMenuTitleLabel = nil
local sideMenuDescriptionLabel = nil
local sideMenuLastStateHash = -1

local createEnemy = function(speed, health, killScore, killBounty, killExp)
    local creep = managers.EnemyManager.F.GENERIC:obtain()
    creep:setSpeed(speed)
    creep.maxHealth = health;
    creep:setHealth(health);
    creep.killScore = killScore;
    creep.bounty = killBounty;
    creep:setKillExp(killExp);

    creep.spawnTile = SP.map:getMap().spawnTiles:first()
    SP.enemy:register(creep, nil, 5, 0)

    return creep
end

local loadGemTextures = function(gem)
    if gem.textureBase == nil then
        gem.textureBase = managers.AssetManager:getTextureRegion("gem-" .. gem.shape .. "-base")
        gem.textureOverlay = managers.AssetManager:getTextureRegion("gem-" .. gem.shape .. "-overlay")
    end
end

StaticGemEnemies.start = function()
    StaticGemEnemies.createGems()

    -- Создание врагов при вызове первой волны
    local waveSystemListener
    waveSystemListener = luajava.createProxy(GNS .. "systems.WaveSystem$WaveSystemListener", {
        waveStarted = function()
            StaticGemEnemies.spawnGemEnemies()
            SP.wave.listeners:remove(waveSystemListener)
        end,

        affectsGameState = function() return true end,
        getConstantId = function() return 1 end
    })
    SP.wave.listeners:add(waveSystemListener)

    -- Разрушение кристалла при убийстве врага и вызов действия
    SP.enemy.listeners:add(luajava.createProxy(GNS .. "systems.EnemySystem$EnemySystemListener", {
        enemyDie = function(enemy, tower, damageType, fromAbility)
            local gem = enemy:getUserData(StaticGemEnemies.UDI_GEM)
            if gem ~= nil then
                if SP._graphics ~= nil then
                    loadGemTextures(gem)
                    SP._particle:addShatterParticle(gem.textureBase, gem.x * CFG.TILE_SIZE + CFG.TILE_HALF_SIZE, gem.y * CFG.TILE_SIZE + CFG.TILE_HALF_SIZE, CFG.TILE_SIZE, 0, 1, gem.color, nil, false)
                end

                local chunk = load(gem.tile:getData("SAction"))
                chunk(gem, enemy, tower, damageType, fromAbility)

                gem.active = false
            end
        end,

        affectsGameState = function() return true end,
        getConstantId = function() return 1 end
    }))

    -- Меню тайла
    SP.map.listeners:add(luajava.createProxy(GNS .. "systems.MapSystem$MapSystemListener", {
        selectedTileChanged = function(oldTile)
            StaticGemEnemies._updateGemMenu()
        end,

        affectsGameState = function() return true end,
        getConstantId = function() return 1 end
    }))

    -- Обновление меню
    addEventHandler("SystemDraw", function(batch, deltaTime)
        StaticGemEnemies._updateGemMenu()
    end)

    -- Сброс целей башен каждый кадр
    addEventHandler("SystemUpdate", function(deltaTime)
        if SP.tower.towers.size < aimTargetResetCounter then
            aimTargetResetCounter = 1
        end

        if SP.tower.towers.size ~= 0 then
            local tower = SP.tower.towers.items[aimTargetResetCounter]
            if tower:getTarget() ~= nil then
                local cfg = tower:getTarget():getUserData(StaticGemEnemies.UDI_GEM)
                if cfg ~= nil then
                    if targetResetFilter == nil then
                        targetResetFilter = luajava.createProxy(GNS .. "utils.ObjectFilter", {
                            passes = function(e)
                                return e:getUserData(StaticGemEnemies.UDI_GEM) == nil
                            end
                        })
                    end

                    local newTarget = tower:findTarget(targetResetFilter)
                    if newTarget ~= nil then
                        tower:setTarget(newTarget)
                    end
                end
            end
        end

        aimTargetResetCounter = aimTargetResetCounter + 1
    end)

    -- Отрисовка кристаллов
    addEventHandler("PostMapRender", function(batch, deltaTime)
        for _, v in ipairs(StaticGemEnemies.gems) do
            if v.active then
                loadGemTextures(v)
                batch:setColor(v.color)
                batch:draw(v.textureBase, v.x * CFG.TILE_SIZE, v.y * CFG.TILE_SIZE, CFG.TILE_SIZE, CFG.TILE_SIZE)
                batch:setColor(CFG.WHITE_COLOR_CACHED_FLOAT_BITS)
                batch:draw(v.textureOverlay, v.x * CFG.TILE_SIZE, v.y * CFG.TILE_SIZE, CFG.TILE_SIZE, CFG.TILE_SIZE)
            end
        end
    end)
end

StaticGemEnemies._updateGemMenu = function()
    local selectedTile = SP.map:getSelectedTile()

    if selectedTile ~= nil and selectedTile.type == enums.TileType.DUMMY then
        if selectedTile:getData("sType") == "staticGemEnemy" then
            local gem = selectedTile:getUserData(StaticGemEnemies.UDI_GEM)

            if sideMenuContainer == nil then
                -- Создаем меню
                sideMenuContainer = SP._graphics.sideMenu:createContainer()

                sideMenuTitleLabel = luajava.newInstance(GDXNS .. "scenes.scene2d.ui.Label", "", managers.AssetManager:getLabelStyle(CFG.FONT_SIZE_LARGE))
                sideMenuTitleLabel:setSize(460, 26)
                sideMenuTitleLabel:setPosition(40, 249 + 745)
                sideMenuContainer:addActor(sideMenuTitleLabel)

                sideMenuDescriptionLabel = luajava.newInstance(GDXNS .. "scenes.scene2d.ui.Label", "", managers.AssetManager:getLabelStyle(CFG.FONT_SIZE_SMALL))
                sideMenuDescriptionLabel:setSize(520 - 100, 100)
                sideMenuDescriptionLabel:setPosition(40, 139 + 745)
                sideMenuDescriptionLabel:setAlignment(bind(GDXNS .. "utils.Align", true).topLeft)
                sideMenuDescriptionLabel:setWrap(true)
                sideMenuContainer:addActor(sideMenuDescriptionLabel)
            end

            local stateHash = 1
            stateHash = stateHash * 31 + math.floor(gem.enemy:getHealth())
            stateHash = stateHash * 31 + math.floor(gem.enemy.maxHealth)
            if sideMenuLastStateHash ~= stateHash then
                local SF = bind("utils.StringFormatter")
                sideMenuTitleLabel:setText("Gem " .. SF:commaSeparatedNumber(math.floor(gem.enemy:getHealth())):toString() .. " / " .. gem.enemy.maxHealth)
                sideMenuDescriptionLabel:setText("Break it to find what's inside")
                sideMenuLastStateHash = stateHash
            end

            sideMenuContainer:show()
        else
            sideMenuContainer:hide()
        end
    elseif sideMenuContainer ~= nil then
        sideMenuContainer:hide()
    end
end

StaticGemEnemies.createGems = function()
    local tiles = SP.map:getMap().tilesArray
    for i = 1, tiles.size do
        local tile = tiles.items[i]
        if tile.type == enums.TileType.DUMMY and tile:getData("sType") == "staticGemEnemy" then
            local hp = tile:getData("iHp")
            local score = tile:getData("iScore")
            local bounty = tile:getData("iBounty")
            local xp = tile:getData("iXp")
            local shape = tile:getData("sGemShape")
            if shape == nil then shape = "triangle" end

            local gem = {}
            StaticGemEnemies.gems[#StaticGemEnemies.gems + 1] = gem

            tile:setUserData(StaticGemEnemies.UDI_GEM, gem)

            gem.active = true
            gem.color = tile.color
            gem.x = tile:getX()
            gem.y = tile:getY()
            gem.tile = tile
            gem.shape = shape

            local enemy = createEnemy(0, hp, score, bounty, xp)
            enemy.visible = false
            enemy.healthBarScale = 1.8
            enemy.ignorePathfinding = true
            enemy.lowAimPriority = true
            enemy.crusherTowerVulnerability = 0
            enemy:setUserData(StaticGemEnemies.UDI_GEM, gem)

            enemy.color = tile.color
            enemy.size = CFG.TILE_SIZE * 0.35
            enemy.baseDamage = 0

            --
            enemy:setTowerDamageMultiplier(enums.TowerType.AIR, 0)
            enemy:setTowerDamageMultiplier(enums.TowerType.CRUSHER, 0)
            enemy:setBuffVulnerability(enums.BuffType.REGENERATION, 0)
            --enemy:setDamageVulnerability(enums.DamageType.LASER, false)
            --enemy:setSpecialDamageVulnerability(enums.SpecialDamageType.KILLSHOT, false)
            --enemy:setAbilityVulnerability(enums.AbilityType.BALL_LIGHTNING, false)
            --

            gem.enemy = enemy

            local enemyModScript = tile:getData("SEnemyModifiers")
            if enemyModScript ~= nil then
                local chunk = load(enemyModScript)
                chunk(enemy, gem, tile)
            end
        end
    end
end

StaticGemEnemies.spawnGemEnemies = function()
    for _, gem in ipairs(StaticGemEnemies.gems) do
        if gem.enemySpawned ~= true then
            SP.map:spawnEnemy(gem.enemy)
            gem.enemy:setPosition(gem.x * CFG.TILE_SIZE + CFG.TILE_HALF_SIZE, gem.y * CFG.TILE_SIZE + CFG.TILE_HALF_SIZE)
            gem.enemySpawned = true
        end
    end
end