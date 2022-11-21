.class public Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;
.super Lcom/prineside/tdi2/WaveProcessor;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;,
        Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;,
        Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$BrootBossWaveProcessorFactory;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/Wave;

.field public b:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public d:Z

.field public k:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;

.field public p:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;

.field public q:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/WaveProcessor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;)Lcom/prineside/tdi2/Wave;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-object p1
.end method

.method public static synthetic d(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->k:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->p:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    const-string v0, "BrootBossWaveProcessor"

    const-string v1, "Disposed"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/EnemyGroup;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveCoinsSum(I)F

    move-result v7

    invoke-static {p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveExpSum(I)F

    move-result v8

    invoke-static {p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveScoreSum(I)F

    move-result v0

    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-static {p1, p2}, Lcom/prineside/tdi2/managers/WaveManager;->getWaveValue(II)F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v1

    const-wide v1, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {p1, p2, v1, v2}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const p2, 0x3fb9999a    # 1.45f

    mul-float p1, p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    add-float v3, p1, p2

    new-instance p1, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    float-to-int v9, v0

    const v2, 0x3ecccccd    # 0.4f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    invoke-virtual {v10, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v10
.end method

.method public getNextWaveDelayMultiplier()F
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->d:Z

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Wave;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->d:Z

    const-class v0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->k:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;

    const-class v0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->p:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/GameSystemProvider;II)Lcom/prineside/tdi2/Wave;
    .locals 2

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v0, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p0, p2, p3}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/prineside/tdi2/Wave;-><init>(IILcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const/4 p2, 0x0

    iput-boolean p2, v0, Lcom/prineside/tdi2/Wave;->enemiesCanBeSplitBetweenSpawns:Z

    iput-boolean p2, v0, Lcom/prineside/tdi2/Wave;->enemiesCanHaveRandomSideShifts:Z

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "enemy_name_BROOT_BOSS"

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/prineside/tdi2/Wave;->waveMessage:Ljava/lang/String;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    iput-object p0, p2, Lcom/prineside/tdi2/Wave;->waveProcessor:Lcom/prineside/tdi2/WaveProcessor;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->k:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;

    if-nez p2, :cond_0

    new-instance p2, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$1;)V

    iput-object p2, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->k:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;

    new-instance p2, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$1;)V

    iput-object p2, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->p:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;

    :cond_0
    iget-object p2, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p3, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->k:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->p:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    const-string p1, "BrootBossWaveProcessor"

    const-string p2, "Setup"

    invoke-static {p1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    return-object p1
.end method

.method public update(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->d:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->e()V

    return-void

    :cond_1
    check-cast v0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->updateRageState(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const-class v1, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->d:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->k:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;

    const-class v1, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->p:Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;

    const-class v1, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
