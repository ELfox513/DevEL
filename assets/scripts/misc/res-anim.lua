dofile("scripts/utils/scenario_player.lua")

-- Откатываем все до 1 уровня
for i = 1, #enums.ResearchType.values do
    local rt = enums.ResearchType.values[i]
    if rt ~= enums.ResearchType.ROOT and string.sub(rt:name(), 1, 10) ~= "TOWER_TYPE" then
        log(rt:name())
        managers.ResearchManager:setInstalledLevel(rt, 0, false)
    end
end

-- Собираем группы исследований
local resGroups = {}
function gather(research, idx) 
    if resGroups[idx] == nil then
        resGroups[idx] = {}
    end
    table.insert(resGroups[idx], research)

    for i = 1, research.linksToChildren.size do
        gather(research.linksToChildren.items[i].child, idx + 1)
    end
end
gather(managers.ResearchManager:getInstance(enums.ResearchType.ROOT), 1)

-- Запускаем сценарий
local sp = scenarioPlayer:new({})
local renderHandler = function(deltaTime) 
    sp:update(deltaTime)
end

local nextActionHandler
local curIdx = 1
nextActionHandler = function() 
    local group = resGroups[curIdx]
    if group ~= nil then
        log(tostring(curIdx))
        for i = 1, #group do
            local research = group[i]
            managers.ResearchManager:setInstalledLevel(research.type, research.maxEndlessLevel, true)
        end

        curIdx = curIdx + 1
        sp:addDelay(0.16, nextActionHandler)
    else
        -- Закончили
        removeEventHandler("Render", renderHandler)
    end
end

sp:addDelay(3, nextActionHandler)

addEventHandler("Render", renderHandler)