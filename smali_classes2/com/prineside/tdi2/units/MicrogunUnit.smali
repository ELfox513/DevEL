.class public Lcom/prineside/tdi2/units/MicrogunUnit;
.super Lcom/prineside/tdi2/Unit;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;
    }
.end annotation


# static fields
.field public static final s:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public a:F

.field public b:F

.field public d:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public final k:Lcom/badlogic/gdx/math/Vector2;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public final p:Lcom/badlogic/gdx/math/Vector2;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public parent:Lcom/prineside/tdi2/towers/MinigunTower;

.field public q:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public r:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/units/MicrogunUnit;->s:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Unit;-><init>(I)V

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->k:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->p:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/units/MicrogunUnit$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/units/MicrogunUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    iget v0, v0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_MICROGUN_RANGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public final b(I)V
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v2, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->k:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->k:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/prineside/tdi2/Unit;->angle:F

    const/high16 v3, 0x42180000    # 38.0f

    invoke-static {v0, v1, v3}, Lcom/prineside/tdi2/utils/PMath;->shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->k:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/prineside/tdi2/Unit;->angle:F

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v1, v3

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v0, v1, v9}, Lcom/prineside/tdi2/utils/PMath;->shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v3

    mul-float v3, v3, v9

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v3

    mul-float v3, v3, v9

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v3, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    iget v0, v3, Lcom/prineside/tdi2/towers/MinigunTower;->damage:F

    int-to-float p1, p1

    mul-float v4, v0, p1

    sget-object v5, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->q:F

    iget v0, p0, Lcom/prineside/tdi2/Unit;->angle:F

    invoke-static {p1, v0}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result p1

    cmpl-float p1, p1, v9

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->r:F

    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    :cond_1
    iget p1, p0, Lcom/prineside/tdi2/Unit;->angle:F

    iput p1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->q:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->r:F

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine$BulletSmokeMultiLineFactory;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/prineside/tdi2/Unit;->angle:F

    const/high16 v3, 0x42100000    # 36.0f

    sget-object v4, Lcom/prineside/tdi2/units/MicrogunUnit;->s:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MINIGUN:Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->bulletTraceTexture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v3, v1}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P200:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v0, 0x42000000    # 32.0f

    iput v0, p1, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxSegmentWidth:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p1, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->nodesDisperseTime:F

    const v0, 0x3f0f5c29    # 0.56f

    iput v0, p1, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxAlpha:F

    iget v0, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setup(FFFF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/prineside/tdi2/units/MicrogunUnit;->s:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget v0, p0, Lcom/prineside/tdi2/Unit;->angle:F

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {p1, v0, v1}, Lcom/prineside/tdi2/utils/PMath;->shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlashSmall:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const v5, 0x41266666    # 10.4f

    const v6, 0x40799999    # 3.8999999f

    const v7, 0x41a66666    # 20.8f

    const v8, 0x41f99999    # 31.199999f

    iget v9, p0, Lcom/prineside/tdi2/Unit;->angle:F

    invoke-virtual/range {v1 .. v9}, Lcom/prineside/tdi2/systems/ParticleSystem;->addFlashParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_MINIGUN:Lcom/prineside/tdi2/enums/StaticSoundType;

    iget-object v1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    :cond_5
    return-void
.end method

.method public destroy(Lcom/prineside/tdi2/Enemy;)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager$Factories;->MICROGUN:Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;

    iget-object v2, v0, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v5, 0x42700000    # 60.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Lcom/prineside/tdi2/systems/ParticleSystem;->addShatterParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFF)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    invoke-virtual {v0, p0, p1}, Lcom/prineside/tdi2/systems/UnitSystem;->killUnit(Lcom/prineside/tdi2/Unit;Lcom/prineside/tdi2/Enemy;)V

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UnitManager$Factories;->MICROGUN:Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x41f00000    # 30.0f

    sub-float v3, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v2

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x42700000    # 60.0f

    move-object v0, p1

    move v2, v3

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UnitManager$Factories;->MICROGUN:Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x41400000    # 12.0f

    sub-float v3, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v2

    iget v10, p0, Lcom/prineside/tdi2/Unit;->angle:F

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p1

    move v2, v3

    move v3, p2

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    return-void
.end method

.method public drawRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/units/MicrogunUnit;->a()F

    move-result v5

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getMinRadius()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getMaxRadius()F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    :cond_0
    const/4 v4, 0x0

    sget-object v6, Lcom/prineside/tdi2/systems/MapSystem;->TOWER_RANGE_HOVER_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/shapes/RangeCircle;->setup(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/RangeCircle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public final findTarget()Lcom/prineside/tdi2/Enemy;
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/units/MicrogunUnit;->a()F

    move-result v0

    mul-float v0, v0, v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_2

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v5

    cmpg-float v6, v5, v0

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v6

    if-eqz v6, :cond_1

    cmpl-float v6, v2, v5

    if-lez v6, :cond_1

    move-object v1, v4

    move v2, v5

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getSize()F
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Unit;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/towers/MinigunTower;

    iput-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object p1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->a:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->b:F

    return-void
.end method

.method public rotateTo(FFF)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/Unit;->angle:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result v0

    mul-float p2, p2, p3

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(F)F

    move-result p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_2

    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    iget p1, p0, Lcom/prineside/tdi2/Unit;->angle:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/prineside/tdi2/Unit;->angle:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/prineside/tdi2/Unit;->angle:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/prineside/tdi2/Unit;->angle:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/prineside/tdi2/Unit;->angle:F

    :goto_0
    return-void
.end method

.method public rotateTo(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v1, v0, p1, p2}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/prineside/tdi2/units/MicrogunUnit;->rotateTo(FFF)V

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/towers/MinigunTower;FF)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/Unit;->angle:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/Unit;->staticPosition:Z

    iget-object p1, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public update(F)V
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/units/MicrogunUnit;->destroy(Lcom/prineside/tdi2/Enemy;)V

    return-void

    :cond_0
    const/high16 v0, 0x44800000    # 1024.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_3

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    cmpg-float v4, v4, v0

    if-gez v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/units/MicrogunUnit;->destroy(Lcom/prineside/tdi2/Enemy;)V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->r:F

    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->a:F

    const v3, 0x3e19999a    # 0.15f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    iput v2, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->a:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/units/MicrogunUnit;->findTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4, v3, v5, v6}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v3

    invoke-virtual {p0}, Lcom/prineside/tdi2/units/MicrogunUnit;->a()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    iget v6, v6, Lcom/prineside/tdi2/towers/MinigunTower;->attackSpeed:F

    float-to-double v6, v6

    iget-object v8, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v9, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_MICROGUN_ATTACK_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    double-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v6, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    iget v6, v6, Lcom/prineside/tdi2/towers/MinigunTower;->rotationSpeed:F

    invoke-virtual {p0, v3, v4, p1, v6}, Lcom/prineside/tdi2/units/MicrogunUnit;->rotateTo(FFFF)V

    iget-object v3, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget v3, p0, Lcom/prineside/tdi2/Unit;->angle:F

    invoke-static {v3, v0}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(F)F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_7

    iget v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->b:F

    div-float/2addr v0, v5

    float-to-int v0, v0

    if-lez v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/units/MicrogunUnit;->b(I)V

    iget v1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->b:F

    int-to-float v0, v0

    mul-float v0, v0, v5

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->b:F

    cmpg-float v0, v1, v2

    if-gez v0, :cond_5

    iput v2, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->b:F

    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    :cond_7
    :goto_2
    iget v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->b:F

    if-nez v1, :cond_8

    cmpl-float p1, v0, v5

    if-lez p1, :cond_8

    iput v5, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->b:F

    :cond_8
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Unit;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->parent:Lcom/prineside/tdi2/towers/MinigunTower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->a:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/units/MicrogunUnit;->b:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
