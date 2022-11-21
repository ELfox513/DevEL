.class public Lcom/prineside/tdi2/abilities/MagnetAbility;
.super Lcom/prineside/tdi2/Ability;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;,
        Lcom/prineside/tdi2/abilities/MagnetAbility$MagnetAbilityFactory;
    }
.end annotation


# static fields
.field public static final u:[I

.field public static final v:[[I


# instance fields
.field public b:F

.field public d:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public k:Lcom/badlogic/gdx/utils/IntSet;

.field public p:F

.field public q:Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;

.field public r:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public s:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public t:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/tdi2/abilities/MagnetAbility;->u:[I

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/prineside/tdi2/abilities/MagnetAbility;->v:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x64
        0x7d
        0x96
        0xaf
        0xfa
        0x12c
        0x190
        0x226
        0x2ee
        0x36b
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x5
        0xa
        0x19
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x12c
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x5
        0xa
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0xfa
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0xa
        0x14
        0x32
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0x19
        0x2d
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0x19
        0x4b
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->MAGNET:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Ability;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->k:Lcom/badlogic/gdx/utils/IntSet;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/abilities/MagnetAbility$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/abilities/MagnetAbility;-><init>()V

    return-void
.end method

.method public static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/MagnetAbility;->u:[I

    return-object v0
.end method

.method public static synthetic c()[[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/MagnetAbility;->v:[[I

    return-object v0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/abilities/MagnetAbility;)Lcom/badlogic/gdx/utils/IntSet;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->k:Lcom/badlogic/gdx/utils/IntSet;

    return-object p0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_3

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v2

    iget-object v3, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    iput-object v1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->b:F

    const v1, 0x40d66666    # 6.7f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->b:F

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const-class v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntSet;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->k:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->p:F

    const-class v0, Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->q:Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;

    return-void
.end method

.method public setUnregistered()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/ProjectileSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->q:Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->k:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public start(II)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_MAGNET_COINS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/prineside/tdi2/Ability;->a:F

    iget-object p1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->q:Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;

    if-nez p1, :cond_0

    new-instance p1, Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;-><init>(Lcom/prineside/tdi2/abilities/MagnetAbility;Lcom/prineside/tdi2/abilities/MagnetAbility$1;)V

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->q:Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/ProjectileSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->q:Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_MAGNET_DAMAGE_MULTIPLIER:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->p:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->b:F

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->MAGNET:Lcom/prineside/tdi2/abilities/MagnetAbility$MagnetAbilityFactory;

    invoke-static {p1}, Lcom/prineside/tdi2/abilities/MagnetAbility$MagnetAbilityFactory;->a(Lcom/prineside/tdi2/abilities/MagnetAbility$MagnetAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/MagnetAbility;->e()V

    return-void
.end method

.method public update(F)V
    .locals 5

    iget v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->b:F

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/MagnetAbility;->e()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_3

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Projectile;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->k:Lcom/badlogic/gdx/utils/IntSet;

    iget v4, v2, Lcom/prineside/tdi2/Projectile;->id:I

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->k:Lcom/badlogic/gdx/utils/IntSet;

    iget v4, v2, Lcom/prineside/tdi2/Projectile;->id:I

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    iget v3, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->p:F

    invoke-virtual {v2, v3, p0}, Lcom/prineside/tdi2/Projectile;->multiplyDamage(FLcom/prineside/tdi2/Ability;)V

    :cond_1
    iget-object v3, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Projectile;->flyOnEnemy(Lcom/prineside/tdi2/Enemy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->t:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-boolean v1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->t:Z

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->s:Z

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->s:Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_4
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->b:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->d:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->k:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->p:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility;->q:Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;

    const-class v1, Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
