.class public Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;
.super Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;
.source "SourceFile"


# instance fields
.field public final k:Landroid/os/HandlerThread;

.field public final p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iget-boolean p1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->disableAudio:Z

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "libGDX Sound Management"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->k:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->p:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->p:Landroid/os/Handler;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->k:Landroid/os/HandlerThread;

    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->dispose()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->k:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousAndroidAudio;->p:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/backends/android/AsynchronousSound;-><init>(Lcom/badlogic/gdx/audio/Sound;Landroid/os/Handler;)V

    return-object v0
.end method
