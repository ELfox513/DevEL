.class Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->playCachedMusic(Lcom/prineside/tdi2/ibxm/Module;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager$1;->a:Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/badlogic/gdx/audio/Music;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager$1;->a:Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->v(Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->stop()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager$1;->a:Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->v(Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager$1;->a:Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->w(Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;Lcom/badlogic/gdx/audio/Music;)Lcom/badlogic/gdx/audio/Music;

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager$1;->a:Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->x(Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager$1;->a:Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;->x(Lcom/prineside/tdi2/managers/music/DesktopCachedMusicManager;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/audio/Music;->play()V

    return-void
.end method
