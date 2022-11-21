.class Lcom/prineside/tdi2/managers/LeaderBoardManager$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager$6;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/LeaderBoardManager$6;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$6;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$6$2;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$6$2;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager$6;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$6;->e:Lcom/prineside/tdi2/utils/ObjectRetriever;

    new-instance v11, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    iget-object v4, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$6;->a:Lcom/prineside/tdi2/enums/DifficultyMode;

    iget-object v5, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$6;->b:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    iget-object v7, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$6;->c:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iget-object v8, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$6;->d:Ljava/lang/String;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;-><init>(ZLcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;ZLcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    invoke-interface {v1, v11}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method
