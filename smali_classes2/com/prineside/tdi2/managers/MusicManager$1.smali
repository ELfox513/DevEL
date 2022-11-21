.class Lcom/prineside/tdi2/managers/MusicManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/MusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;)I
    .locals 0

    iget p2, p2, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;->lastUsed:I

    iget p1, p1, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;->lastUsed:I

    invoke-static {p2, p1}, Lx1/i;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;

    check-cast p2, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/MusicManager$1;->compare(Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;)I

    move-result p1

    return p1
.end method
