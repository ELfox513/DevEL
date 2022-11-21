.class public Lcom/prineside/tdi2/towers/MissileTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;,
        Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;
    }
.end annotation


# static fields
.field public static final Y:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public static final Z:Lcom/badlogic/gdx/math/Vector2;

.field public static final a0:Lcom/badlogic/gdx/math/Vector2;

.field public static final b0:[I


# instance fields
.field public M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/projectiles/MissileProjectile;",
            ">;"
        }
    .end annotation
.end field

.field public N:F

.field public O:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public Q:F

.field public R:F

.field public T:F

.field public U:F

.field public V:F

.field public W:F

.field public X:Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Tile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/towers/MissileTower;->Y:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/MissileTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/MissileTower;->a0:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/MissileTower;->b0:[I

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
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->MISSILE:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/projectiles/MissileProjectile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/MissileTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/MissileTower;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/towers/MissileTower;Lcom/prineside/tdi2/Enemy;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/towers/MissileTower;->h(Lcom/prineside/tdi2/Enemy;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/towers/MissileTower;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method private synthetic h(Lcom/prineside/tdi2/Enemy;)Z
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-ne v4, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method public attack(I)V
    .locals 19

    move-object/from16 v10, p0

    move/from16 v11, p1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MissileTower"

    const-string v1, "Enemy is not valid"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v10, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MISSILE_A_COMPACT_COUNT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v1

    if-le v1, v0, :cond_4

    iget-object v0, v10, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v12

    const/high16 v0, 0x42700000    # 60.0f

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    iget-object v2, v10, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MISSILE_A_VERTICAL_ROTATION_BONUS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v4

    double-to-float v2, v4

    add-float/2addr v2, v3

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v5, v2, v4

    if-gez v5, :cond_1

    const v2, 0x3c23d70a    # 0.01f

    :cond_1
    mul-float v0, v0, v2

    move v13, v0

    goto :goto_0

    :cond_2
    const/high16 v13, 0x42700000    # 60.0f

    :goto_0
    add-int/lit8 v0, v12, -0x1

    int-to-float v0, v0

    div-float v14, v3, v0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v9, v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-lez v9, :cond_3

    iget-object v1, v10, Lcom/prineside/tdi2/towers/MissileTower;->P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    if-eqz v1, :cond_3

    array-length v2, v1

    if-le v2, v9, :cond_3

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v1, :cond_3

    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    iget v0, v10, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v1, -0x3dea0000    # -37.5f

    const/high16 v3, 0x42960000    # 75.0f

    mul-float v3, v3, v16

    add-float/2addr v3, v1

    add-float v8, v0, v3

    sget-object v5, Lcom/prineside/tdi2/towers/MissileTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v5, v15, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/prineside/tdi2/towers/MissileTower;->a0:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v15, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget v1, v10, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ProjectileType;->MISSILE:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/projectiles/MissileProjectile;

    iget-object v1, v10, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    iget v1, v10, Lcom/prineside/tdi2/towers/MissileTower;->Q:F

    int-to-float v3, v11

    mul-float v3, v3, v1

    iget v4, v10, Lcom/prineside/tdi2/towers/MissileTower;->U:F

    iget v6, v10, Lcom/prineside/tdi2/towers/MissileTower;->T:F

    const/high16 v17, 0x3f400000    # 0.75f

    move-object/from16 v1, p0

    move v7, v13

    move/from16 v18, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lcom/prineside/tdi2/projectiles/MissileProjectile;->setup(Lcom/prineside/tdi2/towers/MissileTower;Lcom/prineside/tdi2/Enemy;FFLcom/badlogic/gdx/math/Vector2;FFFF)V

    add-float v16, v16, v14

    add-int/lit8 v9, v18, 0x1

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/prineside/tdi2/towers/MissileTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ProjectileType;->MISSILE:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/projectiles/MissileProjectile;

    iget-object v1, v10, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v2

    iget v1, v10, Lcom/prineside/tdi2/towers/MissileTower;->Q:F

    int-to-float v3, v11

    mul-float v3, v3, v1

    iget v4, v10, Lcom/prineside/tdi2/towers/MissileTower;->U:F

    iget v6, v10, Lcom/prineside/tdi2/towers/MissileTower;->T:F

    const/high16 v7, 0x42b40000    # 90.0f

    iget v8, v10, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/prineside/tdi2/projectiles/MissileProjectile;->setup(Lcom/prineside/tdi2/towers/MissileTower;Lcom/prineside/tdi2/Enemy;FFLcom/badlogic/gdx/math/Vector2;FFFF)V

    :cond_5
    iget-object v0, v10, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_MISSILE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1, v10}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    :cond_6
    return-void
.end method

.method public canAim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canAttack()Z
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/Tower;->attackDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget v2, p0, Lcom/prineside/tdi2/Tower;->B:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->isAir()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object v0, Lcom/prineside/tdi2/towers/MissileTower;->b0:[I

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

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MISSILE:Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;

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
    .locals 13

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_BUILDING_INFO:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v0, :cond_0

    const-string v0, "-"

    goto :goto_0

    :cond_0
    const-string v0, "+"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->N:F

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x42480000    # 50.0f

    sub-float v4, p2, v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v2, 0x41f00000    # 30.0f

    sub-float v5, p2, v2

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object p2, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object p2, p2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz p2, :cond_2

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object p2, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object p2, p2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object p2, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object p2, p2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v7, 0x40800000    # 4.0f

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    iget-object p2, p0, Lcom/prineside/tdi2/towers/MissileTower;->P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    if-eqz p2, :cond_2

    array-length v1, p2

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p2, v0

    iget-object v3, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v5

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v8, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v9, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v10, 0x40400000    # 3.0f

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v11

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v12

    move-object v4, p1

    invoke-static/range {v4 .. v12}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public drawWeapon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 24

    move-object/from16 v0, p0

    const/high16 v1, 0x43000000    # 128.0f

    div-float v8, p4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/MissileTower;->getWeaponTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, v0, Lcom/prineside/tdi2/Tower;->angle:F

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/MissileTower;->getAttackDelay()F

    move-result v1

    iget v2, v0, Lcom/prineside/tdi2/Tower;->A:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_2

    sub-float/2addr v2, v1

    div-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v4

    const/high16 v5, 0x41e00000    # 28.0f

    const/high16 v6, 0x41600000    # 14.0f

    const/high16 v7, 0x40e00000    # 7.0f

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v9, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MISSILE_A_COMPACT_COUNT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4, v9}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v4

    if-le v4, v3, :cond_1

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v3, v9}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget v10, v0, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v11, -0x3dea0000    # -37.5f

    const/high16 v12, 0x42960000    # 75.0f

    mul-float v12, v12, v9

    add-float/2addr v12, v11

    add-float/2addr v10, v12

    sget-object v11, Lcom/prineside/tdi2/towers/MissileTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v11, v8, v12}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v12

    iget-object v12, v12, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lcom/prineside/tdi2/towers/MissileTower;->a0:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v13, 0x41900000    # 18.0f

    invoke-virtual {v12, v8, v13}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget v13, v0, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v14, 0x43340000    # 180.0f

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MISSILE:Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;

    iget-object v14, v12, Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v12, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v17, v2, v7

    sub-float v15, v12, v17

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v19, v2, v6

    sub-float v16, v11, v19

    mul-float v20, v2, v5

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v13, p1

    move/from16 v18, v19

    move/from16 v23, v10

    invoke-virtual/range {v13 .. v23}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    add-float/2addr v9, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MISSILE:Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;

    iget-object v10, v1, Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v1, v1, p4

    add-float v3, p2, v1

    mul-float v7, v7, v2

    mul-float v13, v7, v8

    sub-float v11, v3, v13

    add-float v1, p3, v1

    mul-float v6, v6, v2

    mul-float v15, v6, v8

    sub-float v12, v1, v15

    mul-float v2, v2, v5

    mul-float v16, v2, v8

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    iget v1, v0, Lcom/prineside/tdi2/Tower;->angle:F

    move-object/from16 v9, p1

    move v14, v15

    move/from16 v19, v1

    invoke-virtual/range {v9 .. v19}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :cond_2
    return-void
.end method

.method public getAttackDelay()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->W:F

    return v0
.end method

.method public getMinRange()F
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MISSILE_A_VERTICAL_MIN_RANGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_1
    return v0
.end method

.method public getScheduledUpdateInterval()F
    .locals 1

    const v0, 0x3de147ae    # 0.11f

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

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->RANGE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MISSILE_A_VERTICAL_MAX_RANGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    float-to-double v0, v0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MISSILE_A_COMPACT_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

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

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MISSILE:Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MISSILE:Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public missileLostTarget(Lcom/prineside/tdi2/projectiles/MissileProjectile;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->N:F

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const-class v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->Q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->R:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->T:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->U:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->V:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->W:F

    const-class v0, Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/MissileTower;->X:Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;

    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-static {v0}, Lcom/prineside/tdi2/utils/EntityUtils;->removeNullRefs(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v5, :cond_3

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/projectiles/MissileProjectile;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/prineside/tdi2/projectiles/MissileProjectile;->getTower()Lcom/prineside/tdi2/towers/MissileTower;

    move-result-object v5

    if-ne v5, p0, :cond_0

    invoke-virtual {v4}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v5, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v6, v6, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v7, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v5

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {p0, v5}, Lcom/prineside/tdi2/towers/MissileTower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/projectiles/MissileProjectile;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    iget-object v4, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/2addr v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_4
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    iput v3, p0, Lcom/prineside/tdi2/towers/MissileTower;->N:F

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MISSILE_A_COMPACT_COUNT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    sub-int/2addr p1, v2

    if-lez p1, :cond_10

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-eq v0, p1, :cond_6

    :cond_5
    new-array p1, p1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/MissileTower;->P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/prineside/tdi2/towers/MissileTower;->P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    array-length v0, p1

    if-ge v1, v0, :cond_10

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/prineside/tdi2/towers/MissileTower;->P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    aput-object v0, p1, v1

    new-instance p1, Lcom/prineside/tdi2/towers/b;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/towers/b;-><init>(Lcom/prineside/tdi2/towers/MissileTower;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->findTarget(Lcom/prineside/tdi2/utils/ObjectFilter;)Lcom/prineside/tdi2/Enemy;

    move-result-object p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/prineside/tdi2/towers/MissileTower;->P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v0

    aput-object v0, p1, v1

    goto/16 :goto_8

    :cond_9
    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p1

    aput-object p1, v0, v1

    goto/16 :goto_8

    :cond_a
    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v0, :cond_d

    sget-object v0, Lcom/prineside/tdi2/towers/MissileTower;->Y:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    const/4 v0, 0x0

    :goto_5
    sget-object v4, Lcom/prineside/tdi2/towers/MissileTower;->Y:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v5, :cond_b

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    sget-object v0, Lcom/prineside/tdi2/towers/MissileTower;->Y:Lcom/badlogic/gdx/utils/Array;

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_d

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Tile;

    aget-object v0, v0, v1

    iget-object v4, v0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v5, :cond_c

    invoke-static {v4}, Lcom/prineside/tdi2/utils/EntityUtils;->removeNullRefs(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v5, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/towers/MissileTower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->N:F

    iget v1, p0, Lcom/prineside/tdi2/towers/MissileTower;->V:F

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->N:F

    const/high16 p1, 0x42c80000    # 100.0f

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_10

    iget-boolean p1, p0, Lcom/prineside/tdi2/Tower;->attackDisabled:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/towers/MissileTower;->attack(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    :cond_e
    iput v3, p0, Lcom/prineside/tdi2/towers/MissileTower;->N:F

    sget-object p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    goto :goto_8

    :cond_f
    iput v3, p0, Lcom/prineside/tdi2/towers/MissileTower;->N:F

    :cond_10
    :goto_8
    return-void
.end method

.method public setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object p1, p0, Lcom/prineside/tdi2/towers/MissileTower;->X:Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;

    if-nez p1, :cond_0

    new-instance p1, Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;-><init>(Lcom/prineside/tdi2/towers/MissileTower;Lcom/prineside/tdi2/towers/MissileTower$1;)V

    iput-object p1, p0, Lcom/prineside/tdi2/towers/MissileTower;->X:Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/ProjectileSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->X:Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public setUnregistered()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    sget-object v0, Lcom/prineside/tdi2/towers/MissileTower;->Y:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/ProjectileSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/towers/MissileTower;->X:Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->setUnregistered()V

    return-void
.end method

.method public update(F)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->R:F

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

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->Q:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->R:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->T:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_EXPLOSION_RANGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->U:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_LRM_AIM_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->V:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/towers/MissileTower;->W:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->M:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->N:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->O:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->P:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    const-class v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->Q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->R:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->T:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->U:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->V:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->W:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/MissileTower;->X:Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;

    const-class v1, Lcom/prineside/tdi2/towers/MissileTower$_ProjectileSystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
