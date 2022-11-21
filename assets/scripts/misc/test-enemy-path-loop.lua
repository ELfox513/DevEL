if bind == nil then dofile("scripts/utils/binder.lua") end

TestEnemyPathLoop = {}
TestEnemyPathLoop.enabled = true
TestEnemyPathLoop.path = {
    { 0, 0 },
    { 1, 0 }
}
TestEnemyPathLoop.pathConnectionMoveSide = bind("Path$MoveSide").RIGHT_LEFT

TestEnemyPathLoop.defaultPath = nil

----

TestEnemyPathLoop.start = function()
    local map = SP.map:getMap()

    -- Check map bounds
    for _, n in pairs(TestEnemyPathLoop.path) do
        if (n[1] < 0 or n[1] >= map.widthTiles) or (n[2] < 0 or n[2] >= map.heightTiles) then
            log("TestEnemyPathLoop - tile out of map bounds: " + tostring(n[1]) + "," + tostring(n[2]))
            return nil
        end
    end

    -- Create empty tiles if missing on path (any tile, game registers current tile of each enemy for some of its magic)
    for _, n in pairs(TestEnemyPathLoop.path) do
        local tile = map:getTile(n[1], n[2])
        if tile == nil then
            local dummy = managers.TileManager:createTileFromJsonString("{\"type\":\"DUMMY\",\"d\":{\"id\":7065428662892556269,\"d\":{},\"v\":true,\"i\":\"icon-star\",\"is\":0.33,\"c\":\"ff55aaff\"}}")
            SP.map:setTile(n[1], n[2], dummy)
        end
    end

    -- Create path object
    TestEnemyPathLoop.defaultPath = luajava.newInstance(GNS .. "Path")
    local nodeIdx = 0
    for _, n in pairs(TestEnemyPathLoop.path) do
        local tile = map:getTile(n[1], n[2])
        local node = luajava.newInstance(GNS .. "PathNode")
        node:setup(nodeIdx, n[1], n[2], 1, tile.type);
        TestEnemyPathLoop.defaultPath:add(node)

        nodeIdx = nodeIdx + 1
    end
    TestEnemyPathLoop.defaultPath:prepareIfNeeded()
    TestEnemyPathLoop.defaultPath:setMoveSide(0, TestEnemyPathLoop.pathConnectionMoveSide)
    TestEnemyPathLoop.defaultPath:setMoveSide(TestEnemyPathLoop.defaultPath:getCount() - 1, TestEnemyPathLoop.pathConnectionMoveSide)

    -- Listen for enemyReachedTarget
    local enemySystemListener = luajava.createProxy(GNS .. "systems.EnemySystem$EnemySystemListener", {
        enemyReachedTarget = function(e, baseDamage, targetTile)
            if targetTile == nil and e:getUserData(97013) == true then
                -- If enemy has this custom data we set (walks in a loop), telling EnemySystem to preserve it and putting it at the beginning of the path
                e.passedTiles = e.passedTiles - TestEnemyPathLoop.defaultPath:getCount() + 1
                return true
            end
        end,

        affectsGameState = function() return true end,
        getConstantId = function() return 10001 end
    })
    SP.enemy.listeners:add(enemySystemListener)

    -- Add test enemies
    --local interval = 0.25
    --local enemyCount = (TestEnemyPathLoop.defaultPath:getCount() - 1) / interval
    --for i = 1, enemyCount do
    --    local enemy = managers.EnemyManager:getFactory(enums.EnemyType.ARMORED):obtain()
    --    enemy:setSpeed(2)
    --    enemy.maxHealth = 1000000
    --    enemy:setHealth(1000000)
    --    enemy.killScore = 1000
    --    enemy.bounty = 1000
    --    enemy:setKillExp(1000)
    --    TestEnemyPathLoop.spawnEnemy(enemy, 5, (i - 1) * interval)
    --end
end

TestEnemyPathLoop.spawnEnemy = function(enemy, sideShift, passedTiles)
    enemy:setUserData(97013, true)
    enemy.ignorePathfinding = true
    enemy.ignoredByAutoWaveCall = true
    SP.enemy:addEnemy(enemy, SP.map:getMap().spawnTiles:first(), TestEnemyPathLoop.defaultPath, sideShift, nil, passedTiles)
end
