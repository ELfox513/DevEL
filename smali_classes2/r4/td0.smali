.class public final Lr4/td0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/q;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbye;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbye;)V
    .locals 0

    iput-object p1, p0, Lr4/td0;->a:Lcom/google/android/gms/internal/ads/zzbye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A2()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final C6(I)V
    .locals 1

    const-string p1, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/td0;->a:Lcom/google/android/gms/internal/ads/zzbye;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbye;->b(Lcom/google/android/gms/internal/ads/zzbye;)Ld3/n;

    move-result-object p1

    iget-object v0, p0, Lr4/td0;->a:Lcom/google/android/gms/internal/ads/zzbye;

    invoke-interface {p1, v0}, Ld3/n;->p(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 1

    const-string v0, "Delay close AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e3()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final j0()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/td0;->a:Lcom/google/android/gms/internal/ads/zzbye;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbye;->b(Lcom/google/android/gms/internal/ads/zzbye;)Ld3/n;

    move-result-object v0

    iget-object v1, p0, Lr4/td0;->a:Lcom/google/android/gms/internal/ads/zzbye;

    invoke-interface {v0, v1}, Ld3/n;->s(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
