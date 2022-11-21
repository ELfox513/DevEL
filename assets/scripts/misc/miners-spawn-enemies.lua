if bind == nil then dofile("scripts/utils/binder.lua") end

MinersSpawnEnemies = {}
MinersSpawnEnemies.enabled = true
MinersSpawnEnemies.difficultyFormula = function(waveNumber) return SP.gameState.averageDifficulty end
MinersSpawnEnemies.shouldEnemyBeSpawned = function(enemyGroup, enemyIdxInGroup) return true end -- if returns false, enemy won't be spawned but will be accounted as spawned (still increases wave difficulty)
MinersSpawnEnemies.shouldMinedResourceBeHandled = function(miner, resourceType, delta, mined) return true end -- if returns false, the mined resource event will be completely ignored (does not affect difficulty)
MinersSpawnEnemies.waveTemplatesPerResource = {
    [enums.ResourceType.SCALAR:ordinal() + 1] = {  	"REGULAR_MEDIUM", 		"REGULAR_LOW", 	"TOXIC_MEDIUM", "TOXIC_ARMORED" }, -- "REGULAR_HIGH" "TOXIC_HIGH"
    [enums.ResourceType.VECTOR:ordinal() + 1] = {  	"STRONG_MEDIUM", 		"STRONG_LOW",	"FAST_MEDIUM", 	"FAST_LOW", 	"HEALER_STRONG" }, -- "FAST_HIGH"
    [enums.ResourceType.MATRIX:ordinal() + 1] = {  	"HELI_MEDIUM", 			"JET_MEDIUM",		"HEALER_JET", 		"ICY_HIGH", 			"ICY_TOXIC", 		"HEALER_ICY" },
    [enums.ResourceType.TENSOR:ordinal() + 1] = {  	"ARMORED_LOW", 			"ARMORED_REGULAR",	"ARMORED_STRONG", 	"HEALER_REGULAR", 		"HEALER_SLOW", 		"FIGHTER_ARMORED" },
    [enums.ResourceType.INFIAR:ordinal() + 1] = {  	"FIGHTER_LOW", 			"FIGHTER_MEDIUM",	"LIGHT_MEDIUM", 	"LIGHT_HIGH", 			"LIGHT_FAST" }
}

----

local templateIndices = {}
local enemyQueueWaves = {}
local enemyQueue = {}

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
		local templates = MinersSpawnEnemies.waveTemplatesPerResource[resTypeIdx]
		local templateName = templates[templateIndex]
		templateIndex = templateIndex + 1
		if templateIndex == #templates + 1 then
			templateIndex = 1
		end
		templateIndices[resTypeIdx] = templateIndex
		local template = bind("WaveTemplates")[templateName]
		local wave = managers.WaveManager:generateWave(template, waveNumber, MinersSpawnEnemies.difficultyFormula(waveNumber))
		for i = 1, wave.enemyGroups.size do
			local group = wave.enemyGroups.items[i]
			for j = 1, group.count do
			    if MinersSpawnEnemies.shouldEnemyBeSpawned(group, j) then
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

MinersSpawnEnemies.start = function()
    local minerSystemListener = luajava.createProxy(GNS .. "systems.MinerSystem$MinerSystemListener", {
        minerResourcesChanged = function(miner, resourceType, delta, mined)
            if MinersSpawnEnemies.shouldMinedResourceBeHandled(miner, resourceType, delta, mined) then
                if mined and MinersSpawnEnemies.enabled then
                    for i = 1, delta do
                        local enemy = getNextEnemyToSpawn(resourceType)
                        if enemy ~= nil then
                            SP.enemy:addEnemy(enemy, miner:getTile(), SP.gameState:randomInt(11))
                        end
                    end
                end
            end
        end,

        affectsGameState = function() return true end,
        getConstantId = function() return 10001 end
    })
    SP.miner.listeners:add(minerSystemListener)
end
