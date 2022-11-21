.class public Lt2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lr4/rx;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/rx;

    invoke-direct {v0}, Lr4/rx;-><init>()V

    iput-object v0, p0, Lt2/f$a;->a:Lr4/rx;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lr4/rx;->y(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lt2/f$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lt2/f$a;->a:Lr4/rx;

    invoke-virtual {v0, p1}, Lr4/rx;->w(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/lang/Class;Landroid/os/Bundle;)Lt2/f$a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lt2/f$a;"
        }
    .end annotation

    iget-object v0, p0, Lt2/f$a;->a:Lr4/rx;

    invoke-virtual {v0, p1, p2}, Lr4/rx;->x(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_emulatorLiveAds"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lt2/f$a;->a:Lr4/rx;

    const-string p2, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, p2}, Lr4/rx;->z(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public c()Lt2/f;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lt2/f;

    invoke-direct {v0, p0}, Lt2/f;-><init>(Lt2/f$a;)V

    return-object v0
.end method

.method public d(Landroid/location/Location;)Lt2/f$a;
    .locals 1
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lt2/f$a;->a:Lr4/rx;

    invoke-virtual {v0, p1}, Lr4/rx;->b(Landroid/location/Location;)V

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lt2/f$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lt2/f$a;->a:Lr4/rx;

    invoke-virtual {v0, p1}, Lr4/rx;->y(Ljava/lang/String;)V

    return-object p0
.end method

.method public final f(Ljava/util/Date;)Lt2/f$a;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lt2/f$a;->a:Lr4/rx;

    invoke-virtual {v0, p1}, Lr4/rx;->A(Ljava/util/Date;)V

    return-object p0
.end method

.method public final g(I)Lt2/f$a;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lt2/f$a;->a:Lr4/rx;

    invoke-virtual {v0, p1}, Lr4/rx;->a(I)V

    return-object p0
.end method

.method public final h(Z)Lt2/f$a;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lt2/f$a;->a:Lr4/rx;

    invoke-virtual {v0, p1}, Lr4/rx;->c(Z)V

    return-object p0
.end method

.method public final i(Z)Lt2/f$a;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lt2/f$a;->a:Lr4/rx;

    invoke-virtual {v0, p1}, Lr4/rx;->d(Z)V

    return-object p0
.end method
