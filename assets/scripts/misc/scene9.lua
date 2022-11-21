dofile("scripts/misc/more-enemies.lua")

MoreEnemies.timeInterval = 20
MoreEnemies.multiplier = 1.6
MoreEnemies.start()

SP.map:setTile(11, 0, managers.TileManager.F.GAME_VALUE:create(
        enums.GameValueType.WAVE_INTERVAL,
        0,
        true
));

SP.gameState:addMoney(100000)
