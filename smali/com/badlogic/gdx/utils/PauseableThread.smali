.class public Lcom/badlogic/gdx/utils/PauseableThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public b:Z

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->b:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->d:Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/PauseableThread;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->b:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->b:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    :goto_0
    monitor-enter p0

    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->d:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->d:Z

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PauseableThread;->onResume()V

    :cond_0
    return-void
.end method
