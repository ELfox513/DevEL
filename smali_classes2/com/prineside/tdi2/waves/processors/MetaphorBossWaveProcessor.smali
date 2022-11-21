.class public Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;
.super Lcom/prineside/tdi2/WaveProcessor;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;,
        Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;,
        Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$MetaphorBossWaveProcessorFactory;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/Wave;

.field public b:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public p:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tower;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tower;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/prineside/tdi2/GameSystemProvider;

.field public s:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;

.field public t:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;


# direct methods
.method public constructor <init>()V
    .locals 5

    const-class v0, Lcom/prineside/tdi2/Tower;

    invoke-direct {p0}, Lcom/prineside/tdi2/WaveProcessor;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-direct {v1, v3, v4, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->k:Z

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-object p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/prineside/tdi2/Wave;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    return-object p0
.end method


# virtual methods
.method public final f()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_0

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tower;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tower;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    const-string v0, "MetaphorBossWaveProcessor"

    const-string v1, "Disposed"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/EnemyGroup;",
            ">;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveCoinsSum(I)F

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveExpSum(I)F

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveScoreSum(I)F

    move-result v2

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-static/range {p1 .. p2}, Lcom/prineside/tdi2/managers/WaveManager;->getWaveValue(II)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v4, v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    add-float/2addr v4, v5

    const v5, 0x3e99999a    # 0.3f

    mul-float v4, v4, v5

    new-instance v5, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v7, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v13, v0, v16

    mul-float v14, v1, v16

    const v6, 0x3d2aaaab

    mul-float v6, v6, v2

    float-to-int v15, v6

    const v8, 0x3ef5c28f    # 0.48f

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object v6, v5

    move v9, v4

    invoke-direct/range {v6 .. v15}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v5, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->values:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    array-length v5, v5

    mul-int/lit8 v10, v5, 0x2

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v9, v4, v5

    new-instance v4, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v7, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    int-to-float v5, v10

    div-float v16, v16, v5

    mul-float v13, v0, v16

    mul-float v14, v1, v16

    mul-float v2, v2, v16

    float-to-int v15, v2

    const/4 v11, 0x0

    const/high16 v12, 0x3e800000    # 0.25f

    move-object v6, v4

    invoke-direct/range {v6 .. v15}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v3
.end method

.method public getNextWaveDelayMultiplier()F
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->k:Z

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Wave;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->k:Z

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;

    const-class v0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/GameSystemProvider;II)Lcom/prineside/tdi2/Wave;
    .locals 2

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v0, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p0, p2, p3}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/prineside/tdi2/Wave;-><init>(IILcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const/4 p2, 0x0

    iput-boolean p2, v0, Lcom/prineside/tdi2/Wave;->enemiesCanBeSplitBetweenSpawns:Z

    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/prineside/tdi2/Wave;->enemiesCanHaveRandomSideShifts:Z

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "enemy_name_METAPHOR_BOSS"

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/prineside/tdi2/Wave;->waveMessage:Ljava/lang/String;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    iput-object p0, p2, Lcom/prineside/tdi2/Wave;->waveProcessor:Lcom/prineside/tdi2/WaveProcessor;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;

    if-nez p2, :cond_0

    new-instance p2, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$1;)V

    iput-object p2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;

    new-instance p2, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$1;)V

    iput-object p2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;

    :cond_0
    iget-object p2, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p3, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    const-string p1, "MetaphorBossWaveProcessor"

    const-string p2, "Setup"

    invoke-static {p1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    return-object p1
.end method

.method public update(F)V
    .locals 11

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->k:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->k:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->f()V

    return-void

    :cond_1
    check-cast v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_3

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tower;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v5

    if-nez v5, :cond_2

    iput-boolean v2, v4, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->getNeighbourTilesAndThis()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_5

    iget-object v5, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Tile;

    aget-object v5, v5, v4

    iget-object v6, v5, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v7, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v6, v7, :cond_4

    check-cast v5, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v5, :cond_4

    iget-object v6, v5, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v7, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v6, v7, :cond_4

    check-cast v5, Lcom/prineside/tdi2/Tower;

    iput-boolean v1, v5, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    iget-object v6, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v3

    iget v4, v0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    cmpg-double v7, v3, v5

    if-gez v7, :cond_6

    const/4 v3, 0x3

    goto :goto_2

    :cond_6
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_7

    const/4 v3, 0x2

    goto :goto_2

    :cond_7
    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    cmpg-double v7, v3, v5

    if-gez v7, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_e

    iget-object v4, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v1

    :goto_3
    if-ltz v4, :cond_a

    iget-object v5, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Tower;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v5, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v3, :cond_10

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    iget-object v5, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v5, v5, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_d

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Tower;

    aget-object v5, v5, v4

    iget-boolean v6, v5, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    if-nez v6, :cond_c

    if-eqz v3, :cond_b

    iget-object v6, v3, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v6}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v6

    iget-object v7, v5, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v7}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v7

    if-ge v6, v7, :cond_c

    :cond_b
    move-object v3, v5

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    if-eqz v3, :cond_10

    iput-boolean v1, v3, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    :goto_5
    iget-object v3, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_f

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Tower;

    aget-object v3, v3, v1

    iput-boolean v2, v3, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_10
    :goto_6
    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v1}, Lcom/prineside/tdi2/utils/EntityUtils;->removeNullRefs(Lcom/badlogic/gdx/utils/Array;)V

    :goto_7
    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_1b

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    check-cast v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;

    invoke-virtual {v1}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->getKind()Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->FRONT:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3e4ccccd    # 0.2f

    const v10, 0x3f99999a    # 1.2f

    if-ne v3, v4, :cond_15

    iget v3, v1, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v4, v0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    add-float/2addr v8, v4

    cmpg-float v8, v3, v8

    if-gez v8, :cond_12

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getSpeed()F

    move-result v3

    mul-float v6, v6, p1

    add-float/2addr v3, v6

    cmpl-float v4, v3, v10

    if-lez v4, :cond_11

    goto :goto_8

    :cond_11
    move v10, v3

    :goto_8
    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    goto/16 :goto_b

    :cond_12
    add-float/2addr v4, v7

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getSpeed()F

    move-result v3

    mul-float v5, v5, p1

    sub-float/2addr v3, v5

    cmpg-float v4, v3, v9

    if-gez v4, :cond_13

    goto :goto_9

    :cond_13
    cmpl-float v4, v3, v10

    if-lez v4, :cond_14

    const v9, 0x3f99999a    # 1.2f

    goto :goto_9

    :cond_14
    move v9, v3

    :goto_9
    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    goto :goto_b

    :cond_15
    invoke-virtual {v1}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->getKind()Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->REAR:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    if-ne v3, v4, :cond_19

    iget v3, v1, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v4, v0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    sub-float v7, v4, v7

    cmpg-float v7, v3, v7

    if-gez v7, :cond_16

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getSpeed()F

    move-result v3

    mul-float v6, v6, p1

    add-float/2addr v3, v6

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    goto :goto_b

    :cond_16
    sub-float/2addr v4, v8

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getSpeed()F

    move-result v3

    mul-float v5, v5, p1

    sub-float/2addr v3, v5

    cmpg-float v4, v3, v9

    if-gez v4, :cond_17

    goto :goto_a

    :cond_17
    cmpl-float v4, v3, v10

    if-lez v4, :cond_18

    const v9, 0x3f99999a    # 1.2f

    goto :goto_a

    :cond_18
    move v9, v3

    :goto_a
    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    goto :goto_b

    :cond_19
    invoke-virtual {v1}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->getKind()Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->RANDOM_SPEED:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    if-ne v3, v4, :cond_1a

    const v3, 0x3ef5c28f    # 0.48f

    iget v4, v1, Lcom/prineside/tdi2/Enemy;->existsTime:F

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v4

    mul-float v4, v4, v9

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    :cond_1a
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_1b
    iput v3, v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy;->creepCount:I

    :cond_1c
    :goto_c
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const-class v1, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->k:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;

    const-class v1, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;

    const-class v1, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
