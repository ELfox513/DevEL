.class public final Lr4/qt1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/o60;


# direct methods
.method public constructor <init>(Lr4/o60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qt1;->a:Lr4/o60;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "initialize"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final b(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "creation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "nativeObjectCreated"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final c(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "creation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "nativeObjectNotCreated"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final d(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "interstitial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onNativeAdObjectNotAvailable"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final e(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "interstitial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onAdLoaded"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final f(JI)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "interstitial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onAdFailedToLoad"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->c(Lr4/ot1;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final g(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "interstitial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onAdOpened"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final h(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "interstitial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onAdClicked"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lr4/qt1;->a:Lr4/o60;

    invoke-static {v0}, Lr4/ot1;->f(Lr4/ot1;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lr4/o60;->u(Ljava/lang/String;)V

    return-void
.end method

.method public final i(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "interstitial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onAdClosed"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final j(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onNativeAdObjectNotAvailable"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final k(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onRewardedAdLoaded"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final l(JI)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onRewardedAdFailedToLoad"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->c(Lr4/ot1;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final m(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onRewardedAdOpened"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final n(JI)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onRewardedAdFailedToShow"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->c(Lr4/ot1;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final o(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onRewardedAdClosed"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final p(JLr4/vh0;)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onUserEarnedReward"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p3}, Lr4/vh0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->d(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p3}, Lr4/vh0;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->e(Lr4/ot1;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final q(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onAdImpression"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final r(J)V
    .locals 3

    new-instance v0, Lr4/ot1;

    const-string v1, "rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ot1;-><init>(Ljava/lang/String;Lr4/pt1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/ot1;->a(Lr4/ot1;Ljava/lang/Long;)Ljava/lang/Long;

    const-string p1, "onAdClicked"

    invoke-static {v0, p1}, Lr4/ot1;->b(Lr4/ot1;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/qt1;->s(Lr4/ot1;)V

    return-void
.end method

.method public final s(Lr4/ot1;)V
    .locals 2

    invoke-static {p1}, Lr4/ot1;->f(Lr4/ot1;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Dispatching AFMA event on publisher webview: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lr4/cm0;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/qt1;->a:Lr4/o60;

    invoke-interface {v0, p1}, Lr4/o60;->u(Ljava/lang/String;)V

    return-void
.end method
