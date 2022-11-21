.class public final Lcom/google/ads/mediation/customevent/CustomEventAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerAdapter<",
        "Le3/c;",
        "Le2/c;",
        ">;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
        "Le3/c;",
        "Le2/c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/google/ads/mediation/customevent/CustomEventBanner;

.field public c:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2e

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not instantiate custom event adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr4/cm0;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->b:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBanner;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->c:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;->destroy()V

    :cond_1
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Le3/c;",
            ">;"
        }
    .end annotation

    const-class v0, Le3/c;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a:Landroid/view/View;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Le2/c;",
            ">;"
        }
    .end annotation

    const-class v0, Le2/c;

    return-object v0
.end method

.method public bridge synthetic requestBannerAd(Ld2/c;Landroid/app/Activity;Ld2/e;Lc2/c;Ld2/a;Ld2/f;)V
    .locals 0
    .param p1    # Ld2/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ld2/e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lc2/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Ld2/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Ld2/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    check-cast p3, Le2/c;

    check-cast p6, Le3/c;

    invoke-virtual/range {p0 .. p6}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->requestBannerAd(Ld2/c;Landroid/app/Activity;Le2/c;Lc2/c;Ld2/a;Le3/c;)V

    return-void
.end method

.method public requestBannerAd(Ld2/c;Landroid/app/Activity;Le2/c;Lc2/c;Ld2/a;Le3/c;)V
    .locals 8
    .param p1    # Ld2/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Le2/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lc2/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Ld2/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Le3/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p3, Le2/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/customevent/CustomEventBanner;

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->b:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    if-nez v0, :cond_0

    sget-object p2, Lc2/a;->p:Lc2/a;

    invoke-interface {p1, p0, p2}, Ld2/c;->b(Lcom/google/ads/mediation/MediationBannerAdapter;Lc2/a;)V

    return-void

    :cond_0
    if-nez p6, :cond_1

    const/4 p6, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p3, Le2/c;->a:Ljava/lang/String;

    invoke-virtual {p6, v0}, Le3/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    :goto_0
    move-object v7, p6

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->b:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    new-instance v1, Le2/d;

    invoke-direct {v1, p0, p1}, Le2/d;-><init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Ld2/c;)V

    iget-object v3, p3, Le2/c;->a:Ljava/lang/String;

    iget-object v4, p3, Le2/c;->c:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/google/ads/mediation/customevent/CustomEventBanner;->requestBannerAd(Le2/a;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lc2/c;Ld2/a;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic requestInterstitialAd(Ld2/d;Landroid/app/Activity;Ld2/e;Ld2/a;Ld2/f;)V
    .locals 0
    .param p1    # Ld2/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ld2/e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Ld2/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Ld2/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    check-cast p3, Le2/c;

    check-cast p5, Le3/c;

    invoke-virtual/range {p0 .. p5}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->requestInterstitialAd(Ld2/d;Landroid/app/Activity;Le2/c;Ld2/a;Le3/c;)V

    return-void
.end method

.method public requestInterstitialAd(Ld2/d;Landroid/app/Activity;Le2/c;Ld2/a;Le3/c;)V
    .locals 7
    .param p1    # Ld2/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Le2/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Ld2/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Le3/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p3, Le2/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->c:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    if-nez v0, :cond_0

    sget-object p2, Lc2/a;->p:Lc2/a;

    invoke-interface {p1, p0, p2}, Ld2/d;->a(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lc2/a;)V

    return-void

    :cond_0
    if-nez p5, :cond_1

    const/4 p5, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p3, Le2/c;->a:Ljava/lang/String;

    invoke-virtual {p5, v0}, Le3/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    :goto_0
    move-object v6, p5

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->c:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    new-instance v1, Le2/e;

    invoke-direct {v1, p0, p0, p1}, Le2/e;-><init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/customevent/CustomEventAdapter;Ld2/d;)V

    iget-object v3, p3, Le2/c;->a:Ljava/lang/String;

    iget-object v4, p3, Le2/c;->c:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;->requestInterstitialAd(Le2/b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ld2/a;Ljava/lang/Object;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->c:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;->showInterstitial()V

    return-void
.end method
