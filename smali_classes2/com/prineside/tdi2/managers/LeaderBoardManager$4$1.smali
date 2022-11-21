.class Lcom/prineside/tdi2/managers/LeaderBoardManager$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager$4;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic b:Lcom/prineside/tdi2/managers/LeaderBoardManager$4;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$4;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$4;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;-><init>(Ljava/lang/String;ZLcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v5, "player"

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v6, "score"

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    new-instance v5, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7, v4}, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;-><init>(ZLjava/lang/String;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    iput-object v5, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;

    const-string v4, "total"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;->total:I

    iget-object v4, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;

    const-string v5, "rank"

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;->rank:I

    iget-object v4, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;->score:I

    :cond_0
    iget-object v2, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v4, "leaderboards"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v2

    const/4 v12, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v5, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->entries:Lcom/badlogic/gdx/utils/Array;

    new-instance v15, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    const-string v7, "playerid"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "nickname"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v10, v7

    add-int/lit8 v16, v12, 0x1

    const/4 v7, 0x0

    const-string v13, "hasPfp"

    invoke-virtual {v4, v13, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v7, "level"

    invoke-virtual {v4, v7, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JIZI)V

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move/from16 v12, v16

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$4;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$4;->c:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    invoke-static {v2, v1}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->b(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;)Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;

    iget-object v2, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$4;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$4;->c:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->f(Lcom/prineside/tdi2/managers/LeaderBoardManager;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$4$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$4;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$4;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-interface {v2, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method
