.class public Lcom/prineside/tdi2/explosions/AirFallExplosion;
.super Lcom/prineside/tdi2/Explosion;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/explosions/AirFallExplosion$AirFallExplosionFactory;
    }
.end annotation


# static fields
.field public static final u:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P400:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/explosions/AirFallExplosion;->u:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->AIR_FALL:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Explosion;-><init>(Lcom/prineside/tdi2/enums/ExplosionType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/explosions/AirFallExplosion$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/explosions/AirFallExplosion;-><init>()V

    return-void
.end method


# virtual methods
.method public enemyAffected(Lcom/prineside/tdi2/Enemy;FF)V
    .locals 9

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->isAir()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v3, 0x0

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    invoke-static {v0, p2, p3}, Lcom/prineside/tdi2/Explosion;->calculateDamage(FFF)F

    move-result v4

    sget-object v5, Lcom/prineside/tdi2/enums/DamageType;->EXPLOSION:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v6, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/AchievementType;->KILL_GROUND_ENEMY_WITH_AIR:Lcom/prineside/tdi2/enums/AchievementType;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/systems/AchievementSystem;->registerDelta(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_1
    return-void
.end method

.method public explode()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Explosion;->explode()V

    sget-object v0, Lcom/prineside/tdi2/explosions/AirFallExplosion;->u:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/LimitedParticleType;->EXPLOSION_AIR_FALL:Lcom/prineside/tdi2/enums/LimitedParticleType;

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

    return v0
.end method

.method public setup(Lcom/prineside/tdi2/Tower;FFFF)V
    .locals 10

    const v0, 0x3da3d70a    # 0.08f

    mul-float v0, v0, p5

    const/high16 v1, 0x3e800000    # 0.25f

    add-float v8, v0, v1

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-super/range {v2 .. v9}, Lcom/prineside/tdi2/Explosion;->a(Lcom/prineside/tdi2/Tower;FFFFFLcom/prineside/tdi2/Ability;)V

    return-void
.end method
