.class public Lcom/prineside/tdi2/explosions/FireballExplosion;
.super Lcom/prineside/tdi2/Explosion;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/explosions/FireballExplosion$FireballExplosionFactory;
    }
.end annotation


# static fields
.field public static final w:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public u:F

.field public v:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P400:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/explosions/FireballExplosion;->w:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->FIREBALL:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Explosion;-><init>(Lcom/prineside/tdi2/enums/ExplosionType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/explosions/FireballExplosion$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/explosions/FireballExplosion;-><init>()V

    return-void
.end method


# virtual methods
.method public enemyAffected(Lcom/prineside/tdi2/Enemy;FF)V
    .locals 8

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BURN:Lcom/prineside/tdi2/buffs/BurnBuff$BurnBuffFactory;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/buffs/BurnBuff;

    iget v4, p0, Lcom/prineside/tdi2/explosions/FireballExplosion;->v:F

    iget-object v5, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    const/4 v1, 0x0

    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, 0x43160000    # 150.0f

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/buffs/BurnBuff;->setup(Lcom/prineside/tdi2/Tower;FFFLcom/prineside/tdi2/Ability;)V

    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/systems/BuffSystem;->P_BURN:Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;

    invoke-virtual {p3, p1, p2}, Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/BurnBuff;)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/Explosion;->getTower()Lcom/prineside/tdi2/Tower;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, p2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget v3, p0, Lcom/prineside/tdi2/explosions/FireballExplosion;->u:F

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->FIRE:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v5, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    return-void
.end method

.method public explode()V
    .locals 12

    invoke-super {p0}, Lcom/prineside/tdi2/Explosion;->explode()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isExplosionsDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->explosionManager:Lcom/prineside/tdi2/managers/ExplosionManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ExplosionManager;->F:Lcom/prineside/tdi2/managers/ExplosionManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ExplosionManager$Factories;->FIREBALL:Lcom/prineside/tdi2/explosions/FireballExplosion$FireballExplosionFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/explosions/FireballExplosion$FireballExplosionFactory;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v2, p0, Lcom/prineside/tdi2/Explosion;->d:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x43000000    # 128.0f

    div-float/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColors()[F

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/explosions/FireballExplosion;->w:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/4 v10, 0x0

    aput v9, v7, v10

    iget v9, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v9, v7, v4

    iget v9, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v11, 0x2

    aput v9, v7, v11

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v6

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v5

    const/high16 v6, 0x42480000    # 50.0f

    mul-float v6, v6, v2

    const/high16 v7, 0x43160000    # 150.0f

    mul-float v7, v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    mul-float v6, v6, v2

    const/high16 v7, 0x42000000    # 32.0f

    mul-float v7, v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v1

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x428c0000    # 70.0f

    mul-float v2, v2, v6

    invoke-virtual {v1, v5, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColors()[F

    move-result-object v5

    iget v6, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v6, v5, v10

    iget v6, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v6, v5, v4

    iget v4, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v4, v5, v11

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    iget v4, p0, Lcom/prineside/tdi2/Explosion;->d:F

    mul-float v4, v4, v3

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    iget v4, p0, Lcom/prineside/tdi2/Explosion;->d:F

    mul-float v4, v4, v3

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getLife()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    iget v3, p0, Lcom/prineside/tdi2/Explosion;->k:F

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getLife()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v1

    iget v2, p0, Lcom/prineside/tdi2/Explosion;->k:F

    const v3, 0x44bb8000    # 1500.0f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/LimitedParticleType;->EXPLOSION_FIREBALL:Lcom/prineside/tdi2/enums/LimitedParticleType;

    iget-object v3, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Lcom/prineside/tdi2/enums/LimitedParticleType;FF)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/SoundSystem;->playExplosionSound(F)V

    :cond_1
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Explosion;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/explosions/FireballExplosion;->u:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/explosions/FireballExplosion;->v:F

    return-void
.end method

.method public setup(FFFFFLcom/prineside/tdi2/abilities/FireballAbility;)V
    .locals 8

    const v0, 0x3da3d70a    # 0.08f

    mul-float v0, v0, p5

    const/high16 v1, 0x3e800000    # 0.25f

    add-float v6, v0, v1

    iput p3, p0, Lcom/prineside/tdi2/explosions/FireballExplosion;->u:F

    iput p4, p0, Lcom/prineside/tdi2/explosions/FireballExplosion;->v:F

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p5

    move-object v7, p6

    invoke-super/range {v0 .. v7}, Lcom/prineside/tdi2/Explosion;->a(Lcom/prineside/tdi2/Tower;FFFFFLcom/prineside/tdi2/Ability;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Explosion;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/explosions/FireballExplosion;->u:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/explosions/FireballExplosion;->v:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
