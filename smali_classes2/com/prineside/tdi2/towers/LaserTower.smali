.class public Lcom/prineside/tdi2/towers/LaserTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;,
        Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;,
        Lcom/prineside/tdi2/towers/LaserTower$LaserTowerFactory;
    }
.end annotation


# static fields
.field public static final X:Lcom/badlogic/gdx/math/Vector2;

.field public static final Y:Lcom/badlogic/gdx/math/Vector2;

.field public static final Z:[I


# instance fields
.field public M:F

.field public N:Z

.field public O:F

.field public P:F

.field public Q:F

.field public R:F

.field public T:F

.field public U:I

.field public V:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;",
            ">;"
        }
    .end annotation
.end field

.field public W:Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;

.field public ultDamageBonuses:Lcom/badlogic/gdx/utils/FloatArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/LaserTower;->X:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/LaserTower;->Y:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/LaserTower;->Z:[I

    return-void

    nop

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
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->LASER:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->ultDamageBonuses:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->V:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/LaserTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/LaserTower;-><init>()V

    return-void
.end method


# virtual methods
.method public attack(I)V
    .locals 19

    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/prineside/tdi2/towers/LaserTower;->N:Z

    const/4 v11, 0x0

    iput v11, v9, Lcom/prineside/tdi2/towers/LaserTower;->O:F

    iput v11, v9, Lcom/prineside/tdi2/towers/LaserTower;->M:F

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v9, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_HIGH_ENEMY_COUNT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-ge v1, v10, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    move v12, v1

    :goto_1
    const-class v1, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v13

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    const/high16 v14, 0x45c00000    # 6144.0f

    const/high16 v15, 0x41a00000    # 20.0f

    if-eqz v1, :cond_5

    iget-object v1, v9, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_MIRRORS_BEAM_COUNT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v1

    if-ge v1, v10, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    iget-object v1, v9, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_MIRRORS_BEAM_ANGLE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v1

    neg-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    add-int/lit8 v3, v8, -0x1

    int-to-float v3, v3

    div-float v16, v1, v3

    if-ne v8, v10, :cond_4

    const/4 v2, 0x0

    :cond_4
    move v6, v2

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v8, :cond_6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ProjectileType;->LASER:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/prineside/tdi2/projectiles/LaserProjectile;

    iget-object v0, v9, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    sget-object v0, Lcom/prineside/tdi2/towers/LaserTower;->X:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v11, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v2, v9, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/prineside/tdi2/towers/LaserTower;->Y:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v11, v14}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v3, v9, Lcom/prineside/tdi2/Tower;->angle:F

    add-float/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v2, v9, Lcom/prineside/tdi2/towers/LaserTower;->T:F

    iget v3, v9, Lcom/prineside/tdi2/towers/LaserTower;->P:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v17, v0

    move-object v0, v5

    move/from16 v18, v1

    move-object/from16 v1, p0

    move-object v14, v5

    move/from16 v5, v17

    move v11, v6

    move v6, v10

    move v10, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/tdi2/projectiles/LaserProjectile;->setup(Lcom/prineside/tdi2/Tower;FFFFFFI)V

    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;

    invoke-static {v0, v14}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->b(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;Lcom/prineside/tdi2/projectiles/LaserProjectile;)Lcom/prineside/tdi2/projectiles/LaserProjectile;

    iget v1, v9, Lcom/prineside/tdi2/towers/LaserTower;->T:F

    invoke-static {v0, v1}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->d(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;F)F

    invoke-static {v0, v11}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->g(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;F)F

    iget-object v1, v9, Lcom/prineside/tdi2/towers/LaserTower;->V:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-float v6, v11, v16

    add-int/lit8 v7, v10, 0x1

    move/from16 v8, v18

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/high16 v14, 0x45c00000    # 6144.0f

    goto/16 :goto_3

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ProjectileType;->LASER:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/prineside/tdi2/projectiles/LaserProjectile;

    iget-object v0, v9, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v0, v10}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    sget-object v0, Lcom/prineside/tdi2/towers/LaserTower;->X:Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v3, v9, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/prineside/tdi2/towers/LaserTower;->Y:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, 0x45c00000    # 6144.0f

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v1, v9, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v3, v9, Lcom/prineside/tdi2/towers/LaserTower;->T:F

    iget v4, v9, Lcom/prineside/tdi2/towers/LaserTower;->P:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/tdi2/projectiles/LaserProjectile;->setup(Lcom/prineside/tdi2/Tower;FFFFFFI)V

    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;

    invoke-static {v0, v10}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->b(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;Lcom/prineside/tdi2/projectiles/LaserProjectile;)Lcom/prineside/tdi2/projectiles/LaserProjectile;

    iget v1, v9, Lcom/prineside/tdi2/towers/LaserTower;->T:F

    invoke-static {v0, v1}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->d(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;F)F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->g(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;F)F

    iget-object v1, v9, Lcom/prineside/tdi2/towers/LaserTower;->V:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_6
    iget v0, v9, Lcom/prineside/tdi2/Tower;->shotCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/prineside/tdi2/Tower;->shotCount:I

    iget-object v0, v9, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_LASER:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1, v9}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    :cond_7
    return-void
.end method

.method public canAim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canAttack()Z
    .locals 3

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->canAttack()Z

    move-result v0

    iget-boolean v1, p0, Lcom/prineside/tdi2/towers/LaserTower;->N:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->M:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object v0, Lcom/prineside/tdi2/towers/LaserTower;->Z:[I

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

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->LASER:Lcom/prineside/tdi2/towers/LaserTower$LaserTowerFactory;

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
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_BUILDING_INFO:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->N:Z

    if-eqz v0, :cond_0

    const-string v0, "+"

    goto :goto_0

    :cond_0
    const-string v0, "-"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->M:F

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v0, 0x42480000    # 50.0f

    sub-float v4, p2, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v0, 0x41f00000    # 30.0f

    sub-float v5, p2, v0

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    :cond_1
    return-void
.end method

.method public fillTowerMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 16
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

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-super/range {p0 .. p2}, Lcom/prineside/tdi2/Tower;->fillTowerMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/ObjectMap;)V

    const/4 v2, 0x4

    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iget v4, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const-string v5, "bonusLabel"

    const-string v6, "damageIcon"

    const-string v7, "state"

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-damage"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v10, 0x42200000    # 40.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v10, 0x42400000    # 48.0f

    invoke-virtual {v4, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    const-string v13, ""

    invoke-direct {v10, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v12, 0x42cc0000    # 102.0f

    const/high16 v13, 0x41c00000    # 24.0f

    invoke-virtual {v10, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v10, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v14, v14, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v15, "tower_ability_name_ultimate"

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x15

    invoke-virtual {v15, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v13, v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v2, 0x3e8f5c29    # 0.28f

    invoke-virtual {v13, v9, v9, v9, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v13, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v13, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/LaserTower;->getUltDamageMultiplier()F

    move-result v2

    cmpl-float v4, v2, v9

    if-nez v4, :cond_2

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/Tower;->J:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    sub-float/2addr v2, v9

    mul-float v2, v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const/16 v4, 0x25

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    :goto_1
    return-void
.end method

.method public getAttackDelay()F
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->N:Z

    if-eqz v0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcom/prineside/tdi2/towers/LaserTower;->R:F

    div-float/2addr v0, v1

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

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_BATTERIES_CAPACITY:Lcom/prineside/tdi2/enums/TowerStatType;

    const/4 v2, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v0, v0

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_LARGE_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-float v0, v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    float-to-double v3, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_HIGH_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v0, v3

    :cond_1
    if-ne p1, v1, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    float-to-double v3, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_MIRRORS_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v0, v3

    :cond_2
    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_LARGE_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->CHARGING_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_4

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_IONIZATION_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v4

    add-double/2addr v4, v2

    iget p1, p0, Lcom/prineside/tdi2/towers/LaserTower;->U:I

    int-to-double v2, p1

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v6, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_IONIZATION_SPEED_REDUCTION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v6}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    sub-double/2addr v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-float v0, v0

    :cond_4
    return v0
.end method

.method public getUltDamageMultiplier()F
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_ULTIMATE_DAMAGE_BONUS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v2, p0, Lcom/prineside/tdi2/towers/LaserTower;->ultDamageBonuses:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v2, v1

    return v2

    :cond_0
    return v1
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

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->LASER:Lcom/prineside/tdi2/towers/LaserTower$LaserTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->LASER:Lcom/prineside/tdi2/towers/LaserTower$LaserTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/LaserTower$LaserTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->M:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->N:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->O:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->P:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->Q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->R:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->T:F

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->U:I

    const-class v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/FloatArray;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->ultDamageBonuses:Lcom/badlogic/gdx/utils/FloatArray;

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->V:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v0, Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/LaserTower;->W:Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;

    return-void
.end method

.method public setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object p1, p0, Lcom/prineside/tdi2/towers/LaserTower;->W:Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;

    if-nez p1, :cond_0

    new-instance p1, Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/towers/LaserTower;Lcom/prineside/tdi2/towers/LaserTower$1;)V

    iput-object p1, p0, Lcom/prineside/tdi2/towers/LaserTower;->W:Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->W:Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public setUnregistered()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/towers/LaserTower;->W:Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->setUnregistered()V

    return-void
.end method

.method public update(F)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->V:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/towers/LaserTower;->V:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->e(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;F)F

    invoke-static {v2}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->c(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/towers/LaserTower;->V:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget v1, p0, Lcom/prineside/tdi2/towers/LaserTower;->O:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/prineside/tdi2/towers/LaserTower;->O:F

    iget-boolean v2, p0, Lcom/prineside/tdi2/towers/LaserTower;->N:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/prineside/tdi2/towers/LaserTower;->T:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/prineside/tdi2/Tower;->angle:F

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_LASER_A_LARGE_ROTATION_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/prineside/tdi2/towers/LaserTower;->Q:F

    mul-float v3, v3, v2

    invoke-virtual {p0, p1, v3}, Lcom/prineside/tdi2/Tower;->e(FF)V

    iget v2, p0, Lcom/prineside/tdi2/Tower;->angle:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/towers/LaserTower;->V:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_4

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;

    aget-object v1, v1, v0

    sget-object v2, Lcom/prineside/tdi2/towers/LaserTower;->X:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v5, p0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/prineside/tdi2/towers/LaserTower;->Y:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v5, 0x45c00000    # 6144.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v6, p0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-static {v1}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->f(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->a(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;)Lcom/prineside/tdi2/projectiles/LaserProjectile;

    move-result-object v5

    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v5, v6, v2}, Lcom/prineside/tdi2/projectiles/LaserProjectile;->setStartPos(FF)V

    invoke-static {v1}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->a(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;)Lcom/prineside/tdi2/projectiles/LaserProjectile;

    move-result-object v2

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v5, v3}, Lcom/prineside/tdi2/projectiles/LaserProjectile;->setEndPos(FF)V

    invoke-static {v1}, Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;->a(Lcom/prineside/tdi2/towers/LaserTower$ActiveLaserConfig;)Lcom/prineside/tdi2/projectiles/LaserProjectile;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/projectiles/LaserProjectile;->handleCollisions(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->N:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->M:F

    iget v1, p0, Lcom/prineside/tdi2/towers/LaserTower;->R:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->M:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iput v1, p0, Lcom/prineside/tdi2/towers/LaserTower;->M:F

    :cond_3
    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->Q:F

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/Tower;->e(FF)V

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->ultDamageBonuses:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/prineside/tdi2/towers/LaserTower;->ultDamageBonuses:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v3, v2, v0

    sub-float/2addr v3, p1

    aput v3, v2, v0

    cmpg-float v2, v3, v4

    if-gtz v2, :cond_5

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->removeIndex(I)F

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    return-void
.end method

.method public updateCache()V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/prineside/tdi2/towers/LaserTower;->U:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getNeighbourTiles()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v3, v4, :cond_0

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v1

    check-cast v2, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v3, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/prineside/tdi2/towers/LaserTower;->U:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/prineside/tdi2/towers/LaserTower;->U:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/prineside/tdi2/towers/LaserTower;->U:I

    :cond_2
    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->P:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->CHARGING_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->R:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->Q:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_BATTERIES_CAPACITY:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->T:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->M:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->N:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->O:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->P:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->Q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->R:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->T:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->U:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->ultDamageBonuses:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->V:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/LaserTower;->W:Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;

    const-class v1, Lcom/prineside/tdi2/towers/LaserTower$_TowerSystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
