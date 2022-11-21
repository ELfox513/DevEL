.class public Lcom/prineside/tdi2/managers/ItemManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/ItemManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ItemManager$Serializer;
    }
.end annotation


# static fields
.field public static final ENCRYPTED_CASES_QUEUE:[Lcom/prineside/tdi2/enums/CaseType;

.field public static b:[Ljava/lang/String;

.field public static final d:Lcom/badlogic/gdx/utils/IntArray;


# instance fields
.field public final a:[Lcom/prineside/tdi2/Item$Factory;

.field public craftRecipes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/CraftRecipe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->values()[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->P_DECRYPTED:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-lock-unlocked"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->P_ENCRYPTED:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-lock"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_ROADS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-road"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SOUNDS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-note"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SOURCES:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-pickaxe"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_PLATFORMS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-platform"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_BASES:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-flag"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SPAWNS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-skull"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SPECIAL:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-star"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_CURRENCY:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-money"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_TOKENS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-token"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_DUST:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-dust"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_BLUEPRINT:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-blueprint"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_RESOURCE:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "resource-scalar"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->O_OTHER:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-cubes-stacked"

    aput-object v2, v0, v1

    const/16 v0, 0x78

    new-array v0, v0, [Lcom/prineside/tdi2/enums/CaseType;

    sput-object v0, Lcom/prineside/tdi2/managers/ItemManager;->ENCRYPTED_CASES_QUEUE:[Lcom/prineside/tdi2/enums/CaseType;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/ItemManager;->d:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->values:[Lcom/prineside/tdi2/enums/ItemType;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/Item$Factory;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x78

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/managers/ItemManager;->ENCRYPTED_CASES_QUEUE:[Lcom/prineside/tdi2/enums/CaseType;

    sget-object v3, Lcom/prineside/tdi2/enums/CaseType;->GREEN:Lcom/prineside/tdi2/enums/CaseType;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40400000    # 3.0f

    :goto_1
    const/high16 v3, 0x42f00000    # 120.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    sget-object v3, Lcom/prineside/tdi2/managers/ItemManager;->ENCRYPTED_CASES_QUEUE:[Lcom/prineside/tdi2/enums/CaseType;

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v4

    sget-object v5, Lcom/prineside/tdi2/enums/CaseType;->BLUE:Lcom/prineside/tdi2/enums/CaseType;

    aput-object v5, v3, v4

    const/high16 v3, 0x40200000    # 2.5f

    add-float/2addr v1, v3

    goto :goto_1

    :cond_1
    const/16 v1, 0x12

    :goto_2
    if-ge v1, v2, :cond_2

    sget-object v3, Lcom/prineside/tdi2/managers/ItemManager;->ENCRYPTED_CASES_QUEUE:[Lcom/prineside/tdi2/enums/CaseType;

    sget-object v4, Lcom/prineside/tdi2/enums/CaseType;->PURPLE:Lcom/prineside/tdi2/enums/CaseType;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0xc

    goto :goto_2

    :cond_2
    const/16 v1, 0x24

    :goto_3
    if-ge v1, v2, :cond_3

    sget-object v3, Lcom/prineside/tdi2/managers/ItemManager;->ENCRYPTED_CASES_QUEUE:[Lcom/prineside/tdi2/enums/CaseType;

    sget-object v4, Lcom/prineside/tdi2/enums/CaseType;->ORANGE:Lcom/prineside/tdi2/enums/CaseType;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x18

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/managers/ItemManager;->ENCRYPTED_CASES_QUEUE:[Lcom/prineside/tdi2/enums/CaseType;

    const/16 v2, 0x77

    sget-object v3, Lcom/prineside/tdi2/enums/CaseType;->CYAN:Lcom/prineside/tdi2/enums/CaseType;

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->ACCELERATOR:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/AcceleratorItem$AcceleratorItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/GreenPaperItem$GreenPaperItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/GreenPaperItem$GreenPaperItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->GATE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->RANDOM_TILE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->RANDOM_BARRIER:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/RandomBarrierItem$RandomBarrierItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/RandomBarrierItem$RandomBarrierItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->RANDOM_TELEPORT:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/RandomTeleportItem$RandomTeleportItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/RandomTeleportItem$RandomTeleportItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->CASE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->TROPHY:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->GAME_VALUE_GLOBAL:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->GAME_VALUE_LEVEL:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->OPENED_RESEARCH:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->STAR:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/StarItem$StarItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/StarItem$StarItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->SKILL_POINT:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/SkillPointItem$SkillPointItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/SkillPointItem$SkillPointItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->ABILITY:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/AbilityItem$AbilityItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/AbilityItem$AbilityItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->BIT_DUST:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/BitDustItem$BitDustItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/BitDustItem$BitDustItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->PRESTIGE_DUST:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/PrestigeDustItem$PrestigeDustItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/PrestigeDustItem$PrestigeDustItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->BLUEPRINT:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->ABILITY_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/AbilityTokenItem$AbilityTokenItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/AbilityTokenItem$AbilityTokenItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->CASE_KEY:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/CaseKeyItem$CaseKeyItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->RARITY_BOOST:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/RarityBoostItem$RarityBoostItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/RarityBoostItem$RarityBoostItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->LOOT_BOOST:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/LootBoostItem$LootBoostItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/LootBoostItem$LootBoostItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/PrestigeTokenItem$PrestigeTokenItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/PrestigeTokenItem$PrestigeTokenItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->RESEARCH_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/ResearchTokenItem$ResearchTokenItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/ResearchTokenItem$ResearchTokenItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->RESEARCH_TOKEN_USED:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/ResearchTokenUsedItem$ResearchTokenUsedItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/ResearchTokenUsedItem$ResearchTokenUsedItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/LuckyShotTokenItem$LuckyShotTokenItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/LuckyShotTokenItem$LuckyShotTokenItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->DOUBLE_GAIN_SHARD:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->DAT_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/items/DatPaperItem$DatPaperItemFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/items/DatPaperItem$DatPaperItemFactory;-><init>()V

    aput-object v3, v1, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->values:[Lcom/prineside/tdi2/enums/ItemType;

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v4, v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all item factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method


# virtual methods
.method public generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;
    .locals 14

    new-instance v1, Lcom/prineside/tdi2/ItemStack;

    sget-object v0, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/prineside/tdi2/ItemStack;Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0
.end method

.method public generateItemByRarity(Lcom/prineside/tdi2/ItemStack;Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p13

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    mul-float v3, v3, v4

    const v4, 0x3f59999a    # 0.85f

    add-float/2addr v3, v4

    mul-float v3, v3, p5

    sget-object v4, Lcom/prineside/tdi2/managers/ItemManager;->d:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    sget-object v5, Lcom/prineside/tdi2/managers/ItemManager$2;->d:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v8, 0xf

    const/high16 v9, 0x40000000    # 2.0f

    const/16 v10, 0x28

    const/4 v11, 0x6

    const/high16 v12, 0x41f00000    # 30.0f

    const/high16 v16, 0x42fa0000    # 125.0f

    const v17, 0x3e4ccccd    # 0.2f

    const/4 v13, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v14, 0x2

    const/high16 v18, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    if-eq v5, v15, :cond_0

    if-eq v5, v14, :cond_1

    if-eq v5, v7, :cond_4

    if-eq v5, v6, :cond_7

    if-ne v5, v13, :cond_e

    goto/16 :goto_5

    :cond_0
    mul-float v5, p6, v16

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v15}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v5, 0x78

    invoke-virtual {v4, v5, v14}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v5, 0x8c

    invoke-virtual {v4, v5, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v5, v5, p9

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    mul-float v5, p11, v12

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v13}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    invoke-static {v1, v4}, Lcom/prineside/tdi2/utils/PMath;->getByChance(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/IntArray;)I

    move-result v5

    if-eq v5, v15, :cond_17

    if-eq v5, v14, :cond_15

    if-eq v5, v7, :cond_12

    if-eq v5, v6, :cond_10

    if-eq v5, v13, :cond_f

    :cond_1
    mul-float v5, p6, v16

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v15}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v5, 0xaa

    invoke-virtual {v4, v5, v14}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    invoke-virtual {v4, v10, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    mul-float v5, p9, v9

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    invoke-virtual {v4, v8, v13}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    mul-float v5, p11, v12

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v11}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    invoke-static {v1, v4}, Lcom/prineside/tdi2/utils/PMath;->getByChance(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/IntArray;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    sget-object v2, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    add-float v1, v1, v18

    mul-float v1, v1, v3

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    const v3, 0x7fffffff

    invoke-static {v1, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_1
    sget-object v2, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    sget-object v4, Lcom/prineside/tdi2/enums/GateType;->BARRIER_TYPE:Lcom/prineside/tdi2/enums/GateType;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/prineside/tdi2/managers/GateManager;->createRandomGate(Lcom/prineside/tdi2/enums/GateType;FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v2, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/CaseType;->BLUE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    cmpg-float v1, v1, p10

    if-ltz v1, :cond_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v2, v3, v13, v15}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget-object v1, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_I:Lcom/prineside/tdi2/items/BlueprintItem;

    mul-float v3, v3, v18

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    const v3, 0x7fffffff

    invoke-static {v2, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_4
    mul-float v3, p4, v17

    add-float v3, v3, v17

    if-eqz p12, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v3, v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v4, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    invoke-virtual {v5, v3, v1, v2}, Lcom/prineside/tdi2/managers/TileManager;->createRandomTile(FLcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_VECTOR:Lcom/prineside/tdi2/items/ResourceItem;

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v3, v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    const v3, 0x7fffffff

    invoke-static {v2, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    mul-float v5, p6, v16

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v15}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v5, 0xb4

    invoke-virtual {v4, v5, v14}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    invoke-virtual {v4, v10, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    mul-float v5, p9, v9

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    invoke-virtual {v4, v8, v13}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    mul-float v5, p11, v12

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v11}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    invoke-static {v1, v4}, Lcom/prineside/tdi2/utils/PMath;->getByChance(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/IntArray;)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_6
    sget-object v2, Lcom/prineside/tdi2/Item$D;->CASE_KEY_ORANGE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    add-float v1, v1, v18

    mul-float v1, v1, v3

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    const v3, 0x7fffffff

    invoke-static {v1, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_7
    sget-object v2, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    sget-object v4, Lcom/prineside/tdi2/enums/GateType;->TELEPORT:Lcom/prineside/tdi2/enums/GateType;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/prineside/tdi2/managers/GateManager;->createRandomGate(Lcom/prineside/tdi2/enums/GateType;FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_8
    sget-object v2, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/CaseType;->PURPLE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    cmpg-float v1, v1, p10

    if-ltz v1, :cond_5

    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v2, v3, v13, v15}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_9
    sget-object v1, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_II:Lcom/prineside/tdi2/items/BlueprintItem;

    mul-float v3, v3, v18

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    const v3, 0x7fffffff

    invoke-static {v2, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_a
    const v3, 0x3ecccccd    # 0.4f

    mul-float v4, p4, v17

    add-float/2addr v4, v3

    if-eqz p12, :cond_6

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v4, v4, v2

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v3, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    invoke-virtual {v5, v4, v1, v2}, Lcom/prineside/tdi2/managers/TileManager;->createRandomTile(FLcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_b
    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_MATRIX:Lcom/prineside/tdi2/items/ResourceItem;

    const/high16 v2, 0x44160000    # 600.0f

    mul-float v3, v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    const v3, 0x7fffffff

    invoke-static {v2, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_3
    mul-float v5, p6, v16

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v15}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v5, 0xbe

    invoke-virtual {v4, v5, v14}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    invoke-virtual {v4, v10, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    mul-float v5, p9, v18

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    invoke-virtual {v4, v6, v13}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    mul-float v5, p11, v12

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v11}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v5, v5, Lcom/prineside/tdi2/managers/ProgressManager;->lootBoostTimeLeft:F

    const v8, 0x4728c000    # 43200.0f

    cmpg-float v5, v5, v8

    if-gez v5, :cond_8

    const/high16 v5, 0x432a0000    # 170.0f

    mul-float v5, v5, p7

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    const/4 v8, 0x7

    invoke-virtual {v4, v5, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    :cond_8
    invoke-static {v1, v4}, Lcom/prineside/tdi2/utils/PMath;->getByChance(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/IntArray;)I

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_5

    :pswitch_c
    sget-object v1, Lcom/prineside/tdi2/Item$D;->LOOT_BOOST:Lcom/prineside/tdi2/items/LootBoostItem;

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_d
    sget-object v2, Lcom/prineside/tdi2/Item$D;->CASE_KEY_CYAN:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    add-float v1, v1, v18

    mul-float v1, v1, v3

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    const v4, 0x7fffffff

    invoke-static {v1, v15, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_e
    const v4, 0x7fffffff

    sget-object v1, Lcom/prineside/tdi2/Item$D;->ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem;

    mul-float v3, v3, v18

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-static {v2, v15, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_f
    sget-object v2, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/CaseType;->ORANGE:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    cmpg-float v1, v1, p10

    if-ltz v1, :cond_9

    const/4 v13, 0x1

    goto :goto_4

    :cond_9
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v2, v3, v13, v15}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_10
    sget-object v1, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_III:Lcom/prineside/tdi2/items/BlueprintItem;

    mul-float v3, v3, v18

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    const v3, 0x7fffffff

    invoke-static {v2, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_11
    const v3, 0x3f19999a    # 0.6f

    mul-float v4, p4, v17

    add-float/2addr v4, v3

    if-eqz p12, :cond_a

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v4, v4, v2

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_a
    sget-object v3, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    invoke-virtual {v5, v4, v1, v2}, Lcom/prineside/tdi2/managers/TileManager;->createRandomTile(FLcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_12
    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_TENSOR:Lcom/prineside/tdi2/items/ResourceItem;

    const/high16 v2, 0x44480000    # 800.0f

    mul-float v3, v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    const v3, 0x7fffffff

    invoke-static {v2, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :goto_5
    mul-float v5, p6, v16

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v15}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v5, 0xb4

    invoke-virtual {v4, v5, v14}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v5, 0x1e

    invoke-virtual {v4, v5, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    mul-float v5, p9, v18

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/high16 v5, 0x420c0000    # 35.0f

    mul-float v5, v5, p8

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v13}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/high16 v5, 0x41480000    # 12.5f

    mul-float v5, v5, p7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    invoke-virtual {v4, v5, v11}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/4 v5, 0x7

    invoke-virtual {v4, v14, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v5

    const v6, 0x3b449ba6    # 0.003f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b

    const/16 v5, 0x8

    invoke-virtual {v4, v15, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    :cond_b
    invoke-static {v1, v4}, Lcom/prineside/tdi2/utils/PMath;->getByChance(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/IntArray;)I

    move-result v4

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_7

    :pswitch_13
    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_14
    sget-object v1, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_15
    sget-object v1, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_16
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v3, v3, v1

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    const v2, 0x7fffffff

    invoke-static {v1, v15, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_17
    sget-object v2, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/CaseType;->CYAN:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    cmpg-float v1, v1, p10

    if-ltz v1, :cond_c

    const/4 v13, 0x1

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v2, v3, v13, v15}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_18
    sget-object v1, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_IV:Lcom/prineside/tdi2/items/BlueprintItem;

    mul-float v3, v3, v18

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    const v3, 0x7fffffff

    invoke-static {v2, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_19
    const v3, 0x3f4ccccd    # 0.8f

    mul-float v4, p4, v17

    add-float/2addr v4, v3

    if-eqz p12, :cond_d

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v4, v4, v2

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v3, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    invoke-virtual {v5, v4, v1, v2}, Lcom/prineside/tdi2/managers/TileManager;->createRandomTile(FLcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :pswitch_1a
    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_INFIAR:Lcom/prineside/tdi2/items/ResourceItem;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v3, v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    const v3, 0x7fffffff

    invoke-static {v2, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_e
    :goto_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "failed to generate item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    sget-object v2, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    add-float v1, v1, v18

    mul-float v1, v1, v3

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    const v3, 0x7fffffff

    invoke-static {v1, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_10
    sget-object v2, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v3, Lcom/prineside/tdi2/enums/CaseType;->GREEN:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    cmpg-float v1, v1, p10

    if-ltz v1, :cond_11

    const/4 v13, 0x1

    goto :goto_8

    :cond_11
    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v2, v3, v13, v15}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v2

    if-eqz v2, :cond_14

    if-eq v2, v15, :cond_13

    sget-object v2, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_9

    :cond_13
    sget-object v2, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_9

    :cond_14
    sget-object v2, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    mul-float v1, v1, v9

    add-float v1, v1, v18

    mul-float v1, v1, v3

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    const v3, 0x7fffffff

    invoke-static {v1, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_15
    mul-float v3, p4, v17

    if-eqz p12, :cond_16

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v3, v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_16
    sget-object v4, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    invoke-virtual {v5, v3, v1, v2}, Lcom/prineside/tdi2/managers/TileManager;->createRandomTile(FLcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    :cond_17
    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_SCALAR:Lcom/prineside/tdi2/items/ResourceItem;

    const/high16 v2, 0x43480000    # 200.0f

    mul-float v3, v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    const v3, 0x7fffffff

    invoke-static {v2, v15, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getCategoryNameAlias(Lcom/prineside/tdi2/enums/ItemCategoryType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_category_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCraftRecipes(Lcom/prineside/tdi2/Item;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/Item;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/CraftRecipe;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/CraftRecipe;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/CraftRecipe;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/ItemType;",
            ")",
            "Lcom/prineside/tdi2/Item$Factory<",
            "+",
            "Lcom/prineside/tdi2/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getQueuedEncryptedCaseType(I)Lcom/prineside/tdi2/enums/CaseType;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->ENCRYPTED_CASES_QUEUE:[Lcom/prineside/tdi2/enums/CaseType;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSubcategoryColor(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager$2;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P400:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_3
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P400:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_5
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_7
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P400:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_8
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_9
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_a
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P400:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_b
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P400:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_c
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_d
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_e
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSubcategoryIconAlias(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/ItemManager;->b:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSubcategoryName(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_subcategory_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 21

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;->setup()V

    iget-object v1, v0, Lcom/prineside/tdi2/managers/ItemManager;->a:[Lcom/prineside/tdi2/Item$Factory;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-interface {v5}, Lcom/prineside/tdi2/Item$Factory;->setup()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Item$D;->setup()V

    iget-object v1, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/prineside/tdi2/enums/BlueprintType;

    sget-object v4, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_II:Lcom/prineside/tdi2/enums/BlueprintType;

    aput-object v4, v2, v3

    sget-object v4, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_III:Lcom/prineside/tdi2/enums/BlueprintType;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    sget-object v4, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_IV:Lcom/prineside/tdi2/enums/BlueprintType;

    const/4 v6, 0x2

    aput-object v4, v2, v6

    const/4 v4, 0x0

    :goto_1
    const/high16 v9, 0x44e10000    # 1800.0f

    const/high16 v10, 0x43960000    # 300.0f

    const/4 v12, 0x5

    const/16 v13, 0xa

    if-ge v4, v1, :cond_4

    aget-object v14, v2, v4

    new-instance v15, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v15}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v7, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-virtual {v8, v14}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v7, v15, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    sget-object v7, Lcom/prineside/tdi2/managers/ItemManager$2;->a:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_3

    if-eq v7, v6, :cond_2

    if-eq v7, v1, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    const/high16 v7, 0x45e10000    # 7200.0f

    invoke-virtual {v15, v7}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/16 v7, 0x3a98

    goto :goto_2

    :cond_2
    invoke-virtual {v15, v9}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/16 v7, 0xbb8

    goto :goto_2

    :cond_3
    invoke-virtual {v15, v10}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/16 v7, 0x1f4

    :goto_2
    invoke-virtual {v15, v13}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    iget-object v8, v15, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    new-instance v9, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    new-array v11, v3, [I

    invoke-direct {v9, v10, v7, v11}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v7, Lcom/prineside/tdi2/enums/BlueprintType;->values:[Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    sub-int/2addr v8, v5

    aget-object v7, v7, v8

    new-instance v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v9, Lcom/prineside/tdi2/enums/ItemType;->BLUEPRINT:Lcom/prineside/tdi2/enums/ItemType;

    new-array v10, v6, [I

    sget-object v11, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v11, v10, v3

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v11, v10, v5

    invoke-direct {v8, v9, v12, v10}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V

    iput v6, v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    new-array v9, v5, [Lcom/prineside/tdi2/Item;

    sget-object v10, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-virtual {v10, v7}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v7

    aput-object v7, v9, v3

    iput-object v9, v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    iget-object v7, v15, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    new-array v2, v1, [Lcom/prineside/tdi2/enums/BlueprintType;

    sget-object v4, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_I:Lcom/prineside/tdi2/enums/BlueprintType;

    aput-object v4, v2, v3

    sget-object v4, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_II:Lcom/prineside/tdi2/enums/BlueprintType;

    aput-object v4, v2, v5

    sget-object v4, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_III:Lcom/prineside/tdi2/enums/BlueprintType;

    aput-object v4, v2, v6

    const/4 v4, 0x0

    :goto_3
    const/high16 v7, 0x42700000    # 60.0f

    const/4 v14, 0x4

    if-ge v4, v1, :cond_8

    aget-object v15, v2, v4

    new-instance v11, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v11}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v8, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v8, Lcom/prineside/tdi2/ItemStack;

    sget-object v12, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-virtual {v12, v15}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v12

    invoke-direct {v8, v12, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v8, v11, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/managers/ItemManager$2;->a:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v8, v8, v12

    if-eq v8, v5, :cond_7

    if-eq v8, v6, :cond_6

    if-eq v8, v14, :cond_5

    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v11, v7}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/16 v8, 0x64

    goto :goto_4

    :cond_6
    invoke-virtual {v11, v9}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/16 v8, 0xbb8

    goto :goto_4

    :cond_7
    invoke-virtual {v11, v10}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/16 v8, 0x1f4

    :goto_4
    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    iget-object v7, v11, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    new-instance v12, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v14, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    new-array v9, v3, [I

    invoke-direct {v12, v14, v8, v9}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v7, Lcom/prineside/tdi2/enums/BlueprintType;->values:[Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    add-int/2addr v8, v5

    aget-object v7, v7, v8

    new-instance v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v9, Lcom/prineside/tdi2/enums/ItemType;->BLUEPRINT:Lcom/prineside/tdi2/enums/ItemType;

    new-array v12, v6, [I

    sget-object v14, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v14, v12, v3

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v14, v12, v5

    invoke-direct {v8, v9, v5, v12}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V

    new-array v9, v5, [Lcom/prineside/tdi2/Item;

    sget-object v12, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-virtual {v12, v7}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v7

    aput-object v7, v9, v3

    iput-object v9, v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    iget-object v7, v11, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    const/high16 v9, 0x44e10000    # 1800.0f

    const/4 v12, 0x5

    goto/16 :goto_3

    :cond_8
    new-instance v2, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v2}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v4, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    sget-object v9, Lcom/prineside/tdi2/enums/CaseType;->BLUEPRINT:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v8, v9, v3, v3}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v8

    invoke-direct {v4, v8, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v4, v2, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    const/high16 v4, 0x46610000    # 14400.0f

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    new-instance v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v9, Lcom/prineside/tdi2/enums/ItemType;->BLUEPRINT:Lcom/prineside/tdi2/enums/ItemType;

    new-array v10, v6, [I

    sget-object v11, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v11, v10, v3

    sget-object v11, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_III:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v12, v10, v5

    invoke-direct {v8, v9, v5, v10}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V

    new-array v9, v5, [Lcom/prineside/tdi2/Item;

    sget-object v10, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v10

    aput-object v10, v9, v3

    iput-object v9, v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    iget-object v2, v2, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-array v2, v14, [Lcom/prineside/tdi2/enums/ResourceType;

    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->VECTOR:Lcom/prineside/tdi2/enums/ResourceType;

    aput-object v8, v2, v3

    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->MATRIX:Lcom/prineside/tdi2/enums/ResourceType;

    aput-object v8, v2, v5

    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->TENSOR:Lcom/prineside/tdi2/enums/ResourceType;

    aput-object v8, v2, v6

    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->INFIAR:Lcom/prineside/tdi2/enums/ResourceType;

    aput-object v8, v2, v1

    const/4 v8, 0x0

    :goto_5
    const/high16 v9, 0x41700000    # 15.0f

    const/16 v10, 0x3e8

    if-ge v8, v14, :cond_d

    aget-object v11, v2, v8

    new-instance v12, Lcom/prineside/tdi2/managers/ItemManager$1;

    invoke-direct {v12, v0, v11}, Lcom/prineside/tdi2/managers/ItemManager$1;-><init>(Lcom/prineside/tdi2/managers/ItemManager;Lcom/prineside/tdi2/enums/ResourceType;)V

    iget-object v15, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v15, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v15, Lcom/prineside/tdi2/ItemStack;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    invoke-virtual {v7, v11}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v7

    invoke-direct {v15, v7, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v15, v12, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    sget-object v7, Lcom/prineside/tdi2/managers/ItemManager$2;->b:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v7, v7, v15

    if-eq v7, v5, :cond_c

    if-eq v7, v6, :cond_b

    if-eq v7, v1, :cond_a

    if-eq v7, v14, :cond_9

    const/4 v7, 0x0

    goto :goto_6

    :cond_9
    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v12, v7}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/4 v7, 0x4

    goto :goto_6

    :cond_a
    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/4 v7, 0x3

    goto :goto_6

    :cond_b
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v12, v7}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/4 v7, 0x2

    goto :goto_6

    :cond_c
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-virtual {v12, v7}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/4 v7, 0x1

    :goto_6
    invoke-virtual {v12, v10}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    iget-object v9, v12, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    new-instance v10, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v15, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    invoke-direct {v10, v15, v7}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v7, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    sub-int/2addr v9, v5

    aget-object v7, v7, v9

    new-instance v9, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    new-array v11, v6, [I

    sget-object v15, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v15, v11, v3

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v15, v11, v5

    invoke-direct {v9, v10, v1, v11}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V

    iput v6, v9, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    new-array v10, v5, [Lcom/prineside/tdi2/Item;

    sget-object v11, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    invoke-virtual {v11, v7}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v7

    aput-object v7, v10, v3

    iput-object v10, v9, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    iget-object v7, v12, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    const/high16 v7, 0x42700000    # 60.0f

    goto/16 :goto_5

    :cond_d
    new-instance v2, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v2}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v7, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_I:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-direct {v7, v8, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v7, v2, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    const/high16 v7, 0x44160000    # 600.0f

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    new-instance v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v11, Lcom/prineside/tdi2/enums/ItemType;->BLUEPRINT:Lcom/prineside/tdi2/enums/ItemType;

    const/16 v12, 0x14

    sget-object v15, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    invoke-direct {v8, v11, v12, v15}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;ILcom/prineside/tdi2/enums/RarityType;)V

    iput v7, v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    new-array v7, v1, [Lcom/prineside/tdi2/Item;

    sget-object v11, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    aput-object v11, v7, v3

    sget-object v11, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    aput-object v11, v7, v5

    sget-object v11, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    aput-object v11, v7, v6

    iput-object v7, v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    iget-object v2, v2, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v2, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v2}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v7, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/items/PrestigeTokenItem;

    invoke-direct {v7, v8, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v7, v2, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    const/high16 v7, 0x43b40000    # 360.0f

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/16 v7, 0x64

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    new-instance v7, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v8, Lcom/prineside/tdi2/enums/ItemType;->PRESTIGE_DUST:Lcom/prineside/tdi2/enums/ItemType;

    const/16 v11, 0x5dc

    invoke-direct {v7, v8, v11}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I)V

    new-array v8, v5, [Lcom/prineside/tdi2/Item;

    sget-object v12, Lcom/prineside/tdi2/Item$D;->PRESTIGE_DUST:Lcom/prineside/tdi2/items/PrestigeDustItem;

    aput-object v12, v8, v3

    iput-object v8, v7, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    iget-object v8, v2, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    new-instance v7, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v8, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    invoke-direct {v7, v8, v10}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I)V

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v2, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v2}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v7, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    invoke-direct {v7, v8, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v7, v2, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    const/high16 v7, 0x45610000    # 3600.0f

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    invoke-virtual {v2, v13}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    iget-object v8, v2, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    new-instance v10, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v12, Lcom/prineside/tdi2/enums/ItemType;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    const/16 v15, 0x64

    invoke-direct {v10, v12, v15}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I)V

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v8, v2, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    new-instance v10, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v12, Lcom/prineside/tdi2/enums/ItemType;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/enums/ItemType;

    const/4 v15, 0x7

    invoke-direct {v10, v12, v15}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I)V

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    new-instance v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->ACCELERATOR:Lcom/prineside/tdi2/enums/ItemType;

    const/16 v12, 0x50

    invoke-direct {v8, v10, v12}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I)V

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v2, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v2}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v8, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v8, Lcom/prineside/tdi2/ItemStack;

    sget-object v10, Lcom/prineside/tdi2/Item$D;->RESEARCH_TOKEN:Lcom/prineside/tdi2/items/ResearchTokenItem;

    invoke-direct {v8, v10, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v8, v2, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    invoke-virtual {v2, v13}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    new-instance v7, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v8, Lcom/prineside/tdi2/enums/ItemType;->RESEARCH_TOKEN_USED:Lcom/prineside/tdi2/enums/ItemType;

    invoke-direct {v7, v8, v6}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I)V

    iput-boolean v5, v7, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->ignoresDiscounts:Z

    iget-object v2, v2, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    sget-object v7, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->create()Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v8

    sget-object v10, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->DELTA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    iput-object v10, v8, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-instance v12, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v12}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v15, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v15, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v15, Lcom/prineside/tdi2/ItemStack;

    sget-object v11, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v11, v8}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v8

    invoke-direct {v15, v8, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v15, v12, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v12, v4}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    invoke-virtual {v12, v5}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    new-instance v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v11, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    new-array v15, v14, [I

    sget-object v17, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v18, v15, v3

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v18, v15, v5

    sget-object v18, Lcom/prineside/tdi2/enums/ItemDataType;->TILE_PREDEFINED_CORE_TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aput v19, v15, v6

    sget-object v9, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->ALPHA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aput v20, v15, v1

    invoke-direct {v8, v11, v13, v15}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V

    iput v6, v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->create()Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v15

    iput-object v9, v15, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-array v9, v5, [Lcom/prineside/tdi2/Item;

    sget-object v4, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v4, v15}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v4

    aput-object v4, v9, v3

    iput-object v9, v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    iget-object v4, v12, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->create()Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v4

    sget-object v8, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->ZETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    iput-object v8, v4, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-instance v8, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v8}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v9, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v9, Lcom/prineside/tdi2/ItemStack;

    sget-object v12, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v12, v4}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v4

    invoke-direct {v9, v4, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v9, v8, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    const v4, 0x477d2000    # 64800.0f

    invoke-virtual {v8, v4}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    new-instance v9, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    new-array v12, v14, [I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v15, v12, v3

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v15, v12, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v15, v12, v6

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v15, v12, v1

    invoke-direct {v9, v11, v13, v12}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V

    iput v6, v9, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->create()Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v12

    iput-object v10, v12, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-array v10, v5, [Lcom/prineside/tdi2/Item;

    sget-object v15, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v15, v12}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v12

    aput-object v12, v10, v3

    iput-object v10, v9, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    iget-object v8, v8, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->create()Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->THETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    iput-object v9, v8, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-instance v10, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v10}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v12, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v12, Lcom/prineside/tdi2/ItemStack;

    sget-object v15, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v15, v8}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v8

    invoke-direct {v12, v8, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v12, v10, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    const/high16 v8, 0x46610000    # 14400.0f

    invoke-virtual {v10, v8}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    invoke-virtual {v10, v5}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    new-instance v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    new-array v12, v14, [I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v15, v12, v3

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v15, v12, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v15, v12, v6

    sget-object v15, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->BETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aput v20, v12, v1

    invoke-direct {v8, v11, v13, v12}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V

    iput v6, v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->create()Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v12

    iput-object v15, v12, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-array v15, v5, [Lcom/prineside/tdi2/Item;

    sget-object v13, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v13, v12}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v12

    aput-object v12, v15, v3

    iput-object v15, v8, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    iget-object v10, v10, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->create()Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v8

    sget-object v10, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->XI:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    iput-object v10, v8, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-instance v10, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v10}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v12, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v12, Lcom/prineside/tdi2/ItemStack;

    sget-object v13, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v13, v8}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v8

    invoke-direct {v12, v8, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v12, v10, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v10, v4}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    invoke-virtual {v10, v5}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    new-instance v4, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    new-array v8, v14, [I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v12, v8, v3

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v7, v8, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v7, v8, v6

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v7, v8, v1

    const/16 v7, 0xa

    invoke-direct {v4, v11, v7, v8}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V

    iput v6, v4, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->create()Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v2

    iput-object v9, v2, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-array v7, v5, [Lcom/prineside/tdi2/Item;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v8, v2}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v2

    aput-object v2, v7, v3

    iput-object v7, v4, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    iget-object v2, v10, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    sget-object v4, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->values:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    array-length v7, v4

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_13

    aget-object v9, v4, v8

    const/4 v10, 0x2

    const/4 v11, 0x5

    :goto_8
    if-gt v10, v11, :cond_12

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->create()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v11

    iput-object v9, v11, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    iput v10, v11, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    new-instance v12, Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {v12}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    iget-object v13, v0, Lcom/prineside/tdi2/managers/ItemManager;->craftRecipes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v13, Lcom/prineside/tdi2/ItemStack;

    sget-object v15, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v15, v11}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v11

    invoke-direct {v13, v11, v5}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iput-object v13, v12, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    if-eq v10, v6, :cond_11

    if-eq v10, v1, :cond_10

    if-eq v10, v14, :cond_f

    const/4 v11, 0x5

    if-eq v10, v11, :cond_e

    const/high16 v13, 0x41700000    # 15.0f

    const/4 v15, 0x0

    goto :goto_9

    :cond_e
    const/high16 v11, 0x43f00000    # 480.0f

    invoke-virtual {v12, v11}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/4 v11, 0x5

    const/high16 v13, 0x41700000    # 15.0f

    const/16 v15, 0x3a98

    goto :goto_9

    :cond_f
    const/16 v11, 0x1388

    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/4 v11, 0x5

    const/high16 v13, 0x41700000    # 15.0f

    const/16 v15, 0x1388

    goto :goto_9

    :cond_10
    const/high16 v11, 0x42700000    # 60.0f

    invoke-virtual {v12, v11}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/4 v11, 0x5

    const/high16 v13, 0x41700000    # 15.0f

    const/16 v15, 0x5dc

    goto :goto_9

    :cond_11
    const/high16 v11, 0x42700000    # 60.0f

    const/high16 v13, 0x41700000    # 15.0f

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/CraftRecipe;->setStockTime(F)V

    const/4 v11, 0x5

    const/16 v15, 0x1f4

    :goto_9
    invoke-virtual {v12, v11}, Lcom/prineside/tdi2/CraftRecipe;->setStockMaxQueueStack(I)V

    new-instance v11, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v13, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    const/4 v14, 0x6

    new-array v14, v14, [I

    sget-object v18, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v18, v14, v3

    sget-object v18, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v18, v14, v5

    sget-object v18, Lcom/prineside/tdi2/enums/ItemDataType;->BONUS_TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v18, v14, v6

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v18, v14, v1

    sget-object v18, Lcom/prineside/tdi2/enums/ItemDataType;->BONUS_LEVEL:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    const/16 v17, 0x4

    aput v18, v14, v17

    add-int/lit8 v3, v10, -0x1

    const/16 v16, 0x5

    aput v3, v14, v16

    invoke-direct {v11, v13, v1, v14}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V

    iput v6, v11, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->create()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v13

    iput v3, v13, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    iput-object v9, v13, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    new-array v3, v5, [Lcom/prineside/tdi2/Item;

    sget-object v14, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v3, v14

    iput-object v3, v11, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    iget-object v3, v12, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v3, v12, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    new-instance v11, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    sget-object v12, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    invoke-direct {v11, v12, v15}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;-><init>(Lcom/prineside/tdi2/enums/ItemType;I)V

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x5

    const/4 v14, 0x4

    goto/16 :goto_8

    :cond_12
    const/4 v14, 0x0

    const/16 v16, 0x5

    const/16 v17, 0x4

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/4 v14, 0x4

    goto/16 :goto_7

    :cond_13
    return-void
.end method
