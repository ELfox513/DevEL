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

local enemiesHp = 100
	
addEventHandler("SystemPostSetup", function()
	local minerSystemListener = luajava.createProxy(GNS .. "systems.MinerSystem$MinerSystemListener", {
		minerResourcesChanged = function(miner, resourceType, delta, mined)
			-- Когда добыли ресурс, спавним врага
			if mined then
				local enemyType = nil

				if resourceType == enums.ResourceType.SCALAR then
					enemyType = enums.EnemyType.REGULAR
				elseif resourceType == enums.ResourceType.VECTOR then
					enemyType = enums.EnemyType.FIGHTER
				end

				if enemyType ~= nil then
					local tile = miner:getTile()
					local sideShift = SP.gameState:randomInt(11)
					addenemy(enemyType, 1, enemiesHp, 1, enemiesHp / 5, 1, tile:getX(), tile:getY(), sideShift)
					enemiesHp = enemiesHp + 2
				end
			end
		end,

		affectsGameState = function() return true end,
		getConstantId = function() return 1 end
	})
	SP.miner.listeners:add(minerSystemListener)

	local mapSystemListener = luajava.createProxy(GNS .. "systems.MapSystem$MapSystemListener", {
		enemySpawnedOnMap = function(enemy)
			-- Увеличиваем здоровье босса
			if enemy.type == enums.EnemyType.SNAKE_BOSS_HEAD or enemy.type == enums.EnemyType.SNAKE_BOSS_BODY or enemy.type == enums.EnemyType.SNAKE_BOSS_TAIL then
				enemy:setMaxHealth(enemy.maxHealth * 500)
				enemy:setHealth(enemy:getHealth() * 500)

				if enemy.type == enums.EnemyType.SNAKE_BOSS_HEAD then
					enemy.defaultMinSpeed = 0.03
					enemy.defaultMaxSpeed = 0.1
				end
			end
		end,

		affectsGameState = function() return true end,
		getConstantId = function() return 1 end
	})
	SP.map.listeners:add(mapSystemListener)
end)
