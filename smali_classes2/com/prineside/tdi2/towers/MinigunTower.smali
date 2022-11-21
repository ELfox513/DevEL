.class public Lcom/prineside/tdi2/towers/MinigunTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;
    }
.end annotation


# static fields
.field public static final Z:Lcom/badlogic/gdx/math/Vector2;

.field public static final a0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/RoadTile;",
            ">;"
        }
    .end annotation
.end field

.field public static final b0:[I

.field public static muzzleFlashColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public M:Lcom/badlogic/gdx/math/Vector2;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public N:Lcom/badlogic/gdx/graphics/Color;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public O:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public P:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public Q:Z

.field public R:Z

.field public T:F

.field public U:F

.field public V:I

.field public W:F

.field public X:F

.field public Y:F

.field public attackSpeed:F

.field public damage:F

.field public rotationSpeed:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/towers/MinigunTower;->muzzleFlashColor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/MinigunTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/RoadTile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/towers/MinigunTower;->a0:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/MinigunTower;->b0:[I

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

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->MINIGUN:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->M:Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->N:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Q:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->R:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/MinigunTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/MinigunTower;-><init>()V

    return-void
.end method


# virtual methods
.method public attack(I)V
    .locals 14

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->U:F

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/towers/MinigunTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v4, 0x42340000    # 45.0f

    invoke-static {v2, v3, v4}, Lcom/prineside/tdi2/utils/PMath;->shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v3, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v5, v3, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlashSmall:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x40900000    # 4.5f

    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v11, 0x42100000    # 36.0f

    iget v12, p0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual/range {v4 .. v12}, Lcom/prineside/tdi2/systems/ParticleSystem;->addFlashParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->M:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->M:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v4

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    const/4 v3, 0x3

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->O:F

    iget v7, p0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-static {v2, v7}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->P:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    :cond_2
    iget v2, p0, Lcom/prineside/tdi2/Tower;->angle:F

    iput v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->O:F

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->P:F

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine$BulletSmokeMultiLineFactory;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v7

    iget-object v7, v7, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, p0, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v9, 0x41f00000    # 30.0f

    sget-object v10, Lcom/prineside/tdi2/towers/MinigunTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v5, v7, v8, v9, v10}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MINIGUN:Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;

    iget-object v5, v5, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->bulletTraceTexture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v2, v5, v9, v7}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    iget v5, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    iget v7, p0, Lcom/prineside/tdi2/towers/MinigunTower;->W:F

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_5

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v6}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_5
    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P200:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    const/high16 v5, 0x42000000    # 32.0f

    iput v5, v2, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxSegmentWidth:F

    const v5, 0x3f333333    # 0.7f

    iput v5, v2, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->nodesDisperseTime:F

    const v5, 0x3f0f5c29    # 0.56f

    iput v5, v2, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxAlpha:F

    iget v5, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v5, v7, v8, v9}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setup(FFFF)V

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    :cond_6
    iget v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Y:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_9

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Y:F

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    iget v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->W:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_HOT_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p0, v6}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_FOUNDATION_SPECIAL_BONUS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v0, v2

    :cond_7
    iget v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->attackSpeed:F

    iget v3, p0, Lcom/prineside/tdi2/towers/MinigunTower;->damage:F

    mul-float v2, v2, v3

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_HOT_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v9

    invoke-virtual {p0, v6}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    if-eqz v2, :cond_8

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/BuffManager$Factories;->POISON:Lcom/prineside/tdi2/buffs/PoisonBuff$PoisonBuffFactory;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/buffs/PoisonBuff;

    mul-float v10, v9, v3

    const/4 v13, 0x0

    move-object v7, v2

    move-object v8, p0

    move v11, v0

    move v12, v0

    invoke-virtual/range {v7 .. v13}, Lcom/prineside/tdi2/buffs/PoisonBuff;->setup(Lcom/prineside/tdi2/Tower;FFFFLcom/prineside/tdi2/Ability;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/BuffSystem;->P_POISON:Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/PoisonBuff;)Z

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BURN:Lcom/prineside/tdi2/buffs/BurnBuff$BurnBuffFactory;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/buffs/BurnBuff;

    mul-float v10, v9, v3

    const/4 v12, 0x0

    move-object v7, v2

    move-object v8, p0

    move v11, v0

    invoke-virtual/range {v7 .. v12}, Lcom/prineside/tdi2/buffs/BurnBuff;->setup(Lcom/prineside/tdi2/Tower;FFFLcom/prineside/tdi2/Ability;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BURN:Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/BurnBuff;)Z

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->damage:F

    int-to-float v3, p1

    mul-float v3, v3, v2

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    iget v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->V:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->V:I

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz p1, :cond_a

    sget-object v0, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_MINIGUN:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, v0, p0}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    :cond_a
    return-void
.end method

.method public canAim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canAttack()Z
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->canAttack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Q:Z

    return v0
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object v0, Lcom/prineside/tdi2/towers/MinigunTower;->b0:[I

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

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MINIGUN:Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;

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
    .locals 12

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-boolean p2, p2, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->N:Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->W:F

    div-float/2addr p2, v2

    iput p2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MINIGUN:Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;

    iget-object p2, p2, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MINIGUN:Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;

    iget-object p2, p2, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :goto_0
    move-object v2, p2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget p2, p2, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    int-to-float v3, p2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget p2, p2, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    int-to-float v4, p2

    const/high16 v5, 0x42800000    # 64.0f

    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v7, 0x43000000    # 128.0f

    const/high16 v8, 0x43000000    # 128.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    iget v11, p0, Lcom/prineside/tdi2/Tower;->angle:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :cond_1
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_BUILDING_INFO:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p2, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p2, v1, v3

    if-eqz p2, :cond_2

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    iget v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->W:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v0, v0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v0, v0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x42800000    # 64.0f

    add-float v5, v0, v1

    const/high16 v6, 0x43000000    # 128.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_2
    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawSelectedRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->drawSelectedRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MINIGUN:Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;

    invoke-static {p2}, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->b(Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Unit;

    aget-object v2, v2, v1

    iget v3, v2, Lcom/prineside/tdi2/Unit;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    check-cast v2, Lcom/prineside/tdi2/units/MicrogunUnit;

    iget-object v3, v2, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    if-ne v3, p0, :cond_1

    iget v3, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->RANGE_CIRCLE:Lcom/prineside/tdi2/shapes/RangeCircle$RangeCircleFactory;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/shapes/RangeCircle;

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v3, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/shapes/RangeCircle;

    aget-object v3, v3, v0

    :goto_1
    invoke-virtual {v2, p1, v3}, Lcom/prineside/tdi2/units/MicrogunUnit;->drawRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAttackDelay()F
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    iget v1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->W:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->attackSpeed:F

    mul-float v0, v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public getScheduledUpdateInterval()F
    .locals 1

    const v0, 0x3d8f5c29    # 0.07f

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

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_ACCELERATION:Lcom/prineside/tdi2/enums/TowerStatType;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v0, v0

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_HEAVY_MECH_ACCELERATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-float v0, v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v0, v0

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_HEAVY_WEAPONS_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-float v0, v0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_HEAVY_MECH_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_3

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    float-to-double v0, v0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_FOUNDATION_ROTATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_3
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

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MINIGUN:Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MINIGUN:Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Q:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->R:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->U:F

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->V:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->damage:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->attackSpeed:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->rotationSpeed:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->W:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->X:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Y:F

    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Q:Z

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Q:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->R:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    iget v1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->W:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    cmpl-float p1, v0, v1

    if-lez p1, :cond_4

    iput v1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->R:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->R:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p1, p1, v2

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    cmpg-float p1, v0, v1

    if-gez p1, :cond_4

    iput v1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->R:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setTarget(Lcom/prineside/tdi2/Enemy;)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    const v1, 0x3f59999a    # 0.85f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    :cond_0
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    return-void
.end method

.method public update(F)V
    .locals 9

    iget v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->rotationSpeed:F

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/Tower;->e(FF)V

    iget v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->U:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->U:F

    iget v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->P:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->P:F

    iget v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Y:F

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_MICROGUN_COUNT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_MICROGUN_BUILD_DELAY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v1

    iget v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->X:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/prineside/tdi2/towers/MinigunTower;->X:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->X:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x3

    if-ge v2, v5, :cond_1

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Unit;

    aget-object v4, v4, v2

    iget v5, v4, Lcom/prineside/tdi2/Unit;->type:I

    if-ne v5, v6, :cond_0

    check-cast v4, Lcom/prineside/tdi2/units/MicrogunUnit;

    iget-object v4, v4, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    if-ne v4, p0, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v3, v0, :cond_9

    sget-object v0, Lcom/prineside/tdi2/towers/MinigunTower;->a0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTilesInRange()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_6

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, [Lcom/prineside/tdi2/Tile;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v7, Lcom/prineside/tdi2/enums/TileType;->ROAD:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v7, :cond_5

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v2

    check-cast v3, Lcom/prineside/tdi2/tiles/RoadTile;

    const/4 v5, 0x0

    :goto_2
    iget-object v7, v3, Lcom/prineside/tdi2/Tile;->units:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v8, :cond_3

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Unit;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/prineside/tdi2/Unit;->type:I

    if-eq v7, v6, :cond_4

    iget-object v7, v3, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_3
    if-nez v4, :cond_5

    sget-object v4, Lcom/prineside/tdi2/towers/MinigunTower;->a0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/prineside/tdi2/towers/MinigunTower;->a0:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_8

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/tiles/RoadTile;

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v1

    aget-object v1, v2, v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UnitManager$Factories;->MICROGUN:Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;

    invoke-virtual {v2}, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;->create()Lcom/prineside/tdi2/units/MicrogunUnit;

    move-result-object v2

    iget-object v3, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, p0, v5, v3}, Lcom/prineside/tdi2/units/MicrogunUnit;->setup(Lcom/prineside/tdi2/towers/MinigunTower;FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/systems/UnitSystem;->register(Lcom/prineside/tdi2/Unit;)V

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/systems/MapSystem;->spawnUnit(Lcom/prineside/tdi2/Unit;)V

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/systems/UnitSystem;->updateUnitCurrentTile(Lcom/prineside/tdi2/Unit;)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v2, :cond_7

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->BUILDING_BUILT:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    :cond_7
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UnitManager$Factories;->MICROGUN:Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;

    iget-object v2, v2, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;->highlightParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v1, v2, v4}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_8
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_9
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    return-void
.end method

.method public updateCache()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->damage:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->attackSpeed:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/MinigunTower;->rotationSpeed:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_ACCELERATION:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    iput v1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->W:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Q:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->R:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->T:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->U:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->V:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->damage:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->attackSpeed:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->rotationSpeed:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->W:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->X:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/MinigunTower;->Y:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
