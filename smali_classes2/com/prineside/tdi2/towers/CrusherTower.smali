.class public Lcom/prineside/tdi2/towers/CrusherTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/CrusherTower$Hook;,
        Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;
    }
.end annotation


# static fields
.field public static final V:F

.field public static final W:F

.field public static final X:Lcom/badlogic/gdx/math/Vector2;

.field public static final Y:Lcom/prineside/tdi2/utils/ObjectFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/utils/ObjectFilter<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;"
        }
    .end annotation
.end field

.field public static final Z:[I


# instance fields
.field public M:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public N:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public O:F

.field public P:F

.field public Q:I

.field public R:F

.field public T:F

.field public U:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/towers/CrusherTower$Hook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    sput v0, Lcom/prineside/tdi2/towers/CrusherTower;->V:F

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    sput v0, Lcom/prineside/tdi2/towers/CrusherTower;->W:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/CrusherTower;->X:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/prineside/tdi2/towers/a;

    invoke-direct {v0}, Lcom/prineside/tdi2/towers/a;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/CrusherTower;->Y:Lcom/prineside/tdi2/utils/ObjectFilter;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/CrusherTower;->Z:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x2
        0x1
        0x3
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->CRUSHER:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/CrusherTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/CrusherTower;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/Enemy;)Z
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/towers/CrusherTower;->g(Lcom/prineside/tdi2/Enemy;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/Enemy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/Enemy;->crusherTowerTarget:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public applyDrawInterpolation(F)V
    .locals 5

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->applyDrawInterpolation(F)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_4

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v2

    iget v3, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_2

    sget-object v3, Lcom/prineside/tdi2/towers/CrusherTower;->X:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/prineside/tdi2/towers/CrusherTower;->T:F

    mul-float v2, v2, p1

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_1

    const/high16 v2, 0x43800000    # 256.0f

    goto :goto_1

    :cond_1
    const v2, 0x4319999a    # 153.6f

    :goto_1
    mul-float v2, v2, p1

    sget-object v3, Lcom/prineside/tdi2/towers/CrusherTower;->X:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_4

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object p1, p1, v0

    iget-object v1, p1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public canAim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canAttack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object v0, Lcom/prineside/tdi2/towers/CrusherTower;->Z:[I

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

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->CRUSHER:Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;

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
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/prineside/tdi2/Enemy;->healthBarInvisible:Z

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Enemy;->drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method public drawWeapon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget v1, v0, Lcom/prineside/tdi2/towers/CrusherTower;->N:F

    iget v2, v0, Lcom/prineside/tdi2/towers/CrusherTower;->M:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/StrictMath;->abs(F)F

    move-result v2

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    cmpg-float v3, v1, v15

    if-gez v3, :cond_0

    mul-float v3, p5, v13

    goto :goto_0

    :cond_0
    mul-float v3, p5, v14

    :goto_0
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/4 v8, 0x1

    cmpl-float v4, v3, v2

    if-ltz v4, :cond_4

    iget v1, v0, Lcom/prineside/tdi2/towers/CrusherTower;->N:F

    iput v1, v0, Lcom/prineside/tdi2/towers/CrusherTower;->M:F

    cmpl-float v1, v1, v15

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    if-ne v2, v11, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_7

    iput v9, v0, Lcom/prineside/tdi2/towers/CrusherTower;->N:F

    goto :goto_5

    :cond_3
    iput v15, v0, Lcom/prineside/tdi2/towers/CrusherTower;->N:F

    goto :goto_5

    :cond_4
    iget v4, v0, Lcom/prineside/tdi2/towers/CrusherTower;->M:F

    div-float/2addr v3, v2

    mul-float v1, v1, v3

    add-float/2addr v4, v1

    iput v4, v0, Lcom/prineside/tdi2/towers/CrusherTower;->M:F

    const/4 v1, 0x0

    :goto_3
    iget-object v2, v0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_6

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    if-ne v3, v10, :cond_5

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object v4, v2

    check-cast v4, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v5, v2

    check-cast v5, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    check-cast v2, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3, v4, v5, v2}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v2

    const/high16 v3, 0x45800000    # 4096.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_7

    iput v15, v0, Lcom/prineside/tdi2/towers/CrusherTower;->N:F

    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v7, 0x0

    :goto_6
    iget-object v1, v0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const v17, 0x3f19999a    # 0.6f

    const/high16 v18, 0x41000000    # 8.0f

    if-ge v7, v2, :cond_c

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v6, v1, v7

    iget-object v1, v6, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, v6, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2, v1, v4, v3}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v1

    const/high16 v2, 0x42800000    # 64.0f

    div-float/2addr v1, v2

    cmpl-float v2, v1, v9

    if-lez v2, :cond_8

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_8
    move/from16 v19, v1

    :goto_7
    iget v1, v6, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    const/high16 v20, 0x42300000    # 44.0f

    const/high16 v21, 0x42380000    # 46.0f

    const/high16 v22, 0x41b00000    # 22.0f

    const/high16 v23, 0x41b80000    # 23.0f

    if-ne v1, v10, :cond_a

    iget v1, v6, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->enemyStartDistance:F

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_9

    iget-object v1, v6, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v6, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    iget v2, v6, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->enemyStartDistance:F

    div-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    add-float v1, v1, v17

    goto :goto_8

    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_8
    mul-float v17, v1, v19

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->CRUSHER:Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;

    iget-object v2, v1, Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, v6, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, v6, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v18, v18, v19

    sget v19, Lcom/prineside/tdi2/towers/CrusherTower;->V:F

    sget v24, Lcom/prineside/tdi2/towers/CrusherTower;->W:F

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object v10, v6

    move/from16 v6, v25

    move/from16 v25, v7

    move/from16 v7, v18

    const/4 v15, 0x1

    move/from16 v8, v19

    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v9, v24

    invoke-static/range {v1 .. v9}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    iget-object v1, v10, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v10, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v18

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->CRUSHER:Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;

    iget-object v2, v1, Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, v10, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v5, v17, v23

    sub-float/2addr v3, v5

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v6, v17, v22

    sub-float v4, v1, v6

    mul-float v7, v17, v21

    mul-float v8, v17, v20

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    const/4 v14, 0x3

    move/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_9

    :cond_a
    move-object v10, v6

    move/from16 v25, v7

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/high16 v26, 0x3f800000    # 1.0f

    if-ne v1, v15, :cond_b

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->CRUSHER:Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;

    iget-object v2, v1, Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, v10, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, v10, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v7, v19, v18

    sget v8, Lcom/prineside/tdi2/towers/CrusherTower;->V:F

    sget v9, Lcom/prineside/tdi2/towers/CrusherTower;->W:F

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    iget-object v1, v10, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v10, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v11

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->CRUSHER:Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;

    iget-object v2, v1, Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, v10, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v5, v19, v23

    sub-float/2addr v3, v5

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v6, v19, v22

    sub-float v4, v1, v6

    mul-float v7, v19, v21

    mul-float v8, v19, v20

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :cond_b
    :goto_9
    add-int/lit8 v7, v25, 0x1

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_c
    const/4 v14, 0x3

    const/4 v15, 0x1

    const/high16 v26, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    :goto_a
    iget-object v1, v0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v19, 0x41c00000    # 24.0f

    if-ge v11, v2, :cond_e

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v1, v1, v11

    iget v2, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    if-ne v2, v14, :cond_d

    invoke-virtual {v1}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v2

    mul-float v2, v2, v13

    div-float v19, v19, v2

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v8, v2, v19

    iget-object v1, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v6, v8, v4

    sub-float v4, v2, v6

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v5, v1, v6

    iget v1, v0, Lcom/prineside/tdi2/towers/CrusherTower;->M:F

    const v2, 0x3e99999a    # 0.3f

    mul-float v2, v2, v1

    add-float v9, v2, v26

    mul-float v1, v1, v17

    sub-float v10, v26, v1

    const/16 v19, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v7, v8

    move/from16 v20, v11

    move/from16 v11, v19

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_b

    :cond_d
    move/from16 v20, v11

    :goto_b
    add-int/lit8 v11, v20, 0x1

    goto :goto_a

    :cond_e
    iget v1, v0, Lcom/prineside/tdi2/towers/CrusherTower;->M:F

    mul-float v1, v1, v18

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/CrusherTower;->getWeaponTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v3, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v3, v3, v16

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v4, v4, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v5, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    const/high16 v6, 0x43000000    # 128.0f

    invoke-virtual {v3, v12, v4, v5, v6}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFF)V

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v2, v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v3, v3, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v4, v4, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v12, v3, v4, v6}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFF)V

    const/4 v14, 0x0

    :goto_c
    iget-object v1, v0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v14, v2, :cond_11

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v11, v1, v14

    invoke-virtual {v11}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v10

    iget v1, v11, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    const/4 v9, 0x2

    if-ne v1, v9, :cond_10

    if-eqz v10, :cond_10

    iget v1, v11, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->enemyStartDistance:F

    const/16 v16, 0x0

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_f

    iget-object v1, v11, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v11, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    iget v2, v11, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->enemyStartDistance:F

    div-float/2addr v1, v2

    goto :goto_d

    :cond_f
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_d
    invoke-virtual {v10}, Lcom/prineside/tdi2/Enemy;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v10}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v3

    mul-float v3, v3, v13

    div-float v3, v19, v3

    sub-float v4, v26, v3

    mul-float v4, v4, v1

    add-float/2addr v4, v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, v3, v4

    iget v3, v10, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    mul-float v17, v3, v1

    iget-object v1, v11, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v6, v8, v18

    sub-float/2addr v3, v6

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v4, v1, v6

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v5, v6

    move v7, v8

    const/16 v22, 0x2

    move/from16 v9, v20

    move-object v13, v10

    move/from16 v10, v21

    move-object/from16 v27, v11

    move/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getPackedColor()F

    move-result v1

    iput-boolean v15, v13, Lcom/prineside/tdi2/Enemy;->healthBarInvisible:Z

    iget-object v2, v13, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v3, v27

    iget-object v3, v3, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->drawPos:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v13, v12}, Lcom/prineside/tdi2/Enemy;->drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setPackedColor(F)V

    goto :goto_e

    :cond_10
    const/16 v16, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    const/16 v22, 0x2

    :goto_e
    add-int/lit8 v14, v14, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    goto/16 :goto_c

    :cond_11
    return-void
.end method

.method public getDisorientationChance()F
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_DISORIENTATION_CHANCE_MIN:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_DISORIENTATION_CHANCE_MAX:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v0

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getDisorientedUnitCoinPerTile()F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_ULTIMATE_COINS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    return v0
.end method

.method public getStat(Lcom/prineside/tdi2/enums/TowerStatType;)F
    .locals 7

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

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_HEAVY_VICE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_BONUS_EXPERIENCE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    float-to-double v0, v0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_CAREFUL_PROCESSING:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

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

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->CRUSHER:Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->CRUSHER:Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public final h()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v2, v2, v1

    iget v3, v2, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v3

    iput-boolean v0, v3, Lcom/prineside/tdi2/Enemy;->disabled:Z

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/prineside/tdi2/Enemy;->visible:Z

    iput-boolean v0, v3, Lcom/prineside/tdi2/Enemy;->healthBarInvisible:Z

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->setPositionToPath()V

    iput-boolean v0, v3, Lcom/prineside/tdi2/Enemy;->crusherTowerTarget:Z

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/systems/EnemySystem;->updateEnemyCurrentTile(Lcom/prineside/tdi2/Enemy;)V

    iput v0, v2, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    sget-object v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-static {v2, v3}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->a(Lcom/prineside/tdi2/towers/CrusherTower$Hook;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-boolean v0, v2, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->recruiting:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPreSell()V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/CrusherTower;->h()V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->O:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->P:F

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->Q:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->R:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->T:F

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public shouldSearchForTarget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update(F)V
    .locals 16

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v1, v8, Lcom/prineside/tdi2/towers/CrusherTower;->Q:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v1, :cond_4

    if-le v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/CrusherTower;->h()V

    iget-object v0, v8, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_0
    iget-object v0, v8, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v1, v8, Lcom/prineside/tdi2/towers/CrusherTower;->Q:I

    if-ge v0, v1, :cond_4

    :goto_0
    iget-object v0, v8, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v1, v8, Lcom/prineside/tdi2/towers/CrusherTower;->Q:I

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    invoke-direct {v0}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;-><init>()V

    iget-object v1, v0, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v0, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v8, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, v8, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v2, v9, :cond_2

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_2
    int-to-float v4, v0

    int-to-float v2, v2

    sub-float/2addr v2, v3

    div-float v2, v4, v2

    :goto_2
    const/high16 v4, 0x42600000    # 56.0f

    const/high16 v5, 0x41800000    # 16.0f

    mul-float v5, v5, v2

    add-float/2addr v5, v4

    const/high16 v4, -0x41000000    # -0.5f

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x42800000    # 64.0f

    sub-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v8, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    if-nez v2, :cond_3

    move-object v2, v1

    check-cast v2, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    check-cast v1, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v11, 0x0

    :goto_3
    iget-object v0, v8, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v1, :cond_1c

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/towers/CrusherTower$Hook;

    aget-object v12, v0, v11

    iget v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    const/4 v13, 0x0

    if-nez v0, :cond_6

    iget v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->timeSinceEnemySearch:F

    add-float v0, v0, p1

    iput v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->timeSinceEnemySearch:F

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iput v13, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->timeSinceEnemySearch:F

    const/4 v0, 0x0

    iget-boolean v1, v8, Lcom/prineside/tdi2/Tower;->attackDisabled:Z

    if-nez v1, :cond_5

    sget-object v0, Lcom/prineside/tdi2/towers/CrusherTower;->Y:Lcom/prineside/tdi2/utils/ObjectFilter;

    invoke-virtual {v8, v0}, Lcom/prineside/tdi2/Tower;->findTarget(Lcom/prineside/tdi2/utils/ObjectFilter;)Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    iput v9, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->a(Lcom/prineside/tdi2/towers/CrusherTower$Hook;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput v13, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->chewingTime:F

    iput v13, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->startingHealth:F

    iput-boolean v9, v0, Lcom/prineside/tdi2/Enemy;->crusherTowerTarget:Z

    :cond_6
    iget v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    const/4 v1, 0x2

    if-ne v0, v9, :cond_7

    invoke-virtual {v12}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_7

    iput v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    :cond_7
    iget v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    if-ne v0, v9, :cond_a

    invoke-virtual {v12}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/towers/CrusherTower;->X:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    iget v3, v8, Lcom/prineside/tdi2/towers/CrusherTower;->T:F

    mul-float v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    iget v3, v8, Lcom/prineside/tdi2/Tower;->rangeInPixelsSqr:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    iput-boolean v10, v0, Lcom/prineside/tdi2/Enemy;->crusherTowerTarget:Z

    iput v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-static {v12, v0}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->a(Lcom/prineside/tdi2/towers/CrusherTower$Hook;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    goto/16 :goto_b

    :cond_8
    iget-object v3, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4, v3, v6, v5}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v3

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_1b

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v2

    iget v3, v0, Lcom/prineside/tdi2/Enemy;->crusherTowerVulnerability:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_9

    iput v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    iget-object v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->enemyStartPos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    iput v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->enemyStartDistance:F

    iput-boolean v10, v0, Lcom/prineside/tdi2/Enemy;->visible:Z

    iput-boolean v9, v0, Lcom/prineside/tdi2/Enemy;->disabled:Z

    iget v1, v0, Lcom/prineside/tdi2/Enemy;->crusherTowerVulnerability:F

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    iput v1, v0, Lcom/prineside/tdi2/Enemy;->crusherTowerVulnerability:F

    goto/16 :goto_b

    :cond_9
    iput-boolean v10, v0, Lcom/prineside/tdi2/Enemy;->crusherTowerTarget:Z

    iput v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-static {v12, v0}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->a(Lcom/prineside/tdi2/towers/CrusherTower$Hook;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    goto/16 :goto_b

    :cond_a
    const/4 v2, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {v12}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_b

    const/high16 v0, 0x43800000    # 256.0f

    goto :goto_4

    :cond_b
    const v0, 0x4319999a    # 153.6f

    :goto_4
    mul-float v0, v0, p1

    iget-object v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3, v1, v5, v4}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v1

    mul-float v3, v0, v0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_e

    iget-object v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v12}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_c

    iput v10, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    iput-boolean v10, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->recruiting:Z

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v8, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    if-eqz v1, :cond_d

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_DISORIENTATION_CHANCE_MAX:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v5

    double-to-float v1, v5

    iget-object v5, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    mul-float v1, v1, v5

    add-float/2addr v4, v1

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_5

    :cond_d
    const/4 v1, 0x0

    :goto_5
    iget-object v4, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/Enemy;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v4, v0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v4, v0}, Lcom/prineside/tdi2/systems/EnemySystem;->updateEnemyCurrentTile(Lcom/prineside/tdi2/Enemy;)V

    iput v2, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    iput v13, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->chewingTime:F

    iput v13, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->timeSinceDamage:F

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v2

    iput v2, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->startingHealth:F

    iput-boolean v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->recruiting:Z

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BONUS_XP:Lcom/prineside/tdi2/buffs/BonusXpBuff$BonusXpBuffFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/buffs/BonusXpBuff;

    iget v2, v8, Lcom/prineside/tdi2/towers/CrusherTower;->R:F

    mul-float v3, v3, v2

    iget v4, v8, Lcom/prineside/tdi2/towers/CrusherTower;->P:F

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/prineside/tdi2/buffs/BonusXpBuff;->setup(FFFLcom/prineside/tdi2/Tower;)V

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/BuffSystem;->P_BONUS_XP:Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor;

    invoke-virtual {v2, v0, v1}, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/BonusXpBuff;)Z

    goto :goto_6

    :cond_e
    sget-object v1, Lcom/prineside/tdi2/towers/CrusherTower;->X:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->basePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :goto_6
    invoke-virtual {v12}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_f

    iput-boolean v10, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->recruiting:Z

    goto/16 :goto_b

    :cond_f
    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget-object v2, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v3, v2}, Lcom/prineside/tdi2/Map;->getTileByMapPos(FF)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Enemy;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, v0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->pos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/EnemySystem;->updateEnemyCurrentTile(Lcom/prineside/tdi2/Enemy;)V

    goto/16 :goto_b

    :cond_10
    if-ne v0, v2, :cond_1b

    invoke-virtual {v12}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v14

    if-nez v14, :cond_11

    iput v10, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    iput-boolean v10, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->recruiting:Z

    goto/16 :goto_b

    :cond_11
    iget v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->timeSinceDamage:F

    add-float v0, v0, p1

    iput v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->timeSinceDamage:F

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1b

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget v1, v8, Lcom/prineside/tdi2/towers/CrusherTower;->O:F

    iget v2, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->timeSinceDamage:F

    mul-float v3, v1, v2

    sget-object v15, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v4, v15

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    if-eqz v0, :cond_12

    iput v10, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-static {v12, v0}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->a(Lcom/prineside/tdi2/towers/CrusherTower$Hook;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-boolean v10, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->recruiting:Z

    goto/16 :goto_a

    :cond_12
    iget v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->chewingTime:F

    iget v1, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->timeSinceDamage:F

    add-float/2addr v0, v1

    iput v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->chewingTime:F

    iget v1, v8, Lcom/prineside/tdi2/towers/CrusherTower;->R:F

    const v2, 0x3ea8f5c3    # 0.33f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_14

    iget-boolean v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->recruiting:Z

    if-eqz v0, :cond_13

    iget v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->startingHealth:F

    invoke-virtual {v14}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, v14, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_16

    iput-boolean v10, v14, Lcom/prineside/tdi2/Enemy;->disabled:Z

    iput-boolean v9, v14, Lcom/prineside/tdi2/Enemy;->visible:Z

    iput-boolean v10, v14, Lcom/prineside/tdi2/Enemy;->healthBarInvisible:Z

    iput-boolean v10, v14, Lcom/prineside/tdi2/Enemy;->crusherTowerTarget:Z

    invoke-virtual {v14}, Lcom/prineside/tdi2/Enemy;->setPositionToPath()V

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/systems/EnemySystem;->updateEnemyCurrentTile(Lcom/prineside/tdi2/Enemy;)V

    iput v10, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    sget-object v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-static {v12, v1}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->a(Lcom/prineside/tdi2/towers/CrusherTower$Hook;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-boolean v10, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->recruiting:Z

    goto :goto_8

    :cond_14
    iget-boolean v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->recruiting:Z

    if-eqz v0, :cond_15

    iget v0, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->startingHealth:F

    invoke-virtual {v14}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, v14, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_8

    :cond_15
    const/4 v0, 0x0

    :cond_16
    :goto_8
    if-eqz v0, :cond_1a

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager$Factories;->DISORIENTED:Lcom/prineside/tdi2/units/DisorientedUnit$DisorientedUnitFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/units/DisorientedUnit$DisorientedUnitFactory;->create()Lcom/prineside/tdi2/units/DisorientedUnit;

    move-result-object v0

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_ULTIMATE_UNIT_HP:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v14, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v14}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v3

    mul-float v3, v3, v1

    iget v4, v14, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v4, v4, v1

    invoke-virtual {v0, v8, v2, v3, v4}, Lcom/prineside/tdi2/units/DisorientedUnit;->setup(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/EnemyType;FF)V

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    invoke-virtual {v14}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v14}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v3, v4}, Lcom/prineside/tdi2/Map;->getTileByMapPos(FF)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/prineside/tdi2/systems/UnitSystem;->preparePathToRandomSpawn(Lcom/prineside/tdi2/Unit;Lcom/prineside/tdi2/Tile;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/UnitSystem;->register(Lcom/prineside/tdi2/Unit;)V

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/MapSystem;->spawnUnit(Lcom/prineside/tdi2/Unit;)V

    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, v8, Lcom/prineside/tdi2/Tower;->bountyModifiersNearby:I

    if-eqz v1, :cond_17

    iput v13, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->coinsPerTilePassed:F

    iput v10, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->maxSumCoins:I

    goto :goto_9

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/CrusherTower;->getDisorientedUnitCoinPerTile()F

    move-result v1

    iget v2, v14, Lcom/prineside/tdi2/Enemy;->bounty:F

    float-to-double v2, v2

    iget-object v4, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_ULTIMATE_COINS_LIMIT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/units/DisorientedUnit;->setCoinsPerTilePassed(FI)V

    :cond_18
    :goto_9
    iget-object v0, v14, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_19

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->RECRUIT_SPIDER:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v0, v1, v9}, Lcom/prineside/tdi2/systems/AchievementSystem;->registerDelta(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_19
    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v15

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/systems/EnemySystem;->killEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V

    iput v10, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->status:I

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-static {v12, v0}, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->a(Lcom/prineside/tdi2/towers/CrusherTower$Hook;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-boolean v10, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->recruiting:Z

    :cond_1a
    :goto_a
    iput v13, v12, Lcom/prineside/tdi2/towers/CrusherTower$Hook;->timeSinceDamage:F

    :cond_1b
    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_1c
    invoke-super/range {p0 .. p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    return-void
.end method

.method public updateCache()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DURATION:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->R:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const/high16 v1, 0x43000000    # 128.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->T:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->O:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_INCREASED_CAPACITY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->Q:I

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_BONUS_EXPERIENCE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->P:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->O:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->P:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->Q:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->R:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->T:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/CrusherTower;->U:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
