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

    leveleditor = function(a1)
        if (a1 == "?") then
            return {
                descr = "Open levels configuration editor"
            }
        end

        managers.UiManager.levelConfigurationEditor:show()
    end,

    casequeue = function(a1)
        if (a1 == "?") then
            return {
                descr = "Show cases queue."
            }
        end

        local str = ""
        for i = 1, managers.ItemManager.ENCRYPTED_CASES_QUEUE.length do
            local c = managers.ItemManager.ENCRYPTED_CASES_QUEUE[i]
            if c == enums.CaseType.GREEN then
                str = str .. "<@chest-green>"
            elseif c == enums.CaseType.BLUE then
                str = str .. "<@chest-blue>"
            elseif c == enums.CaseType.PURPLE then
                str = str .. "<@chest-purple>"
            elseif c == enums.CaseType.ORANGE then
                str = str .. "<@chest-orange>"
            elseif c == enums.CaseType.CYAN then
                str = str .. "<@chest-cyan>"
            else
                str = str .. "<@chest-question>"
            end
        end

        log(managers.AssetManager:replaceRegionAliasesWithChars(str))
    end,

    completeallquests = function(a1)
        if (a1 == "?") then
            return {
                descr = "Completes all quests on regular levels"
            }
        end

        local m = managers.BasicLevelManager
        for i = 1, m.levelsOrdered.size do
            local level = m.levelsOrdered.items[i];
            for j = 1, level.quests.size do
                local quest = level.quests.items[j];
                if not quest:isCompleted() then
                    quest:setCompleted(true)
                end
            end

            for j = 1, level.waveQuests.size do
                local quest = level.waveQuests.items[j]
                if not quest:isCompleted() then
                    quest:setCompleted(true)
                end
            end
        end
    end,

    getalllevelprizes = function(questType)
        if (questType == "?") then
            return {
                args = "[#888888]string[] questType - quest type ('all' / 'wave' / 'quest')",
                descr = "Gives all prizes from all quests of all levels"
            }
        end

        for i = 0, managers.BasicLevelManager.levelsOrdered.size - 1 do
            local lvl = managers.BasicLevelManager.levelsOrdered:get(i)
            if questType == "all" or questType == "quest" then
                for j = 0, lvl.quests.size - 1 do
                    local quest = lvl.quests:get(j)
                    managers.ProgressManager:addItems(quest.prizes)
                end
            end
            if questType == "all" or questType == "wave" then
                for j = 0, lvl.waveQuests.size - 1 do
                    local quest = lvl.waveQuests:get(j)
                    managers.ProgressManager:addItems(quest.prizes)
                end
            end
        end

        log("Done")
    end,

    getcasesforplaytime = function(cnt)
        if (cnt == "?") then
            return {
                args = "[#888888]int[] count",
                descr = "Gives cases in order for playing time"
            }
        end

        for i = 0, cnt - 1 do
            local caseType = managers.ItemManager:getQueuedEncryptedCaseType(i)
            local caseItem = managers.ItemManager:getFactory(enums.ItemType.CASE):create(caseType, false, true)
            managers.ProgressManager:addItems(caseItem, 1)
        end
    end,

    clearinventory = function(a1)
        if (a1 == "?") then
            return {
                descr = "Remove all items from inventory"
            }
        end

        managers.ProgressManager:removeAllItems()
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

    researchgvs = function(multiplier)
        if (multiplier == "?") then
            return {
                args = "[#888888]double[] multiplier",
                descr = "Lists all game values affected by researches as Json array for Base"
            }
        end

        if multiplier == nil then multiplier = 1 end

        local currentEffects = managers.GameValueManager:getCurrentEffects()
        local currentEffectsByType = {} -- index shifted by 1

        for i = 1, enums.GameValueType.values.length do
            currentEffectsByType[i] = {}
        end

        for i = 0, currentEffects.size - 1 do
            local effect = currentEffects:get(i)
            local ebt = currentEffectsByType[effect.type:ordinal() + 1]
            table.insert(ebt, currentEffects:get(i))
        end

        local parts = {}
        table.insert(parts, "[\n")
        for i = 1, enums.GameValueType.values.length do
            local gvt = enums.GameValueType.values[i]
            local ebt = currentEffectsByType[gvt:ordinal() + 1]

            local delta = 0
            for j, v in ipairs(ebt) do
                if v.source:name() == "RESEARCH" then
                    delta = delta + v.delta
                end
            end
            if delta ~= 0 then
                delta = delta * multiplier
                table.insert(parts, " { \"t\":\"")
                table.insert(parts, gvt:name())
                table.insert(parts, "\", \"v\":")
                table.insert(parts, delta)
                table.insert(parts, ", \"o\":false, \"b\":false },\n")
            end
        end
        table.insert(parts, "]")
        log(table.concat(parts, ""))
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

    statistics = function(a1)
        if (a1 == "?") then
            return {
                descr = "Show global statistics"
            }
        end

        for i = 1, enums.StatisticsType.values.length do
            local statType = enums.StatisticsType.values[i]
            log(statType:name() .. " " .. managers.StatisticsManager:getAllTime(statType) .. " " .. managers.StatisticsManager:getMaxOneGame(statType))
        end
    end,

    makeitem = function(a1)
        if (a1 == "?") then
            return {
                descr = "Show overlay which allows to create any items (Developer mode research required)"
            }
        end

        managers.UiManager.itemCreationOverlay:show()
    end,

    hideui = function(a1)
        if (a1 == "?") then
            return {
                descr = "Hide all UI layers. Use back/console/camera controller button to recover"
            }
        end

        for i = 1, managers.UiManager.layers.length do
            local uiLayerArray = managers.UiManager.layers[i]
            for j = 1, uiLayerArray.size do
                uiLayerArray:get(j - 1):getTable():setVisible(false)
            end
        end
    end,

    fullresearch = function(a1)
        if (a1 == "?") then
            return {
                descr = "Install max level for all research nodes"
            }
        end
        managers.ResearchManager:installAllResearches()
    end,

    fullendlessresearch = function(a1)
        if (a1 == "?") then
            return {
                descr = "Install max endless level for all research nodes"
            }
        end
        managers.ResearchManager:installAllEndlessResearches()
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