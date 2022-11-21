MoreEnemies = {}
MoreEnemies.timeInterval = 10 -- seconds
MoreEnemies.multiplier = 1.5 -- amount of enemies, 1.5 = 15 new enemies for every 10 spawned ones
MoreEnemies.filter = function(enemy) return true end

MoreEnemies._running = false
MoreEnemies._queue = {}
MoreEnemies._counter = 0

MoreEnemies._mapSystemListener = nil
MoreEnemies._systemUpdateListener = nil

MoreEnemies.start = function()
    if MoreEnemies._running then
        MoreEnemies.stop()
    end

    MoreEnemies._mapSystemListener = luajava.createProxy(GNS .. "systems.MapSystem$MapSystemListener", {
        enemySpawnedOnMap = function(enemy)
            if enemy:getKillExp() ~= 0 and MoreEnemies.filter(enemy) then
                MoreEnemies._counter = MoreEnemies._counter + MoreEnemies.multiplier
                while MoreEnemies._counter >= 1 do
                    table.insert(MoreEnemies._queue, {
                        --                             2           3                 4                  5
                        SP.gameState:randomFloat() * MoreEnemies.timeInterval, enemy.type, enemy:getSpeed(), enemy:getHealth(), enemy.bounty, enemy.spawnTile:getX(), enemy.spawnTile:getY(), SP.gameState:randomInt(10)
                    })
                    MoreEnemies._counter = MoreEnemies._counter - 1
                end
            end
        end,
        affectsGameState = function() return true end,
        getConstantId = function() return 999001 end
    })

    MoreEnemies._systemUpdateListener = function(deltaTime)
        if #MoreEnemies._queue ~= 0 then
            for i = #MoreEnemies._queue, 1, -1 do
                local v = MoreEnemies._queue[i]
                v[1] = v[1] - deltaTime
                if v[1] <= 0 then
                    cmd.addenemy(v[2], v[3], v[4], 0, v[5], 0, v[6], v[7], v[8])
                    table.remove(MoreEnemies._queue, i)
                end
            end
        end
    end

    SP.map.listeners:add(MoreEnemies._mapSystemListener)
    addEventHandler("SystemUpdate", MoreEnemies._systemUpdateListener)
    MoreEnemies._running = true
end

MoreEnemies.stop = function()
    if not MoreEnemies._running then
        SP.map.listeners:remove(MoreEnemies._mapSystemListener)
        removeEventHandler("SystemUpdate", MoreEnemies._systemUpdateListener)
        MoreEnemies._running = false
    end
end