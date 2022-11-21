.class public final Ld2/i;
.super Lc3/b;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field public final b:Ld3/n;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Ld3/n;)V
    .locals 0

    invoke-direct {p0}, Lc3/b;-><init>()V

    iput-object p1, p0, Ld2/i;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Ld2/i;->b:Ld3/n;

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lt2/m;)V
    .locals 2

    iget-object v0, p0, Ld2/i;->b:Ld3/n;

    iget-object v1, p0, Ld2/i;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Ld3/n;->l(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lt2/a;)V

    return-void
.end method

.method public final bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lc3/a;

    iget-object v0, p0, Ld2/i;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p1, v0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lc3/a;

    new-instance v1, Ld2/j;

    iget-object v2, p0, Ld2/i;->b:Ld3/n;

    invoke-direct {v1, v0, v2}, Ld2/j;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Ld3/n;)V

    invoke-virtual {p1, v1}, Lc3/a;->b(Lt2/l;)V

    iget-object p1, p0, Ld2/i;->b:Ld3/n;

    iget-object v0, p0, Ld2/i;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {p1, v0}, Ld3/n;->n(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
