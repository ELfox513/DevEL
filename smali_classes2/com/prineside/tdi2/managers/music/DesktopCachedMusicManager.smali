.class public Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;
.super Lcom/prineside/tdi2/managers/music/CachedMusicManager;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/MusicManager$Serializer;
.end annotation


# instance fields
.field public J:Lcom/badlogic/gdx/audio/Music;

.field public K:Lcom/badlogic/gdx/audio/Music;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;-><init>()V

    return-void
.end method

.method public static synthetic v(Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;)Lcom/badlogic/gdx/audio/Music;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->J:Lcom/badlogic/gdx/audio/Music;

    return-object p0
.end method

.method public static synthetic w(Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;Lcom/badlogic/gdx/audio/Music;)Lcom/badlogic/gdx/audio/Music;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->J:Lcom/badlogic/gdx/audio/Music;

    return-object p1
.end method

.method public static synthetic x(Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;)Lcom/badlogic/gdx/audio/Music;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->K:Lcom/badlogic/gdx/audio/Music;

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

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->K:Lcom/badlogic/gdx/audio/Music;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->c()F

    move-result v0

    mul-float p2, p2, v0

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->K:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->K:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->play()V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->J:Lcom/badlogic/gdx/audio/Music;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->c()F

    move-result v1

    mul-float v1, v1, p2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->K:Lcom/badlogic/gdx/audio/Music;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->c()F

    move-result v0

    mul-float p2, p2, v0

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->J:Lcom/badlogic/gdx/audio/Music;

    new-instance p2, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager$1;

    invoke-direct {p2, p0}, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager$1;-><init>(Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;)V

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->K:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->K:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->pause()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->J:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->play()V

    :goto_1
    return-void
.end method

.method public setBackendVolume(F)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->J:Lcom/badlogic/gdx/audio/Music;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->c()F

    move-result v1

    mul-float v1, v1, p1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->K:Lcom/badlogic/gdx/audio/Music;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->c()F

    move-result v1

    mul-float p1, p1, v1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    :cond_1
    return-void
.end method

.method public stopMusic()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->J:Lcom/badlogic/gdx/audio/Music;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->J:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->J:Lcom/badlogic/gdx/audio/Music;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->K:Lcom/badlogic/gdx/audio/Music;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->K:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->K:Lcom/badlogic/gdx/audio/Music;

    :cond_1
    invoke-super {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->stopMusic()V

    return-void
.end method
