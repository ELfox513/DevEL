.class public Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDespawnedFromMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->a(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->f(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)I

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    sget-object v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->e(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-static {p1}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public enemySpawnedOnMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->a(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->b(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-static {p1, v0}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->e(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    :cond_0
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x36c3c689

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    const-class v1, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
