.class public Lcom/prineside/tdi2/projectiles/SplinterProjectile;
.super Lcom/prineside/tdi2/CollidingProjectile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/projectiles/SplinterProjectile$SplinterProjectileFactory;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/graphics/Color;

.field public static final B:Lcom/badlogic/gdx/math/Vector2;

.field public static final z:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public v:Lcom/prineside/tdi2/Tower;

.field public w:Z

.field public x:Lcom/prineside/tdi2/shapes/TrailMultiLine;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public y:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->z:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->A:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->B:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->SPLINTER:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/CollidingProjectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->w:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/projectiles/SplinterProjectile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/projectiles/SplinterProjectile;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/prineside/tdi2/Enemy;)V
    .locals 9

    iget-boolean v0, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->w:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->v:Lcom/prineside/tdi2/Tower;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->v:Lcom/prineside/tdi2/Tower;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->v:Lcom/prineside/tdi2/Tower;

    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->CANNON:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v0

    iget v1, p1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v3, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->v:Lcom/prineside/tdi2/Tower;

    iget v0, p0, Lcom/prineside/tdi2/Projectile;->a:F

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float v4, v0, v2

    sget-object v5, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v6, p0, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v3, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->v:Lcom/prineside/tdi2/Tower;

    iget v4, p0, Lcom/prineside/tdi2/Projectile;->a:F

    sget-object v5, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v6, p0, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget v4, p0, Lcom/prineside/tdi2/Projectile;->a:F

    sget-object v5, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v6, p0, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->w:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->x:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->y:I

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result v0

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->B:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/CollidingProjectile;->k:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->x:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, p2, v2, v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->updateStartPos(FFF)V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/CollidingProjectile;->d()F

    move-result p2

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    sget-object p2, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->z:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/prineside/tdi2/CollidingProjectile;->d()F

    move-result v1

    div-float/2addr v1, v0

    iput v1, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->SPLINTER:Lcom/prineside/tdi2/projectiles/SplinterProjectile$SplinterProjectileFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/projectiles/SplinterProjectile$SplinterProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x40900000    # 4.5f

    sub-float v2, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v0, 0x41100000    # 9.0f

    sub-float v3, p2, v0

    const/high16 v4, 0x40900000    # 4.5f

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lcom/prineside/tdi2/CollidingProjectile;->drawAngle:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->w:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/prineside/tdi2/CollidingProjectile;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/CollidingProjectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Tower;

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->v:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->w:Z

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/CollidingProjectile;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->v:Lcom/prineside/tdi2/Tower;

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->x:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->w:Z

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/graphics/Color;)V
    .locals 3

    iput-object p1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->v:Lcom/prineside/tdi2/Tower;

    iput p2, p0, Lcom/prineside/tdi2/Projectile;->a:F

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result p1

    if-nez p1, :cond_1

    const/high16 p1, 0x41e80000    # 29.0f

    const p2, 0x3e6147ae    # 0.22f

    const/4 v0, 0x3

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iput-object v1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->x:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->SPLINTER:Lcom/prineside/tdi2/projectiles/SplinterProjectile$SplinterProjectileFactory;

    iget-object v2, v2, Lcom/prineside/tdi2/projectiles/SplinterProjectile$SplinterProjectileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->x:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    if-nez p6, :cond_0

    sget-object p6, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->A:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    invoke-virtual {v1, p6, v0, p2, p1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setup(Lcom/badlogic/gdx/graphics/Color;IFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->x:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iget p2, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2, p6}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setStartPoint(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->x:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V

    iget-object p1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->x:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->getUsageId()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->y:I

    :cond_1
    invoke-super {p0, p3, p5, p4}, Lcom/prineside/tdi2/CollidingProjectile;->g(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/CollidingProjectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->v:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->w:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
