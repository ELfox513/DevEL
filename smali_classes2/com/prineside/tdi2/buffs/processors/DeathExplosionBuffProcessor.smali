.class public Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;
.super Lcom/prineside/tdi2/BuffProcessor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/BuffProcessor<",
        "Lcom/prineside/tdi2/buffs/DeathExplosionBuff;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/BuffProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z
    .locals 0

    check-cast p2, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/DeathExplosionBuff;)Z

    move-result p1

    return p1
.end method

.method public addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/DeathExplosionBuff;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->b(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z

    move-result p1

    return p1
.end method

.method public getBuffCountStatistic()Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->EB_BC:Lcom/prineside/tdi2/enums/StatisticsType;

    return-object v0
.end method

.method public getUpdateInterval()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;

    return-void
.end method

.method public setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object p1, p0, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;

    if-nez p1, :cond_0

    new-instance p1, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$1;)V

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public setUnregistered()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;->d:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;

    const-class v1, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
