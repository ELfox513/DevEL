.class public Lcom/prineside/tdi2/explosions/CannonExplosion;
.super Lcom/prineside/tdi2/Explosion;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/explosions/CannonExplosion$CannonExplosionFactory;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/math/Vector2;

.field public static final x:Lcom/badlogic/gdx/graphics/Color;

.field public static final y:Lcom/badlogic/gdx/math/Vector2;

.field public static final z:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public u:I

.field public v:F

.field public w:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P400:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/explosions/CannonExplosion;->x:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/explosions/CannonExplosion;->y:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/explosions/CannonExplosion;->z:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/explosions/CannonExplosion;->A:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->CANNON:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Explosion;-><init>(Lcom/prineside/tdi2/enums/ExplosionType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/explosions/CannonExplosion$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/explosions/CannonExplosion;-><init>()V

    return-void
.end method


# virtual methods
.method public enemyAffected(Lcom/prineside/tdi2/Enemy;FF)V
    .locals 8

    invoke-virtual {p0}, Lcom/prineside/tdi2/Explosion;->getTower()Lcom/prineside/tdi2/Tower;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v0

    iget v1, p1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CANNON_A_PRESSURE_HEALTH:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    cmpg-double v5, v0, v3

    if-gez v5, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CANNON_A_PRESSURE_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget v3, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v0, v4

    mul-float v3, v3, v0

    invoke-static {v3, p2, p3}, Lcom/prineside/tdi2/Explosion;->calculateDamage(FFF)F

    move-result v3

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->EXPLOSION:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v5, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    goto :goto_0

    :cond_2
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

    :cond_3
    :goto_0
    return-void
.end method

.method public explode()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Explosion;->explode()V

    sget-object v0, Lcom/prineside/tdi2/explosions/CannonExplosion;->x:Lcom/badlogic/gdx/graphics/Color;

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

    iget v0, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->u:I

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

    iput p1, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->u:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->v:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->w:F

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;FFFFIFF)V
    .locals 9

    move-object v8, p0

    const v0, 0x3da3d70a    # 0.08f

    mul-float v0, v0, p5

    const/high16 v1, 0x3e800000    # 0.25f

    add-float v6, v0, v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v7}, Lcom/prineside/tdi2/Explosion;->a(Lcom/prineside/tdi2/Tower;FFFFFLcom/prineside/tdi2/Ability;)V

    move v0, p6

    iput v0, v8, Lcom/prineside/tdi2/explosions/CannonExplosion;->u:I

    move/from16 v0, p7

    iput v0, v8, Lcom/prineside/tdi2/explosions/CannonExplosion;->v:F

    move/from16 v0, p8

    iput v0, v8, Lcom/prineside/tdi2/explosions/CannonExplosion;->w:F

    return-void
.end method

.method public update(F)V
    .locals 7

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Explosion;->update(F)V

    iget p1, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->u:I

    if-lez p1, :cond_0

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

    sget-object v2, Lcom/prineside/tdi2/explosions/CannonExplosion;->A:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p1}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v3

    invoke-static {p1}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/high16 p1, 0x42000000    # 32.0f

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/prineside/tdi2/explosions/CannonExplosion;->y:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget-object v5, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v4, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->w:F

    add-float/2addr v4, p1

    div-float/2addr v4, p1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/prineside/tdi2/explosions/CannonExplosion;->z:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget-object v2, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget p1, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    iget v2, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->v:F

    mul-float v2, v2, p1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/prineside/tdi2/projectiles/SplinterProjectile;->setup(Lcom/prineside/tdi2/Tower;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/graphics/Color;)V

    iget p1, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->u:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->u:I

    :cond_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Explosion;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->u:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->v:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/explosions/CannonExplosion;->w:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
