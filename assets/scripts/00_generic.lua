--[[
    - GNS - string - Game namespace
    - GDXNS - string - LibGDX namespace
    - CFG - Config - main configuraion class binding
    - enums - [string => Enum] - bindings to enums

    Warning: large numbers turn into doubles
--]]

GNS = "com.prineside.tdi2."
GDXNS = "com.badlogic.gdx."
CFG = luajava.bindClass(GNS .. "Config")
-- SP - System Provider

-- com.prineside.tdi2.enums.*
local enumNames = {
    "AbilityType",
    "BossTileType",
    "BuffType",
    "BuildingType",
    "DamageType",
    "DifficultyMode",
    "EnemyType",
    "ExplosionType",
    "GameValueType",
    "GateType",
    "ItemType",
    "MinerType",
    "ModifierType",
    "ProjectileType",
    "ResourceType",
    "PredefinedCoreTileType",
    "SpaceTileBonusType",
    "SpecialDamageType",
    "StaticSoundType",
    "StatisticsType",
    "TileType",
    "TowerStatType",
    "TowerType"
};
_G.enums = {}
for _, v in pairs(enumNames) do
    _G.enums[v] = luajava.bindClass(GNS .. "enums." .. v)
end

log("Generic scripts loaded")