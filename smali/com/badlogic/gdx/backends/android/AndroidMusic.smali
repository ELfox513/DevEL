.class public Lcom/badlogic/gdx/backends/android/AndroidMusic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final a:Lcom/badlogic/gdx/backends/android/AndroidAudio;

.field public b:Landroid/media/MediaPlayer;

.field public d:Z

.field public k:Z

.field public p:F

.field public q:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->k:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->p:F

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->a:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->q:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->q:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->a:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->notifyMusicDisposed(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V

    goto :goto_1

    :catchall_0
    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidMusic"

    const-string v3, "error while disposing AndroidMusic instance, non-fatal"

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->q:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->a:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->notifyMusicDisposed(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getDuration()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getPosition()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->p:F

    return v0
.end method

.method public isLooping()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->q:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->k:Z

    return-void
.end method

.method public play()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->d:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->d:Z

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->q:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    return-void
.end method

.method public setPan(FF)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v0, v0, p2

    move p1, v0

    move v0, p2

    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v0, v0, p2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, p2

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput p2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->p:F

    return-void
.end method

.method public setPosition(F)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->d:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->d:Z

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->p:F

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->d:Z

    return-void
.end method
