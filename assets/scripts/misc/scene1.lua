addenemy = function(enemyType, speed, health, killScore, killBounty, killExp, tileX, tileY, sideShift)
    local creep = managers.EnemyManager:getFactory(enemyType):obtain()
    creep:setSpeed(speed)
    creep.maxHealth = health;
    creep:setHealth(health);
    creep.killScore = killScore;
    creep.bounty = killBounty;
    creep:setKillExp(killExp);
    local tile = SP.map:getMap():getTile(tileX, tileY)
    SP.enemy:addEnemy(creep, tile, sideShift)
end

local queue = {}

addEventHandler("SystemPostSetup", function()
    local mapSystemListener = luajava.createProxy(GNS .. "systems.MapSystem$MapSystemListener", {
        enemySpawnedOnMap = function(enemy)
            if enemy:getKillExp() ~= 0 and SP.gameState:randomInt(2) ~= 0 then
                table.insert(queue, {
                    --                             2           3                 4                  5
                    SP.gameState:randomFloat() * 10, enemy.type, enemy:getSpeed(), enemy:getHealth(), enemy.bounty, enemy.spawnTile:getX(), enemy.spawnTile:getY(), SP.gameState:randomInt(10)
                })
            end
        end,

        affectsGameState = function() return true end,
        getConstantId = function() return 1 end
    })
    SP.map.listeners:add(mapSystemListener)
end)

addEventHandler("SystemUpdate", function(deltaTime)
    if #queue ~= 0 then
        for i = #queue, 1, -1 do
            local v = queue[i]
            v[1] = v[1] - deltaTime
            if v[1] <= 0 then
                addenemy(v[2], v[3], v[4], 0, v[5], 0, v[6], v[7], v[8])
                table.remove(queue, i)
            end
        end
    end
end)
