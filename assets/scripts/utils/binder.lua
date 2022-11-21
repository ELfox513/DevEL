--[[
    - bind
--]]
local bindCache = { _noSyncCheck = true }
local globalBindCache = { _noSyncCheck = true }

_G.bind = function(className, global)
    if global == nil then global = false end
    local cache = global and globalBindCache or bindCache
    if cache[className] == nil then
        local fullClassName = global and className or GNS .. className
        cache[className] = luajava.bindClass(fullClassName)
    end

    return cache[className]
end