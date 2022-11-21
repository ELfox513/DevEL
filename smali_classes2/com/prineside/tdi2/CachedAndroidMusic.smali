.class public Lcom/prineside/tdi2/CachedAndroidMusic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/MusicManager$Serializer;
.end annotation


# instance fields
.field public a:F

.field public fileHandle:Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

.field public isPrepared:Z

.field public player:Landroid/media/MediaPlayer;

.field public wasPlaying:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->isPrepared:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->wasPlaying:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->a:F

    check-cast p1, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    iput-object p1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->fileHandle:Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    iget-object p1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->fileHandle:Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->type()Lcom/badlogic/gdx/Files$FileType;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    const-string v1, "Error loading audio file: "

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->fileHandle:Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    invoke-virtual {p1}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iget-object v2, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    iget-object p1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->fileHandle:Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nNote: Internal audio files must be placed in the assets directory."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->fileHandle:Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->fileHandle:Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

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

    iput-object v1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getDuration()F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

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

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

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

    iget v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->a:F

    return v0
.end method

.method public isLooping()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->wasPlaying:Z

    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->isPrepared:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->isPrepared:Z

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

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

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    .locals 0

    return-void
.end method

.method public setPan(FF)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    invoke-static {p1}, Ljava/lang/StrictMath;->abs(F)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v0, v0, p2

    move p1, v0

    move v0, p2

    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    invoke-static {p1}, Ljava/lang/StrictMath;->abs(F)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v0, v0, p2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, p2

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput p2, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->a:F

    return-void
.end method

.method public setPosition(F)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->isPrepared:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->isPrepared:Z

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

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

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput p1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->a:F

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->isPrepared:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iput-boolean v2, p0, Lcom/prineside/tdi2/CachedAndroidMusic;->isPrepared:Z

    return-void
.end method
