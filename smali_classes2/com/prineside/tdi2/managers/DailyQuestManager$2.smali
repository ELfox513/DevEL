.class Lcom/prineside/tdi2/managers/DailyQuestManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyQuestHashFromServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/utils/ObjectRetriever;

.field public final synthetic b:Lcom/prineside/tdi2/managers/DailyQuestManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/DailyQuestManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->g(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->j(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->f(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/utils/ObjectRetriever;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->h(Lcom/prineside/tdi2/utils/ObjectRetriever;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->i(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/utils/ObjectRetriever;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 3

    const-string v0, "DailyQuestManager"

    const-string v1, "Timeout while getting daily quest"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    new-instance v2, Lcom/prineside/tdi2/managers/k;

    invoke-direct {v2, v1}, Lcom/prineside/tdi2/managers/k;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "DailyQuestManager"

    const-string v1, "Error while getting daily quest hash"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    new-instance v1, Lcom/prineside/tdi2/managers/g;

    invoke-direct {v1, v0}, Lcom/prineside/tdi2/managers/g;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 6

    const-string v0, "failed to get daily quest hash: "

    const-string v1, "DailyQuestManager"

    invoke-interface {p1}, Lcom/badlogic/gdx/Net$HttpResponse;->getResultAsString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "hash"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v4, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    new-instance v5, Lcom/prineside/tdi2/managers/h;

    invoke-direct {v5, v4, v2}, Lcom/prineside/tdi2/managers/h;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    new-instance v4, Lcom/prineside/tdi2/managers/i;

    invoke-direct {v4, v3}, Lcom/prineside/tdi2/managers/i;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$2;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    new-instance v1, Lcom/prineside/tdi2/managers/j;

    invoke-direct {v1, v0}, Lcom/prineside/tdi2/managers/j;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
