.class public Lcom/prineside/tdi2/Item$D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "D"
.end annotation


# static fields
.field public static ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem;

.field public static ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

.field public static BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

.field public static BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

.field public static BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

.field public static BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

.field public static BLUEPRINT_SPECIAL_I:Lcom/prineside/tdi2/items/BlueprintItem;

.field public static BLUEPRINT_SPECIAL_II:Lcom/prineside/tdi2/items/BlueprintItem;

.field public static BLUEPRINT_SPECIAL_III:Lcom/prineside/tdi2/items/BlueprintItem;

.field public static BLUEPRINT_SPECIAL_IV:Lcom/prineside/tdi2/items/BlueprintItem;

.field public static CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

.field public static CASE_KEY_CYAN:Lcom/prineside/tdi2/items/CaseKeyItem;

.field public static CASE_KEY_ORANGE:Lcom/prineside/tdi2/items/CaseKeyItem;

.field public static CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

.field public static DAT_PAPER:Lcom/prineside/tdi2/items/DatPaperItem;

.field public static F_ABILITY:Lcom/prineside/tdi2/items/AbilityItem$AbilityItemFactory;

.field public static F_ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem$AbilityTokenItemFactory;

.field public static F_ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;

.field public static F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

.field public static F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

.field public static F_CASE_KEY:Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;

.field public static F_DOUBLE_GAIN_SHARD:Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;

.field public static F_GAME_VALUE_GLOBAL:Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;

.field public static F_GAME_VALUE_LEVEL:Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;

.field public static F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

.field public static F_LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem$LuckyShotTokenItemFactory;

.field public static F_OPENED_RESEARCH:Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;

.field public static F_PRESTIGE_TOKEN:Lcom/prineside/tdi2/items/PrestigeTokenItem$PrestigeTokenItemFactory;

.field public static F_RANDOM_BARRIER:Lcom/prineside/tdi2/items/RandomBarrierItem$RandomBarrierItemFactory;

.field public static F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

.field public static F_RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem$ResearchTokenItemFactory;

.field public static F_RESEARCH_TOKEN_USED:Lcom/prineside/tdi2/items/ResearchTokenUsedItem$ResearchTokenUsedItemFactory;

.field public static F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

.field public static F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

.field public static F_TROPHY:Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;

.field public static GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

.field public static LOOT_BOOST:Lcom/prineside/tdi2/items/LootBoostItem;

.field public static LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

.field public static PRESTIGE_DUST:Lcom/prineside/tdi2/items/PrestigeDustItem;

.field public static PRESTIGE_TOKEN:Lcom/prineside/tdi2/items/PrestigeTokenItem;

.field public static RANDOM_TELEPORT:Lcom/prineside/tdi2/items/RandomTeleportItem;

.field public static RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

.field public static RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

.field public static RESEARCH_TOKEN_USED:Lcom/prineside/tdi2/items/ResearchTokenUsedItem;

.field public static RESOURCE_INFIAR:Lcom/prineside/tdi2/items/ResourceItem;

.field public static RESOURCE_MATRIX:Lcom/prineside/tdi2/items/ResourceItem;

.field public static RESOURCE_SCALAR:Lcom/prineside/tdi2/items/ResourceItem;

.field public static RESOURCE_TENSOR:Lcom/prineside/tdi2/items/ResourceItem;

.field public static RESOURCE_VECTOR:Lcom/prineside/tdi2/items/ResourceItem;

.field public static SKILL_POINT:Lcom/prineside/tdi2/items/SkillPointItem;

.field public static STAR:Lcom/prineside/tdi2/items/StarItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setup()V
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->ABILITY_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/items/AbilityTokenItem$AbilityTokenItemFactory;

    sput-object v2, Lcom/prineside/tdi2/Item$D;->F_ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem$AbilityTokenItemFactory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->ACCELERATOR:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->BLUEPRINT:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->CASE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->GATE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->RANDOM_TILE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->CASE_KEY:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_CASE_KEY:Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->ABILITY:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/AbilityItem$AbilityItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_ABILITY:Lcom/prineside/tdi2/items/AbilityItem$AbilityItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->TROPHY:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_TROPHY:Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->RANDOM_BARRIER:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/RandomBarrierItem$RandomBarrierItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_RANDOM_BARRIER:Lcom/prineside/tdi2/items/RandomBarrierItem$RandomBarrierItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->DOUBLE_GAIN_SHARD:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_DOUBLE_GAIN_SHARD:Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->GAME_VALUE_GLOBAL:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_GAME_VALUE_GLOBAL:Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->GAME_VALUE_LEVEL:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;

    sput-object v3, Lcom/prineside/tdi2/Item$D;->F_GAME_VALUE_LEVEL:Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/ItemType;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/items/PrestigeTokenItem$PrestigeTokenItemFactory;

    sput-object v4, Lcom/prineside/tdi2/Item$D;->F_PRESTIGE_TOKEN:Lcom/prineside/tdi2/items/PrestigeTokenItem$PrestigeTokenItemFactory;

    sget-object v4, Lcom/prineside/tdi2/enums/ItemType;->RESEARCH_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/items/ResearchTokenItem$ResearchTokenItemFactory;

    sput-object v5, Lcom/prineside/tdi2/Item$D;->F_RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem$ResearchTokenItemFactory;

    sget-object v5, Lcom/prineside/tdi2/enums/ItemType;->RESEARCH_TOKEN_USED:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/items/ResearchTokenUsedItem$ResearchTokenUsedItemFactory;

    sput-object v6, Lcom/prineside/tdi2/Item$D;->F_RESEARCH_TOKEN_USED:Lcom/prineside/tdi2/items/ResearchTokenUsedItem$ResearchTokenUsedItemFactory;

    sget-object v6, Lcom/prineside/tdi2/enums/ItemType;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/items/LuckyShotTokenItem$LuckyShotTokenItemFactory;

    sput-object v7, Lcom/prineside/tdi2/Item$D;->F_LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem$LuckyShotTokenItemFactory;

    sget-object v7, Lcom/prineside/tdi2/enums/ItemType;->OPENED_RESEARCH:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v7}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;

    sput-object v7, Lcom/prineside/tdi2/Item$D;->F_OPENED_RESEARCH:Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;

    sget-object v7, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v7}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v7

    invoke-interface {v7}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/items/GreenPaperItem;

    sput-object v7, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->SCALAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->RESOURCE_SCALAR:Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->VECTOR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->RESOURCE_VECTOR:Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->MATRIX:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->RESOURCE_MATRIX:Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->TENSOR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->RESOURCE_TENSOR:Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->INFIAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->RESOURCE_INFIAR:Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v7, Lcom/prineside/tdi2/enums/ItemType;->BIT_DUST:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v7}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v7

    invoke-interface {v7}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/items/BitDustItem;

    sput-object v7, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    sget-object v7, Lcom/prineside/tdi2/enums/ItemType;->PRESTIGE_DUST:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v7}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v7

    invoke-interface {v7}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/items/PrestigeDustItem;

    sput-object v7, Lcom/prineside/tdi2/Item$D;->PRESTIGE_DUST:Lcom/prineside/tdi2/items/PrestigeDustItem;

    sget-object v7, Lcom/prineside/tdi2/enums/ItemType;->DAT_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v7}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v7

    invoke-interface {v7}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/items/DatPaperItem;

    sput-object v7, Lcom/prineside/tdi2/Item$D;->DAT_PAPER:Lcom/prineside/tdi2/items/DatPaperItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/BlueprintType;->AGILITY:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/BlueprintType;->EXPERIENCE:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/BlueprintType;->POWER:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_I:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_I:Lcom/prineside/tdi2/items/BlueprintItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_II:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_II:Lcom/prineside/tdi2/items/BlueprintItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_III:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_III:Lcom/prineside/tdi2/items/BlueprintItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_IV:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_IV:Lcom/prineside/tdi2/items/BlueprintItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_CASE_KEY:Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/CaseType;->BLUE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;)Lcom/prineside/tdi2/items/CaseKeyItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_CASE_KEY:Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/CaseType;->PURPLE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;)Lcom/prineside/tdi2/items/CaseKeyItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_CASE_KEY:Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/CaseType;->ORANGE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;)Lcom/prineside/tdi2/items/CaseKeyItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->CASE_KEY_ORANGE:Lcom/prineside/tdi2/items/CaseKeyItem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_CASE_KEY:Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;

    sget-object v8, Lcom/prineside/tdi2/enums/CaseType;->CYAN:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;)Lcom/prineside/tdi2/items/CaseKeyItem;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/Item$D;->CASE_KEY_CYAN:Lcom/prineside/tdi2/items/CaseKeyItem;

    sget-object v7, Lcom/prineside/tdi2/enums/ItemType;->RARITY_BOOST:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v7}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v7

    invoke-interface {v7}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/items/RarityBoostItem;

    sput-object v7, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/AbilityTokenItem;

    sput-object v1, Lcom/prineside/tdi2/Item$D;->ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/AcceleratorItem;

    sput-object v1, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->LOOT_BOOST:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/LootBoostItem;

    sput-object v1, Lcom/prineside/tdi2/Item$D;->LOOT_BOOST:Lcom/prineside/tdi2/items/LootBoostItem;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/PrestigeTokenItem;

    sput-object v1, Lcom/prineside/tdi2/Item$D;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/items/PrestigeTokenItem;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/ResearchTokenItem;

    sput-object v1, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/ResearchTokenUsedItem;

    sput-object v1, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN_USED:Lcom/prineside/tdi2/items/ResearchTokenUsedItem;

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    sput-object v1, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->SKILL_POINT:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/SkillPointItem;

    sput-object v1, Lcom/prineside/tdi2/Item$D;->SKILL_POINT:Lcom/prineside/tdi2/items/SkillPointItem;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->RANDOM_TELEPORT:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/RandomTeleportItem;

    sput-object v1, Lcom/prineside/tdi2/Item$D;->RANDOM_TELEPORT:Lcom/prineside/tdi2/items/RandomTeleportItem;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->STAR:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/items/StarItem;

    sput-object v0, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    return-void
.end method
