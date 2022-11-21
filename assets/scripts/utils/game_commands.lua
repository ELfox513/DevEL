--[[
    - cmd
--]]
_G.cmd = {
    help = function(a1)
        if (a1 == "?") then
            return {
                descr = "Show DeveloperConsole help"
            }
        end

        log("Version " .. CFG.VERSION .. " (build " .. CFG.BUILD .. ") running " .. _VERSION)
        log("Use DeveloperConsole to run any Lua script. There are some predefined functions for easier usage of console:")

        for k, v in pairs(_G.cmd) do
            local info = v("?")
            local cmdArgs = info.args
            local cmdDescr = info.descr
            if cmdArgs == nil then cmdArgs = "" end
            if cmdDescr == nil then cmdDescr = "description not provided" end
            log("    cmd." .. k .. "(" .. cmdArgs .. ") - " .. cmdDescr)
        end
    end,

    noui = function()
        if (a1 == "?") then
            return {
                descr = "Hide UI"
            }
        end

        for i = 1, #managers.UiManager.layers do
            local mainLayer = managers.UiManager.layers[i]
            for j = 1, mainLayer.size do
                local uiLayer = mainLayer.items[j]
                if uiLayer.name == "MainUi" or uiLayer.name == "ScreenBorderGradient" or uiLayer.name == "AbilityMenu" or uiLayer.name == "LiveLeaderboard" or uiLayer.name == "DeveloperConsole toggle button" or uiLayer.name == "QuestList" or uiLayer.name == "StatisticsChart" then
                    uiLayer:getTable():setVisible(false)
                end
            end
        end
    end,

    setzoom = function(newZoom)
        if (newZoom == "?") then
            return {
                args = "[#888888]double[] zoom",
                descr = "Set camera zooming level. Only works during the game."
            }
        end

        if SP ~= nul then
            newZoom = tonumber(newZoom)
            local cameraController = SP._input:getCameraController()
            cameraController:setZoom(newZoom);
            log("zoom level set to " .. cameraController.zoom);
        else
            log("Game is not running")
        end
    end,

    setgamespeed = function(newSpeed)
        if (newSpeed == "?") then
            return {
                args = "[#888888]double[] speed",
                descr = "Set game speed. Only works during the game."
            }
        end

        if SP ~= nil and SP.gameState ~= nil then
            newSpeed = tonumber(newSpeed)

            if newSpeed < 0.0 then newSpeed = 0.0 end
            if newSpeed > 8 then newSpeed = 8 end

            SP.gameState:setGameSpeed(newSpeed);
            log("game speed set to " .. SP.gameState:getGameSpeed());
        else
            log("Game is not running")
        end
    end,

    gamevalues = function(a1)
        if (a1 == "?") then
            return {
                descr = "Lists all game values"
            }
        end

        if SP ~= nil and SP.gameState ~= nil then
            -- In game
            if SP.gameState.basicLevel ~= nil and SP.gameState.basicLevel.useStockGameValues then
                log("[#FF9800]This level has disabled Researches, Trophies & Quest prize global effects. Only stock values of level & local effects of level quests are considered.[]")
            end
        end

        local snap -- gvp
        if systems ~= nil then
            snap = SP.gameValue:getSnapshot()
        else
            snap = managers.GameValueManager:getSnapshot()
        end

        local currentEffectsByType = {} -- index shifted by 1
        for i = 1, enums.GameValueType.values.length do
            currentEffectsByType[i] = {}
        end

        for i = 0, snap.effects.size - 1 do
            local effect = snap.effects:get(i)
            local ebt = currentEffectsByType[effect.type:ordinal() + 1]
            table.insert(ebt, snap.effects:get(i))
        end

        for i = 1, enums.GameValueType.values.length do
            local gvt = enums.GameValueType.values[i]
            local ebt = currentEffectsByType[gvt:ordinal() + 1]
            local value = snap:getValue(gvt)

            local parts = {}
            table.insert(parts, gvt:name())
            table.insert(parts, "[#455A64] = [][#FFFFFF]")
            table.insert(parts, tostring(value))
            table.insert(parts, "[]  [#455A64]( []")
            for j, v in ipairs(ebt) do
                local sourceName = v.source:name()
                if sourceName == "STOCK" then
                    table.insert(parts, "[#FFFFFF]")
                elseif sourceName == "LEVEL_STOCK" then
                    table.insert(parts, "[#455A64]LSTCK[] [#90A4AE]")
                elseif sourceName == "RESEARCH" then
                    table.insert(parts, "[#0097A7]RES[] [#4DD0E1]")
                elseif sourceName == "TROPHY" then
                    table.insert(parts, "[#7B1FA2]TRP[] [#BA68C8]")
                elseif sourceName == "LEVEL_QUEST" then
                    table.insert(parts, "[#1976D2]LQST[] [#64B5F6]")
                elseif sourceName == "LEVEL_WAVE_QUEST" then
                    table.insert(parts, "[#388E3C]LWQST[] [#81C784]")
                elseif sourceName == "BASE_TILE" then
                    table.insert(parts, "[#0097A7]BASE[] [#4DD0E1]")
                elseif sourceName == "CORE_TILE" then
                    table.insert(parts, "[#C2185B]CORE[] [#F06292]")
                else
                    table.insert(parts, "[#616161]" .. sourceName .. "[] [#E0E0E0]")
                end

                table.insert(parts, v.delta .. "[]")
                if j ~= #ebt then
                    table.insert(parts, "[#FFFFFF],[] ")
                end
            end

            -- TODO показыать конечное значение, если во время игры

            table.insert(parts, "[#455A64] )[]")
            log(table.concat(parts, ""))
        end
    end,

    dumpui = function(actorName)
        if (actorName == "?") then
            return {
                args = "[#888888]string[] actorName",
                descr = "Dumps UI hierarchy to console. Use nil as actorName to dump everything (will also print elements of this console)"
            }
        end

        local actor
        if actorName ~= nil then
            actor = managers.UiManager:findActor(actorName)
            if actor == nil then
                log("No actors found with name '" .. actorName .. "'")
                return
            end
        end
        managers.UiManager:dumpActorsHierarchy(actor, 0)
    end,

    validateui = function(a1)
        if (a1 == "?") then
            return {
                descr = "Validates UI hierarchy"
            }
        end

        managers.UiManager:findDuplicateActorNames()
        log("No actor name duplicates")
    end,

    uilayers = function(a1)
        if (a1 == "?") then
            return {
                descr = "Prints current UI layers in order of drawing"
            }
        end

        local MainUiLayer = luajava.bindClass(GNS .. "managers.UiManager$MainUiLayer")
        for i = 1, MainUiLayer.values.length do
            local mainUiLayer = MainUiLayer.values[i]
            log("[#FFEB3B]" .. mainUiLayer:name() .. "[]")
            local layers = managers.UiManager.layers[i]
            for j = 1, layers.size do
                local layer = layers:get(j - 1)
                log(layer.name .. " " .. layer.zIndex)
            end
        end
    end,

    coins = function(count)
        if (count == "?") then
            return {
                args = "[#888888]int[] amount",
                descr = "Give coins (during game)"
            }
        end

        SP.gameState:addMoney(count, false)
    end,

    health = function(count)
        if (count == "?") then
            return {
                args = "[#888888]int[] amount",
                descr = "Give health (during game)"
            }
        end

        SP.gameState:addHealth(count)
    end,

    maxexp = function(a1)
        if (a1 == "?") then
            return {
                descr = "Set max exp for the selected tower (during game)"
            }
        end

        local tile = SP.map:getSelectedTile()
        if tile ~= nil and tile.type == enums.TileType.PLATFORM and tile.building ~= nil and tile.building.buildingType == enums.BuildingType.TOWER then
            tile.building:addExperienceRaw(50000)
        end
    end,

    buildtower = function(towerType, x, y)
        if (towerType == "?") then
            return {
                args = "[#888888]TowerType[] towerType, [#888888]int[] tileX, [#888888]y[] tileY",
                descr = "Build tower on selected Platform tile (during game)"
            }
        end

        local map = SP.map:getMap()
        local tile = map:getTile(x, y)
        if tile ~= nil and tile.type == enums.TileType.PLATFORM and tile.building == nil then
            SP.map:setSelectedTile(tile)
            SP.tower:buildTowerAction(towerType)
        end
        SP.map:setSelectedTile(nil)
    end,

    filltower = function(towerType)
        if (towerType == "?") then
            return {
                args = "[#888888]TowerType[] towerType",
                descr = "Build tower on all empty Platform tiles (during game)"
            }
        end

        local map = SP.map:getMap()
        for y = 0, map.heightTiles - 1 do
            for x = 0, map.widthTiles - 1 do
                local tile = map:getTile(x, y)
                if tile ~= nil and tile.type == enums.TileType.PLATFORM and tile.building == nil then
                    SP.map:setSelectedTile(tile)
                    SP.tower:buildTowerAction(towerType)
                end
            end
        end
        SP.map:setSelectedTile(nil)

        log("Done")
    end,

    addenemy = function(enemyType, speed, health, killScore, killBounty, killExp, tileX, tileY, sideShift)
        if (enemyType == "?") then
            return {
                args = "[#888888]EnemyType[] enemyType, [#888888]float[] speed, [#888888]float[] health, [#888888]int[] killScore, [#888888]int[] killBounty, [#888888]int[] killExp, [#888888]int[] tileX, [#888888]int[] tileY, [#888888]int[] sideShift",
                descr = "Spawn an enemy"
            }
        end

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
}

-- Show help message when DeveloperConsole is opened for the first time
--local devConsoleWasOpened = false
--addEventHandler("DeveloperConsoleShow", function()
--    if not devConsoleWasOpened then
--        devConsoleWasOpened = true
--
--        _G.cmd.help()
--    end
--end)