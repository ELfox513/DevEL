.class public Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemySpawnedOnMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->a(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    :cond_0
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x1431ad89

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    const-class v1, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
