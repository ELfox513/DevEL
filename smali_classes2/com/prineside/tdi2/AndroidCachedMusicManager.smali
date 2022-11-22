.class public Lcom/prineside/tdi2/AndroidCachedMusicManager;
.super Lcom/prineside/tdi2/managers/music/CachedMusicManager;
.source "SourceFile"


# instance fields
.field public J:Lcom/prineside/tdi2/CachedAndroidMusic;

.field public K:Lcom/prineside/tdi2/CachedAndroidMusic;

.field public L:Lcom/prineside/tdi2/CachedAndroidMusic;

.field public M:F

.field public final N:Landroid/media/MediaPlayer$OnCompletionListener;

.field public final O:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/AndroidCachedMusicManager$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/AndroidCachedMusicManager$1;-><init>(Lcom/prineside/tdi2/AndroidCachedMusicManager;)V

    iput-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->N:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/prineside/tdi2/AndroidCachedMusicManager$2;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/AndroidCachedMusicManager$2;-><init>(Lcom/prineside/tdi2/AndroidCachedMusicManager;)V

    iput-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->O:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public static synthetic v(Lcom/prineside/tdi2/AndroidCachedMusicManager;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->N:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method public static synthetic w(Lcom/prineside/tdi2/AndroidCachedMusicManager;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->O:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method


# virtual methods
.method public playCachedMusic(Lcom/prineside/tdi2/ibxm/Module;F)V
    .locals 3

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->q(Lcom/prineside/tdi2/ibxm/Module;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->q(Lcom/prineside/tdi2/ibxm/Module;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/prineside/tdi2/CachedAndroidMusic;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/prineside/tdi2/CachedAndroidMusic;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    new-instance v1, Lcom/prineside/tdi2/CachedAndroidMusic;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/prineside/tdi2/CachedAndroidMusic;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->L:Lcom/prineside/tdi2/CachedAndroidMusic;

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    iget-object p1, p1, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    iget-object v1, v1, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    iget-object p1, p1, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->N:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/CachedAndroidMusic;->setVolume(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->L:Lcom/prineside/tdi2/CachedAndroidMusic;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/CachedAndroidMusic;->setVolume(F)V

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    invoke-virtual {p1}, Lcom/prineside/tdi2/CachedAndroidMusic;->play()V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/CachedAndroidMusic;->setVolume(F)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/prineside/tdi2/CachedAndroidMusic;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/prineside/tdi2/CachedAndroidMusic;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->J:Lcom/prineside/tdi2/CachedAndroidMusic;

    iget-object p1, p1, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    iget-object v0, v0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->J:Lcom/prineside/tdi2/CachedAndroidMusic;

    invoke-virtual {p1}, Lcom/prineside/tdi2/CachedAndroidMusic;->play()V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->J:Lcom/prineside/tdi2/CachedAndroidMusic;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/CachedAndroidMusic;->setVolume(F)V

    :goto_1
    return-void
.end method

.method public setBackendVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->J:Lcom/prineside/tdi2/CachedAndroidMusic;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/CachedAndroidMusic;->setVolume(F)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/CachedAndroidMusic;->setVolume(F)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->L:Lcom/prineside/tdi2/CachedAndroidMusic;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/CachedAndroidMusic;->setVolume(F)V

    :cond_2
    iput p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->M:F

    return-void
.end method

.method public stopMusic()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->J:Lcom/prineside/tdi2/CachedAndroidMusic;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/CachedAndroidMusic;->stop()V

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->J:Lcom/prineside/tdi2/CachedAndroidMusic;

    invoke-virtual {v0}, Lcom/prineside/tdi2/CachedAndroidMusic;->dispose()V

    iput-object v1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->J:Lcom/prineside/tdi2/CachedAndroidMusic;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/CachedAndroidMusic;->stop()V

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    invoke-virtual {v0}, Lcom/prineside/tdi2/CachedAndroidMusic;->dispose()V

    iput-object v1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->L:Lcom/prineside/tdi2/CachedAndroidMusic;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/prineside/tdi2/CachedAndroidMusic;->stop()V

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->L:Lcom/prineside/tdi2/CachedAndroidMusic;

    invoke-virtual {v0}, Lcom/prineside/tdi2/CachedAndroidMusic;->dispose()V

    iput-object v1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager;->L:Lcom/prineside/tdi2/CachedAndroidMusic;

    :cond_2
    invoke-super {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->stopMusic()V

    return-void
.end method
