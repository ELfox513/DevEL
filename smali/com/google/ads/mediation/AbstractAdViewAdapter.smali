.class public abstract Lcom/google/ads/mediation/AbstractAdViewAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;
.implements Ld3/u;
.implements Lcom/google/android/gms/internal/ads/zzcoi;
.implements Ld3/y;


# static fields
.field public static final AD_UNIT_ID_PARAMETER:Ljava/lang/String; = "pubid"
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# instance fields
.field private adLoader:Lt2/e;

.field public mAdView:Lt2/i;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public mInterstitialAd:Lc3/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAdRequest(Landroid/content/Context;Ld3/e;Landroid/os/Bundle;Landroid/os/Bundle;)Lt2/f;
    .locals 3

    new-instance v0, Lt2/f$a;

    invoke-direct {v0}, Lt2/f$a;-><init>()V

    invoke-interface {p2}, Ld3/e;->f()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lt2/f$a;->f(Ljava/util/Date;)Lt2/f$a;

    :cond_0
    invoke-interface {p2}, Ld3/e;->k()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lt2/f$a;->g(I)Lt2/f$a;

    :cond_1
    invoke-interface {p2}, Ld3/e;->h()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lt2/f$a;->a(Ljava/lang/String;)Lt2/f$a;

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ld3/e;->j()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lt2/f$a;->d(Landroid/location/Location;)Lt2/f$a;

    :cond_3
    invoke-interface {p2}, Ld3/e;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {p1}, Lr4/vl0;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt2/f$a;->e(Ljava/lang/String;)Lt2/f$a;

    :cond_4
    invoke-interface {p2}, Ld3/e;->c()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    invoke-interface {p2}, Ld3/e;->c()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lt2/f$a;->h(Z)Lt2/f$a;

    :cond_6
    invoke-interface {p2}, Ld3/e;->e()Z

    move-result p1

    invoke-virtual {v0, p1}, Lt2/f$a;->i(Z)Lt2/f$a;

    const-class p1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p0, p3, p4}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->buildExtrasBundle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lt2/f$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)Lt2/f$a;

    invoke-virtual {v0}, Lt2/f$a;->c()Lt2/f;

    move-result-object p1

    return-object p1
.end method

.method public abstract buildExtrasBundle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "pubid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lt2/i;

    return-object v0
.end method

.method public getInterstitialAd()Lc3/a;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lc3/a;

    return-object v0
.end method

.method public getInterstitialAdapterInfo()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Ld3/x;

    invoke-direct {v0}, Ld3/x;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld3/x;->a(I)Ld3/x;

    invoke-virtual {v0}, Ld3/x;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getVideoController()Lr4/lx;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lt2/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/i;->e()Lt2/v;

    move-result-object v0

    invoke-virtual {v0}, Lt2/v;->c()Lr4/lx;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public newAdLoader(Landroid/content/Context;Ljava/lang/String;)Lt2/e$a;
    .locals 1

    new-instance v0, Lt2/e$a;

    invoke-direct {v0, p1, p2}, Lt2/e$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lt2/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/k;->a()V

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lt2/i;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lc3/a;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lc3/a;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->adLoader:Lt2/e;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->adLoader:Lt2/e;

    :cond_2
    return-void
.end method

.method public onImmersiveModeUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lc3/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc3/a;->c(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lt2/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/k;->c()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lt2/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt2/k;->d()V

    :cond_0
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Ld3/i;Landroid/os/Bundle;Lt2/g;Ld3/e;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ld3/i;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lt2/g;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Ld3/e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    new-instance v0, Lt2/i;

    invoke-direct {v0, p1}, Lt2/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lt2/i;

    new-instance v1, Lt2/g;

    invoke-virtual {p4}, Lt2/g;->c()I

    move-result v2

    invoke-virtual {p4}, Lt2/g;->a()I

    move-result p4

    invoke-direct {v1, v2, p4}, Lt2/g;-><init>(II)V

    invoke-virtual {v0, v1}, Lt2/k;->setAdSize(Lt2/g;)V

    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lt2/i;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lt2/k;->setAdUnitId(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lt2/i;

    new-instance v0, Ld2/h;

    invoke-direct {v0, p0, p2}, Ld2/h;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Ld3/i;)V

    invoke-virtual {p4, v0}, Lt2/k;->setAdListener(Lt2/c;)V

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mAdView:Lt2/i;

    invoke-virtual {p0, p1, p5, p6, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->buildAdRequest(Landroid/content/Context;Ld3/e;Landroid/os/Bundle;Landroid/os/Bundle;)Lt2/f;

    move-result-object p1

    invoke-virtual {p2, p1}, Lt2/k;->b(Lt2/f;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Ld3/n;Landroid/os/Bundle;Ld3/e;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ld3/n;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Ld3/e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->buildAdRequest(Landroid/content/Context;Ld3/e;Landroid/os/Bundle;Landroid/os/Bundle;)Lt2/f;

    move-result-object p3

    new-instance p4, Ld2/i;

    invoke-direct {p4, p0, p2}, Ld2/i;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Ld3/n;)V

    invoke-static {p1, v0, p3, p4}, Lc3/a;->a(Landroid/content/Context;Ljava/lang/String;Lt2/f;Lc3/b;)V

    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Ld3/p;Landroid/os/Bundle;Ld3/s;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ld3/p;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Ld3/s;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    new-instance v0, Ld2/k;

    invoke-direct {v0, p0, p2}, Ld2/k;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Ld3/p;)V

    const-string p2, "pubid"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->newAdLoader(Landroid/content/Context;Ljava/lang/String;)Lt2/e$a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lt2/e$a;->d(Lt2/c;)Lt2/e$a;

    move-result-object p2

    invoke-interface {p4}, Ld3/s;->i()Lv2/e;

    move-result-object v1

    invoke-virtual {p2, v1}, Lt2/e$a;->f(Lv2/e;)Lt2/e$a;

    invoke-interface {p4}, Ld3/s;->b()Lg3/d;

    move-result-object v1

    invoke-virtual {p2, v1}, Lt2/e$a;->e(Lg3/d;)Lt2/e$a;

    invoke-interface {p4}, Ld3/s;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lt2/e$a;->c(Lv2/h$a;)Lt2/e$a;

    :cond_0
    invoke-interface {p4}, Ld3/s;->zza()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ld3/s;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p4}, Ld3/s;->a()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-virtual {p2, v2, v0, v3}, Lt2/e$a;->b(Ljava/lang/String;Lv2/f$b;Lv2/f$a;)Lt2/e$a;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lt2/e$a;->a()Lt2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->adLoader:Lt2/e;

    invoke-virtual {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->buildAdRequest(Landroid/content/Context;Ld3/e;Landroid/os/Bundle;Landroid/os/Bundle;)Lt2/f;

    move-result-object p1

    invoke-virtual {p2, p1}, Lt2/e;->a(Lt2/f;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lc3/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/a;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
