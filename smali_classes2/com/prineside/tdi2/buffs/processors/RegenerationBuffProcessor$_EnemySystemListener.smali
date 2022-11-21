.class public Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_EnemySystemListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor$_EnemySystemListener;-><init>()V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 0

    iget-object p2, p1, Lcom/prineside/tdi2/Enemy;->buffRegenerationParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/prineside/tdi2/Enemy;->buffRegenerationParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    return-void
.end method

.method public enemyReachedTarget(Lcom/prineside/tdi2/Enemy;ILcom/prineside/tdi2/tiles/TargetTile;)Z
    .locals 0

    if-eqz p3, :cond_0

    iget-object p2, p1, Lcom/prineside/tdi2/Enemy;->buffRegenerationParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/prineside/tdi2/Enemy;->buffRegenerationParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0xab516

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    return-void
.end method
