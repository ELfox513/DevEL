.class public Lcom/prineside/tdi2/towers/GaussTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/GaussTower$Trail;,
        Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;
    }
.end annotation


# static fields
.field public static final h0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public static final i0:Lcom/badlogic/gdx/math/Vector2;

.field public static final j0:Lcom/badlogic/gdx/math/Vector2;

.field public static final k0:Lcom/badlogic/gdx/graphics/Color;

.field public static final l0:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final m0:[I


# instance fields
.field public M:F

.field public N:F

.field public O:I

.field public P:F

.field public Q:F

.field public R:Z

.field public T:F

.field public U:F

.field public V:I

.field public W:F

.field public X:F

.field public Y:Z

.field public Z:F

.field public a0:I

.field public b0:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public c0:Lcom/badlogic/gdx/math/Vector2;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public d0:Lcom/prineside/tdi2/shapes/MultiLine;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public e0:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public f0:Lcom/prineside/tdi2/shapes/MultiLine;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public g0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/towers/GaussTower$Trail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/towers/GaussTower;->h0:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/GaussTower;->i0:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/GaussTower;->j0:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/GaussTower;->k0:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/GaussTower;->l0:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/GaussTower;->m0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x1
        0x2
        0x3
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->GAUSS:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->c0:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v0, -0x3b860000    # -1000.0f

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->e0:F

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/towers/GaussTower$Trail;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->g0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/GaussTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/GaussTower;-><init>()V

    return-void
.end method

.method public static synthetic f()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/towers/GaussTower;->k0:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method


# virtual methods
.method public addExperience(F)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/GaussTower;->g()F

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_IMPROVEMENT_BURN:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, p1

    iget v3, p0, Lcom/prineside/tdi2/towers/GaussTower;->U:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/prineside/tdi2/towers/GaussTower;->U:F

    :goto_0
    iget v3, p0, Lcom/prineside/tdi2/towers/GaussTower;->U:F

    cmpl-float v4, v3, v1

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/prineside/tdi2/towers/GaussTower;->V:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/prineside/tdi2/towers/GaussTower;->V:I

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/prineside/tdi2/towers/GaussTower;->U:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/GaussTower;->updateCache()V

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->addExperience(F)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->addExperience(F)V

    :goto_1
    return-void
.end method

.method public attack(I)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/GaussTower;->i()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public canAim()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canAttack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public customButtonAction(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {v0, v1, p1, p2}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->T:F

    return-void
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object v0, Lcom/prineside/tdi2/towers/GaussTower;->m0:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->GAUSS:Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    int-to-float v4, p2

    int-to-float v5, p3

    const/high16 v6, 0x43000000    # 128.0f

    invoke-static {v3, p1, v4, v5, v6}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawCache(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFF)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->b(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method public drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->d0:Lcom/prineside/tdi2/shapes/MultiLine;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/MultiLine;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->d0:Lcom/prineside/tdi2/shapes/MultiLine;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/MultiLine;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->f0:Lcom/prineside/tdi2/shapes/MultiLine;

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/GaussTower;->j()V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->d0:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->angle:F

    iget v1, p0, Lcom/prineside/tdi2/towers/GaussTower;->T:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->f0:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->g0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/towers/GaussTower;->g0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_3

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/towers/GaussTower$Trail;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v2

    mul-float v2, v2, p2

    invoke-static {v1, p1, v2}, Lcom/prineside/tdi2/towers/GaussTower$Trail;->b(Lcom/prineside/tdi2/towers/GaussTower$Trail;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-static {v1}, Lcom/prineside/tdi2/towers/GaussTower$Trail;->c(Lcom/prineside/tdi2/towers/GaussTower$Trail;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/towers/GaussTower;->g0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public drawWeapon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const/high16 v1, 0x43000000    # 128.0f

    div-float v13, p4, v1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/prineside/tdi2/towers/GaussTower;->i0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/prineside/tdi2/towers/GaussTower;->b0:F

    const/4 v15, 0x0

    cmpl-float v3, v3, v15

    if-lez v3, :cond_0

    iget-object v3, v0, Lcom/prineside/tdi2/towers/GaussTower;->c0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v4, v0, Lcom/prineside/tdi2/towers/GaussTower;->b0:F

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/prineside/tdi2/towers/GaussTower;->b0:F

    sub-float v3, v3, p5

    iput v3, v0, Lcom/prineside/tdi2/towers/GaussTower;->b0:F

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/GaussTower;->getWeaponTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v4, v4, v13

    add-float v4, p2, v4

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v13

    add-float v5, p3, v2

    mul-float v6, v13, v1

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, v0, Lcom/prineside/tdi2/Tower;->angle:F

    move-object v1, v3

    move-object/from16 v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-static/range {v1 .. v7}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFF)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    const/4 v11, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    const/4 v11, 0x4

    :goto_0
    iget v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v16, v2, v3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_4

    int-to-float v1, v11

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v1

    int-to-float v4, v10

    mul-float v3, v3, v4

    cmpl-float v4, v16, v3

    if-lez v4, :cond_3

    sub-float v3, v16, v3

    mul-float v3, v3, v1

    cmpl-float v1, v3, v15

    if-lez v1, :cond_3

    cmpl-float v1, v3, v2

    if-lez v1, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {v12, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->GAUSS:Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;

    iget-object v2, v1, Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v1, v1, p4

    add-float v3, p2, v1

    sget-object v4, Lcom/prineside/tdi2/towers/GaussTower;->i0:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v6, 0x41900000    # 18.0f

    add-float/2addr v5, v6

    mul-float v5, v5, v13

    sub-float/2addr v3, v5

    add-float v1, p3, v1

    mul-int/lit8 v5, v10, 0xc

    add-int/lit8 v7, v5, 0xf

    int-to-float v7, v7

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v7, v4

    mul-float v7, v7, v13

    add-float v4, v1, v7

    mul-float v6, v6, v13

    rsub-int/lit8 v1, v5, -0xf

    int-to-float v1, v1

    mul-float v7, v1, v13

    const/high16 v1, 0x42100000    # 36.0f

    mul-float v8, v13, v1

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v9, v13, v1

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    iget v5, v0, Lcom/prineside/tdi2/Tower;->angle:F

    move-object/from16 v1, p1

    move/from16 v19, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move/from16 v9, v17

    move/from16 v17, v10

    move/from16 v10, v18

    move/from16 v18, v11

    move/from16 v11, v19

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_2

    :cond_3
    move/from16 v17, v10

    move/from16 v18, v11

    :goto_2
    add-int/lit8 v10, v17, 0x1

    move/from16 v11, v18

    goto :goto_1

    :cond_4
    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setPackedColor(F)V

    :cond_5
    return-void
.end method

.method public fillTowerMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/Group;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    invoke-super/range {p0 .. p2}, Lcom/prineside/tdi2/Tower;->fillTowerMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/ObjectMap;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x20

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iget v6, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    const/4 v7, 0x2

    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v6, v6, v8

    if-nez v6, :cond_1

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v4

    goto :goto_1

    :cond_1
    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v7

    :goto_1
    iget v6, v0, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    iget v9, v0, Lcom/prineside/tdi2/towers/GaussTower;->O:I

    int-to-float v9, v9

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_2

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v4

    goto :goto_2

    :cond_2
    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v7

    :goto_2
    iget v6, v2, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const-string v9, "chargingTitle"

    const-string v10, "state"

    const/high16 v11, 0x42480000    # 50.0f

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v10, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance v6, Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-direct {v6}, Lcom/prineside/tdi2/ui/actors/PieChartActor;-><init>()V

    new-instance v14, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v14, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    new-instance v15, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v7, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_4
    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    :goto_3
    invoke-direct {v15, v7, v11, v12}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v15, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    cmpl-float v15, v15, v8

    if-nez v15, :cond_5

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_4

    :cond_5
    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    :goto_4
    const/high16 v11, 0x41a00000    # 20.0f

    invoke-direct {v7, v15, v11, v12}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    invoke-virtual {v14, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    const v11, 0x3e8f5c29    # 0.28f

    invoke-direct {v15, v12, v12, v12, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v11, 0x41f00000    # 30.0f

    invoke-direct {v7, v15, v11, v12}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    invoke-virtual {v14, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v6, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v15, 0x42800000    # 64.0f

    invoke-virtual {v6, v15, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v15, 0xc8

    invoke-virtual {v6, v15}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setSegmentCount(I)V

    invoke-virtual {v6, v14}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setConfigs(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "circle"

    invoke-virtual {v15, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x2b2b2bff

    invoke-direct {v7, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v7, 0x42100000    # 36.0f

    invoke-virtual {v14, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v15, 0x42580000    # 54.0f

    invoke-virtual {v14, v15, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "icon-cubes-stacked-flame"

    invoke-virtual {v15, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-virtual {v14, v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x42700000    # 60.0f

    const/high16 v15, 0x42700000    # 60.0f

    invoke-virtual {v14, v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x18

    invoke-virtual {v15, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    const-string v15, ""

    invoke-direct {v7, v15, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v11, 0x42f00000    # 120.0f

    const/high16 v12, 0x429c0000    # 78.0f

    invoke-virtual {v7, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v7, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x15

    invoke-virtual {v12, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v11, v15, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f0f5c29    # 0.56f

    invoke-direct {v12, v13, v13, v13, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v4, 0x42f00000    # 120.0f

    const/high16 v12, 0x42500000    # 52.0f

    invoke-virtual {v11, v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v11, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v4, v0, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    iget v12, v0, Lcom/prineside/tdi2/towers/GaussTower;->O:I

    int-to-float v12, v12

    cmpg-float v4, v4, v12

    if-gez v4, :cond_6

    const-string v4, "Loading resources"

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-cubes-stacked-flame"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_5
    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    iget v4, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_7

    const-string v4, "Waiting for target"

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-crosshair"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_5

    :cond_7
    const-string v4, "Recharging"

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-battery"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_5

    :goto_6
    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v4, Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-direct {v4}, Lcom/prineside/tdi2/ui/actors/PieChartActor;-><init>()V

    new-instance v11, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v11, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    new-instance v3, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v13, 0x0

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-direct {v3, v12, v14, v13}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v14, 0x3e8f5c29    # 0.28f

    invoke-direct {v12, v13, v13, v13, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v14, 0x41f00000    # 30.0f

    invoke-direct {v3, v12, v14, v13}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/high16 v3, 0x43970000    # 302.0f

    const/high16 v12, 0x42200000    # 40.0f

    invoke-virtual {v4, v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v4, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v3, 0xc8

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setSegmentCount(I)V

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setConfigs(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "circle"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x2b2b2bff

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v11, 0x42100000    # 36.0f

    invoke-virtual {v3, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x439e0000    # 316.0f

    const/high16 v13, 0x42580000    # 54.0f

    invoke-virtual {v3, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x15

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    const-string v14, "XP"

    invoke-direct {v3, v14, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v11, 0x439e0000    # 316.0f

    invoke-virtual {v3, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v3, v15, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v11, 0x43bf0000    # 382.0f

    const/high16 v12, 0x429c0000    # 78.0f

    invoke-virtual {v3, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v3, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v13, "bonus_damage"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x15

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x3f0f5c29    # 0.56f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v12, v14, v14, v14, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v12, 0x43bf0000    # 382.0f

    const/high16 v13, 0x42500000    # 52.0f

    invoke-virtual {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v11, v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const-string v1, "xpChart"

    invoke-virtual {v2, v1, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "xpTitle"

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "chargingChart"

    invoke-virtual {v2, v1, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v9, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v3, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    const/16 v4, 0x2e

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-nez v7, :cond_a

    iget v3, v0, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    float-to-int v7, v3

    const/high16 v9, 0x3f800000    # 1.0f

    rem-float/2addr v3, v9

    mul-float v3, v3, v5

    float-to-int v3, v3

    sget-object v5, Lcom/prineside/tdi2/towers/GaussTower;->l0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/prineside/tdi2/towers/GaussTower;->O:I

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_7

    :cond_a
    cmpl-float v7, v3, v8

    if-nez v7, :cond_b

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "tower_status_charged"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_7

    :cond_b
    sub-float v3, v8, v3

    iget v7, v0, Lcom/prineside/tdi2/towers/GaussTower;->Q:F

    div-float/2addr v3, v7

    float-to-int v7, v3

    const/high16 v9, 0x3f800000    # 1.0f

    rem-float/2addr v3, v9

    mul-float v3, v3, v5

    float-to-int v3, v3

    sget-object v5, Lcom/prineside/tdi2/towers/GaussTower;->l0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "TIME_CHAR_SECOND"

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_7
    iget v1, v0, Lcom/prineside/tdi2/towers/GaussTower;->O:I

    if-gtz v1, :cond_c

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_c
    iget v3, v0, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    int-to-float v1, v1

    div-float v1, v3, v1

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v16

    if-lez v3, :cond_d

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_d
    move v14, v1

    :goto_8
    iget v1, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    div-float/2addr v1, v8

    cmpl-float v3, v1, v16

    if-lez v3, :cond_e

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_e
    const-string v3, "chargingChart"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->getConfigs()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    const/high16 v7, 0x42480000    # 50.0f

    mul-float v14, v14, v7

    iput v14, v5, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    mul-float v1, v1, v7

    iput v1, v9, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v7, v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    sub-float/2addr v8, v7

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v7, v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    sub-float/2addr v8, v7

    iput v8, v1, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setConfigs(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "xpChart"

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->getConfigs()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v5, v0, Lcom/prineside/tdi2/towers/GaussTower;->U:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/GaussTower;->g()F

    move-result v7

    div-float/2addr v5, v7

    iput v5, v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v4, v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iput v5, v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    :cond_f
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v7, v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    sub-float v13, v5, v7

    iput v13, v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setConfigs(Lcom/badlogic/gdx/utils/Array;)V

    const-string v1, "xpTitle"

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/towers/GaussTower;->l0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget v3, v0, Lcom/prineside/tdi2/towers/GaussTower;->V:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_IMPROVEMENT_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v4

    mul-float v3, v3, v4

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method public final g()F
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_IMPROVEMENT_XP:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/towers/GaussTower;->V:I

    mul-int/lit8 v2, v1, 0x32

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    invoke-static {v1, v2, v3, v4}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getAttackDelay()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRange()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStat(Lcom/prineside/tdi2/enums/TowerStatType;)F
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/managers/TowerManager;->getStatFromConfig(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;IILcom/prineside/tdi2/GameValueProvider;)F

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    float-to-double v2, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_NANO_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v0, v2

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->V:I

    int-to-double v4, p1

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v6, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_IMPROVEMENT_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v6}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    add-double/2addr v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-float v0, v0

    :cond_1
    return v0
.end method

.method public getWeaponTextures()Lcom/badlogic/gdx/utils/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->GAUSS:Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->GAUSS:Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public final h(Lcom/prineside/tdi2/Enemy;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/prineside/tdi2/Enemy;->gaussMiningSpeedGiven:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_ULTIMATE_MINING_TIME:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tile;->getNeighbourTiles()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_2

    iget-object v3, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v5, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v4, v5, :cond_1

    check-cast v3, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v3, :cond_1

    iget v4, v3, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    add-float/2addr v4, v0

    iput v4, v3, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/prineside/tdi2/Enemy;->gaussMiningSpeedGiven:Z

    :cond_3
    return-void
.end method

.method public hasCustomButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 29

    move-object/from16 v11, p0

    sget-object v1, Lcom/prineside/tdi2/towers/GaussTower;->h0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/prineside/tdi2/towers/GaussTower;->i0:Lcom/badlogic/gdx/math/Vector2;

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v0, v12, v13}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v3, v11, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    const/high16 v3, 0x45a80000    # 5376.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_OVERLOAD_SHOTS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v2

    const/4 v14, 0x1

    if-ge v2, v14, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget v3, v11, Lcom/prineside/tdi2/towers/GaussTower;->a0:I

    rem-int/2addr v3, v2

    const/4 v15, 0x0

    if-nez v3, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v8, 0x1

    const/16 v16, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_0
    iget-object v2, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v9, 0x1

    move-object v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/MapSystem;->rayCastEnemies(Lcom/badlogic/gdx/utils/Array;FFFFFZ)Z

    move-result v0

    const/high16 v10, 0x42a00000    # 80.0f

    const v1, 0x45a58000    # 5296.0f

    if-eqz v0, :cond_11

    iget v0, v11, Lcom/prineside/tdi2/towers/GaussTower;->M:F

    move/from16 v17, v0

    const/4 v9, 0x0

    const v18, 0x45a58000    # 5296.0f

    const/16 v19, 0x0

    :goto_1
    sget-object v0, Lcom/prineside/tdi2/towers/GaussTower;->h0:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v1, :cond_10

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v7, v0, v9

    iget-object v6, v7, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v6, :cond_e

    invoke-virtual {v11, v6}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->GAUSS:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v5, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v6, v0, v5}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result v0

    cmpl-float v1, v0, v12

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    const v1, -0x457ced91    # -0.001f

    iget-object v2, v11, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    aget-boolean v2, v2, v15

    if-eqz v2, :cond_3

    sget-object v2, Lcom/prineside/tdi2/enums/SpecialDamageType;->NANOPARTICLES:Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-virtual {v6, v2}, Lcom/prineside/tdi2/Enemy;->isVulnerableToSpecial(Lcom/prineside/tdi2/enums/SpecialDamageType;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v1, v6, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr v1, v0

    iget-object v2, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_NANO_HP:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v1, v1, v2

    :cond_3
    invoke-virtual {v6}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v2

    div-float/2addr v2, v0

    sub-float v4, v2, v1

    cmpg-float v2, v4, v12

    if-gez v2, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canReceiveDamage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GaussTower"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    const/high16 v20, 0x41200000    # 10.0f

    if-eqz v0, :cond_6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BONUS_COINS:Lcom/prineside/tdi2/buffs/BonusCoinsBuff$BonusCoinsBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;

    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_CONDUCTORS_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v1

    iget-object v2, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_CONDUCTORS_COINS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v3, v1, v20

    invoke-virtual {v0, v1, v3, v2, v11}, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->setup(FFFLcom/prineside/tdi2/Tower;)V

    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/BuffSystem;->P_BONUS_COINS:Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor;

    invoke-virtual {v1, v6, v0}, Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/BonusCoinsBuff;)Z

    :cond_6
    if-eqz v8, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->DEATH_EXPLOSION:Lcom/prineside/tdi2/buffs/DeathExplosionBuff$ExplosionChargeBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->explosionManager:Lcom/prineside/tdi2/managers/ExplosionManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ExplosionType;->GENERIC:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ExplosionManager;->getFactory(Lcom/prineside/tdi2/enums/ExplosionType;)Lcom/prineside/tdi2/Explosion$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Explosion$Factory;->obtain()Lcom/prineside/tdi2/Explosion;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/prineside/tdi2/explosions/GenericExplosion;

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_OVERLOAD_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v2, 0x0

    const/16 v21, 0x0

    iget v1, v6, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v22, v1, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sget-object v27, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P400:Lcom/badlogic/gdx/graphics/Color;

    const/16 v28, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v13, v3

    move/from16 v3, v21

    move/from16 v21, v4

    move/from16 v4, v22

    move-object/from16 v22, v5

    move/from16 v5, v23

    move-object v15, v6

    move/from16 v6, v24

    move-object v14, v7

    move/from16 v7, v25

    move-object v12, v8

    move/from16 v8, v26

    move/from16 v26, v9

    move-object/from16 v9, v27

    move-object/from16 v27, v14

    const/high16 v14, 0x42a00000    # 80.0f

    move-object/from16 v10, v28

    invoke-virtual/range {v0 .. v10}, Lcom/prineside/tdi2/explosions/GenericExplosion;->setup(Lcom/prineside/tdi2/Tower;FFFFIFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v0, 0x42f00000    # 120.0f

    const/high16 v1, 0x44960000    # 1200.0f

    invoke-virtual {v12, v0, v1, v13}, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;->setup(FFLcom/prineside/tdi2/Explosion;)V

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/BuffSystem;->P_DEATH_EXPLOSION:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;

    invoke-virtual {v0, v15, v12}, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/DeathExplosionBuff;)Z

    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    move/from16 v21, v4

    move-object/from16 v22, v5

    move-object v15, v6

    move-object/from16 v27, v7

    move/from16 v26, v9

    const/high16 v14, 0x42a00000    # 80.0f

    :goto_2
    const/4 v9, 0x4

    cmpg-float v0, v17, v21

    if-gtz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v15}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    sub-float v18, v0, v14

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v3, v17

    move-object/from16 v4, v22

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    move-object/from16 v1, v27

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    move-object/from16 v1, v27

    iget-object v2, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    sub-float v17, v17, v21

    invoke-virtual {v11, v9}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v11, v2}, Lcom/prineside/tdi2/towers/GaussTower;->h(Lcom/prineside/tdi2/Enemy;)V

    :cond_9
    const/4 v2, 0x0

    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {v11, v9}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/prineside/tdi2/towers/GaussTower;->h(Lcom/prineside/tdi2/Enemy;)V

    goto :goto_4

    :cond_a
    iget-object v0, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v0, :cond_d

    if-eqz v16, :cond_d

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_d

    iget-boolean v1, v0, Lcom/prineside/tdi2/Enemy;->wasStunnedByGauss:Z

    if-nez v1, :cond_d

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager$Factories;->STUN:Lcom/prineside/tdi2/buffs/StunBuff$StunBuffFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/buffs/StunBuff;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/prineside/tdi2/buffs/StunBuff;->copyDisabled:Z

    sget-object v4, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/Enemy;->canBeBuffed(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v4

    if-eqz v4, :cond_c

    iput-boolean v3, v0, Lcom/prineside/tdi2/Enemy;->wasStunnedByGauss:Z

    iget-object v3, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_GAUSS_A_OVERLOAD_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v3

    mul-float v4, v3, v20

    iget v5, v11, Lcom/prineside/tdi2/Tower;->id:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/prineside/tdi2/buffs/StunBuff;->setup(FFI)V

    iget-object v3, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/BuffSystem;->P_STUN:Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;

    invoke-virtual {v3, v0, v1}, Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/StunBuff;)Z

    add-int/lit8 v0, v19, 0x1

    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/AchievementSystem;->isActive()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v3, Lcom/prineside/tdi2/enums/AchievementType;->MASS_STUN_ENEMIES_ONE_SHOT:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1, v3, v0}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_b
    move/from16 v19, v0

    goto :goto_4

    :cond_c
    invoke-virtual {v1}, Lcom/prineside/tdi2/Buff;->free()V

    :cond_d
    :goto_4
    if-eqz v2, :cond_f

    goto :goto_6

    :cond_e
    :goto_5
    move/from16 v26, v9

    const/high16 v14, 0x42a00000    # 80.0f

    :cond_f
    add-int/lit8 v9, v26, 0x1

    const/high16 v10, 0x42a00000    # 80.0f

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_10
    const/high16 v14, 0x42a00000    # 80.0f

    :goto_6
    move/from16 v1, v18

    iget v0, v11, Lcom/prineside/tdi2/Tower;->shotCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v11, Lcom/prineside/tdi2/Tower;->shotCount:I

    goto :goto_7

    :cond_11
    const/high16 v14, 0x42a00000    # 80.0f

    :goto_7
    sget-object v0, Lcom/prineside/tdi2/towers/GaussTower;->h0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/prineside/tdi2/towers/GaussTower;->i0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->GAUSS:Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;

    iget-object v2, v2, Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget v3, v11, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-static {v0, v3, v14}, Lcom/prineside/tdi2/utils/PMath;->shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getAngle()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    iget v4, v11, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getAngle()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    iget v6, v11, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v7, 0x41700000    # 15.0f

    sub-float v8, v6, v7

    add-float/2addr v8, v5

    add-float/2addr v6, v7

    add-float/2addr v6, v5

    invoke-virtual {v3, v8, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getAngle()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    iget v4, v11, Lcom/prineside/tdi2/Tower;->angle:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getRotation()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    iget v4, v11, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    iget-object v3, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    const-class v2, Lcom/prineside/tdi2/towers/GaussTower$Trail;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/towers/GaussTower$Trail;

    sget-object v3, Lcom/prineside/tdi2/towers/GaussTower;->j0:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    iget v4, v11, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2, v4, v0, v5, v3}, Lcom/prineside/tdi2/towers/GaussTower$Trail;->a(Lcom/prineside/tdi2/towers/GaussTower$Trail;FFFF)V

    iget-object v0, v11, Lcom/prineside/tdi2/towers/GaussTower;->g0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_12
    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine$BulletSmokeMultiLineFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v11, Lcom/prineside/tdi2/Tower;->angle:F

    sget-object v5, Lcom/prineside/tdi2/towers/GaussTower;->i0:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2, v3, v4, v14, v5}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->GAUSS:Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;

    iget-object v2, v2, Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    const v2, 0x41b851ec    # 23.04f

    iput v2, v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxSegmentWidth:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxAlpha:F

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v2, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v11, Lcom/prineside/tdi2/Tower;->angle:F

    sget-object v6, Lcom/prineside/tdi2/towers/GaussTower;->j0:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2, v3, v4, v1, v6}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    iget v1, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setup(FFFF)V

    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    :cond_14
    iget-object v0, v11, Lcom/prineside/tdi2/towers/GaussTower;->c0:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    const v2, 0x4175c28f    # 15.36f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v2, v11, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    iput v1, v11, Lcom/prineside/tdi2/towers/GaussTower;->b0:F

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_15

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_GAUSS:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1, v11}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    :cond_15
    const/4 v0, 0x0

    iput v0, v11, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    iget v1, v11, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    iget v2, v11, Lcom/prineside/tdi2/towers/GaussTower;->O:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v11, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_16

    iput v0, v11, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    :cond_16
    iput v0, v11, Lcom/prineside/tdi2/towers/GaussTower;->X:F

    const/4 v0, 0x0

    iput-boolean v0, v11, Lcom/prineside/tdi2/towers/GaussTower;->Y:Z

    iget v0, v11, Lcom/prineside/tdi2/towers/GaussTower;->a0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v11, Lcom/prineside/tdi2/towers/GaussTower;->a0:I

    return-void
.end method

.method public isCustomButtonNeedMapPoint()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()V
    .locals 15

    iget-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->d0:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/MultiLine;->reset()V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->d0:Lcom/prineside/tdi2/shapes/MultiLine;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->GAUSS:Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;

    iget-object v1, v1, Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/prineside/tdi2/shapes/MultiLine;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    sget-object v0, Lcom/prineside/tdi2/towers/GaussTower;->k0:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/towers/GaussTower;->i0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/prineside/tdi2/towers/GaussTower;->j0:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v6, 0x42800000    # 64.0f

    invoke-virtual {v5, v3, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget v7, p0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Lcom/prineside/tdi2/towers/GaussTower;->d0:Lcom/prineside/tdi2/shapes/MultiLine;

    iget v9, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v10, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v12

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/prineside/tdi2/shapes/MultiLine;->appendNode(FFFFZ)V

    const/4 v0, 0x0

    :goto_0
    const v4, 0x3e8f5c29    # 0.28f

    const/16 v5, 0x10

    if-ge v0, v5, :cond_0

    sget-object v7, Lcom/prineside/tdi2/towers/GaussTower;->k0:Lcom/badlogic/gdx/graphics/Color;

    add-int/lit8 v0, v0, 0x1

    int-to-float v8, v0

    int-to-float v5, v5

    div-float/2addr v8, v5

    sub-float v5, v1, v8

    mul-float v5, v5, v4

    iput v5, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v4, Lcom/prineside/tdi2/towers/GaussTower;->i0:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/prineside/tdi2/towers/GaussTower;->j0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Lcom/prineside/tdi2/towers/GaussTower;->d0:Lcom/prineside/tdi2/shapes/MultiLine;

    iget v9, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v10, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v11, 0x40800000    # 4.0f

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/prineside/tdi2/shapes/MultiLine;->appendNode(FFFFZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->d0:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/MultiLine;->updateAllNodes()V

    iget v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->e0:F

    iget v7, p0, Lcom/prineside/tdi2/towers/GaussTower;->T:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->f0:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/MultiLine;->reset()V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->f0:Lcom/prineside/tdi2/shapes/MultiLine;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/TowerManager$Factories;->GAUSS:Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;

    iget-object v7, v7, Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, v7, v2, v2}, Lcom/prineside/tdi2/shapes/MultiLine;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    sget-object v0, Lcom/prineside/tdi2/towers/GaussTower;->k0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v7, Lcom/prineside/tdi2/towers/GaussTower;->i0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v8

    iget-object v8, v8, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v8, Lcom/prineside/tdi2/towers/GaussTower;->j0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v3, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Lcom/prineside/tdi2/towers/GaussTower;->T:F

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Lcom/prineside/tdi2/towers/GaussTower;->f0:Lcom/prineside/tdi2/shapes/MultiLine;

    iget v10, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v11, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v12, 0x40800000    # 4.0f

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/prineside/tdi2/shapes/MultiLine;->appendNode(FFFFZ)V

    :goto_1
    if-ge v2, v5, :cond_1

    sget-object v0, Lcom/prineside/tdi2/towers/GaussTower;->k0:Lcom/badlogic/gdx/graphics/Color;

    add-int/lit8 v2, v2, 0x1

    int-to-float v3, v2

    int-to-float v6, v5

    div-float/2addr v3, v6

    sub-float v3, v1, v3

    mul-float v3, v3, v4

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v3, Lcom/prineside/tdi2/towers/GaussTower;->i0:Lcom/badlogic/gdx/math/Vector2;

    sget-object v6, Lcom/prineside/tdi2/towers/GaussTower;->j0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, p0, Lcom/prineside/tdi2/towers/GaussTower;->f0:Lcom/prineside/tdi2/shapes/MultiLine;

    iget v8, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v9, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/prineside/tdi2/shapes/MultiLine;->appendNode(FFFFZ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->f0:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/MultiLine;->updateAllNodes()V

    iget v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->T:F

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->e0:F

    :cond_2
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->M:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->N:F

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->O:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->Q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->R:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->T:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->U:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->V:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->X:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->Y:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->Z:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->a0:I

    return-void
.end method

.method public setUnregistered()V
    .locals 0

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->setUnregistered()V

    return-void
.end method

.method public update(F)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v2

    if-nez v2, :cond_13

    iget v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->O:I

    if-nez v2, :cond_3

    :cond_0
    iget v2, v0, Lcom/prineside/tdi2/Tower;->angle:F

    iget v6, v0, Lcom/prineside/tdi2/towers/GaussTower;->T:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->N:F

    invoke-virtual {v0, v6, v1, v2}, Lcom/prineside/tdi2/Tower;->rotateTo(FFF)V

    :cond_1
    iget v2, v0, Lcom/prineside/tdi2/Tower;->angle:F

    iget v6, v0, Lcom/prineside/tdi2/towers/GaussTower;->T:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->R:Z

    goto :goto_1

    :cond_3
    iput-boolean v4, v0, Lcom/prineside/tdi2/towers/GaussTower;->R:Z

    :goto_1
    iget-boolean v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->R:Z

    if-nez v2, :cond_b

    iget v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    iget v6, v0, Lcom/prineside/tdi2/towers/GaussTower;->O:I

    int-to-float v7, v6

    cmpg-float v7, v2, v7

    if-gez v7, :cond_b

    int-to-float v6, v6

    sub-float/2addr v6, v2

    float-to-double v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getNeighbourTiles()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    const/4 v8, 0x0

    :goto_2
    iget v9, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v9, :cond_b

    iget-object v9, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/Tile;

    aget-object v9, v9, v8

    iget-object v10, v9, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v11, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v10, v11, :cond_a

    check-cast v9, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v9, v9, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v9, :cond_a

    sget-object v10, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_9

    aget-object v13, v10, v12

    iget-object v14, v9, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v14

    if-lez v14, :cond_7

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    int-to-double v3, v4

    const-wide/high16 v17, 0x3fd0000000000000L    # 0.25

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v17

    add-double/2addr v3, v15

    move-object v15, v10

    move/from16 v16, v11

    div-double v10, v6, v3

    double-to-float v10, v10

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v10

    if-ge v14, v10, :cond_4

    goto :goto_4

    :cond_4
    move v14, v10

    :goto_4
    iget-object v10, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v10, v10, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v10, v9, v13, v14}, Lcom/prineside/tdi2/systems/MinerSystem;->removeResources(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)Z

    iget v10, v0, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    float-to-double v10, v10

    move-wide/from16 v18, v6

    int-to-double v5, v14

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v5

    double-to-float v3, v10

    iput v3, v0, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    sub-double v6, v18, v5

    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v3, :cond_6

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    if-le v14, v3, :cond_5

    const/4 v14, 0x3

    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v14, :cond_6

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TowerManager$Factories;->GAUSS:Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;

    iget-object v5, v5, Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v19, v5, v10

    const/high16 v20, 0x41900000    # 18.0f

    invoke-virtual {v9}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v21

    invoke-virtual {v9}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v24

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v24}, Lcom/prineside/tdi2/systems/ParticleSystem;->addOrbParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FIIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    const-wide/16 v3, 0x0

    cmpg-double v5, v6, v3

    if-gtz v5, :cond_8

    goto :goto_6

    :cond_7
    move-wide/from16 v18, v6

    move-object v15, v10

    move/from16 v16, v11

    :cond_8
    add-int/lit8 v12, v12, 0x1

    move-object v10, v15

    move/from16 v11, v16

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_9
    move-wide/from16 v18, v6

    :cond_a
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_b
    :goto_6
    iget-boolean v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->R:Z

    const/high16 v3, 0x42c80000    # 100.0f

    if-nez v2, :cond_d

    iget v4, v0, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    iget v5, v0, Lcom/prineside/tdi2/towers/GaussTower;->O:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_c

    iget v4, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    iget v5, v0, Lcom/prineside/tdi2/towers/GaussTower;->Q:F

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    iput v4, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_d

    iput v3, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    iput v4, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    :cond_d
    :goto_7
    iget v4, v0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    cmpl-float v3, v4, v3

    if-nez v3, :cond_12

    if-nez v2, :cond_13

    iget-boolean v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->Y:Z

    if-nez v2, :cond_11

    iget v2, v0, Lcom/prineside/tdi2/Tower;->angle:F

    iget v3, v0, Lcom/prineside/tdi2/towers/GaussTower;->T:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    goto/16 :goto_a

    :cond_e
    iget v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->Z:F

    add-float/2addr v2, v1

    iput v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->Z:F

    const v3, 0x3da3d70a    # 0.08f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    sget-object v4, Lcom/prineside/tdi2/towers/GaussTower;->h0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v2, Lcom/prineside/tdi2/towers/GaussTower;->i0:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v5, v0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    const/high16 v5, 0x45a00000    # 5120.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/prineside/tdi2/systems/MapSystem;->rayCastEnemies(Lcom/badlogic/gdx/utils/Array;FFFFFZ)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v4, 0x0

    :goto_8
    sget-object v2, Lcom/prineside/tdi2/towers/GaussTower;->h0:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v3, :cond_10

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->Y:Z

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v3, :cond_10

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x4000cccccccccccdL    # 2.1

    cmpg-double v6, v2, v4

    if-gez v6, :cond_10

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_GAUSS_CHARGE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2, v3, v0}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    goto :goto_9

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_10
    :goto_9
    sget-object v2, Lcom/prineside/tdi2/towers/GaussTower;->h0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v2, 0x0

    iput v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->Z:F

    goto :goto_b

    :cond_11
    :goto_a
    iget v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->X:F

    add-float/2addr v2, v1

    iput v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->X:F

    const v3, 0x3f266666    # 0.65f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    iget-boolean v2, v0, Lcom/prineside/tdi2/Tower;->attackDisabled:Z

    if-nez v2, :cond_13

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/towers/GaussTower;->attack(I)V

    iput-boolean v2, v0, Lcom/prineside/tdi2/Tower;->w:Z

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->Y:Z

    const/4 v2, 0x0

    iput v2, v0, Lcom/prineside/tdi2/towers/GaussTower;->X:F

    :cond_13
    :goto_b
    invoke-super/range {p0 .. p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    return-void
.end method

.method public updateCache()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->M:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->N:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->RESOURCE_CONSUMPTION:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->O:I

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->CHARGING_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/GaussTower;->Q:F

    return-void
.end method

.method public updateCustomButton(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-crosshair"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "tap_on_map"

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "rotate_button"

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :goto_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->M:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->N:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->O:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->P:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->Q:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->R:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->T:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->U:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->V:I

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->W:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->X:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->Y:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->Z:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower;->a0:I

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return-void
.end method
