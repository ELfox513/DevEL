.class public Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeaderboardsRankResult"
.end annotation


# instance fields
.field public difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

.field public gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

.field public isAdvance:Z

.field public mapName:Ljava/lang/String;

.field public mode:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

.field public playerId:Ljava/lang/String;

.field public rank:I

.field public requestTimestamp:I

.field public score:J

.field public success:Z

.field public total:I


# direct methods
.method public constructor <init>(ZLcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;ZLcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->isAdvance:Z

    iput-object p2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    iput-object p5, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iput-object p6, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->mapName:Ljava/lang/String;

    iput-object p7, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->playerId:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->success:Z

    iput-object p3, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->mode:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->requestTimestamp:I

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;ZLcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;-><init>(ZLcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;ZLcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;
    .locals 9

    const-string v0, "m"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    move-result-object v4

    const-string v0, "gm"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    move-result-object v6

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    :try_start_0
    const-string v1, "dm"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/DifficultyMode;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v3, v0

    const-string v0, "mn"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "pi"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "a"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    new-instance v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;-><init>(ZLcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;ZLcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->score:J

    const-string v1, "r"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->rank:I

    const-string v1, "t"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->total:I

    const-string v1, "rt"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->requestTimestamp:I

    return-object v0
.end method


# virtual methods
.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->success:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->isAdvance:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->requestTimestamp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rt"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->mode:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "a"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dm"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->mapName:Ljava/lang/String;

    const-string v1, "mn"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->playerId:Ljava/lang/String;

    const-string v1, "pi"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->rank:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->score:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->total:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This result is advance, can\'t save to json"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This result is failed, can\'t save to json"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
