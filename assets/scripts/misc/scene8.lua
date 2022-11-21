dofile("scripts/misc/more-enemies.lua")
MoreEnemies.timeInterval = 0.5 -- seconds
MoreEnemies.multiplier = 1.5
MoreEnemies.filter = function(enemy) return enemy.type == enums.EnemyType.METAPHOR_BOSS_CREEP end
MoreEnemies.start()

dofile("scripts/utils/scenario_player.lua")

local bosses = {}

addEventHandler("SystemPostSetup", function()
	for i = 1, #enums.TowerType.values do
		local towerType = enums.TowerType.values[i]
		SP.tower.canTowerAttackEnemy[enums.EnemyType.BOSS:ordinal() + 1][towerType:ordinal() + 1] = false
	end

	for i = 1, SP.tower.towers.size do
		local tower = SP.tower.towers.items[i]
		tower.angle = SP.gameState:randomFloat() * 360
	end

	local mapSystemListener = luajava.createProxy(GNS .. "systems.MapSystem$MapSystemListener", {
		enemySpawnedOnMap = function(enemy)
			-- Увеличиваем здоровье босса
			if enemy.type == enums.EnemyType.METAPHOR_BOSS or enemy.type == enums.EnemyType.METAPHOR_BOSS_CREEP then
				if enemy.type == enums.EnemyType.METAPHOR_BOSS_CREEP then
					enemy:setMaxHealth(enemy.maxHealth * 3)
					enemy:setHealth(enemy:getHealth() * 3)

					enemy.drawHealth = false
				end

				enemy:setMaxHealth(enemy.maxHealth * 800)
				enemy:setHealth(enemy:getHealth() * 800)

				bosses[#bosses + 1] = enemy
			else
				enemy:setMaxHealth(enemy.maxHealth * 200)
				enemy:setHealth(enemy:getHealth() * 200)
			end
		end,

		affectsGameState = function() return true end,
		getConstantId = function() return 1 end
	})
	SP.map.listeners:add(mapSystemListener)
end)

local sp = scenarioPlayer:new({})

-- Подготавливаем камеру
sp:addDelay(2, function()
	cmd.setzoom(1)
	cmd.setgamespeed(3)
	cmd.noui()
end)

-- Запускаем волну
sp:addDelay(5, function()
	SP.wave:startNextWave()

	-- Останавливаем босса
	sp:addDelay(1.6, function()
		for _, v in pairs(bosses) do
			v:setSpeed(0)
		end
	end)

	-- Заставляем башни целиться в босса
	sp:addDelay(3, function()
		for i = 1, #enums.TowerType.values do
			local towerType = enums.TowerType.values[i]
			SP.tower.canTowerAttackEnemy[enums.EnemyType.BOSS:ordinal() + 1][towerType:ordinal() + 1] = true
		end

		for i = 1, SP.tower.towers.size do
			local tower = SP.tower.towers.items[i]
			tower.attackDisabled = true
		end
	end)

	-- Запускаем босса и башни
	sp:addDelay(8, function()
		for _, v in pairs(bosses) do
			v:setSpeed(0.6)
		end
	end)

	sp:addDelay(8.5, function()
		local idx = 1
		local enableNext
		enableNext = function()
			if SP.tower.towers.items[idx] ~= nil then
				SP.tower.towers.items[idx].attackDisabled = false
				idx = idx + 1
				sp:addDelay(0.5, enableNext)
			end
		end
		sp:addDelay(1.5, enableNext)

		sp:addDelay(2.5, function()
			SP.wave:setAutoForceWaveEnabled(true)
			SP.wave:startNextWave()
		end)
	end)
end)

addEventHandler("SystemUpdate", function(deltaTime)
	sp:update(deltaTime)
end)