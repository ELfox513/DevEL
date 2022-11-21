--[[
    - utils
--]]
_G.utils = {
    print = function(var)
        if type(var) == "table" then
            local out = {}
            local cnt = 0
            for k, v in pairs(var) do
                local lineParts = {}
                table.insert(lineParts, "  " .. tostring(k))
                table.insert(lineParts, " = ")
                table.insert(lineParts, type(v))
                table.insert(out, table.concat(lineParts, ""))
                cnt = cnt + 1
            end

            if cnt == 0 then
                return tostring(var) .. " (size: 0) {}"
            else
                return tostring(var) .. " (size: " .. cnt .. ") {\n" .. table.concat(out, "\n") .. "\n}"
            end
        elseif type(var) == "userdata" then
            local descr = tostring(var)
            local fields = reflection.getFields(var)
            if fields.length ~= 0 then
                descr = descr .. "\n  Fields:\n"
                for i = 1, fields.length do
                    descr = descr .. "    " .. fields[i]:getName() .. "\n"
                end
            end

            local methods = reflection.getMethods(var)
            if methods.length ~= 0 then
                descr = descr .. "\n  Methods:\n"
                for i = 1, methods.length do
                    descr = descr .. "    " .. methods[i]:getName() .. "("
                    local paramTypes = methods[i]:getParameterTypes()
                    for j = 1, paramTypes.length do
                        if j ~= 1 then descr = descr .. ", " end

                        descr = descr .. tostring(paramTypes[j])
                    end
                    descr = descr .. ")\n"
                end
            end

            return descr
        else
            return tostring(var)
        end
    end,

    --[[
      Print "var" recursively if it is a table or as usual string if not
      tabSize - number of spaces for pretty print (may be nil)
      visitedTables - visited tables as keys to not print them again (may be nil)
    --]]
    printr = function(var, tabSize, visitedTables)
        if tabSize == nil then tabSize = 0 end
        if visitedTables == nil then visitedTables = {} end

        if type(var) == "table" then
            if visitedTables[var] ~= nil then
                return "..."
            end
            visitedTables[var] = true

            local currentTab = string.rep("  ", tabSize)
            local nextTab = string.rep("  ", tabSize + 1)
            local out = {}
            local cnt = 0
            for k, v in pairs(var) do
                local lineParts = {}
                table.insert(lineParts, nextTab)
                table.insert(lineParts, tostring(k))
                table.insert(lineParts, " = ")
                table.insert(lineParts, _G.utils.printr(v, tabSize + 1, visitedTables))
                table.insert(out, table.concat(lineParts, ""))
                cnt = cnt + 1
            end

            if cnt == 0 then
                return currentTab .. tostring(var) .. " (size: 0) {}"
            else
                return currentTab .. tostring(var) .. " (size: " .. cnt .. ") {\n" .. table.concat(out, "\n") .. "\n" .. currentTab .. "}"
            end
        elseif type(var) == "userdata" then
            local descr = tostring(var)
            local fields = reflection.getFields(var)
            if fields.length ~= 0 then
                descr = descr .. "\n  Fields:\n"
                for i = 1, fields.length do
                    descr = descr .. "    " .. fields[i]:getName() .. "\n"
                end
            end

            local methods = reflection.getMethods(var)
            if methods.length ~= 0 then
                descr = descr .. "\n  Methods:\n"
                for i = 1, methods.length do
                    descr = descr .. "    " .. methods[i]:getName() .. "("
                    local paramTypes = methods[i]:getParameterTypes()
                    for j = 1, paramTypes.length do
                        if j ~= 1 then descr = descr .. ", " end

                        descr = descr .. tostring(paramTypes[j])
                    end
                    descr = descr .. ")\n"
                end
            end

            return descr
        else
            return tostring(var)
        end
    end,

    stringsplit = function (inputstr, sep)
        if sep == nil then
            sep = "%s"
        end
        local t={} ; i=1
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            t[i] = str
            i = i + 1
        end
        return t
    end,

    -- Убрать все nil из таблицы и сдвинуть значения
    compactnil = function (t)
        local idx = 1
        for k, v in pairs(t) do
            if v ~= nil then
                if k ~= idx then
                    t[idx] = v
                    t[k] = nil
                end
                idx = idx + 1
            end
        end
    end,

    -- Убрать значение из таблицы и сдвинуть все остальные, чтобы не было пробелов
    tableRemoveVal = function(t, val)
        for i = #t, 1, -1 do
            if t[i] == val then
                t[i] = nil
            end
        end
        utils.compactnil(t)
    end,

    syncRandFloat = function()
        return SP.gameState:randomFloat()
    end,

    syncRandInt = function(maxExcl)
        return SP.gameState:randomInt(maxExcl)
    end
}