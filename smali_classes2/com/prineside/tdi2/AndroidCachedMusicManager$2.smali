.class Lcom/prineside/tdi2/AndroidCachedMusicManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/AndroidCachedMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/AndroidCachedMusicManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/AndroidCachedMusicManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager$2;->a:Lcom/prineside/tdi2/AndroidCachedMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager$2;->a:Lcom/prineside/tdi2/AndroidCachedMusicManager;

    iget-object p1, p1, Lcom/prineside/tdi2/AndroidCachedMusicManager;->L:Lcom/prineside/tdi2/CachedAndroidMusic;

    invoke-virtual {p1}, Lcom/prineside/tdi2/CachedAndroidMusic;->dispose()V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager$2;->a:Lcom/prineside/tdi2/AndroidCachedMusicManager;

    new-instance v0, Lcom/prineside/tdi2/CachedAndroidMusic;

    iget-object v1, p1, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    iget-object v1, v1, Lcom/prineside/tdi2/CachedAndroidMusic;->fileHandle:Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/CachedAndroidMusic;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v0, p1, Lcom/prineside/tdi2/AndroidCachedMusicManager;->L:Lcom/prineside/tdi2/CachedAndroidMusic;

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager$2;->a:Lcom/prineside/tdi2/AndroidCachedMusicManager;

    iget-object v0, p1, Lcom/prineside/tdi2/AndroidCachedMusicManager;->L:Lcom/prineside/tdi2/CachedAndroidMusic;

    iget-object v0, v0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidCachedMusicManager;->w(Lcom/prineside/tdi2/AndroidCachedMusicManager;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidCachedMusicManager$2;->a:Lcom/prineside/tdi2/AndroidCachedMusicManager;

    iget-object v0, p1, Lcom/prineside/tdi2/AndroidCachedMusicManager;->K:Lcom/prineside/tdi2/CachedAndroidMusic;

    iget-object v0, v0, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    iget-object p1, p1, Lcom/prineside/tdi2/AndroidCachedMusicManager;->L:Lcom/prineside/tdi2/CachedAndroidMusic;

    iget-object p1, p1, Lcom/prineside/tdi2/CachedAndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method
