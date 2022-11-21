.class public Lcom/prineside/tdi2/tiles/PlatformTile;
.super Lcom/prineside/tdi2/Tile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;
    }
.end annotation


# instance fields
.field public bonusLevel:I

.field public bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

.field public building:Lcom/prineside/tdi2/Building;

.field public walkableEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/PlatformTile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/tiles/PlatformTile;-><init>()V

    return-void
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    iget v2, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    const/4 v1, 0x1

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v4, 0x5

    if-eq v0, v1, :cond_4

    const v1, 0x3f99999a    # 1.2f

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const v3, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->RESOURCE_MATRIX:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v4, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v1

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_TENSOR:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_INFIAR:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    const v3, 0x3f0ccccd    # 0.55f

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_VECTOR:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v4, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v2

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_MATRIX:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_TENSOR:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_SCALAR:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3fb33333    # 1.4f

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_VECTOR:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    const v3, 0x3fa66666    # 1.3f

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_MATRIX:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    const v3, 0x3f733333    # 0.95f

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->RESOURCE_SCALAR:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    int-to-float v3, v3

    const v5, 0x3fcccccd    # 1.6f

    mul-float v3, v3, v5

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->RESOURCE_VECTOR:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v1

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RESOURCE_SCALAR:Lcom/prineside/tdi2/items/ResourceItem;

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public canBeUpgraded()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createUpgradedTile()Lcom/prineside/tdi2/Tile;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/PlatformTile;->canBeUpgraded()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->PLATFORM:Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->create()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    iput-object v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    iget v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Building;->cloneBuilding()Lcom/prineside/tdi2/Building;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PlatformTile can\'t be upgraded more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawBonusExtras(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFZZ)V
    .locals 10

    move-object v0, p0

    move-object v7, p1

    const/4 v8, 0x0

    if-eqz p6, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager$Factories;->PLATFORM:Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v2, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    :goto_0
    aget-object v2, v1, v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_1
    if-eqz p7, :cond_9

    iget-object v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-lez v1, :cond_9

    invoke-virtual {p0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/prineside/tdi2/systems/MapRenderingSystem;->spaceTileBonusesToDrawColoredOnFreeTiles:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-eq v1, v4, :cond_2

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-eq v1, v4, :cond_2

    iget-object v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_ALWAYS_DRAW_TILE_EXTRAS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v3, v5

    if-nez v1, :cond_3

    :cond_2
    const/4 v8, 0x1

    :cond_3
    move v2, v8

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S._mapRendering is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "S is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_1
    const/high16 v1, 0x42000000    # 32.0f

    div-float v1, p4, v1

    const/high16 v3, 0x41300000    # 11.0f

    mul-float v8, v1, v3

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v8

    sub-float v9, p4, v1

    if-eqz v2, :cond_7

    iget-object v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-static {v1}, Lcom/prineside/tdi2/SpaceTileBonus;->getColor(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_7
    const v1, 0x3e3851ec    # 0.18f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(FFFF)V

    :goto_2
    iget v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TileManager$Factories;->PLATFORM:Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-int/2addr v1, v2

    aget-object v2, v3, v1

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_8
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager$Factories;->PLATFORM:Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v2, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    add-float v2, p2, v8

    add-float v3, p3, v8

    move-object p2, p1

    move-object p3, v1

    move p4, v2

    move p5, v3

    move/from16 p6, v9

    move/from16 p7, v9

    invoke-virtual/range {p2 .. p7}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_9
    return-void
.end method

.method public drawExtras(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-eq p6, v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/tiles/PlatformTile;->drawBonusExtras(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFZZ)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/tiles/PlatformTile;->drawBonusExtras(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFZZ)V

    :goto_0
    return-void
.end method

.method public drawHoveredRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Building;->drawHoveredRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V

    :cond_0
    return-void
.end method

.method public drawSelectedRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Building;->drawSelectedRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V

    :cond_0
    return-void
.end method

.method public drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 6

    invoke-super/range {p0 .. p6}, Lcom/prineside/tdi2/Tile;->drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->PLATFORM:Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    iget-object v1, p6, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public fillInventoryWithInfo(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;F)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/prineside/tdi2/SpaceTileBonus;->getBrightColor(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-static {v3}, Lcom/prineside/tdi2/SpaceTileBonus;->getIconName(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    iget v3, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v2, v3}, Lcom/prineside/tdi2/SpaceTileBonus;->getDetailedName(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_0
    return-void
.end method

.method public from(Lcom/prineside/tdi2/Tile;)V
    .locals 1

    check-cast p1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget v0, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    iput v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->cloneBuilding()Lcom/prineside/tdi2/Building;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    return-void
.end method

.method public generateSeedSalt()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public generateUiIcon(F)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 7

    const/high16 v0, 0x43000000    # 128.0f

    div-float v1, p1, v0

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/TileManager$Factories;->PLATFORM:Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    iget-object v6, v6, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    mul-float v1, v1, v0

    invoke-virtual {v4, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager$Factories;->PLATFORM:Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v6, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    :goto_0
    aget-object v3, v5, v3

    invoke-direct {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-eqz v1, :cond_1

    const/high16 v1, 0x42000000    # 32.0f

    div-float v1, p1, v1

    const/high16 v3, 0x41300000    # 11.0f

    mul-float v1, v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v1

    sub-float v3, p1, v3

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager$Factories;->PLATFORM:Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, v5, v0

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v4, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-static {v0}, Lcom/prineside/tdi2/SpaceTileBonus;->getColor(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TileManager$Factories;->PLATFORM:Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v3, v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-static {p1}, Lcom/prineside/tdi2/SpaceTileBonus;->getColor(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    return-object v2
.end method

.method public getData(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->BONUS_TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/ItemDataType;->BONUS_LEVEL:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    return-void
.end method

.method public getInventorySubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_PLATFORMS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getPrestigeScore()D
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    const-wide v1, 0x3f60624dd2f1a9fcL    # 0.002

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-double v5, v0

    const-wide v7, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    add-double/2addr v5, v3

    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    return-wide v1

    :cond_1
    const-wide v0, 0x3fceb851eb851eb8L    # 0.24

    :goto_0
    mul-double v5, v5, v0

    return-wide v5

    :cond_2
    const-wide v0, 0x3fb3b645a1cac083L    # 0.077

    goto :goto_0

    :cond_3
    const-wide v0, 0x3f9999999999999aL    # 0.025

    goto :goto_0

    :cond_4
    const-wide v0, 0x3f80624dd2f1a9fcL    # 0.008

    goto :goto_0

    :cond_5
    mul-double v5, v5, v1

    return-wide v5
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/tiles/PlatformTile$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/PlatformTile;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    sget-object v2, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->values:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    array-length v2, v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    :cond_1
    return p1

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getUpgradePriceInAccelerators()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    return v0
.end method

.method public getUpgradePriceInGreenPapers()I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xfa

    :goto_0
    iget v2, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-gt v0, v2, :cond_0

    mul-int/lit16 v2, v0, 0x96

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getUpgradePriceInResources(Lcom/prineside/tdi2/enums/ResourceType;)I
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/PlatformTile;->canBeUpgraded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    const/high16 v3, 0x40e00000    # 7.0f

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->TENSOR:Lcom/prineside/tdi2/enums/ResourceType;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0xf

    int-to-float p1, p1

    const/high16 v0, 0x41080000    # 8.5f

    mul-float p1, p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    return p1

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->INFIAR:Lcom/prineside/tdi2/enums/ResourceType;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1c

    int-to-float p1, p1

    const/high16 v0, 0x41000000    # 8.0f

    mul-float p1, p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    return p1

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->MATRIX:Lcom/prineside/tdi2/enums/ResourceType;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x11

    int-to-float p1, p1

    const/high16 v0, 0x40f00000    # 7.5f

    mul-float p1, p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    return p1

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->TENSOR:Lcom/prineside/tdi2/enums/ResourceType;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1c

    int-to-float p1, p1

    mul-float p1, p1, v3

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    return p1

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->VECTOR:Lcom/prineside/tdi2/enums/ResourceType;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0xc

    int-to-float p1, p1

    mul-float p1, p1, v3

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    return p1

    :cond_6
    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->MATRIX:Lcom/prineside/tdi2/enums/ResourceType;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x11

    int-to-float p1, p1

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float p1, p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    return p1

    :cond_7
    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->SCALAR:Lcom/prineside/tdi2/enums/ResourceType;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    int-to-float p1, p1

    const/high16 v0, 0x40d00000    # 6.5f

    mul-float p1, p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    return p1

    :cond_8
    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->VECTOR:Lcom/prineside/tdi2/enums/ResourceType;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0xc

    int-to-float p1, p1

    const/high16 v0, 0x40b00000    # 5.5f

    mul-float p1, p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    return p1

    :cond_9
    :goto_0
    return v1
.end method

.method public getValue()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getWalkCost()F
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->walkableEnabled:Z

    const v1, 0x461c4000    # 10000.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-nez v0, :cond_2

    return v1

    :cond_2
    const v0, 0x4cbebc20    # 1.0E8f

    return v0
.end method

.method public isRoadType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->walkableEnabled:Z

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Building;

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Tile;)Z
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    iget-object v1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v3, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eq v0, v3, :cond_3

    return v2

    :cond_3
    iget p1, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-eq p1, v0, :cond_4

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public setUnregistered()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Tile;->setUnregistered()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-lez v0, :cond_0

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bt"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bl"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v0, :cond_1

    const-string v0, "building"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Building;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :cond_1
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    const-class v1, Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->walkableEnabled:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
