.class public Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;)V

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

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->a(Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->b(Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    check-cast p1, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;)V

    :cond_0
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x1ac02509

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    const-class v1, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
