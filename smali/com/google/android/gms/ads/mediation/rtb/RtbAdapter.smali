.class public abstract Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;
.super Ld3/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld3/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract collectSignals(Lf3/a;Lf3/b;)V
    .param p1    # Lf3/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lf3/b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
.end method

.method public loadRtbBannerAd(Ld3/h;Ld3/d;)V
    .locals 0
    .param p1    # Ld3/h;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ld3/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/h;",
            "Ld3/d<",
            "Ld3/g;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ld3/a;->loadBannerAd(Ld3/h;Ld3/d;)V

    return-void
.end method

.method public loadRtbInterscrollerAd(Ld3/h;Ld3/d;)V
    .locals 3
    .param p1    # Ld3/h;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ld3/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/h;",
            "Ld3/d<",
            "Ld3/k;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Lt2/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " does not support interscroller ads."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    const-string v2, "com.google.android.gms.ads"

    invoke-direct {p1, v1, v0, v2}, Lt2/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ld3/d;->a(Lt2/a;)V

    return-void
.end method

.method public loadRtbInterstitialAd(Ld3/m;Ld3/d;)V
    .locals 0
    .param p1    # Ld3/m;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ld3/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/m;",
            "Ld3/d<",
            "Ld3/l;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ld3/a;->loadInterstitialAd(Ld3/m;Ld3/d;)V

    return-void
.end method

.method public loadRtbNativeAd(Ld3/o;Ld3/d;)V
    .locals 0
    .param p1    # Ld3/o;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ld3/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/o;",
            "Ld3/d<",
            "Ld3/v;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ld3/a;->loadNativeAd(Ld3/o;Ld3/d;)V

    return-void
.end method

.method public loadRtbRewardedAd(Ld3/r;Ld3/d;)V
    .locals 0
    .param p1    # Ld3/r;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ld3/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/r;",
            "Ld3/d<",
            "Ld3/q;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ld3/a;->loadRewardedAd(Ld3/r;Ld3/d;)V

    return-void
.end method

.method public loadRtbRewardedInterstitialAd(Ld3/r;Ld3/d;)V
    .locals 0
    .param p1    # Ld3/r;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ld3/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/r;",
            "Ld3/d<",
            "Ld3/q;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ld3/a;->loadRewardedInterstitialAd(Ld3/r;Ld3/d;)V

    return-void
.end method
