.class public Lcom/prineside/tdi2/explosions/GenericExplosion;
.super Lcom/prineside/tdi2/Explosion;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/explosions/GenericExplosion$GenericExplosionFactory;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/math/Vector2;

.field public static final B:Lcom/badlogic/gdx/math/Vector2;

.field public static final z:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public u:I

.field public v:F

.field public w:F

.field public final x:Lcom/badlogic/gdx/graphics/Color;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public y:Lcom/badlogic/gdx/graphics/Color;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/explosions/GenericExplosion;->z:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/explosions/GenericExplosion;->A:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/explosions/GenericExplosion;->B:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->GENERIC:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Explosion;-><init>(Lcom/prineside/tdi2/enums/ExplosionType;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->x:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->y:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/explosions/GenericExplosion$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/explosions/GenericExplosion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic cpy()Lcom/prineside/tdi2/Explosion;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/explosions/GenericExplosion;->cpy()Lcom/prineside/tdi2/explosions/GenericExplosion;

    move-result-object v0

    return-object v0
.end method

.method public cpy()Lcom/prineside/tdi2/explosions/GenericExplosion;
    .locals 12

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->explosionManager:Lcom/prineside/tdi2/managers/ExplosionManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ExplosionType;->GENERIC:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ExplosionManager;->getFactory(Lcom/prineside/tdi2/enums/ExplosionType;)Lcom/prineside/tdi2/Explosion$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Explosion$Factory;->obtain()Lcom/prineside/tdi2/Explosion;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/explosions/GenericExplosion;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Explosion;->getTower()Lcom/prineside/tdi2/Tower;

    move-result-object v2

    iget-object v1, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    iget v6, p0, Lcom/prineside/tdi2/Explosion;->b:F

    iget v7, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->u:I

    iget v8, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->v:F

    iget v9, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->w:F

    iget-object v10, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->x:Lcom/badlogic/gdx/graphics/Color;

    iget-object v11, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->y:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, v0

    invoke-virtual/range {v1 .. v11}, Lcom/prineside/tdi2/explosions/GenericExplosion;->setup(Lcom/prineside/tdi2/Tower;FFFFIFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public enemyAffected(Lcom/prineside/tdi2/Enemy;FF)V
    .locals 8

    invoke-virtual {p0}, Lcom/prineside/tdi2/Explosion;->getTower()Lcom/prineside/tdi2/Tower;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget v1, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    invoke-static {v1, p2, p3}, Lcom/prineside/tdi2/Explosion;->calculateDamage(FFF)F

    move-result v3

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->EXPLOSION:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v5, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public explode()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Explosion;->explode()V

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->x:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/LimitedParticleType;->EXPLOSION_CANNON:Lcom/prineside/tdi2/enums/LimitedParticleType;

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/Explosion;->addExplosionParticle(Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/LimitedParticleType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/SoundSystem;->playExplosionSound(F)V

    :cond_0
    return-void
.end method

.method public isDone()Z
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Explosion;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->u:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Explosion;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->u:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->v:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->w:F

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;FFFFIFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 10

    move-object v8, p0

    move-object/from16 v9, p9

    const v0, 0x3da3d70a    # 0.08f

    mul-float v0, v0, p5

    const v1, 0x3e4ccccd    # 0.2f

    add-float v6, v0, v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v7}, Lcom/prineside/tdi2/Explosion;->a(Lcom/prineside/tdi2/Tower;FFFFFLcom/prineside/tdi2/Ability;)V

    move/from16 v0, p6

    iput v0, v8, Lcom/prineside/tdi2/explosions/GenericExplosion;->u:I

    move-object/from16 v0, p10

    iput-object v0, v8, Lcom/prineside/tdi2/explosions/GenericExplosion;->y:Lcom/badlogic/gdx/graphics/Color;

    move/from16 v0, p7

    iput v0, v8, Lcom/prineside/tdi2/explosions/GenericExplosion;->v:F

    move/from16 v0, p8

    iput v0, v8, Lcom/prineside/tdi2/explosions/GenericExplosion;->w:F

    if-nez v9, :cond_0

    iget-object v0, v8, Lcom/prineside/tdi2/explosions/GenericExplosion;->x:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lcom/prineside/tdi2/explosions/GenericExplosion;->x:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-void
.end method

.method public update(F)V
    .locals 7

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Explosion;->update(F)V

    iget p1, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->u:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Explosion;->getTower()Lcom/prineside/tdi2/Tower;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->SPLINTER:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/projectiles/SplinterProjectile;

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result p1

    const v2, 0x40c90fdb

    mul-float p1, p1, v2

    sget-object v2, Lcom/prineside/tdi2/explosions/GenericExplosion;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p1}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v3

    invoke-static {p1}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/high16 p1, 0x42000000    # 32.0f

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/prineside/tdi2/explosions/GenericExplosion;->z:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget-object v5, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget v4, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->w:F

    const/high16 v5, 0x43000000    # 128.0f

    mul-float v4, v4, v5

    add-float/2addr v4, p1

    div-float/2addr v4, p1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/prineside/tdi2/explosions/GenericExplosion;->A:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget-object v2, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v5, v2}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->v:F

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->y:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {v0 .. v6}, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->setup(Lcom/prineside/tdi2/Tower;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/graphics/Color;)V

    iget p1, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->u:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->u:I

    :cond_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Explosion;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->u:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->v:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/explosions/GenericExplosion;->w:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
