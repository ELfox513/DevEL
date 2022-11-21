-- dofile("scripts/misc/gv.lua")

dofile("scripts/utils/binder.lua")

local screen = managers.ScreenManager:getCurrentScreen()
if screen.S == nil or screen.S._mapEditor == nil then
    error("Must be called on map editor screen")
    return nil
end


local S = screen.S

local mapW = S.map:getMap().widthTiles
local mapH = S.map:getMap().heightTiles

local x = 0
local y = 0
for i = 1, enums.GameValueType.values.length do
    local gv = enums.GameValueType.values[i]

    if
        (string.sub(gv:name(), 1, string.len("TOWER_TYPE_")) == "TOWER_TYPE_")
        or gv:name() == "MINER_COUNT_SCALAR"
        or gv:name() == "ABILITIES_MAX_ENERGY"
        or gv:name() == "MODIFIER_BALANCE_COUNT"
        or gv:name() == "TOWERS_STARTING_LEVEL"
    then
        x = x + 1
        y = 0
    end

    if y == mapH then
        x = x + 1
        y = 0
    end

    if x == mapW then
        break
    end

    local tile = managers.TileManager.F.GAME_VALUE:create(gv, 1)
    S._mapEditor:setMapTileLite(x, y, tile);
    y = y + 1
    -- log(utils.printr())
end
S._mapRendering:forceTilesRedraw(true);