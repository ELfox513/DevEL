.class Lcom/prineside/tdi2/managers/DailyQuestManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/DailyQuestManager;->loadAndStoreDailyQuestFromServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/utils/ObjectRetriever;

.field public final synthetic b:I

.field public final synthetic c:Lcom/prineside/tdi2/managers/DailyQuestManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/DailyQuestManager;Lcom/prineside/tdi2/utils/ObjectRetriever;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$5;->c:Lcom/prineside/tdi2/managers/DailyQuestManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$5;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iput p3, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/badlogic/gdx/utils/JsonValue;Lcom/prineside/tdi2/utils/ObjectRetriever;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/prineside/tdi2/managers/DailyQuestManager$5;->b(Lcom/badlogic/gdx/utils/JsonValue;Lcom/prineside/tdi2/utils/ObjectRetriever;I)V

    return-void
.end method

.method public static synthetic b(Lcom/badlogic/gdx/utils/JsonValue;Lcom/prineside/tdi2/utils/ObjectRetriever;I)V
    .locals 9

    const-string v0, "UTF-8"

    const-string v1, ".json"

    const-string v2, "configuration"

    :try_start_0
    const-string v3, "data"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "levels/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/JsonValue;->toJson(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v0}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "levels/maps/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const-string v3, "map"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/JsonValue;->toJson(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v7, v0}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->loadAndRegisterLevelFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/BasicLevel;

    sget-object p0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p0, p0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DQ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "DailyQuestManager"

    const-string v0, "failed to store daily quest map"

    invoke-static {p2, v0, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    const-string v0, "DailyQuestManager"

    const-string v1, "failed (cancelled) to get daily quest map"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/DailyQuestManager$5$4;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$5$4;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager$5;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "DailyQuestManager"

    const-string v1, "failed to get daily quest map"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/managers/DailyQuestManager$5$3;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$5$3;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager$5;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 5

    const-string v0, "DailyQuestManager"

    :try_start_0
    invoke-interface {p1}, Lcom/badlogic/gdx/Net$HttpResponse;->getResultAsString()Ljava/lang/String;

    move-result-object p1

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

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$5;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget v3, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$5;->b:I

    new-instance v4, Lcom/prineside/tdi2/managers/m;

    invoke-direct {v4, v1, v2, v3}, Lcom/prineside/tdi2/managers/m;-><init>(Lcom/badlogic/gdx/utils/JsonValue;Lcom/prineside/tdi2/utils/ObjectRetriever;I)V

    invoke-interface {p1, v4}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get daily quest map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/DailyQuestManager$5$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$5$1;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager$5;)V

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "failed to parse daily quest map"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/managers/DailyQuestManager$5$2;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$5$2;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager$5;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
