addEventHandler("SystemPostSetup", function()
    if SP._graphics ~= nil then
        SP._graphics.subtitles:schedule({
            "This is a test map - see scripts/misc/6.5.lua for details"
        }, 2, 5)
    end

    -- Custom wave generator
    local waveGenerator = luajava.createProxy(GNS .. "systems.WaveSystem$WaveGenerator", {
        generate = function(waveNumber, defaultWave, S, difficultWavesMultiplier, difficulty)
            -- log("generate " .. tostring(waveNumber) .. " " .. tostring(defaultWave))
            -- new Wave or modified defaultWave can be returned here
            -- you can also use WaveManager.generateWave(WaveTemplates.WaveTemplate template, int wave, int difficulty) if you need default generator for specific wave template
            if waveNumber < 10 then
                -- x0.2hp for enemies on wave 1-9 (modifying default wave)
                for i = 1, defaultWave.enemyGroups.size do
                    local eg = defaultWave.enemyGroups.items[i]
                    eg.health = eg.health * 0.2
                end
                return defaultWave
            elseif waveNumber == 10 then
                -- Spawn 3 Strong enemies with large amount of hp and 0.1x speed on wave 10 (creating new wave)
                local enemyGroups = luajava.newInstance(GDXNS .. "utils.Array")
                local group = luajava.newInstance(
                    GNS .. "EnemyGroup",
                    enums.EnemyType.STRONG,
                    0.1,
                    10000,
                    3,
                    0,
                    2,
                    50,
                    50,
                    1000
                )
                enemyGroups:add(group)
                local wave = luajava.newInstance(GNS .. "Wave", waveNumber, difficulty, enemyGroups)
                return wave
            else
                -- default waves on wave number 11+ (returning default wave)
                return defaultWave
            end
        end
    })
    SP.wave:setWaveGenerator(waveGenerator)

    -- Spawn another enemy type when any enemy dies
	local enemySystemListener = luajava.createProxy(GNS .. "systems.EnemySystem$EnemySystemListener", {
		enemyDie = function(enemy, tower, damageType, fromAbility, projectile)
            -- todo spawn next enemy type
		end,

		affectsGameState = function() return true end,
		getConstantId = function() return 1 end
	})
	SP.enemy.listeners:add(enemySystemListener)
end)
