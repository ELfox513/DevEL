.class public abstract Lcom/prineside/tdi2/Explosion;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Explosion$Factory;
    }
.end annotation


# static fields
.field public static final t:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/prineside/tdi2/Tower;

.field public b:F

.field public d:F

.field public damage:F

.field public fromAbility:Lcom/prineside/tdi2/Ability;

.field public k:F

.field public p:Z

.field public piercingMultiplier:F

.field public position:Lcom/badlogic/gdx/math/Vector2;

.field public q:F

.field public r:[F

.field public s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/prineside/tdi2/enums/ExplosionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/Explosion;->t:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/ExplosionType;)V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Explosion;->p:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/Explosion;->q:F

    const/16 v1, 0x14

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/prineside/tdi2/Explosion;->r:[F

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/16 v3, 0x8

    invoke-direct {v1, v0, v3, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/Explosion;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object p1, p0, Lcom/prineside/tdi2/Explosion;->type:Lcom/prineside/tdi2/enums/ExplosionType;

    return-void
.end method

.method public static calculateDamage(FFF)F
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, v0

    const v0, 0x3e4ccccd    # 0.2f

    add-float/2addr p1, v0

    mul-float p0, p0, p1

    mul-float p0, p0, p2

    return p0
.end method

.method public static getRayIndex(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result p0

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PMath;->normalizeAngle(F)F

    move-result p0

    const p1, 0x41979436

    div-float/2addr p0, p1

    invoke-static {p0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/prineside/tdi2/Tower;FFFFFLcom/prineside/tdi2/Ability;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/Explosion;->a:Lcom/prineside/tdi2/Tower;

    iget-object p1, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iput p4, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    iput p5, p0, Lcom/prineside/tdi2/Explosion;->b:F

    const/high16 p1, 0x43000000    # 128.0f

    mul-float p5, p5, p1

    iput p5, p0, Lcom/prineside/tdi2/Explosion;->d:F

    iput p6, p0, Lcom/prineside/tdi2/Explosion;->k:F

    iput-object p7, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/prineside/tdi2/Explosion;->piercingMultiplier:F

    iget-object p2, p0, Lcom/prineside/tdi2/Explosion;->r:[F

    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public addExplosionParticle(Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/LimitedParticleType;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isExplosionsDrawing()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->explosionManager:Lcom/prineside/tdi2/managers/ExplosionManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ExplosionManager;->particleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    iget v7, v0, Lcom/prineside/tdi2/Explosion;->d:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    const/high16 v9, 0x43000000    # 128.0f

    div-float/2addr v7, v9

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41000000    # 8.0f

    mul-float v10, v10, v7

    add-float/2addr v10, v9

    const/high16 v9, 0x42960000    # 75.0f

    mul-float v9, v9, v7

    const/high16 v11, 0x43960000    # 300.0f

    mul-float v11, v11, v7

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColors()[F

    move-result-object v14

    iget v15, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v15, v14, v5

    iget v15, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v15, v14, v4

    iget v15, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v8, 0x2

    aput v15, v14, v8

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v10

    invoke-virtual {v10, v9, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    if-eqz v2, :cond_2

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMinParticleCount(I)V

    goto :goto_2

    :cond_2
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMinParticleCount(I)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v9

    const/high16 v10, 0x42f00000    # 120.0f

    mul-float v10, v10, v7

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v9

    const/high16 v10, 0x41700000    # 15.0f

    mul-float v10, v10, v7

    const/high16 v11, 0x42b40000    # 90.0f

    mul-float v7, v7, v11

    invoke-virtual {v9, v10, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColors()[F

    move-result-object v7

    iget v9, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v9, v7, v5

    iget v9, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v9, v7, v4

    iget v9, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    :goto_2
    iget-object v6, v0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v7, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColors()[F

    move-result-object v9

    iget v10, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v10, v9, v5

    iget v11, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v11, v9, v4

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v1, v9, v8

    if-eqz v2, :cond_3

    const v2, 0x3ecccccd    # 0.4f

    mul-float v10, v10, v2

    aput v10, v9, v5

    mul-float v11, v11, v2

    aput v11, v9, v4

    mul-float v1, v1, v2

    aput v1, v9, v8

    :cond_3
    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v1

    iget v2, v0, Lcom/prineside/tdi2/Explosion;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v1

    iget v2, v0, Lcom/prineside/tdi2/Explosion;->d:F

    mul-float v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getLife()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v1

    iget v2, v0, Lcom/prineside/tdi2/Explosion;->k:F

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v2, v0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v5, p2

    invoke-virtual {v1, v3, v5, v4, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Lcom/prineside/tdi2/enums/LimitedParticleType;FF)V

    :cond_4
    return-void
.end method

.method public cpy()Lcom/prineside/tdi2/Explosion;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public enemyAffected(Lcom/prineside/tdi2/Enemy;FF)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v3, p0, Lcom/prineside/tdi2/Explosion;->a:Lcom/prineside/tdi2/Tower;

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    invoke-static {v0, p2, p3}, Lcom/prineside/tdi2/Explosion;->calculateDamage(FFF)F

    move-result v4

    sget-object v5, Lcom/prineside/tdi2/enums/DamageType;->EXPLOSION:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v6, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    return-void
.end method

.method public explode()V
    .locals 6

    iget-boolean v0, p0, Lcom/prineside/tdi2/Explosion;->p:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Explosion;->p:Z

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->d:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Explosion;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Explosion;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/prineside/tdi2/Explosion;->d:F

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v4, v4, v5

    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/prineside/tdi2/systems/MapSystem;->getEnemiesNearPoint(Lcom/badlogic/gdx/utils/Array;FFF)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/Explosion;->t:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/Explosion;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy;

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Explosion is already triggered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getTower()Lcom/prineside/tdi2/Tower;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Explosion;->a:Lcom/prineside/tdi2/Tower;

    return-object v0
.end method

.method public isDone()Z
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/Explosion;->p:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->q:F

    iget v1, p0, Lcom/prineside/tdi2/Explosion;->k:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public multiplyDamage(FLcom/prineside/tdi2/Ability;)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    :cond_0
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Tower;

    iput-object v0, p0, Lcom/prineside/tdi2/Explosion;->a:Lcom/prineside/tdi2/Tower;

    const-class v0, Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/ExplosionType;

    iput-object v0, p0, Lcom/prineside/tdi2/Explosion;->type:Lcom/prineside/tdi2/enums/ExplosionType;

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Explosion;->b:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Explosion;->d:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Explosion;->k:F

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Ability;

    iput-object v0, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Explosion;->p:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Explosion;->q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Explosion;->piercingMultiplier:F

    const-class v0, [F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/Explosion;->r:[F

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object p1, p0, Lcom/prineside/tdi2/Explosion;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/Explosion;->a:Lcom/prineside/tdi2/Tower;

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/Explosion;->q:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/tdi2/Explosion;->p:Z

    iget-object v1, p0, Lcom/prineside/tdi2/Explosion;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iput-object v0, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    return-void
.end method

.method public update(F)V
    .locals 11

    iget-boolean v0, p0, Lcom/prineside/tdi2/Explosion;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/Explosion;->q:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Explosion;->q:F

    iget p1, p0, Lcom/prineside/tdi2/Explosion;->k:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    iput p1, p0, Lcom/prineside/tdi2/Explosion;->q:F

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/Explosion;->d:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    iget v1, p0, Lcom/prineside/tdi2/Explosion;->q:F

    div-float/2addr v1, p1

    mul-float p1, v1, v0

    mul-float p1, p1, v1

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->EXPLOSIONS_PIERCING:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, p0, Lcom/prineside/tdi2/Explosion;->piercingMultiplier:F

    mul-float v0, v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v4, v0, v3

    if-gez v4, :cond_3

    const v0, 0x3d4ccccd    # 0.05f

    :cond_3
    sub-float v4, v2, v0

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    sub-float v4, v2, v4

    iget-object v5, p0, Lcom/prineside/tdi2/Explosion;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/prineside/tdi2/Explosion;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v5, v6, :cond_7

    iget-object v7, p0, Lcom/prineside/tdi2/Explosion;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v7, :cond_6

    iget-object v8, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v8

    cmpg-float v8, v8, p1

    if-gez v8, :cond_6

    iget-object v8, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/prineside/tdi2/Explosion;->getRayIndex(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v8

    iget-object v9, p0, Lcom/prineside/tdi2/Explosion;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/prineside/tdi2/Explosion;->r:[F

    aget v9, v9, v8

    cmpl-float v10, v9, v3

    if-lez v10, :cond_4

    sub-float v10, v2, v1

    invoke-virtual {p0, v7, v10, v9}, Lcom/prineside/tdi2/Explosion;->enemyAffected(Lcom/prineside/tdi2/Enemy;FF)V

    :cond_4
    iget-object v7, p0, Lcom/prineside/tdi2/Explosion;->r:[F

    aget v9, v7, v8

    mul-float v9, v9, v0

    aput v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    rem-int/lit8 v9, v9, 0x14

    aget v10, v7, v9

    mul-float v10, v10, v4

    aput v10, v7, v9

    add-int/lit8 v8, v8, -0x1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    const/16 v8, 0x13

    :cond_5
    aget v9, v7, v8

    mul-float v9, v9, v4

    aput v9, v7, v8

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/prineside/tdi2/Explosion;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_8
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Explosion;->a:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Explosion;->type:Lcom/prineside/tdi2/enums/ExplosionType;

    const-class v1, Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->damage:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->b:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->d:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->k:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Explosion;->fromAbility:Lcom/prineside/tdi2/Ability;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Explosion;->p:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Explosion;->piercingMultiplier:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Explosion;->r:[F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Explosion;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
