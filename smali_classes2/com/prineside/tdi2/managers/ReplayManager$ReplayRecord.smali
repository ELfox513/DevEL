.class public Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ReplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplayRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:[B

.field public build:I

.field public c:[B

.field public chartFrames:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

.field public defeatedWaves:I

.field public difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

.field public gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

.field public hasPreferences:Z

.field public hasState:Z

.field public id:Ljava/lang/String;

.field public levelName:Ljava/lang/String;

.field public modeDifficultyMultiplier:I

.field public playRealTime:I

.field public profileXp:I

.field public saveTimestamp:J

.field public score:J

.field public startTimestamp:J

.field public statistics:Lcom/badlogic/gdx/utils/IntFloatMap;

.field public version:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    return-void
.end method

.method public static fromBytes([BZ)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;-><init>()V

    new-instance v1, Lcom/prineside/kryo/FixedInput;

    invoke-direct {v1, p0}, Lcom/prineside/kryo/FixedInput;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->a(Lcom/prineside/kryo/FixedInput;Z)V

    return-object v0
.end method

.method public static fromCompactString(Ljava/lang/String;Z)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;-><init>()V

    new-instance v1, Lcom/prineside/kryo/FixedInput;

    invoke-static {p0}, Lcom/prineside/tdi2/utils/StringFormatter;->fromCompactBase64(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/prineside/kryo/FixedInput;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->a(Lcom/prineside/kryo/FixedInput;Z)V

    return-object v0
.end method

.method public static fromState(Lcom/prineside/tdi2/GameSystemProvider;[BZ)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
    .locals 11

    new-instance v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;-><init>()V

    const/16 v1, 0xb8

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->build:I

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->replayId:Ljava/lang/String;

    iput-object v2, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    iget-object v2, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iput-object v2, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iget-object v3, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    iput-object v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    iget v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->modeDifficultyMultiplier:I

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->modeDifficultyMultiplier:I

    invoke-static {v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->isBasicLevel(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    iput-object v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v3, :cond_1

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    iput-object v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->playRealTime:F

    float-to-int v1, v1

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->playRealTime:I

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/WaveSystem;->getCompletedWavesCount()I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->defeatedWaves:I

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getScore()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-wide v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    iput-wide v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->startTimestamp:J

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->saveTimestamp:J

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->pxpExperience:I

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->profileXp:I

    new-instance v1, Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->statistics:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistics()[D

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v1, v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->statistics:Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-wide v8, v1, v5

    double-to-float v5, v8

    invoke-virtual {v6, v7, v5}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentReplayChart()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->cpy()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->chartFrames:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saving state in replay "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "ReplayManager"

    invoke-static {v2, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getStateBytes()Lcom/esotericsoftware/kryo/io/Output;

    move-result-object p0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->toBytes()[B

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->b:[B

    iput-boolean v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    iput-object p1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->c:[B

    :cond_4
    iput-boolean v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->a:Z

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/prineside/kryo/FixedInput;Z)V
    .locals 6

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedInput;->position()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedInput;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const v3, 0x918f311

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedInput;->readByte()B

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->setPosition(I)V

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->build:I

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->values:[Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v3

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v1, Lcom/prineside/tdi2/enums/DifficultyMode;->values:[Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v3

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x64

    :goto_1
    iput v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->modeDifficultyMultiplier:I

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedInput;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->playRealTime:I

    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->defeatedWaves:I

    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarLong(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->startTimestamp:J

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->saveTimestamp:J

    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->profileXp:I

    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v0

    new-instance v1, Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(I)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->statistics:Lcom/badlogic/gdx/utils/IntFloatMap;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->statistics:Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedInput;->readFloat()F

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->fromBytes(Lcom/prineside/kryo/FixedInput;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->chartFrames:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->b:[B

    :cond_3
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readBytes(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->c:[B

    :cond_4
    iput-boolean p2, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->a:Z

    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    if-nez p1, :cond_5

    iput-boolean v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->a:Z

    :cond_5
    return-void
.end method

.method public applyPreferences()V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->getPreferencesSnapshot()[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->setTemporaryPreferences([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loaded preferences from replay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReplayManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Replay is already cleaned up"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache/replays/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".rpl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/prineside/kryo/FixedInput;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/prineside/kryo/FixedInput;-><init>([B)V

    invoke-virtual {p0, v1, v2}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->a(Lcom/prineside/kryo/FixedInput;Z)V

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->a:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getPreferencesSnapshot()[B
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->b()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->c:[B

    return-object v0
.end method

.method public getStateBytes()[B
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->b()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->b:[B

    return-object v0
.end method

.method public removePreferencesData()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->c:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removed preferences from replay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReplayManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeStateData()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->b:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removed state from replay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReplayManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveLocally()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->toBytes()[B

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache/replays/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rpl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " locally, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prefs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReplayManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toBytes()[B
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->b()V

    sget-object v0, Lcom/prineside/tdi2/managers/ReplayManager;->helperOutput:Lcom/prineside/kryo/FixedOutput;

    invoke-virtual {v0}, Lcom/prineside/kryo/FixedOutput;->clear()V

    const v1, 0x918f311

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeInt(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeByte(I)V

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->build:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->modeDifficultyMultiplier:I

    invoke-virtual {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->playRealTime:I

    invoke-virtual {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->defeatedWaves:I

    invoke-virtual {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget-wide v3, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    invoke-virtual {v0, v3, v4, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarLong(JZ)I

    iget-wide v3, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->startTimestamp:J

    invoke-virtual {v0, v3, v4}, Lcom/prineside/kryo/FixedOutput;->writeLong(J)V

    iget-wide v3, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->saveTimestamp:J

    invoke-virtual {v0, v3, v4}, Lcom/prineside/kryo/FixedOutput;->writeLong(J)V

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->profileXp:I

    invoke-virtual {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->statistics:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    invoke-virtual {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->statistics:Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntFloatMap;->keys()Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    move-result-object v1

    :goto_0
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->hasNext:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->next()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->statistics:Lcom/badlogic/gdx/utils/IntFloatMap;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/prineside/kryo/FixedOutput;->writeFloat(F)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->chartFrames:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->write(Lcom/prineside/kryo/FixedOutput;)V

    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeBoolean(Z)V

    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeBoolean(Z)V

    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->b:[B

    array-length v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->b:[B

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeBytes([B)V

    :cond_1
    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->c:[B

    array-length v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->c:[B

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeBytes([B)V

    :cond_2
    invoke-virtual {v0}, Lcom/prineside/kryo/FixedOutput;->toBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public toCompactString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->toBytes()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->toCompactBase64([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
