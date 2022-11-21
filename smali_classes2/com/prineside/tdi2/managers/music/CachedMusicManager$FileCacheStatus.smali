.class Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/music/CachedMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileCacheStatus"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/files/FileHandle;

.field public b:J

.field public c:Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

.field public final synthetic d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager;Lcom/prineside/tdi2/managers/music/CachedMusicManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;-><init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)V

    return-void
.end method
