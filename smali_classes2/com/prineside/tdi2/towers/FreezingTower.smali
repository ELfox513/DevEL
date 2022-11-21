.class public Lcom/prineside/tdi2/towers/FreezingTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;
    }
.end annotation


# static fields
.field public static final ABILITY_COLD_EVAPORATION:I = 0x0

.field public static final ABILITY_MONITORING_SYSTEM:I = 0x2

.field public static final ABILITY_SLOW_FREEZING:I = 0x1

.field public static final GAIN_EXP_COEFF:F = 0.02f

.field public static final SNOWBALL_ACCUMULATION_TIME:F = 8.0f

.field public static final V:Lcom/badlogic/gdx/graphics/Color;

.field public static final W:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public static final X:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:[I


# instance fields
.field public M:F

.field public N:F

.field public O:F

.field public P:F

.field public Q:F

.field public R:Lcom/prineside/tdi2/Tile;

.field public T:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public U:Lcom/prineside/tdi2/shapes/Circle;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x2196f324

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/towers/FreezingTower;->V:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Tile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/towers/FreezingTower;->W:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/towers/FreezingTower;->X:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/FreezingTower;->Y:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x0
        0x2
        0x3
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->FREEZING:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/FreezingTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/FreezingTower;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/towers/FreezingTower;)F
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/FreezingTower;->h()F

    move-result p0

    return p0
.end method


# virtual methods
.method public canAim()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object v0, Lcom/prineside/tdi2/towers/FreezingTower;->Y:[I

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

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FREEZING:Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;

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
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->U:Lcom/prineside/tdi2/shapes/Circle;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/Circle;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->U:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/FreezingTower;->g()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->U:Lcom/prineside/tdi2/shapes/Circle;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/Circle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->Q:F

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FREEZING:Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;

    iget-object v1, v1, Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v7, v1, v0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FREEZING:Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;

    iget-object v3, v0, Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v7

    sub-float v4, v1, v2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v5, v0, v2

    move-object v2, p1

    move v6, v7

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method public final g()V
    .locals 11

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    const v2, 0x3d8f5c29    # 0.07f

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v3, p0, Lcom/prineside/tdi2/towers/FreezingTower;->U:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v6, v7, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    const/16 v8, 0x30

    invoke-virtual/range {v3 .. v10}, Lcom/prineside/tdi2/shapes/Circle;->setup(FFFFIFF)V

    return-void
.end method

.method public getScheduledUpdateInterval()F
    .locals 1

    const v0, 0x3e88b439    # 0.267f

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

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->FREEZE_PERCENT:Lcom/prineside/tdi2/enums/TowerStatType;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v0, v0

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FREEZING_A_SLOW_PERCENT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-float v0, v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->FREEZE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    float-to-double v0, v0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FREEZING_A_SLOW_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

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

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FREEZING:Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FREEZING:Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public final h()F
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FREEZING_A_SNOWBALL_MIN_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FREEZING_A_SNOWBALL_MAX_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

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

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->M:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->N:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->O:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->P:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->Q:F

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Tile;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    return-void
.end method

.method public removedFromMap()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->removedFromMap()V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->T:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    :cond_0
    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 13

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->scheduledUpdate(F)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/prineside/tdi2/towers/FreezingTower;->X:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/prineside/tdi2/systems/MapSystem;->getEnemiesNearPoint(Lcom/badlogic/gdx/utils/Array;FFF)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/towers/FreezingTower;->X:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_4

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_1

    iget-object v5, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v5, v5, v4

    check-cast v5, Lcom/prineside/tdi2/buffs/FreezingBuff;

    iget-object v6, v5, Lcom/prineside/tdi2/buffs/FreezingBuff;->tower:Lcom/prineside/tdi2/Tower;

    if-ne v6, p0, :cond_0

    move-object v3, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    sget-object v2, Lcom/prineside/tdi2/enums/TowerType;->FREEZING:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Enemy;->getTowerDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F

    move-result v2

    iget v4, p0, Lcom/prineside/tdi2/towers/FreezingTower;->M:F

    mul-float v8, v2, v4

    if-nez v3, :cond_2

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/BuffManager$Factories;->FREEZING:Lcom/prineside/tdi2/buffs/FreezingBuff$FreezingBuffFactory;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/buffs/FreezingBuff;

    iget v7, p0, Lcom/prineside/tdi2/towers/FreezingTower;->N:F

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x40a00000    # 5.0f

    iget v11, p0, Lcom/prineside/tdi2/towers/FreezingTower;->O:F

    iget v12, p0, Lcom/prineside/tdi2/towers/FreezingTower;->P:F

    move-object v5, v2

    move-object v6, p0

    invoke-virtual/range {v5 .. v12}, Lcom/prineside/tdi2/buffs/FreezingBuff;->setup(Lcom/prineside/tdi2/Tower;FFFFFF)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/prineside/tdi2/buffs/FreezingBuff;->copyDisabled:Z

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/BuffSystem;->P_FREEZING:Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;

    invoke-virtual {v3, v1, v2}, Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/FreezingBuff;)Z

    goto :goto_3

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v3, Lcom/prineside/tdi2/Buff;->duration:F

    iget v1, p0, Lcom/prineside/tdi2/towers/FreezingTower;->N:F

    iput v1, v3, Lcom/prineside/tdi2/buffs/FreezingBuff;->speed:F

    iput v8, v3, Lcom/prineside/tdi2/buffs/FreezingBuff;->maxPercent:F

    iget v1, p0, Lcom/prineside/tdi2/towers/FreezingTower;->O:F

    iput v1, v3, Lcom/prineside/tdi2/buffs/FreezingBuff;->poisonDurationBonus:F

    iget v1, p0, Lcom/prineside/tdi2/towers/FreezingTower;->P:F

    iput v1, v3, Lcom/prineside/tdi2/buffs/FreezingBuff;->lightningLengthBonus:F

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_5
    return-void
.end method

.method public setUnregistered()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->setUnregistered()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    sget-object v0, Lcom/prineside/tdi2/towers/FreezingTower;->W:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public update(F)V
    .locals 13

    iget v0, p0, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v2, p1, v1

    add-float/2addr v0, v2

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->angle:F

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->T:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FREEZING:Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->T:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->T:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getRange()F

    move-result v5

    mul-float v5, v5, v2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v7

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float v8, v8, v5

    const/high16 v9, 0x41400000    # 12.0f

    mul-float v9, v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v7

    const/high16 v8, 0x40800000    # 4.0f

    mul-float v8, v8, v5

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v7

    mul-float v8, v5, v1

    const/high16 v9, 0x41800000    # 16.0f

    mul-float v9, v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v6

    const/high16 v7, 0x430c0000    # 140.0f

    mul-float v5, v5, v7

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v5, p0, Lcom/prineside/tdi2/towers/FreezingTower;->T:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v0, v5, v3}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTilesInRange()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v6

    if-eqz v6, :cond_2

    float-to-double v6, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v8, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FREEZING_A_ULTIMATE_SNOW_BONUS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v8}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-float v0, v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_1

    iget-object v7, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Tile;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v6, :cond_c

    iget-object v2, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    if-nez v2, :cond_9

    sget-object v2, Lcom/prineside/tdi2/towers/FreezingTower;->W:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v2, 0x0

    :goto_2
    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v6, :cond_8

    iget-object v6, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/Tile;

    aget-object v6, v6, v3

    instance-of v9, v6, Lcom/prineside/tdi2/tiles/SpawnTile;

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    iget-object v9, v6, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v10

    iget-object v10, v10, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v9

    sget-object v10, Lcom/prineside/tdi2/towers/FreezingTower;->W:Lcom/badlogic/gdx/utils/Array;

    iget v11, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v11, :cond_5

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    sub-float v11, v9, v2

    invoke-static {v11}, Ljava/lang/StrictMath;->abs(F)F

    move-result v11

    const v12, 0x414ccccd    # 12.8f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    cmpg-float v11, v9, v2

    if-gez v11, :cond_7

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_3
    move v2, v9

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/prineside/tdi2/towers/FreezingTower;->W:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Tile;

    iput-object v2, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    :cond_9
    iget-object v2, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/prineside/tdi2/towers/FreezingTower;->Q:F

    mul-float v0, v0, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/prineside/tdi2/towers/FreezingTower;->Q:F

    cmpl-float v0, v2, v1

    if-ltz v0, :cond_e

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager$Factories;->SNOWBALL:Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;->create()Lcom/prineside/tdi2/units/SnowballUnit;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/FreezingTower;->h()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/units/SnowballUnit;->setup(F)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/systems/UnitSystem;->preparePathToRandomSpawn(Lcom/prineside/tdi2/Unit;Lcom/prineside/tdi2/Tile;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/UnitSystem;->register(Lcom/prineside/tdi2/Unit;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/MapSystem;->spawnUnit(Lcom/prineside/tdi2/Unit;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager$Factories;->SNOWBALL:Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory;->getBreakParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v1, v0, v4}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_b
    :goto_5
    iput v8, p0, Lcom/prineside/tdi2/towers/FreezingTower;->Q:F

    iput-object v7, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->Q:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_d

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager$Factories;->SNOWBALL:Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory;->getBreakParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v1, v0, v4}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_d
    iput v8, p0, Lcom/prineside/tdi2/towers/FreezingTower;->Q:F

    iput-object v7, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    :cond_e
    :goto_6
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    return-void
.end method

.method public updateCache()V
    .locals 4

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->FREEZE_PERCENT:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->M:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->FREEZE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->N:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_POISON_DURATION_BONUS:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->O:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_CHAIN_LIGHTNING_BONUS_LENGTH:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->P:F

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->U:Lcom/prineside/tdi2/shapes/Circle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/FreezingTower;->g()V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/Tower;->experienceMultiplier:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FREEZING_A_MONITORING_XP:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/prineside/tdi2/Tower;->experienceMultiplier:F

    :cond_1
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->M:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->N:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->O:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->P:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->Q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FreezingTower;->R:Lcom/prineside/tdi2/Tile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
