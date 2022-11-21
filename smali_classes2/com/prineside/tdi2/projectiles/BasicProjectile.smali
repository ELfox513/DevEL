.class public Lcom/prineside/tdi2/projectiles/BasicProjectile;
.super Lcom/prineside/tdi2/EnemyFollowingProjectile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/projectiles/BasicProjectile$BasicProjectileFactory;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public x:Lcom/prineside/tdi2/Tower;

.field public y:Lcom/prineside/tdi2/shapes/TrailMultiLine;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public z:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P500:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->A:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->BASIC:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/projectiles/BasicProjectile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/projectiles/BasicProjectile;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->z:I

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget-object v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, p2, v2, v1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->updateStartPos(FFF)V

    :cond_0
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->BASIC:Lcom/prineside/tdi2/projectiles/BasicProjectile$BasicProjectileFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/projectiles/BasicProjectile$BasicProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x41100000    # 9.0f

    sub-float v3, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v2

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v5, 0x41900000    # 18.0f

    move-object v0, p1

    move v2, v3

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public hit()V
    .locals 11

    invoke-super {p0}, Lcom/prineside/tdi2/Projectile;->hit()V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->x:Lcom/prineside/tdi2/Tower;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/prineside/tdi2/enums/SpecialDamageType;->CHAINING:Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Enemy;->isVulnerableToSpecial(Lcom/prineside/tdi2/enums/SpecialDamageType;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v4

    iget-object v5, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->x:Lcom/prineside/tdi2/Tower;

    iget v6, p0, Lcom/prineside/tdi2/Projectile;->a:F

    sget-object v7, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v8, p0, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    const/4 v9, 0x1

    move-object v10, p0

    invoke-virtual/range {v3 .. v10}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->x:Lcom/prineside/tdi2/Tower;

    iget-object v3, v2, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v4, Lcom/prineside/tdi2/enums/TowerType;->BASIC:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v3, v4, :cond_6

    check-cast v2, Lcom/prineside/tdi2/towers/BasicTower;

    if-nez v1, :cond_6

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_FOUNDATION_RICOCHET_CHANCE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_6

    iget v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->speed:F

    float-to-double v1, v1

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_FOUNDATION_RICOCHET_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->speed:F

    const/high16 v2, 0x43400000    # 192.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    sget-object v1, Lcom/prineside/tdi2/Projectile;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v5, 0x43800000    # 256.0f

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/prineside/tdi2/systems/MapSystem;->getEnemiesNearPoint(Lcom/badlogic/gdx/utils/Array;FFF)V

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    sget-object v2, Lcom/prineside/tdi2/Projectile;->b:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy;

    aget-object v3, v3, v1

    if-eq v3, v0, :cond_2

    iget-object v4, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->x:Lcom/prineside/tdi2/Tower;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Projectile;->b:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Enemy;

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v1

    aget-object v5, v2, v1

    iget-object v4, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->x:Lcom/prineside/tdi2/Tower;

    iget v6, p0, Lcom/prineside/tdi2/Projectile;->a:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iget v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->speed:F

    const/high16 v2, 0x43000000    # 128.0f

    div-float v8, v1, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/prineside/tdi2/projectiles/BasicProjectile;->setup(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Enemy;FLcom/badlogic/gdx/math/Vector2;F)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeed:F

    iput v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->maxRotationSpeedDynamic:F

    :cond_5
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_6
    :goto_1
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Tower;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->x:Lcom/prineside/tdi2/Tower;

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->x:Lcom/prineside/tdi2/Tower;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Enemy;FLcom/badlogic/gdx/math/Vector2;F)V
    .locals 3

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->x:Lcom/prineside/tdi2/Tower;

    iput p3, p0, Lcom/prineside/tdi2/Projectile;->a:F

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, 0x41f00000    # 30.0f

    const p3, 0x3db851ec    # 0.09f

    const/4 v0, 0x5

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iput-object v1, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->BASIC:Lcom/prineside/tdi2/projectiles/BasicProjectile$BasicProjectileFactory;

    iget-object v2, v2, Lcom/prineside/tdi2/projectiles/BasicProjectile$BasicProjectileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object v2, Lcom/prineside/tdi2/projectiles/BasicProjectile;->A:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2, v0, p3, p1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setup(Lcom/badlogic/gdx/graphics/Color;IFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p3, v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setStartPoint(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    iget-object p3, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    iget-object p1, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->z:I

    :cond_0
    invoke-super {p0, p4, p2, p5}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->setup(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;F)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/BasicProjectile;->x:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
