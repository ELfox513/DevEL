.class public abstract Lcom/prineside/tdi2/Tile;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x2
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Tile$Factory;,
        Lcom/prineside/tdi2/Tile$Pos;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/Map;

.field public b:I

.field public final boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public center:Lcom/badlogic/gdx/math/Vector2;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public d:I

.field public enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public k:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/utils/Array;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/badlogic/gdx/utils/Array;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/prineside/tdi2/enums/TileType;

.field public units:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public userData:Lcom/badlogic/gdx/utils/IntMap;

.field public visibleOnScreen:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/TileType;)V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/Unit;

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Tile;->units:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/IntRectangle;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/Tile;->k:Z

    iput-object p1, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-class v0, Lcom/prineside/tdi2/Tile;

    iget-object v1, p0, Lcom/prineside/tdi2/Tile;->p:Lcom/badlogic/gdx/utils/Array;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/prineside/tdi2/Tile;->k:Z

    if-nez v2, :cond_7

    :cond_0
    iget-object v2, p0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    if-eqz v2, :cond_8

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/Tile;->p:Lcom/badlogic/gdx/utils/Array;

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/Tile;->q:Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/Tile;->q:Lcom/badlogic/gdx/utils/Array;

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/Tile;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    add-int/lit8 v2, v0, -0x1

    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-gt v2, v3, :cond_6

    add-int/lit8 v3, v1, -0x1

    :goto_1
    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_5

    if-ne v2, v0, :cond_3

    if-ne v3, v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    invoke-virtual {v4, v2, v3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/prineside/tdi2/Tile;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->q:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/prineside/tdi2/Tile;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Tile;->k:Z

    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This tile is not on map"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public affectedByLuckyWheelMultiplier()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 5

    iget v0, p0, Lcom/prineside/tdi2/Tile;->d:I

    mul-int/lit16 v0, v0, 0x80

    add-int/lit16 v1, v0, 0x80

    iget v2, p0, Lcom/prineside/tdi2/Tile;->b:I

    mul-int/lit16 v2, v2, 0x80

    add-int/lit16 v3, v2, 0x80

    iget-object v4, p0, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/prineside/tdi2/utils/IntRectangle;->set(IIII)V

    iget-object v1, p0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v2, v2, 0x40

    int-to-float v2, v2

    add-int/lit8 v0, v0, 0x40

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public canBeSelected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canBeSold()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canBeUpgraded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cloneTile()Lcom/prineside/tdi2/Tile;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/prineside/tdi2/Tile$Factory;->create()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/Tile;->from(Lcom/prineside/tdi2/Tile;)V

    return-object v0
.end method

.method public createUpgradedTile()Lcom/prineside/tdi2/Tile;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V
    .locals 0

    return-void
.end method

.method public drawExtras(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 0

    return-void
.end method

.method public drawHoveredRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V
    .locals 0

    return-void
.end method

.method public drawRoadStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFF)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/prineside/tdi2/Tile;->b:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v0, Lcom/prineside/tdi2/Tile;->d:I

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v2

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    iget v3, v0, Lcom/prineside/tdi2/Tile;->b:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/prineside/tdi2/Tile;->d:I

    invoke-virtual {v1, v3, v4}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    iget-object v3, v0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    iget v4, v0, Lcom/prineside/tdi2/Tile;->b:I

    iget v5, v0, Lcom/prineside/tdi2/Tile;->d:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v3

    iget-object v4, v0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    iget v5, v0, Lcom/prineside/tdi2/Tile;->b:I

    iget v6, v0, Lcom/prineside/tdi2/Tile;->d:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    move-object v3, v1

    move-object v4, v3

    :goto_0
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    invoke-virtual {v5, v2, v1, v4, v3}, Lcom/prineside/tdi2/managers/TileManager;->getRoadTexture(Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    move-object v6, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public drawSelectedRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V
    .locals 0

    return-void
.end method

.method public drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tile;->isRoadType()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/prineside/tdi2/Tile;->drawRoadStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFF)V

    :cond_0
    return-void
.end method

.method public fillInventoryWithInfo(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;F)V
    .locals 0

    return-void
.end method

.method public fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 0

    return-void
.end method

.method public fillMapEditorMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V
    .locals 0

    return-void
.end method

.method public from(Lcom/prineside/tdi2/Tile;)V
    .locals 0

    return-void
.end method

.method public generateSeedSalt()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract generateUiIcon(F)Lcom/badlogic/gdx/scenes/scene2d/Group;
.end method

.method public getData(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 0

    return-void
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/prineside/tdi2/Tile$Factory;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getInventorySubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
.end method

.method public getMap()Lcom/prineside/tdi2/Map;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    return-object v0
.end method

.method public getNeighbourTiles()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tile;->a()V

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->p:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getNeighbourTilesAndThis()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tile;->a()V

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->q:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public abstract getPrestigeScore()D
.end method

.method public getQuality()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract getRarity()Lcom/prineside/tdi2/enums/RarityType;
.end method

.method public abstract getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/prineside/tdi2/Tile$Factory;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradePriceInAccelerators()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUpgradePriceInGreenPapers()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUpgradePriceInResources(Lcom/prineside/tdi2/enums/ResourceType;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getUserData(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->userData:Lcom/badlogic/gdx/utils/IntMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getValue()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getWalkCost()F
    .locals 1

    const v0, 0x5368d4a5    # 1.0E12f

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Tile;->b:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Tile;->d:I

    return v0
.end method

.method public abstract isRoadType()Z
.end method

.method public postDrawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V
    .locals 0

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/TileType;

    iput-object v0, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    const-class v0, Lcom/prineside/tdi2/Map;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Map;

    iput-object v0, p0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Tile;->b:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Tile;->d:I

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/Tile;->units:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tile;->b()V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/IntMap;

    iput-object p1, p0, Lcom/prineside/tdi2/Tile;->userData:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method

.method public registerEnemy(Lcom/prineside/tdi2/Enemy;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/prineside/tdi2/Enemy;->setCurrentTile(Lcom/prineside/tdi2/Tile;)V

    return-void
.end method

.method public registerUnit(Lcom/prineside/tdi2/Unit;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->units:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object p0, p1, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    return-void
.end method

.method public resetNeighborTilesCache()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Tile;->k:Z

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Tile;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setMap(Lcom/prineside/tdi2/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    return-void
.end method

.method public setPos(II)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/Tile;->b:I

    iput p2, p0, Lcom/prineside/tdi2/Tile;->d:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tile;->b()V

    return-void
.end method

.method public setUnregistered()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->units:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public setUserData(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->userData:Lcom/badlogic/gdx/utils/IntMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Tile;->userData:Lcom/badlogic/gdx/utils/IntMap;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->userData:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Tile;->b:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/Tile;->d:I

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/Tile;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/Tile;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterEnemy(Lcom/prineside/tdi2/Enemy;)V
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Tile"

    const-string v1, "Enemy was not removed from currentTile cache"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->setCurrentTile(Lcom/prineside/tdi2/Tile;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Enemy is registered on other tile"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterUnit(Lcom/prineside/tdi2/Unit;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->units:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unit is registered on other walkable tile"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    const-class v1, Lcom/prineside/tdi2/Map;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/Tile;->b:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/Tile;->d:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->units:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->userData:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
