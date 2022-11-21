.class public Lcom/prineside/tdi2/towers/BlastTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/BlastTower$BlastTowerFactory;
    }
.end annotation


# static fields
.field public static final V:Lcom/badlogic/gdx/graphics/Color;

.field public static final W:[I


# instance fields
.field public M:Lcom/prineside/tdi2/shapes/Circle;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public N:F

.field public O:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public P:Z

.field public Q:F

.field public R:F

.field public T:F

.field public U:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x455a64ff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/towers/BlastTower;->V:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/BlastTower;->W:[I

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
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->BLAST:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->N:F

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->O:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->P:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/BlastTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/BlastTower;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/towers/BlastTower;)F
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/BlastTower;->h()F

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/towers/BlastTower;)F
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/BlastTower;->i()F

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

    sget-object v0, Lcom/prineside/tdi2/towers/BlastTower;->W:[I

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

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->BLAST:Lcom/prineside/tdi2/towers/BlastTower$BlastTowerFactory;

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
    .locals 10

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object p2

    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/towers/BlastTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    if-nez p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/ShapeType;->CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/shapes/Circle;

    iput-object p2, p0, Lcom/prineside/tdi2/towers/BlastTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const v1, 0x3e0f5c29    # 0.14f

    iput v1, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v2, p0, Lcom/prineside/tdi2/towers/BlastTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    invoke-virtual/range {v2 .. v9}, Lcom/prineside/tdi2/shapes/Circle;->setup(FFFFIFF)V

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/towers/BlastTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/Circle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_1
    return-void
.end method

.method public drawWeapon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p5

    iget-boolean p5, p5, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result p5

    if-nez p5, :cond_1

    iget p5, p0, Lcom/prineside/tdi2/towers/BlastTower;->N:F

    iget v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->U:F

    cmpl-float v1, p5, v0

    if-lez v1, :cond_0

    const/high16 p5, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3f333333    # 0.7f

    div-float/2addr p5, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float p5, p5, v0

    add-float/2addr p5, v1

    move v5, p5

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/BlastTower;->getWeaponTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFF)V

    :cond_1
    return-void
.end method

.method public getAttackDelay()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->U:F

    return v0
.end method

.method public getScheduledUpdateInterval()F
    .locals 1

    const v0, 0x3e19999a    # 0.15f

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

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_STUN_DURATION:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BLAST_A_SONIC_WAVE_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v0, v0

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BLAST_A_HEAVY_SHELL_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-float v0, v0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    float-to-double v3, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BLAST_A_HEAVY_SHELL_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v0, v3

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    float-to-double v0, v0

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BLAST_A_FAST_MECHANISM_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-float v0, v0

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->STUN_CHANCE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    float-to-double v0, v0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BLAST_A_HEAVY_SHELL_CHANCE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_4
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

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->BLAST:Lcom/prineside/tdi2/towers/BlastTower$BlastTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->BLAST:Lcom/prineside/tdi2/towers/BlastTower$BlastTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/BlastTower$BlastTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public final h()F
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BLAST_A_STOPPING_FORCE_MIN_DIST:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BLAST_A_STOPPING_FORCE_MAX_DIST:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v3

    sub-float/2addr v1, v0

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public final i()F
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BLAST_A_STOPPING_FORCE_ULTIMATE_MIN:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BLAST_A_STOPPING_FORCE_ULTIMATE_MAX:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->N:F

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->O:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->P:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->Q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->R:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->T:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->U:F

    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 10

    iget p1, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    mul-float p1, p1, p1

    iget-object v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->O:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTilesInRange()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    iget-object v7, v4, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v7, v7, v6

    iget-object v8, v7, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v8, :cond_1

    invoke-virtual {p0, v8}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    :cond_0
    iget-object v9, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v8

    cmpg-float v8, v8, p1

    if-gez v8, :cond_1

    iget-object v8, p0, Lcom/prineside/tdi2/towers/BlastTower;->O:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->O:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    iput-boolean v2, p0, Lcom/prineside/tdi2/towers/BlastTower;->P:Z

    return-void
.end method

.method public setUnregistered()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->setUnregistered()V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->O:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public update(F)V
    .locals 23

    move-object/from16 v8, p0

    iget v0, v8, Lcom/prineside/tdi2/towers/BlastTower;->N:F

    add-float v0, v0, p1

    iput v0, v8, Lcom/prineside/tdi2/towers/BlastTower;->N:F

    iget-boolean v1, v8, Lcom/prineside/tdi2/towers/BlastTower;->P:Z

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/BlastTower;->getAttackDelay()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    iget v0, v8, Lcom/prineside/tdi2/towers/BlastTower;->N:F

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, v8, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    mul-float v9, v0, v0

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v1, v8, Lcom/prineside/tdi2/towers/BlastTower;->O:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ge v11, v2, :cond_8

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, v11

    iget-object v15, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v15, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v15}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    cmpg-float v1, v1, v9

    if-gez v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v15}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget v2, v8, Lcom/prineside/tdi2/towers/BlastTower;->Q:F

    iget v3, v8, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    div-float/2addr v0, v3

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v0, v16, v0

    mul-float v3, v2, v0

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->EXPLOSION:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x3

    if-ge v12, v0, :cond_6

    iget v1, v8, Lcom/prineside/tdi2/towers/BlastTower;->R:F

    iget-object v2, v15, Lcom/prineside/tdi2/Enemy;->buffStunCountByTower:Lcom/badlogic/gdx/utils/IntIntMap;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget v3, v8, Lcom/prineside/tdi2/Tower;->id:I

    invoke-virtual {v2, v3, v10}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v2

    :goto_1
    if-lez v2, :cond_2

    const-wide v3, 0x3fe99999a0000000L    # 0.800000011920929

    int-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v1, v1, v2

    :cond_2
    iget v2, v8, Lcom/prineside/tdi2/towers/BlastTower;->T:F

    iget-byte v3, v15, Lcom/prineside/tdi2/Enemy;->buffStunCount:B

    sget-object v4, Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;->STUN_DURATION_BY_STUN_COUNT:[F

    array-length v5, v4

    if-lt v3, v5, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    aget v3, v4, v3

    mul-float v2, v2, v3

    :goto_2
    cmpl-float v3, v1, v13

    if-eqz v3, :cond_4

    iget-object v3, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v3

    cmpg-float v1, v3, v1

    if-gez v1, :cond_4

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager$Factories;->STUN:Lcom/prineside/tdi2/buffs/StunBuff$StunBuffFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/buffs/StunBuff;

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v15, v3}, Lcom/prineside/tdi2/Enemy;->getBuffVulnerability(Lcom/prineside/tdi2/enums/BuffType;)F

    move-result v3

    mul-float v2, v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v3, v3, v2

    iget v4, v8, Lcom/prineside/tdi2/Tower;->id:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/buffs/StunBuff;->setup(FFI)V

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/BuffSystem;->P_STUN:Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;

    invoke-virtual {v2, v15, v1}, Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/StunBuff;)Z

    add-int/lit8 v12, v12, 0x1

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/AchievementSystem;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->MASS_STUN_ENEMIES_ONE_SHOT:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v1, v2, v12}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_4
    invoke-virtual {v8, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BLAST_A_STOPPING_FORCE_CHANCE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v2

    float-to-double v2, v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/BlastTower;->h()F

    move-result v19

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->THROW_BACK:Lcom/prineside/tdi2/buffs/ThrowBackBuff$BlastThrowBackBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;

    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/BlastTower;->i()F

    move-result v16

    move/from16 v22, v16

    goto :goto_3

    :cond_5
    const/high16 v22, 0x3f800000    # 1.0f

    :goto_3
    iget v1, v8, Lcom/prineside/tdi2/Tower;->id:I

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x41200000    # 10.0f

    move-object/from16 v17, v0

    move/from16 v18, v1

    invoke-virtual/range {v17 .. v22}, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->setup(IFFFF)V

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/BuffSystem;->P_THROW_BACK:Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;

    invoke-virtual {v1, v15, v0}, Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/ThrowBackBuff;)Z

    :cond_6
    const/4 v0, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v0, :cond_a

    iput v13, v8, Lcom/prineside/tdi2/towers/BlastTower;->N:F

    iget v0, v8, Lcom/prineside/tdi2/Tower;->shotCount:I

    add-int/2addr v0, v14

    iput v0, v8, Lcom/prineside/tdi2/Tower;->shotCount:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isExplosionsDrawing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->BLAST:Lcom/prineside/tdi2/towers/BlastTower$BlastTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/BlastTower$BlastTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    add-int/lit8 v1, v1, 0x40

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    mul-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, 0x40

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColors()[F

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/towers/BlastTower;->V:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v7, v5, v10

    iget v7, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v7, v5, v14

    const/4 v7, 0x2

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    iget v5, v8, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    iget v4, v8, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    mul-float v4, v4, v6

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    iget-object v3, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/LimitedParticleType;->EXPLOSION_BLAST:Lcom/prineside/tdi2/enums/LimitedParticleType;

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Lcom/prineside/tdi2/enums/LimitedParticleType;FF)V

    :cond_9
    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_a

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_BLAST:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1, v8}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    :cond_a
    invoke-super/range {p0 .. p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    return-void
.end method

.method public updateCache()V
    .locals 9

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->Q:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->STUN_CHANCE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->R:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_STUN_DURATION:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->T:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/towers/BlastTower;->U:F

    iget-object v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/Circle;->getInnerColor()F

    move-result v7

    iget-object v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/Circle;->getOuterColor()F

    move-result v8

    iget-object v1, p0, Lcom/prineside/tdi2/towers/BlastTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v4, v5, v0

    const/16 v6, 0x30

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/shapes/Circle;->setup(FFFFIFF)V

    :cond_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->N:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/BlastTower;->O:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->P:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->Q:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->R:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->T:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/BlastTower;->U:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
