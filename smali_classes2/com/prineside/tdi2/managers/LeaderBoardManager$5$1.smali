.class Lcom/prineside/tdi2/managers/LeaderBoardManager$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager$5;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic b:Lcom/prineside/tdi2/managers/LeaderBoardManager$5;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$5;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$5;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v1, "player"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    new-instance v10, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$5;

    iget-object v3, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$5;->a:Lcom/prineside/tdi2/enums/DifficultyMode;

    iget-object v4, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$5;->b:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    iget-object v6, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$5;->c:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iget-object v7, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$5;->d:Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;-><init>(ZLcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;ZLcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    const-string v1, "rank"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v10, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->rank:I

    const-string v1, "score"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->score:J

    const-string v1, "total"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->total:I

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$5;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5;->g:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->d(Lcom/prineside/tdi2/managers/LeaderBoardManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$5;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5;->g:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->f(Lcom/prineside/tdi2/managers/LeaderBoardManager;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$5;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$5;->e:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-interface {v0, v10}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method
