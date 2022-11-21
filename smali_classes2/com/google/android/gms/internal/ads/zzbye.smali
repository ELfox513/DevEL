.class public final Lcom/google/android/gms/internal/ads/zzbye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Ld3/n;

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/internal/ads/zzbye;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbye;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/gms/internal/ads/zzbye;)Ld3/n;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbye;->b:Ld3/n;

    return-object p0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    const-string v0, "Destroying AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    const-string v0, "Pausing AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    const-string v0, "Resuming AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Ld3/n;Landroid/os/Bundle;Ld3/e;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbye;->b:Ld3/n;

    if-nez p2, :cond_0

    const-string p1, "Listener not set for mediation. Returning."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    invoke-static {}, Lc4/o;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lr4/q00;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "tab_url"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbye;->b:Ld3/n;

    invoke-interface {p1, p0, p4}, Ld3/n;->c(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_1
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbye;->a:Landroid/app/Activity;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbye;->c:Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbye;->b:Ld3/n;

    invoke-interface {p1, p0}, Ld3/n;->n(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void

    :cond_2
    const-string p1, "Default browser does not support custom tabs. Bailing out."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbye;->b:Ld3/n;

    invoke-interface {p1, p0, p4}, Ld3/n;->c(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_3
    const-string p1, "AdMobCustomTabs can only work with Activity context. Bailing out."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbye;->b:Ld3/n;

    invoke-interface {p1, p0, p4}, Ld3/n;->c(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void
.end method

.method public final showInterstitial()V
    .locals 13

    new-instance v0, Lo/c$a;

    invoke-direct {v0}, Lo/c$a;-><init>()V

    invoke-virtual {v0}, Lo/c$a;->a()Lo/c;

    move-result-object v0

    iget-object v1, v0, Lo/c;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbye;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v4, La3/e;

    iget-object v0, v0, Lo/c;->a:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1}, La3/e;-><init>(Landroid/content/Intent;La3/v;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v6, Lr4/td0;

    invoke-direct {v6, p0}, Lr4/td0;-><init>(Lcom/google/android/gms/internal/ads/zzbye;)V

    new-instance v1, Lr4/im0;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lr4/im0;-><init>(IIZZZ)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    move-object v8, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(La3/e;Lr4/gt;La3/q;La3/x;Lr4/im0;Lr4/cs0;Lr4/cf1;)V

    sget-object v1, Lb3/k2;->i:Lr4/c03;

    new-instance v2, Lr4/ud0;

    invoke-direct {v2, p0, v0}, Lr4/ud0;-><init>(Lcom/google/android/gms/internal/ads/zzbye;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->h()V

    return-void
.end method
