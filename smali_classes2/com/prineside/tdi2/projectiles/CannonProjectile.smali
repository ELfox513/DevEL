.class public Lcom/prineside/tdi2/projectiles/CannonProjectile;
.super Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;
    }
.end annotation


# static fields
.field public static final B:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public A:Lcom/prineside/tdi2/explosions/CannonExplosion;

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

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/projectiles/CannonProjectile;->B:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->CANNON:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/projectiles/CannonProjectile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/projectiles/CannonProjectile;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/CannonProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/projectiles/CannonProjectile;->z:I

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/CannonProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget-object v1, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, p2, v2, v1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->updateStartPos(FFF)V

    :cond_0
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->CANNON:Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x40e00000    # 7.0f

    sub-float v3, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v2

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x41600000    # 14.0f

    move-object v0, p1

    move v2, v3

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/explosions/CannonExplosion;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/CannonProjectile;->A:Lcom/prineside/tdi2/explosions/CannonExplosion;

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/CannonProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/CannonProjectile;->A:Lcom/prineside/tdi2/explosions/CannonExplosion;

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Enemy;FFLcom/badlogic/gdx/math/Vector2;FIFF)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->explosionManager:Lcom/prineside/tdi2/managers/ExplosionManager;

    sget-object v3, Lcom/prineside/tdi2/enums/ExplosionType;->CANNON:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ExplosionManager;->getFactory(Lcom/prineside/tdi2/enums/ExplosionType;)Lcom/prineside/tdi2/Explosion$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Explosion$Factory;->obtain()Lcom/prineside/tdi2/Explosion;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/prineside/tdi2/explosions/CannonExplosion;

    iput-object v9, v8, Lcom/prineside/tdi2/projectiles/CannonProjectile;->A:Lcom/prineside/tdi2/explosions/CannonExplosion;

    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v12, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v10, p1

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v9 .. v17}, Lcom/prineside/tdi2/explosions/CannonExplosion;->setup(Lcom/prineside/tdi2/Tower;FFFFIFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->CANNON:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v2, v3, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/prineside/tdi2/towers/CannonTower;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v8, Lcom/prineside/tdi2/projectiles/CannonProjectile;->A:Lcom/prineside/tdi2/explosions/CannonExplosion;

    iget-object v3, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CANNON_A_FOUNDATION_PIERCING:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Lcom/prineside/tdi2/Explosion;->piercingMultiplier:F

    :cond_0
    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v2

    if-nez v2, :cond_1

    const/high16 v2, 0x42100000    # 36.0f

    const v3, 0x3db851ec    # 0.09f

    const/4 v4, 0x5

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;

    invoke-virtual {v5}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iput-object v5, v8, Lcom/prineside/tdi2/projectiles/CannonProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->CANNON:Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;

    iget-object v6, v6, Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v5, v8, Lcom/prineside/tdi2/projectiles/CannonProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object v6, Lcom/prineside/tdi2/projectiles/CannonProjectile;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v4, v3, v2}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setup(Lcom/badlogic/gdx/graphics/Color;IFF)V

    iget-object v2, v8, Lcom/prineside/tdi2/projectiles/CannonProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setStartPoint(FF)V

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    iget-object v3, v8, Lcom/prineside/tdi2/projectiles/CannonProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    iget-object v2, v8, Lcom/prineside/tdi2/projectiles/CannonProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {v2}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result v2

    iput v2, v8, Lcom/prineside/tdi2/projectiles/CannonProjectile;->z:I

    :cond_1
    iget v3, v0, Lcom/prineside/tdi2/Tower;->angle:F

    iget-object v5, v8, Lcom/prineside/tdi2/projectiles/CannonProjectile;->A:Lcom/prineside/tdi2/explosions/CannonExplosion;

    const/high16 v6, 0x44e10000    # 1800.0f

    const/high16 v7, 0x42f00000    # 120.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    move/from16 v4, p6

    invoke-super/range {v0 .. v7}, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->c(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;FFLcom/prineside/tdi2/Explosion;FF)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/CannonProjectile;->A:Lcom/prineside/tdi2/explosions/CannonExplosion;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
