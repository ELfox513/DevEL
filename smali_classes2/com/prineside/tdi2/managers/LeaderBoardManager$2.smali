.class Lcom/prineside/tdi2/managers/LeaderBoardManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager;->getBasicLevelsTopLeaderboards(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/enums/DifficultyMode;

.field public final synthetic b:Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

.field public final synthetic c:Lcom/prineside/tdi2/managers/LeaderBoardManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->c:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->a:Lcom/prineside/tdi2/enums/DifficultyMode;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->c:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->c(Lcom/prineside/tdi2/managers/LeaderBoardManager;Z)Z

    const-string v0, "LeaderBoardManager"

    const-string v1, "Timeout while getting leaderboards"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$5;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$5;-><init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$2;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->c:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->c(Lcom/prineside/tdi2/managers/LeaderBoardManager;Z)Z

    const-string v0, "LeaderBoardManager"

    const-string v1, "Error while getting leaderboards"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$4;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$4;-><init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$2;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 4

    const-string v0, "LeaderBoardManager"

    iget-object v1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->c:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->c(Lcom/prineside/tdi2/managers/LeaderBoardManager;Z)Z

    :try_start_0
    invoke-interface {p1}, Lcom/badlogic/gdx/Net$HttpResponse;->getResultAsString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "got response from server getBasicLevelsTopLeaderboards"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$1;

    invoke-direct {v2, p0, v1}, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$1;-><init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$2;Lcom/badlogic/gdx/utils/JsonValue;)V

    invoke-interface {p1, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t retrieve leaderboards: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$2;-><init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$2;)V

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to parse response"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$3;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$3;-><init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$2;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
