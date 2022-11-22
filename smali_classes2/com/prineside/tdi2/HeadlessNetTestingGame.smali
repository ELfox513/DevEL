.class public Lcom/prineside/tdi2/HeadlessNetTestingGame;
.super Lcom/prineside/tdi2/Game;
.source "SourceFile"


# instance fields
.field public currentReplay:Ljava/lang/String;

.field public l:Lcom/badlogic/gdx/files/FileHandle;

.field public final m:I

.field public final n:I

.field public o:J

.field public p:J

.field public q:I

.field public s:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ActionResolver;II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/Game;-><init>(Lcom/prineside/tdi2/ActionResolver;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->o:J

    iput-wide v0, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->p:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->q:I

    iput p1, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->s:I

    iput p2, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->m:I

    iput p3, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->n:I

    return-void
.end method


# virtual methods
.method public checkServerHalted()Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "halt-net.txt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeadlessReplayValidationGame"

    const-string v1, "halt-net.txt found, exiting"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "halted"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessNetTestingGame;->writeServerStatus(Ljava/lang/String;)V

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
    .locals 6

    invoke-super {p0}, Lcom/prineside/tdi2/Game;->create()V

    const-string v0, "HeadlessReplayValidationGame"

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

    goto :goto_0

    :cond_0
    const-string v1, "fully loaded!"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "loaded"

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/HeadlessNetTestingGame;->writeServerStatus(Ljava/lang/String;)V

    const-string v1, "trying to start the server..."

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/esotericsoftware/kryonet/Server;

    invoke-direct {v1}, Lcom/esotericsoftware/kryonet/Server;-><init>()V

    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/Server;->start()V

    :try_start_0
    iget v2, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->m:I

    iget v3, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->n:I

    invoke-virtual {v1, v2, v3}, Lcom/esotericsoftware/kryonet/Server;->bind(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "failed to bind to the socket"

    invoke-static {v0, v3, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :goto_1
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->networkManager:Lcom/prineside/tdi2/managers/NetworkManager;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/Server;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/NetworkManager;->prepareMultiplayerKryo(Lcom/esotericsoftware/kryo/Kryo;)V

    new-instance v2, Lcom/prineside/tdi2/HeadlessNetTestingGame$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/HeadlessNetTestingGame$1;-><init>(Lcom/prineside/tdi2/HeadlessNetTestingGame;)V

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryonet/Server;->addListener(Lcom/esotericsoftware/kryonet/Listener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server started, listening on ports "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / tce:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->o:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " / tcrr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->p:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " / mc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "running|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->o:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->p:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/HeadlessNetTestingGame;->writeServerStatus(Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const-string v1, "server shut down"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessNetTestingGame;->writeServerStatus(Ljava/lang/String;)V

    return-void
.end method

.method public writeServerStatus(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->l:Lcom/badlogic/gdx/files/FileHandle;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "status-net-test.txt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->l:Lcom/badlogic/gdx/files/FileHandle;

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

    iget-object v3, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame;->l:Lcom/badlogic/gdx/files/FileHandle;

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
