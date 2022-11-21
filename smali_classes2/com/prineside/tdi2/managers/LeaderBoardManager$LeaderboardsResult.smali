.class public Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeaderboardsResult"
.end annotation


# instance fields
.field public difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

.field public entries:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

.field public mapName:Ljava/lang/String;

.field public mode:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

.field public player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

.field public playerId:Ljava/lang/String;

.field public requestTimestamp:I

.field public success:Z


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Lcom/prineside/tdi2/enums/DifficultyMode;Ljava/lang/String;Ljava/lang/String;ZLcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->entries:Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->mapName:Ljava/lang/String;

    iput-object p4, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->playerId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->success:Z

    iput-object p6, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->mode:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->requestTimestamp:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Lcom/prineside/tdi2/enums/DifficultyMode;Ljava/lang/String;Ljava/lang/String;ZLcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Lcom/prineside/tdi2/enums/DifficultyMode;Ljava/lang/String;Ljava/lang/String;ZLcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;)V

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;
    .locals 8

    const-string v0, "gm"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    move-result-object v2

    const-string v0, "mn"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "pi"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "m"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    move-result-object v7

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    :try_start_0
    const-string v1, "dm"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/DifficultyMode;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    move-object v3, v0

    new-instance v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Lcom/prineside/tdi2/enums/DifficultyMode;Ljava/lang/String;Ljava/lang/String;ZLcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;)V

    const-string v1, "p"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    :cond_0
    const-string v1, "e"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->entries:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v1, "rt"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->requestTimestamp:I

    return-object v0
.end method


# virtual methods
.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->success:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->requestTimestamp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rt"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dm"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->mapName:Ljava/lang/String;

    const-string v1, "mn"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->playerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "pi"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->mode:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    if-eqz v0, :cond_1

    const-string v0, "p"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :cond_1
    const-string v0, "e"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->entries:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->entries:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This result is failed, can\'t save to json"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
