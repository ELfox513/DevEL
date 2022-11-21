.class public Lcom/prineside/tdi2/towers/MultishotTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/MultishotTower$MultishotTowerFactory;
    }
.end annotation


# static fields
.field public static final T:Lcom/badlogic/gdx/math/Vector2;

.field public static final U:Lcom/badlogic/gdx/math/Vector2;

.field public static final V:[I


# instance fields
.field public M:F

.field public N:F

.field public O:F

.field public P:F

.field public Q:F

.field public R:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/MultishotTower;->T:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/MultishotTower;->U:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/MultishotTower;->V:[I

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
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->MULTISHOT:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/MultishotTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/MultishotTower;-><init>()V

    return-void
.end method


# virtual methods
.method public attack(I)V
    .locals 17

    move-object/from16 v9, p0

    move/from16 v10, p1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, v9, Lcom/prineside/tdi2/towers/MultishotTower;->Q:F

    float-to-int v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    rem-float/2addr v0, v2

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v0

    iget v3, v9, Lcom/prineside/tdi2/towers/MultishotTower;->Q:F

    rem-float/2addr v3, v2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    iget v0, v9, Lcom/prineside/tdi2/towers/MultishotTower;->P:F

    iget v1, v9, Lcom/prineside/tdi2/towers/MultishotTower;->Q:F

    div-float v12, v0, v1

    iget v1, v9, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    const/4 v13, 0x0

    move v14, v1

    const/4 v15, 0x0

    :goto_0
    const/4 v0, 0x3

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x1

    if-ge v15, v11, :cond_2

    sget-object v3, Lcom/prineside/tdi2/towers/MultishotTower;->T:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4, v5, v14, v1, v3}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v4, Lcom/prineside/tdi2/towers/MultishotTower;->U:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, v9, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    invoke-static {v1, v5, v14, v6, v4}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v5, Lcom/prineside/tdi2/enums/ProjectileType;->MULTISHOT:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/projectiles/MultishotProjectile;

    iget-object v5, v9, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v5, v1}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    iget v5, v9, Lcom/prineside/tdi2/towers/MultishotTower;->M:F

    int-to-float v6, v10

    mul-float v5, v5, v6

    iget v6, v9, Lcom/prineside/tdi2/towers/MultishotTower;->O:F

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v7

    invoke-virtual {v9, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v8

    invoke-virtual {v9, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v16

    move-object v0, v1

    move-object/from16 v1, p0

    move v2, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->setup(Lcom/prineside/tdi2/Tower;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZZZ)V

    add-float/2addr v14, v12

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v9, Lcom/prineside/tdi2/towers/MultishotTower;->M:F

    int-to-float v4, v10

    mul-float v3, v3, v4

    iget-object v4, v9, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MULTISHOT_A_BACK_SHOT_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v3, v3, v4

    sget-object v4, Lcom/prineside/tdi2/towers/MultishotTower;->T:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v9, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v8, 0x43340000    # 180.0f

    add-float/2addr v7, v8

    invoke-static {v5, v6, v7, v1, v4}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v5, Lcom/prineside/tdi2/towers/MultishotTower;->U:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v9, Lcom/prineside/tdi2/Tower;->angle:F

    add-float/2addr v7, v8

    iget v8, v9, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    invoke-static {v1, v6, v7, v8, v5}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v6, Lcom/prineside/tdi2/enums/ProjectileType;->MULTISHOT:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/projectiles/MultishotProjectile;

    iput-boolean v2, v1, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->flyingBack:Z

    iget-object v6, v9, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v6, v1}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    iget v6, v9, Lcom/prineside/tdi2/towers/MultishotTower;->O:F

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v7

    invoke-virtual {v9, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v8

    invoke-virtual {v9, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v11

    move-object v0, v1

    move-object/from16 v1, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/tdi2/projectiles/MultishotProjectile;->setup(Lcom/prineside/tdi2/Tower;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZZZ)V

    :cond_3
    iget v0, v9, Lcom/prineside/tdi2/Tower;->shotCount:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/prineside/tdi2/Tower;->shotCount:I

    iget-object v0, v9, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_MULTISHOT:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1, v9}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    :cond_4
    return-void
.end method

.method public canAim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canAttack()Z
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prineside/tdi2/Tower;->attackDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/towers/MultishotTower;->U:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2, v3, v4, v0}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result v0

    iget v2, p0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-static {v2, v0}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(F)F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    iget v3, p0, Lcom/prineside/tdi2/towers/MultishotTower;->P:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->isAir()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result p1

    return p1
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object v0, Lcom/prineside/tdi2/towers/MultishotTower;->V:[I

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

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MULTISHOT:Lcom/prineside/tdi2/towers/MultishotTower$MultishotTowerFactory;

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

.method public getAttackDelay()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/towers/MultishotTower;->R:F

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

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_SHOOT_ANGLE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    float-to-double v0, v0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MULTISHOT_A_COMPACT_ARC_SIZE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_0
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

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MULTISHOT:Lcom/prineside/tdi2/towers/MultishotTower$MultishotTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MULTISHOT:Lcom/prineside/tdi2/towers/MultishotTower$MultishotTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/MultishotTower$MultishotTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->M:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->N:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->O:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->P:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->Q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->R:F

    return-void
.end method

.method public update(F)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/towers/MultishotTower;->N:F

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/Tower;->e(FF)V

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    return-void
.end method

.method public updateCache()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MultishotTower;->M:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MultishotTower;->N:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MultishotTower;->O:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_SHOOT_ANGLE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MultishotTower;->P:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_PROJECTILE_COUNT:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MultishotTower;->Q:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->R:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->M:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->N:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->O:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->P:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->Q:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MultishotTower;->R:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
