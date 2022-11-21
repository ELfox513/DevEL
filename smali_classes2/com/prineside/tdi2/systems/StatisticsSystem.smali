.class public Lcom/prineside/tdi2/systems/StatisticsSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/StatisticsSystem$StatisticsSystemListener;,
        Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;,
        Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;,
        Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;,
        Lcom/prineside/tdi2/systems/StatisticsSystem$_MinerSystemListener;,
        Lcom/prineside/tdi2/systems/StatisticsSystem$_WaveSystemListener;
    }
.end annotation


# instance fields
.field public a:[D
    .annotation runtime Lcom/prineside/tdi2/utils/EnumKeyArray;
        enumerator = Lcom/prineside/tdi2/enums/StatisticsType;
    .end annotation
.end field

.field public b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

.field public d:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public k:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/StatisticsSystem$StatisticsSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:F

.field public r:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public replayChartFrameCounter:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->a:[D

    new-instance v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/StatisticsSystem$StatisticsSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/StatisticsSystem;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->e(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/StatisticsSystem;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->d(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/systems/StatisticsSystem;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    return-object p0
.end method

.method private synthetic d(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loaded best replay from server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatisticsSystem"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->d:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/StatisticsSystem$StatisticsSystemListener;

    invoke-interface {v0}, Lcom/prineside/tdi2/systems/StatisticsSystem$StatisticsSystemListener;->bestReplayLoadedFromServer()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method private synthetic e(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->d:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/systems/m;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/systems/m;-><init>(Lcom/prineside/tdi2/systems/StatisticsSystem;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->a:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    add-double/2addr v1, p2

    aput-wide v1, v0, p1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Statistics are already flushed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public flushStatistics()V
    .locals 8

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->p:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    iget-object v5, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->a:[D

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v5, v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    iget-object v5, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->a:[D

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v5, v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerMaxOneGame(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->p:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Statistics are already flushed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getBestReplay()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
    .locals 12

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->r:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->r:Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    sget-object v3, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->replayManager:Lcom/prineside/tdi2/managers/ReplayManager;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    new-instance v3, Lcom/prineside/tdi2/systems/l;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/systems/l;-><init>(Lcom/prineside/tdi2/systems/StatisticsSystem;)V

    invoke-virtual {v2, v0, v3}, Lcom/prineside/tdi2/managers/ReplayManager;->loadAndStoreBestReplayFromServer(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->d:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->k:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->isBasicLevel(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v4, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v3, v4, :cond_4

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, ""

    :goto_0
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->replayManager:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ReplayManager;->getAllRecordIds()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v2

    :goto_1
    :try_start_0
    iget v6, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_7

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->replayManager:Lcom/prineside/tdi2/managers/ReplayManager;

    iget-object v7, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/ReplayManager;->getRecord(Ljava/lang/String;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v6

    iget-object v7, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iget-object v8, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v9, v8, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v7, v9, :cond_6

    iget-object v7, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    iget-object v8, v8, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne v7, v8, :cond_6

    iget-object v7, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->chartFrames:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    iget v7, v7, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->version:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    iget-object v7, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v5, :cond_5

    iget-wide v7, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    iget-wide v9, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v11, v7, v9

    if-gez v11, :cond_6

    :cond_5
    move-object v5, v6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "StatisticsSystem"

    const-string v4, "failed to get best replay"

    invoke-static {v3, v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    if-nez v5, :cond_8

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->k:Z

    return-object v2

    :cond_8
    iput-object v5, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->d:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    return-object v5
.end method

.method public getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->a:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getCurrentGameStatistics()[D
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->a:[D

    return-object v0
.end method

.method public getCurrentReplayChart()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    return-object v0
.end method

.method public getCurrentReplayChartValues()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->generateFrameValues(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    move-result-object v0

    return-object v0
.end method

.method public getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->a:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Statistics"

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, [D

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->a:[D

    const-class v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->replayChartFrameCounter:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->p:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->q:F

    return-void
.end method

.method public setStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->a:[D

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-wide p2, v0, p1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Statistics are already flushed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/StatisticsSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/StatisticsSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/StatisticsSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/StatisticsSystem$_MinerSystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem$_MinerSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/StatisticsSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/StatisticsSystem$_WaveSystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/StatisticsSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public update(F)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameRealTimePasses()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->q:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->q:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/LootSystem;->canGiveEncryptedChests()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->PTCL:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-static {v0}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    const/16 v1, 0x64

    const/high16 v2, 0x42c80000    # 100.0f

    if-gt v0, v1, :cond_1

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ffc000000000000L    # 1.75

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    sub-float/2addr v0, v2

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    add-float/2addr v0, p1

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->PTEMWD:Lcom/prineside/tdi2/enums/StatisticsType;

    float-to-double v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_2
    iget v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->q:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->q:F

    :cond_3
    iget p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->replayChartFrameCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->replayChartFrameCounter:I

    sget v0, Lcom/prineside/tdi2/Config;->REPLAY_CHARTS_INTERVAL:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->addFrame(Lcom/prineside/tdi2/GameSystemProvider;)V

    :cond_4
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->a:[D

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->replayChartFrameCounter:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->p:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/systems/StatisticsSystem;->q:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
