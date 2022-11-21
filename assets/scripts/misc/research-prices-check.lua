local ress = managers.ResearchManager:getInstances()
local lcnt = 0
for i = 1, ress.size do
    local res = ress.items[i]
    if res.priceInStars == 0 then lcnt = lcnt + res.levels.length end
    if res.endlessLevel ~= nil and res.maxEndlessLevel > 2 then
        local price = res.endlessLevel:getPrice(res.maxEndlessLevel - 1)
        for j = 1, price.size do
            local stack = price.items[j]
            if stack:getItem():getType() == enums.ItemType.BIT_DUST and stack:getCount() > 300 then
                log(res.type:name() .. " " .. stack:getCount())
            end
        end
    end
end
log(lcnt .. " levels")
