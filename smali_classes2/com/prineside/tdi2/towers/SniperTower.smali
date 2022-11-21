.class public Lcom/prineside/tdi2/towers/SniperTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;
    }
.end annotation


# static fields
.field public static final W:Lcom/badlogic/gdx/graphics/Color;

.field public static final X:Lcom/badlogic/gdx/math/Vector2;

.field public static final Y:Lcom/badlogic/gdx/math/Vector2;

.field public static final Z:Lcom/badlogic/gdx/math/Vector2;

.field public static final a0:Lcom/badlogic/gdx/graphics/Color;

.field public static final b0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public static final c0:[I


# instance fields
.field public M:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public N:F

.field public O:I

.field public P:F

.field public Q:F

.field public R:F

.field public T:F

.field public U:F

.field public V:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/towers/SniperTower;->W:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/SniperTower;->X:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/SniperTower;->Y:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/SniperTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/SniperTower;->a0:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/towers/SniperTower;->b0:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/SniperTower;->c0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x1
        0x3
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->SNIPER:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->M:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->N:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->O:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/SniperTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/SniperTower;-><init>()V

    return-void
.end method


# virtual methods
.method public attack(I)V
    .locals 33

    move-object/from16 v11, p0

    move/from16 v12, p1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    sget-object v13, Lcom/prineside/tdi2/towers/SniperTower;->Y:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v10, Lcom/prineside/tdi2/towers/SniperTower;->a0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget v9, v8, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    const/4 v14, 0x2

    const/high16 v15, 0x3f000000    # 0.5f

    if-eqz v0, :cond_4

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/prineside/tdi2/towers/SniperTower;->X:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v1

    cmpg-float v1, v1, v15

    if-gez v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlashCompensator1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlashCompensator2:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    :goto_0
    move-object/from16 v17, v1

    iget v1, v11, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v2, 0x422c0000    # 43.0f

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/PMath;->shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V

    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const v20, 0x41e2cccd    # 28.35f

    const/high16 v21, 0x41580000    # 13.5f

    const v22, 0x4262cccd    # 56.7f

    const v23, 0x4262cccd    # 56.7f

    iget v3, v11, Lcom/prineside/tdi2/Tower;->angle:F

    move-object/from16 v16, v1

    move/from16 v18, v2

    move/from16 v19, v0

    move/from16 v24, v3

    invoke-virtual/range {v16 .. v24}, Lcom/prineside/tdi2/systems/ParticleSystem;->addFlashParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v1

    cmpg-float v1, v1, v15

    if-gez v1, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlash1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlash1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    :goto_1
    move-object/from16 v17, v1

    iget v1, v11, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/PMath;->shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V

    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const v20, 0x41accccd    # 21.6f

    const v21, 0x402ccccd    # 2.7f

    const v22, 0x422ccccd    # 43.2f

    const v23, 0x422ccccd    # 43.2f

    iget v3, v11, Lcom/prineside/tdi2/Tower;->angle:F

    move-object/from16 v16, v1

    move/from16 v18, v2

    move/from16 v19, v0

    move/from16 v24, v3

    invoke-virtual/range {v16 .. v24}, Lcom/prineside/tdi2/systems/ParticleSystem;->addFlashParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    :cond_4
    :goto_2
    iget v0, v11, Lcom/prineside/tdi2/towers/SniperTower;->P:F

    int-to-float v1, v12

    mul-float v16, v0, v1

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SNIPER_A_KILLSHOT_HP:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SNIPER_A_KILLSHOT_INTERVAL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/enums/TowerType;->SNIPER:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v7, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v8, v2, v7}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v11, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x4

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eqz v3, :cond_7

    cmpl-float v3, v2, v18

    if-eqz v3, :cond_7

    sget-object v3, Lcom/prineside/tdi2/enums/SpecialDamageType;->KILLSHOT:Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-virtual {v8, v3}, Lcom/prineside/tdi2/Enemy;->isVulnerableToSpecial(Lcom/prineside/tdi2/enums/SpecialDamageType;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v3

    iget v5, v8, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v5, v5, v0

    cmpg-float v0, v3, v5

    if-gez v0, :cond_7

    iget v0, v11, Lcom/prineside/tdi2/towers/SniperTower;->O:I

    if-lt v0, v1, :cond_7

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v1

    div-float/2addr v1, v2

    add-float v3, v1, v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v4, v7

    move v6, v9

    move-object/from16 v21, v7

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, v21

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/systems/EnemySystem;->killEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V

    :cond_5
    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SNIPER:Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget v1, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v1, v0, v14}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_6
    iput v15, v11, Lcom/prineside/tdi2/towers/SniperTower;->O:I

    move-object/from16 v8, v17

    const/4 v0, 0x0

    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_7
    move-object/from16 v21, v7

    const/4 v7, 0x4

    invoke-virtual {v11, v7}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SNIPER_A_ULTIMATE_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    iget v2, v11, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    div-float/2addr v1, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v0, v6

    mul-float v1, v1, v0

    cmpl-float v0, v1, v18

    if-lez v0, :cond_9

    add-float/2addr v1, v6

    mul-float v16, v16, v1

    goto :goto_3

    :cond_8
    const/high16 v6, 0x3f800000    # 1.0f

    :cond_9
    :goto_3
    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v0

    iget v1, v11, Lcom/prineside/tdi2/towers/SniperTower;->T:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    iget v0, v11, Lcom/prineside/tdi2/towers/SniperTower;->U:F

    mul-float v0, v0, v4

    mul-float v16, v16, v0

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v5, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v3, v16

    move-object/from16 v4, v21

    move/from16 v6, v22

    move-object/from16 v22, v8

    const/4 v8, 0x4

    move-object/from16 v7, v23

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v1, v11, Lcom/prineside/tdi2/towers/SniperTower;->O:I

    add-int/2addr v1, v14

    iput v1, v11, Lcom/prineside/tdi2/towers/SniperTower;->O:I

    goto :goto_4

    :cond_a
    move-object/from16 v17, v22

    :goto_4
    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SNIPER:Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

    iget-object v1, v1, Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget v2, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getAngle()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    iget v3, v11, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v4, 0x43870000    # 270.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x41700000    # 15.0f

    sub-float v5, v3, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColors()[F

    move-result-object v3

    iget v4, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v4, v3, v15

    iget v4, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v4, v3, v14

    iget v4, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v5, 0x2

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    iget-object v2, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v2, v1, v14}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v11, v8}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SNIPER_A_ULTIMATE_EXPL_RANGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v1

    const/high16 v2, 0x43000000    # 128.0f

    mul-float v1, v1, v2

    mul-float v1, v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->explosionManager:Lcom/prineside/tdi2/managers/ExplosionManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ExplosionManager;->F:Lcom/prineside/tdi2/managers/ExplosionManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ExplosionManager$Factories;->GENERIC:Lcom/prineside/tdi2/explosions/GenericExplosion$GenericExplosionFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Explosion$Factory;->obtain()Lcom/prineside/tdi2/Explosion;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/prineside/tdi2/explosions/GenericExplosion;

    iget v2, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SNIPER_A_ULTIMATE_EXPL_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v4, v9, v0

    const v5, 0x3f99999a    # 1.2f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v15, v7

    move v7, v9

    const/4 v9, 0x4

    move/from16 v8, v20

    move-object v9, v10

    invoke-virtual/range {v0 .. v10}, Lcom/prineside/tdi2/explosions/GenericExplosion;->setup(Lcom/prineside/tdi2/Tower;FFFFIFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->explosion:Lcom/prineside/tdi2/systems/ExplosionSystem;

    invoke-virtual {v0, v15}, Lcom/prineside/tdi2/systems/ExplosionSystem;->register(Lcom/prineside/tdi2/Explosion;)V

    invoke-virtual {v15}, Lcom/prineside/tdi2/explosions/GenericExplosion;->explode()V

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->EXPLODE_ENEMY_WITH_BULLET:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v0, v1, v14}, Lcom/prineside/tdi2/systems/AchievementSystem;->registerDelta(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_c
    move-object/from16 v8, v17

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x1

    goto :goto_6

    :cond_d
    move-object/from16 v22, v8

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    move/from16 v3, v16

    move-object/from16 v4, v21

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, v11, Lcom/prineside/tdi2/towers/SniperTower;->O:I

    add-int/2addr v0, v14

    iput v0, v11, Lcom/prineside/tdi2/towers/SniperTower;->O:I

    move-object/from16 v8, v17

    goto :goto_5

    :cond_e
    move-object/from16 v8, v22

    :goto_5
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_6
    invoke-virtual {v11, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, v11, Lcom/prineside/tdi2/Tower;->angle:F

    iget v3, v11, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    sget-object v4, Lcom/prineside/tdi2/towers/SniperTower;->X:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v26, Lcom/prineside/tdi2/towers/SniperTower;->b0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual/range {v26 .. v26}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget v1, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x1

    move-object/from16 v25, v0

    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v30, v4

    invoke-virtual/range {v25 .. v32}, Lcom/prineside/tdi2/systems/MapSystem;->rayCastEnemies(Lcom/badlogic/gdx/utils/Array;FFFFFZ)Z

    const/4 v0, 0x0

    :goto_7
    sget-object v1, Lcom/prineside/tdi2/towers/SniperTower;->b0:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_15

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v1, :cond_f

    goto/16 :goto_a

    :cond_f
    if-eq v1, v8, :cond_14

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SNIPER_A_PENETRATION_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float v16, v16, v0

    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget v2, v11, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    div-float/2addr v0, v2

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v5, v10, v0

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float v5, v5, v0

    cmpl-float v0, v5, v18

    if-lez v0, :cond_11

    add-float/2addr v5, v10

    mul-float v16, v16, v5

    goto :goto_8

    :cond_10
    const/high16 v10, 0x3f800000    # 1.0f

    :cond_11
    :goto_8
    move/from16 v3, v16

    sget-object v8, Lcom/prineside/tdi2/towers/SniperTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, v11, Lcom/prineside/tdi2/towers/SniperTower;->O:I

    add-int/2addr v0, v14

    iput v0, v11, Lcom/prineside/tdi2/towers/SniperTower;->O:I

    :cond_12
    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine$BulletSmokeMultiLineFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

    iput v10, v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxAlpha:F

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SNIPER:Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

    iget-object v1, v1, Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_9

    :cond_13
    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/towers/SniperTower;->Y:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setup(FFFF)V

    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v2, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_15
    :goto_b
    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine$BulletSmokeMultiLineFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v11, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v4, 0x41f00000    # 30.0f

    sget-object v5, Lcom/prineside/tdi2/towers/SniperTower;->X:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SNIPER:Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

    iget-object v1, v1, Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_16

    const/4 v2, 0x0

    goto :goto_c

    :cond_16
    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_c
    invoke-virtual {v0, v1, v2, v14}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    if-eqz v9, :cond_17

    const v1, 0x3f0f5c29    # 0.56f

    iput v1, v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxAlpha:F

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_d

    :cond_17
    if-eqz v15, :cond_18

    const v1, 0x3e8f5c29    # 0.28f

    iput v1, v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxAlpha:F

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_d

    :cond_18
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_d
    iget v1, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v3, Lcom/prineside/tdi2/towers/SniperTower;->Y:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setup(FFFF)V

    iget-object v1, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    :cond_19
    iget v0, v11, Lcom/prineside/tdi2/Tower;->shotCount:I

    add-int/2addr v0, v12

    iput v0, v11, Lcom/prineside/tdi2/Tower;->shotCount:I

    iget-object v0, v11, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_1a

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_SNIPER:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1, v11}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    :cond_1a
    return-void
.end method

.method public canAim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canAttack()Z
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/SniperTower;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prineside/tdi2/Tower;->attackDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->N:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object v0, Lcom/prineside/tdi2/towers/SniperTower;->c0:[I

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

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SNIPER:Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

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
    .locals 11

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/SniperTower;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42f00000    # 120.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/prineside/tdi2/towers/SniperTower;->N:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    add-float v6, v1, v0

    sget-object v0, Lcom/prineside/tdi2/towers/SniperTower;->W:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SNIPER:Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

    iget-object v1, v0, Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v6, v2

    sub-float v2, v0, v4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v5, 0x0

    const/high16 v7, 0x43000000    # 128.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lcom/prineside/tdi2/Tower;->angle:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method public final f()Z
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    iget v3, p0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-static {v3, v2}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/StrictMath;->abs(F)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/towers/SniperTower;->M:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v2, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAttackDelay()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->V:F

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

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SNIPER_A_LONG_RANGE:Lcom/prineside/tdi2/enums/GameValueType;

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

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SNIPER_A_HEAVY_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_1
    return v0
.end method

.method public getWeaponTextures()Lcom/badlogic/gdx/utils/Array;
    .locals 3
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

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SNIPER:Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;->j:Lcom/badlogic/gdx/utils/Array;

    return-object v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SNIPER:Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SNIPER:Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SNIPER:Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->M:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->N:F

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->O:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->P:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->Q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->R:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->T:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->U:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->V:F

    return-void
.end method

.method public setUnregistered()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->setUnregistered()V

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->M:Lcom/prineside/tdi2/Enemy$EnemyReference;

    sget-object v0, Lcom/prineside/tdi2/towers/SniperTower;->b0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public update(F)V
    .locals 12

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/towers/SniperTower;->M:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/towers/SniperTower;->M:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput v2, p0, Lcom/prineside/tdi2/towers/SniperTower;->N:F

    :cond_0
    iget v1, p0, Lcom/prineside/tdi2/towers/SniperTower;->Q:F

    invoke-virtual {p0, p1, v1}, Lcom/prineside/tdi2/Tower;->e(FF)V

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/SniperTower;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v1

    const v2, 0x3e19999a    # 0.15f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tile;->getNeighbourTilesAndThis()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    iget-object v8, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/Tile;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v9, 0x0

    :goto_1
    iget v10, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v10, :cond_3

    iget-object v10, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v10, v10, v9

    iget-object v10, v10, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v11

    invoke-virtual {v10}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v10

    const/high16 v11, 0x46800000    # 16384.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    add-int/lit8 v7, v7, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_5

    goto :goto_3

    :cond_5
    move v5, v7

    :goto_3
    int-to-float v0, v5

    const v1, 0x3d23d70a    # 0.04f

    mul-float v0, v0, v1

    sub-float v0, v3, v0

    cmpg-float v1, v0, v2

    if-gez v1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v0

    goto :goto_4

    :cond_7
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_4
    iget v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->N:F

    iget v1, p0, Lcom/prineside/tdi2/towers/SniperTower;->R:F

    mul-float v1, v1, p1

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->N:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    iput v3, p0, Lcom/prineside/tdi2/towers/SniperTower;->N:F

    goto :goto_5

    :cond_8
    iput v2, p0, Lcom/prineside/tdi2/towers/SniperTower;->N:F

    goto :goto_5

    :cond_9
    iput v2, p0, Lcom/prineside/tdi2/towers/SniperTower;->N:F

    :cond_a
    :goto_5
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    return-void
.end method

.method public updateCache()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->P:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->Q:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->AIM_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->R:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_CRIT_CHANCE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->T:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_CRIT_MULTIPLIER:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->U:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/towers/SniperTower;->V:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/SniperTower;->M:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->N:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->O:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->P:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->Q:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->R:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->T:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->U:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SniperTower;->V:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
