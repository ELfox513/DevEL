.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidAudio;


# instance fields
.field public final a:Landroid/media/SoundPool;

.field public final b:Landroid/media/AudioManager;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/backends/android/AndroidMusic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    iget-boolean v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->disableAudio:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x3

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    iget p2, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxSimultaneousSounds:I

    invoke-virtual {v0, p2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    iget p2, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxSimultaneousSounds:I

    const/4 v1, 0x0

    invoke-direct {v0, p2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    :goto_0
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->b:Landroid/media/AudioManager;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->b:Landroid/media/AudioManager;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaPlayer;
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-gt v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/backends/android/h;->a(Landroid/media/MediaPlayer;Landroid/media/AudioAttributes;)V

    :goto_0
    return-object v0
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->dispose()V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public newAudioDevice(IZ)Lcom/badlogic/gdx/audio/AudioDevice;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;-><init>(IZ)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Android audio is not enabled by the application config."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newAudioRecorder(IZ)Lcom/badlogic/gdx/audio/AudioRecorder;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;-><init>(IZ)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Android audio is not enabled by the application config."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a()Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->type()Lcom/badlogic/gdx/Files$FileType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-direct {v0, p0, v7}, Lcom/badlogic/gdx/backends/android/AndroidMusic;-><init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading audio file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nNote: Internal audio files must be placed in the assets directory."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-direct {v0, p0, v7}, Lcom/badlogic/gdx/backends/android/AndroidMusic;-><init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading audio file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Android audio is not enabled by the application config."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newMusic(Ljava/io/FileDescriptor;)Lcom/badlogic/gdx/audio/Music;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    new-instance p1, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-direct {p1, p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidMusic;-><init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Error loading audio from FileDescriptor"

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Android audio is not enabled by the application config."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->type()Lcom/badlogic/gdx/Files$FileType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    const/4 v3, 0x1

    const-string v4, "Error loading audio file: "

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidSound;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->b:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v3

    invoke-direct {v1, v2, v5, v3}, Lcom/badlogic/gdx/backends/android/AndroidSound;-><init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nNote: Internal audio files must be placed in the assets directory."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidSound;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v2, v5, v0}, Lcom/badlogic/gdx/backends/android/AndroidSound;-><init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Android audio is not enabled by the application config."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyMusicDisposed(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V
    .locals 1

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->pause()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;->k:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;->k:Z

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    iget-boolean v2, v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;->k:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->play()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;->a:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
