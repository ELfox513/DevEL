.class public abstract Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;
.super Lcom/prineside/tdi2/EnemyFollowingProjectile;
.source "SourceFile"


# instance fields
.field public x:Lcom/prineside/tdi2/Explosion;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/ProjectileType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/EnemyFollowingProjectile;-><init>(Lcom/prineside/tdi2/enums/ProjectileType;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;FFLcom/prineside/tdi2/Explosion;FF)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v6, p7

    invoke-super/range {v0 .. v6}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->setup(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;FFFF)V

    iput-object p5, p0, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->x:Lcom/prineside/tdi2/Explosion;

    return-void
.end method

.method public hit()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Projectile;->hit()V

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->x:Lcom/prineside/tdi2/Explosion;

    iget-object v0, v0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->explosion:Lcom/prineside/tdi2/systems/ExplosionSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->x:Lcom/prineside/tdi2/Explosion;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/ExplosionSystem;->register(Lcom/prineside/tdi2/Explosion;)V

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->x:Lcom/prineside/tdi2/Explosion;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Explosion;->explode()V

    return-void
.end method

.method public multiplyDamage(FLcom/prineside/tdi2/Ability;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Projectile;->multiplyDamage(FLcom/prineside/tdi2/Ability;)V

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->x:Lcom/prineside/tdi2/Explosion;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Explosion;->multiplyDamage(FLcom/prineside/tdi2/Ability;)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Explosion;

    iput-object p1, p0, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->x:Lcom/prineside/tdi2/Explosion;

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->x:Lcom/prineside/tdi2/Explosion;

    return-void
.end method

.method public setUnregistered()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->x:Lcom/prineside/tdi2/Explosion;

    invoke-super {p0}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->setUnregistered()V

    return-void
.end method

.method public setup(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Use method with Explosion"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setup(Lcom/badlogic/gdx/math/Vector2;Lcom/prineside/tdi2/Enemy;FFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Use method with Explosion"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyFollowingProjectile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyFollowingExplosiveProjectile;->x:Lcom/prineside/tdi2/Explosion;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
