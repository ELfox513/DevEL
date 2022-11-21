.class public Lcom/prineside/tdi2/managers/LeaderBoardManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/LeaderBoardManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;,
        Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;,
        Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;,
        Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;,
        Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;,
        Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;,
        Lcom/prineside/tdi2/managers/LeaderBoardManager$Serializer;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;

.field public final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

.field public p:Z

.field public q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;",
            ">;>;"
        }
    .end annotation
.end field

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->b:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->d:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    invoke-direct {v0, v2}, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;-><init>(Z)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->k:Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    iput-boolean v3, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->p:Z

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/LeaderBoardManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->p:Z

    return p1
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;)Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;

    return-object p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/LeaderBoardManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->r:Z

    return p1
.end method

.method public static synthetic d(Lcom/prineside/tdi2/managers/LeaderBoardManager;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->d:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->k:Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    return-object p1
.end method

.method public static synthetic f(Lcom/prineside/tdi2/managers/LeaderBoardManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->j()V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->i(Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)V

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/managers/LeaderBoardManager;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->b:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method


# virtual methods
.method public getBasicLevelsTopLeaderboards(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->k:Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    iget-boolean v2, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;->success:Z

    const-string v3, "LeaderBoardManager"

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->k:Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    iget v2, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;->requestTimestamp:I

    sub-int/2addr v1, v2

    const/16 v2, 0x78

    if-ge v1, v2, :cond_0

    const-string v0, "getBasicLevelsTopLeaderboards - returning cache"

    invoke-static {v3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->k:Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->r:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->r:Z

    iget-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->k:Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v2, "POST"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/prineside/tdi2/Config;->GET_BASIC_LEVELS_TOP_LEADERBOARDS_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "mode"

    sget-object v5, Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;->score:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "difficulty"

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v4, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;

    invoke-direct {v4, p0, v0, p1}, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;-><init>(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)V

    invoke-interface {v2, v1, v4}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->r:Z

    const-string v1, "Failed to get leaderboards"

    invoke-static {v3, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->i(Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)V

    :goto_0
    return-void
.end method

.method public getLeaderboards(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Lcom/prineside/tdi2/enums/DifficultyMode;Ljava/lang/String;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;",
            "Lcom/prineside/tdi2/enums/DifficultyMode;",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p5

    new-instance v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Lcom/prineside/tdi2/enums/DifficultyMode;Ljava/lang/String;Ljava/lang/String;ZLcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    const/4 v1, 0x0

    move-object v10, p0

    :goto_0
    iget-object v2, v10, Lcom/prineside/tdi2/managers/LeaderBoardManager;->b:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_7

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    move-object v4, p1

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    move-object/from16 v5, p2

    if-ne v3, v5, :cond_4

    iget-object v3, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->mapName:Ljava/lang/String;

    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->mode:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    move-object/from16 v7, p4

    if-ne v7, v3, :cond_6

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->playerId:Ljava/lang/String;

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->playerId:Ljava/lang/String;

    if-eqz v3, :cond_6

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    iget v1, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->requestTimestamp:I

    sub-int/2addr v0, v1

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    invoke-interface {v9, v2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object v11, v2

    goto :goto_1

    :cond_3
    move-object/from16 v5, p2

    :cond_4
    move-object/from16 v6, p3

    :cond_5
    move-object/from16 v7, p4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v11, v0

    :goto_1
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->GET_LEADERBOARDS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "gamemode"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "difficulty"

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mapname"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mode"

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "playerid"

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v12, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v13, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;-><init>(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Lcom/prineside/tdi2/enums/DifficultyMode;Ljava/lang/String;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;)V

    invoke-interface {v12, v0, v13}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "LeaderBoardManager"

    const-string v2, "Failed to get leaderboards"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v9, v11}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public getLeaderboardsAdvanceRank(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Lcom/prineside/tdi2/enums/DifficultyMode;Ljava/lang/String;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;JLcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;",
            "Lcom/prineside/tdi2/enums/DifficultyMode;",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;",
            "J",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v0

    const-string v9, "LeaderBoardManager"

    if-eqz v0, :cond_1

    move-object/from16 v10, p0

    iget-boolean v0, v10, Lcom/prineside/tdi2/managers/LeaderBoardManager;->p:Z

    if-nez v0, :cond_0

    const-string v0, "submit disabled, can\'t get advance rank"

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    const/4 v12, 0x0

    const/4 v15, 0x1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object v11, v0

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v16, p1

    move-object/from16 v17, p3

    invoke-direct/range {v11 .. v19}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;-><init>(ZLcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;ZLcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    invoke-interface {v8, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->GET_LEADERBOARDS_ADVANCE_RANK_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "gamemode"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "difficulty"

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mapname"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mode"

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "playerid"

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "score"

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v11, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v12, Lcom/prineside/tdi2/managers/LeaderBoardManager$6;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/prineside/tdi2/managers/LeaderBoardManager$6;-><init>(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v11, v0, v12}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get advance leaderboards rank"

    invoke-static {v9, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    const/4 v12, 0x0

    const/4 v15, 0x1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object v11, v0

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v16, p1

    move-object/from16 v17, p3

    invoke-direct/range {v11 .. v19}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;-><init>(ZLcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;ZLcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    invoke-interface {v8, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object/from16 v10, p0

    const-string v0, "not signed in, can\'t get advance rank"

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    const/4 v12, 0x0

    const/4 v15, 0x1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object v11, v0

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v16, p1

    move-object/from16 v17, p3

    invoke-direct/range {v11 .. v19}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;-><init>(ZLcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;ZLcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    invoke-interface {v8, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getLeaderboardsRank(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Lcom/prineside/tdi2/enums/DifficultyMode;Ljava/lang/String;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;",
            "Lcom/prineside/tdi2/enums/DifficultyMode;",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p5

    new-instance v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v17

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v15, p1

    move-object/from16 v16, p3

    invoke-direct/range {v10 .. v18}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;-><init>(ZLcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;ZLcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    const/4 v1, 0x0

    move-object/from16 v10, p0

    :goto_0
    iget-object v2, v10, Lcom/prineside/tdi2/managers/LeaderBoardManager;->d:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_6

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    move-object/from16 v5, p1

    if-ne v3, v5, :cond_3

    iget-object v3, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->mapName:Ljava/lang/String;

    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->mode:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    move-object/from16 v4, p4

    if-ne v4, v3, :cond_5

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->playerId:Ljava/lang/String;

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->playerId:Ljava/lang/String;

    if-eqz v3, :cond_5

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    iget v1, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->requestTimestamp:I

    sub-int/2addr v0, v1

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    invoke-interface {v9, v2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object v11, v2

    goto :goto_1

    :cond_3
    move-object/from16 v6, p3

    :cond_4
    move-object/from16 v4, p4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v4, p4

    move-object v11, v0

    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v0

    const-string v12, "LeaderBoardManager"

    if-eqz v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->GET_LEADERBOARDS_RANK_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "gamemode"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "difficulty"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mapname"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mode"

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "playerid"

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v13, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v14, Lcom/prineside/tdi2/managers/LeaderBoardManager$5;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/prineside/tdi2/managers/LeaderBoardManager$5;-><init>(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;)V

    invoke-interface {v13, v0, v14}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to get leaderboards rank"

    invoke-static {v12, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v9, v11}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    const-string v0, "not signed in, can\'t get rank"

    invoke-static {v12, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v11}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public getSkillPointLeaderboards(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;-><init>(Ljava/lang/String;ZLcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->playerId:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->playerId:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;

    iget v2, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->requestTimestamp:I

    sub-int/2addr v0, v2

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_2

    invoke-interface {p1, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object v0, v1

    :cond_3
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v2, "POST"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/prineside/tdi2/Config;->GET_SKILL_POINT_LEADER_BOARD_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "playerid"

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v3, Lcom/prineside/tdi2/managers/LeaderBoardManager$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/prineside/tdi2/managers/LeaderBoardManager$4;-><init>(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;)V

    invoke-interface {v2, v1, v3}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LeaderBoardManager"

    const-string v3, "Failed to get skill point leaderboards"

    invoke-static {v2, v3, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final i(Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/utils/ObjectRetriever;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public removeBasicLevelsTopLeaderboardsRetriever(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/LeaderBoardManager$1;-><init>(Lcom/prineside/tdi2/managers/LeaderBoardManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->getNews(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method
