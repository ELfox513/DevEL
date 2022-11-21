.class public final Ld2/j;
.super Lt2/l;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field public final b:Ld3/n;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Ld3/n;)V
    .locals 0

    invoke-direct {p0}, Lt2/l;-><init>()V

    iput-object p1, p0, Ld2/j;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Ld2/j;->b:Ld3/n;

    return-void
.end method


# virtual methods
.method public final onAdDismissedFullScreenContent()V
    .locals 2

    iget-object v0, p0, Ld2/j;->b:Ld3/n;

    iget-object v1, p0, Ld2/j;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Ld3/n;->p(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onAdShowedFullScreenContent()V
    .locals 2

    iget-object v0, p0, Ld2/j;->b:Ld3/n;

    iget-object v1, p0, Ld2/j;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Ld3/n;->s(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
