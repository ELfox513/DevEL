.class public Lcom/prineside/tdi2/HeadlessReplayCleanupGame;
.super Lcom/prineside/tdi2/Game;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;
    }
.end annotation


# instance fields
.field public l:Lcom/badlogic/gdx/files/FileHandle;

.field public m:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ActionResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/Game;-><init>(Lcom/prineside/tdi2/ActionResolver;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->m:I

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/HeadlessReplayCleanupGame;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->g()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/HeadlessReplayCleanupGame;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->h(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/HeadlessReplayCleanupGame;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->i(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method private synthetic g()V
    .locals 2

    const-string v0, "noResponse"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->writeServerStatus(Ljava/lang/String;)V

    const-string v0, "HeadlessReplayCleanupGame"

    const-string v1, "..."

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->getRequestInterval()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->f()V

    return-void
.end method

.method private synthetic h(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 12

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "id"

    const-string v7, "HeadlessReplayCleanupGame"

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "type"

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;-><init>(Lcom/prineside/tdi2/HeadlessReplayCleanupGame$1;)V

    iput-object v6, v9, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;->replayId:Ljava/lang/String;

    iput-boolean v1, v9, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;->success:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cleaning "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to state "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v6, "replay"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {v5, v2}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->fromCompactString(Ljava/lang/String;Z)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v5

    const-string v6, "VALIDATED"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    if-eqz v6, :cond_2

    iput-boolean v1, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    goto :goto_1

    :cond_0
    const-string v6, "CLEANED"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    if-eqz v6, :cond_1

    iput-boolean v1, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasPreferences:Z

    :cond_1
    iget-boolean v6, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    if-eqz v6, :cond_2

    iput-boolean v1, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->toCompactString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iput-boolean v2, v9, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;->success:Z

    iput-object v5, v9, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;->cleanedUpData:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput-object v8, v9, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;->newFileStatus:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "failed to parse"

    invoke-static {v7, v6, v5}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleaned up "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {p1, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Config;->SITE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/?m=api&a=submitReplayCleanup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&apiv=1&g=com.prineside.tdi2&v=184"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v5, v4, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;->replayId:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v5, v4, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;->success:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "success"

    invoke-virtual {v2, v7, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v5, v4, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;->success:Z

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;->cleanedUpData:Ljava/lang/String;

    const-string v7, "data"

    invoke-virtual {v2, v7, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v4, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$CleanupResponse;->newFileStatus:Ljava/lang/String;

    const-string v5, "newStatus"

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hash"

    const-string v2, "091u8ptF"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v1, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$1;-><init>(Lcom/prineside/tdi2/HeadlessReplayCleanupGame;)V

    invoke-interface {v0, p1, v1}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->getRequestInterval()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-virtual {p0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->f()V

    return-void
.end method

.method private synthetic i(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/p1;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/p1;-><init>(Lcom/prineside/tdi2/HeadlessReplayCleanupGame;Lcom/badlogic/gdx/utils/JsonValue;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/o1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/o1;-><init>(Lcom/prineside/tdi2/HeadlessReplayCleanupGame;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public checkServerHalted()Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "halt.txt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeadlessReplayCleanupGame"

    const-string v1, "halt.txt found, exiting"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "halted"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->writeServerStatus(Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->exit()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public create()V
    .locals 4

    invoke-super {p0}, Lcom/prineside/tdi2/Game;->create()V

    invoke-static {}, Lcom/prineside/tdi2/Logger;->initHeadless()V

    const-string v0, "HeadlessReplayCleanupGame"

    const-string v1, "started loading..."

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-virtual {v1}, Lcom/prineside/tdi2/utils/GameSyncLoader;->iterate()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-virtual {v2}, Lcom/prineside/tdi2/utils/GameSyncLoader;->getProgress()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "fully loaded!"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "loaded"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->writeServerStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->f()V

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->checkServerHalted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/n1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/n1;-><init>(Lcom/prineside/tdi2/HeadlessReplayCleanupGame;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->j(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public getRequestInterval()I
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "interval.txt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/16 v0, 0x3c

    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->m:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->m:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got new request interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeadlessReplayCleanupGame"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final j(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    const-string v2, "HeadlessReplayCleanupGame"

    const-string v3, "requesting..."

    invoke-static {v2, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v3, "POST"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/prineside/tdi2/Config;->SITE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/?m=api&a=getReplaysForCleanup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&apiv=1&g=com.prineside.tdi2&v=184"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v4, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$2;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$2;-><init>(Lcom/prineside/tdi2/HeadlessReplayCleanupGame;JLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v3, v2, v4}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    return-void
.end method

.method public writeServerStatus(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->l:Lcom/badlogic/gdx/files/FileHandle;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "status.txt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->l:Lcom/badlogic/gdx/files/FileHandle;

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v2, v1

    div-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, v1

    div-float/2addr v3, v1

    float-to-int v1, v3

    iget-object v3, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->l:Lcom/badlogic/gdx/files/FileHandle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "UTF-8"

    invoke-virtual {v3, p1, v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
