.class public final Lr4/jc0;
.super Lr4/hb0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Ld2/f;",
        "SERVER_PARAMETERS:",
        "Ld2/e;",
        ">",
        "Lr4/hb0;"
    }
.end annotation


# instance fields
.field public final a:Ld2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld2/b<",
            "TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
        }
    .end annotation
.end field

.field public final b:Ld2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TNETWORK_EXTRAS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld2/b;Ld2/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/b<",
            "TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;TNETWORK_EXTRAS;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/hb0;-><init>()V

    iput-object p1, p0, Lr4/jc0;->a:Ld2/b;

    iput-object p2, p0, Lr4/jc0;->b:Ld2/f;

    return-void
.end method

.method public static final g7(Lr4/tt;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/tt;->q:Z

    if-nez p0, :cond_1

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {}, Lr4/vl0;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final D0()Lr4/qb0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final D4(Lf4/a;)V
    .locals 0

    return-void
.end method

.method public final F2(Lf4/a;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V
    .locals 0

    return-void
.end method

.method public final G0(Lf4/a;)V
    .locals 0

    return-void
.end method

.method public final I()Lr4/rd0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final N2(Lf4/a;Lr4/yt;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lr4/jc0;->f6(Lf4/a;Lr4/yt;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V

    return-void
.end method

.method public final O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final O2(Lf4/a;Lr4/k70;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/a;",
            "Lr4/k70;",
            "Ljava/util/List<",
            "Lr4/q70;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final P()Lr4/lx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final U5(Lr4/tt;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final X()Lr4/rd0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final Z()Lr4/rb0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a2(Lf4/a;Lr4/tt;Ljava/lang/String;Lr4/qh0;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a7(Lf4/a;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V
    .locals 0

    return-void
.end method

.method public final c4(Lf4/a;)V
    .locals 0

    return-void
.end method

.method public final d()Lf4/a;
    .locals 3

    iget-object v0, p0, Lr4/jc0;->a:Ld2/b;

    instance-of v1, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not a MediationBannerAdapter: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lr4/jc0;->a:Ld2/b;

    instance-of v1, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not a MediationInterstitialAdapter: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "Showing interstitial from adapter."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lr4/jc0;->a:Ld2/b;

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final f6(Lf4/a;Lr4/yt;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V
    .locals 7

    iget-object p5, p0, Lr4/jc0;->a:Ld2/b;

    instance-of v0, p5, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v0, :cond_1

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Not a MediationBannerAdapter: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_1
    const-string p5, "Requesting banner ad from adapter."

    invoke-static {p5}, Lr4/cm0;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object p5, p0, Lr4/jc0;->a:Ld2/b;

    move-object v0, p5

    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    new-instance v1, Lr4/mc0;

    invoke-direct {v1, p6}, Lr4/mc0;-><init>(Lr4/lb0;)V

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p0, p4}, Lr4/jc0;->f7(Ljava/lang/String;)Ld2/e;

    move-result-object v3

    const/4 p1, 0x6

    new-array p4, p1, [Lc2/c;

    sget-object p5, Lc2/c;->b:Lc2/c;

    const/4 p6, 0x0

    aput-object p5, p4, p6

    sget-object p5, Lc2/c;->c:Lc2/c;

    const/4 v4, 0x1

    aput-object p5, p4, v4

    const/4 p5, 0x2

    sget-object v4, Lc2/c;->d:Lc2/c;

    aput-object v4, p4, p5

    const/4 p5, 0x3

    sget-object v4, Lc2/c;->e:Lc2/c;

    aput-object v4, p4, p5

    const/4 p5, 0x4

    sget-object v4, Lc2/c;->f:Lc2/c;

    aput-object v4, p4, p5

    const/4 p5, 0x5

    sget-object v4, Lc2/c;->g:Lc2/c;

    aput-object v4, p4, p5

    :goto_1
    if-ge p6, p1, :cond_3

    aget-object p5, p4, p6

    invoke-virtual {p5}, Lc2/c;->b()I

    move-result p5

    iget v4, p2, Lr4/yt;->p:I

    if-ne p5, v4, :cond_2

    aget-object p5, p4, p6

    invoke-virtual {p5}, Lc2/c;->a()I

    move-result p5

    iget v4, p2, Lr4/yt;->b:I

    if-ne p5, v4, :cond_2

    aget-object p1, p4, p6

    goto :goto_2

    :cond_2
    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lc2/c;

    iget p4, p2, Lr4/yt;->p:I

    iget p5, p2, Lr4/yt;->b:I

    iget-object p2, p2, Lr4/yt;->a:Ljava/lang/String;

    invoke-static {p4, p5, p2}, Lt2/x;->a(IILjava/lang/String;)Lt2/g;

    move-result-object p2

    invoke-direct {p1, p2}, Lc2/c;-><init>(Lt2/g;)V

    :goto_2
    move-object v4, p1

    invoke-static {p3}, Lr4/jc0;->g7(Lr4/tt;)Z

    move-result p1

    invoke-static {p3, p1}, Lr4/nc0;->b(Lr4/tt;Z)Ld2/a;

    move-result-object v5

    iget-object v6, p0, Lr4/jc0;->b:Ld2/f;

    invoke-interface/range {v0 .. v6}, Lcom/google/ads/mediation/MediationBannerAdapter;->requestBannerAd(Ld2/c;Landroid/app/Activity;Ld2/e;Lc2/c;Ld2/a;Ld2/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final f7(Ljava/lang/String;)Ld2/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSERVER_PARAMETERS;"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    :cond_1
    iget-object v0, p0, Lr4/jc0;->a:Ld2/b;

    invoke-interface {v0}, Ld2/b;->getServerParametersType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/e;

    invoke-virtual {v0, p1}, Ld2/e;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final j()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/jc0;->a:Ld2/b;

    invoke-interface {v0}, Ld2/b;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j3(Z)V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final k0()Lr4/ob0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()V
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final l4(Lf4/a;Lr4/yt;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V
    .locals 0

    return-void
.end method

.method public final l5(Lf4/a;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;Lr4/d20;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/a;",
            "Lr4/tt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lr4/lb0;",
            "Lr4/d20;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final n()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final o5(Lf4/a;Lr4/qh0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/a;",
            "Lr4/qh0;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final q6(Lr4/tt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final r()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final t()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final t1(Lf4/a;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lr4/jc0;->w2(Lf4/a;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V

    return-void
.end method

.method public final v()Lr4/g30;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final w2(Lf4/a;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V
    .locals 6

    iget-object p4, p0, Lr4/jc0;->a:Ld2/b;

    instance-of v0, p4, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Not a MediationInterstitialAdapter: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_1
    const-string p4, "Requesting interstitial ad from adapter."

    invoke-static {p4}, Lr4/cm0;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object p4, p0, Lr4/jc0;->a:Ld2/b;

    move-object v0, p4

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    new-instance v1, Lr4/mc0;

    invoke-direct {v1, p5}, Lr4/mc0;-><init>(Lr4/lb0;)V

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p0, p3}, Lr4/jc0;->f7(Ljava/lang/String;)Ld2/e;

    move-result-object v3

    invoke-static {p2}, Lr4/jc0;->g7(Lr4/tt;)Z

    move-result p1

    invoke-static {p2, p1}, Lr4/nc0;->b(Lr4/tt;Z)Ld2/a;

    move-result-object v4

    iget-object v5, p0, Lr4/jc0;->b:Ld2/f;

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Ld2/d;Landroid/app/Activity;Ld2/e;Ld2/a;Ld2/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final y()Lr4/ub0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
