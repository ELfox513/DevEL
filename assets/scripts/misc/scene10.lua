dofile("scripts/misc/more-enemies.lua")
MoreEnemies.timeInterval = 0.5
MoreEnemies.multiplier = 0.5
MoreEnemies.start()

cmd.noui()
cmd.coins(10000)
addEventHandler("SystemPostSetup", function()
    cmd.setgamespeed(3)

    SP.map.listeners:add(luajava.createProxy(GNS .. "systems.MapSystem$MapSystemListener", {
        enemySpawnedOnMap = function(enemy)
            if enemy.wave ~= nil and enemy.wave.waveNumber < 10 then
                enemy.maxHealth = enemy.maxHealth * 15
                enemy:setHealth(enemy.maxHealth)
            end
        end,
        affectsGameState = function() return true end,
        getConstantId = function() return 999003 end
    }))
end)

local nextIterIn = 5
local nextTowerIdx = 1
local nextIterStartWave = false
addEventHandler("SystemUpdate", function(delta)
    nextIterIn = nextIterIn - delta
    if nextIterIn <= 0 then
        if nextIterStartWave then
            SP.wave:startNextWave()
            nextIterIn = 100000
        else
            local tiles = SP.map:getMap().tilesArray
            local found = false
            for i = 1, tiles.size do
                local tile = tiles.items[i]
                if tile.type == enums.TileType.PLATFORM and tile.building == nil and tile.bonusLevel ~= 0 then
                    local tower = SP.tower:buildTower(enums.TowerType.values[nextTowerIdx], nil, tile:getX(), tile:getY())
                    -- for j = 1, 2 do tower:upgrade() end

                    if enums.TowerType.values[nextTowerIdx] == nil then-- enums.TowerType.CANNON then
                        SP.map:setSelectedTile(tile)
                    else
                        SP.tower:upgradeTower(tower)
                        for j = 0, 3 do
                            SP.tower:setAbilityInstalled(tower, j, true)
                        end
                    end

                    nextTowerIdx = nextTowerIdx + 1
                    if nextTowerIdx > 12 then nextTowerIdx = 1 end
                    found = true
                    break
                end
            end

            if not found then
                nextIterStartWave = true
                nextIterIn = 2
            else
                nextIterIn = SP.gameState:randomFloat() * 0.1 + 0.45
            end
        end
    end
end)