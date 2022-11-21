.class Lcom/prineside/tdi2/managers/music/CachedMusicManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/music/CachedMusicManager;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/music/CachedMusicManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$3;->a:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;)I
    .locals 0

    iget-object p1, p1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->c:Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    iget p1, p1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->lastPlayTimestamp:I

    iget-object p2, p2, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->c:Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    iget p2, p2, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->lastPlayTimestamp:I

    invoke-static {p1, p2}, Lx1/i;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;

    check-cast p2, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$3;->compare(Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;)I

    move-result p1

    return p1
.end method
