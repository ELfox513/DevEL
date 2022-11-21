if bind == nil then dofile("scripts/utils/binder.lua") end

local bossHpMultiplier = 2500
local bossMinSpeed = 0.025
local bossMaxSpeed = 0.08

local waveTemplatesPerResource = {}
waveTemplatesPerResource[enums.ResourceType.SCALAR:ordinal() + 1] = {  	"REGULAR_MEDIUM", 		"REGULAR_LOW", 	"TOXIC_MEDIUM", "TOXIC_ARMORED" } -- "REGULAR_HIGH" "TOXIC_HIGH"
waveTemplatesPerResource[enums.ResourceType.VECTOR:ordinal() + 1] = {  	"STRONG_MEDIUM", 		"STRONG_LOW",	"FAST_MEDIUM", 	"FAST_LOW", 	"HEALER_STRONG" } -- "FAST_HIGH"
waveTemplatesPerResource[enums.ResourceType.MATRIX:ordinal() + 1] = {  	"HELI_MEDIUM", 			"JET_MEDIUM",		"HEALER_JET", 		"ICY_HIGH", 			"ICY_TOXIC", 		"HEALER_ICY" }
waveTemplatesPerResource[enums.ResourceType.TENSOR:ordinal() + 1] = {  	"ARMORED_LOW", 			"ARMORED_REGULAR",	"ARMORED_STRONG", 	"HEALER_REGULAR", 		"HEALER_SLOW", 		"FIGHTER_ARMORED" }
waveTemplatesPerResource[enums.ResourceType.INFIAR:ordinal() + 1] = {  	"FIGHTER_LOW", 			"FIGHTER_MEDIUM",	"LIGHT_MEDIUM", 	"LIGHT_HIGH", 			"LIGHT_FAST" }
local templateIndices = {}

local enemyQueueWaves = {}
local enemyQueue = {}

local aimTargetResetCounter = 1

local getNextEnemyToSpawn = function(resourceType)
	local resTypeIdx = resourceType:ordinal() + 1
	if enemyQueue[resTypeIdx] == nil or #enemyQueue[resTypeIdx] == 0 then
		local queue = {}
		local waveNumber = enemyQueueWaves[resTypeIdx]
		if waveNumber == nil then
			waveNumber = 1
		end
		local templateIndex = templateIndices[resTypeIdx]
		if templateIndex == nil then templateIndex = 1 end
		local templates = waveTemplatesPerResource[resTypeIdx]
		local templateName = templates[templateIndex]
		templateIndex = templateIndex + 1
		if templateIndex == #templates + 1 then
			templateIndex = 1
		end
		templateIndices[resTypeIdx] = templateIndex
		local template = bind("WaveTemplates")[templateName]
		local wave = managers.WaveManager:generateWave(template, waveNumber, SP.gameState.averageDifficulty)
		for i = 1, wave.enemyGroups.size do
			local group = wave.enemyGroups.items[i]
			for j = 1, group.count do
				local creep = managers.EnemyManager:getFactory(group.type):obtain()
				creep:setSpeed(group.speed)
				creep.maxHealth = group.health;
				creep:setHealth(group.health);
				creep.killScore = group.killScore;
				creep.bounty = group.bounty;
				creep:setKillExp(group.killExp);
				table.insert(queue, #queue + 1, creep)
			end
		end
		local randomSeed = 37
		for i = 1, #queue do
			local idx = SP.gameState:randomIntIndependent(#queue, randomSeed) + 1
			randomSeed = (randomSeed * 31 + idx) % 65536
			local tmp = queue[idx]
			queue[idx] = queue[i]
			queue[i] = tmp
		end

		enemyQueueWaves[resTypeIdx] = waveNumber + 1
		enemyQueue[resTypeIdx] = queue

		-- log("Filled enemy queue for " .. resourceType:name() .. " with " .. templateName .. " (" .. #queue .. " enemies, wave " .. waveNumber .. ")")
	end

	return table.remove(enemyQueue[resTypeIdx], #enemyQueue[resTypeIdx])
end
	
addEventHandler("SystemPostSetup", function()
	-- Сброс целей башен каждый кадр
	addEventHandler("SystemUpdate", function(deltaTime)
		if SP.tower.towers.size < aimTargetResetCounter then
			aimTargetResetCounter = 1
		end

		if SP.tower.towers.size ~= 0 then
			local tower = SP.tower.towers.items[aimTargetResetCounter]
			if tower.target ~= nil and (tower.target.type == enums.EnemyType.SNAKE_BOSS_HEAD or tower.target.type == enums.EnemyType.SNAKE_BOSS_BODY or tower.target.type == enums.EnemyType.SNAKE_BOSS_TAIL) then
				local newTarget = tower:findTarget()
				if tower.target ~= newTarget then
					tower:setTarget(newTarget)
				end
			end
		end
		aimTargetResetCounter = aimTargetResetCounter + 1
	end)

	local minerSystemListener = luajava.createProxy(GNS .. "systems.MinerSystem$MinerSystemListener", {
		minerResourcesChanged = function(miner, resourceType, delta, mined)
			if mined and SP.wave:getCompletedWavesCount() == 0 then
				local tile = miner:getTile()
				local creep = getNextEnemyToSpawn(resourceType)
				local sideShift = SP.gameState:randomInt(11)
				SP.enemy:addEnemy(creep, tile, sideShift)
			end
		end,

		affectsGameState = function() return true end,
		getConstantId = function() return 1 end
	})
	SP.miner.listeners:add(minerSystemListener)

	local mapSystemListener = luajava.createProxy(GNS .. "systems.MapSystem$MapSystemListener", {
		enemySpawnedOnMap = function(enemy)
			if enemy.type == enums.EnemyType.SNAKE_BOSS_HEAD or enemy.type == enums.EnemyType.SNAKE_BOSS_BODY or enemy.type == enums.EnemyType.SNAKE_BOSS_TAIL then
				enemy:setMaxHealth(enemy.maxHealth * bossHpMultiplier)
				enemy:setHealth(enemy:getHealth() * bossHpMultiplier)

				if enemy.type == enums.EnemyType.SNAKE_BOSS_HEAD then
					enemy.defaultMinSpeed = bossMinSpeed
					enemy.defaultMaxSpeed = bossMaxSpeed
				end
			end
		end,

		affectsGameState = function() return true end,
		getConstantId = function() return 1 end
	})
	SP.map.listeners:add(mapSystemListener)

	local enemySystemListener = luajava.createProxy(GNS .. "systems.EnemySystem$EnemySystemListener", {
		enemyDie = function(enemy, tower, damageType, fromAbility, projectile)
			if enemy.type == enums.EnemyType.SNAKE_BOSS_HEAD then
				local bonusScore = math.floor(SP.gameState:getScore() * 0.2)
				SP.gameState:addScore(bonusScore, enums.StatisticsType.SG_EK)
			end
		end,

		affectsGameState = function() return true end,
		getConstantId = function() return 1 end
	})
	SP.enemy.listeners:add(enemySystemListener)
end)
