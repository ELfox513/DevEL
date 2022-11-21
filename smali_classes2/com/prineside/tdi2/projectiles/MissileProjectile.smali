.class public Lcom/prineside/tdi2/projectiles/MissileProjectile;
.super Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/projectiles/MissileProjectile$MissileProjectileFactory;
    }
.end annotation


# static fields
.field public static final J:Lcom/badlogic/gdx/graphics/Color;

.field public static final K:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public A:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public B:Lcom/prineside/tdi2/towers/MissileTower;

.field public C:Lcom/prineside/tdi2/explosions/MissileExplosion;

.field public D:Z

.field public E:F

.field public F:F

.field public G:F

.field public H:F

.field public I:F

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

    sput-object v0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->J:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->K:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->MISSILE:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->A:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->D:Z

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->I:F

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->z:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->K:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x41100000    # 9.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawAngle:F

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, p2, v2, v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->updateStartPos(FFF)V

    :cond_0
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->MISSILE:Lcom/prineside/tdi2/projectiles/MissileProjectile$MissileProjectileFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/projectiles/MissileProjectile$MissileProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->A:F

    const/high16 v3, 0x41280000    # 10.5f

    mul-float v4, v2, v3

    sub-float v4, v0, v4

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v0, 0x41a80000    # 21.0f

    mul-float v5, v2, v0

    sub-float/2addr p2, v5

    mul-float v5, v2, v3

    mul-float v6, v2, v0

    mul-float v7, v2, v0

    const/high16 v0, 0x42280000    # 42.0f

    mul-float v8, v2, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    iget v11, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->drawAngle:F

    move-object v0, p1

    move v2, v4

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    return-void
.end method

.method public getTower()Lcom/prineside/tdi2/towers/MissileTower;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->B:Lcom/prineside/tdi2/towers/MissileTower;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/towers/MissileTower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/towers/MissileTower;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->B:Lcom/prineside/tdi2/towers/MissileTower;

    const-class v0, Lcom/prineside/tdi2/explosions/MissileExplosion;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/explosions/MissileExplosion;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->C:Lcom/prineside/tdi2/explosions/MissileExplosion;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->D:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->E:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->F:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->G:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->H:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->I:F

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->D:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->C:Lcom/prineside/tdi2/explosions/MissileExplosion;

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->E:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->G:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->F:F

    iput v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->H:F

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->B:Lcom/prineside/tdi2/towers/MissileTower;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->I:F

    return-void
.end method

.method public setTarget(Lcom/prineside/tdi2/Enemy;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->D:Z

    invoke-super {p0, p1}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/towers/MissileTower;Lcom/prineside/tdi2/Enemy;FFLcom/badlogic/gdx/math/Vector2;FFFF)V
    .locals 15

    move-object v8, p0

    move-object/from16 v1, p5

    move/from16 v4, p6

    move/from16 v0, p9

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->explosionManager:Lcom/prineside/tdi2/managers/ExplosionManager;

    sget-object v3, Lcom/prineside/tdi2/enums/ExplosionType;->MISSILE:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ExplosionManager;->getFactory(Lcom/prineside/tdi2/enums/ExplosionType;)Lcom/prineside/tdi2/Explosion$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Explosion$Factory;->obtain()Lcom/prineside/tdi2/Explosion;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/prineside/tdi2/explosions/MissileExplosion;

    iput-object v9, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->C:Lcom/prineside/tdi2/explosions/MissileExplosion;

    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v12, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v10, p1

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual/range {v9 .. v14}, Lcom/prineside/tdi2/explosions/MissileExplosion;->setup(Lcom/prineside/tdi2/Tower;FFFF)V

    move-object/from16 v2, p1

    iput-object v2, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->B:Lcom/prineside/tdi2/towers/MissileTower;

    iput v0, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->A:F

    iput v4, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->F:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v4

    iput v2, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->G:F

    iput v2, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->H:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->I:F

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iput-object v2, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->MISSILE:Lcom/prineside/tdi2/projectiles/MissileProjectile$MissileProjectileFactory;

    iget-object v3, v3, Lcom/prineside/tdi2/projectiles/MissileProjectile$MissileProjectileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v2, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object v3, Lcom/prineside/tdi2/projectiles/MissileProjectile;->J:Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x6

    const v6, 0x3e2c0831    # 0.168f

    const/high16 v7, 0x41e00000    # 28.0f

    mul-float v0, v0, v7

    invoke-virtual {v2, v3, v5, v6, v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setup(Lcom/badlogic/gdx/graphics/Color;IFF)V

    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v3}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setStartPoint(FF)V

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    iget-object v2, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    iget-object v0, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->y:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result v0

    iput v0, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->z:I

    :cond_0
    iget-object v5, v8, Lcom/prineside/tdi2/projectiles/MissileProjectile;->C:Lcom/prineside/tdi2/explosions/MissileExplosion;

    const v0, 0x3d4ccccd    # 0.05f

    mul-float v7, p7, v0

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    move/from16 v3, p8

    move/from16 v4, p6

    move/from16 v6, p7

    invoke-super/range {v0 .. v7}, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->c(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;FFLcom/prineside/tdi2/Explosion;FF)V

    return-void
.end method

.method public update(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->B:Lcom/prineside/tdi2/towers/MissileTower;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->D:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->D:Z

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->B:Lcom/prineside/tdi2/towers/MissileTower;

    invoke-virtual {v1, p0}, Lcom/prineside/tdi2/towers/MissileTower;->missileLostTarget(Lcom/prineside/tdi2/projectiles/MissileProjectile;)V

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->I:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->H:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->H:F

    iget v3, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->F:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    iput v3, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->H:F

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->H:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v3, v3, p1

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->H:F

    iget v3, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->G:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    iput v3, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->H:F

    :cond_3
    :goto_0
    iput v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->I:F

    :cond_4
    iget v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->H:F

    const/high16 v1, 0x43000000    # 128.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->speed:F

    invoke-super {p0, p1}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->update(F)V

    iget v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->E:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->E:F

    const/high16 p1, 0x41a00000    # 20.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    iput-boolean v2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->k:Z

    :cond_5
    return-void

    :cond_6
    :goto_1
    iput-boolean v2, p0, Lcom/prineside/tdi2/EnemyFollowingProjectile;->k:Z

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->B:Lcom/prineside/tdi2/towers/MissileTower;

    const-class v1, Lcom/prineside/tdi2/towers/MissileTower;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->C:Lcom/prineside/tdi2/explosions/MissileExplosion;

    const-class v1, Lcom/prineside/tdi2/explosions/MissileExplosion;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->D:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->E:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->F:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->G:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->H:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/projectiles/MissileProjectile;->I:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
