.class public final Lr4/mc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/c;
.implements Ld2/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Ld2/f;",
        "SERVER_PARAMETERS:",
        "Ld2/e;",
        ">",
        "Ljava/lang/Object;",
        "Ld2/c;",
        "Ld2/d;"
    }
.end annotation


# instance fields
.field public final a:Lr4/lb0;


# direct methods
.method public constructor <init>(Lr4/lb0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/mc0;->a:Lr4/lb0;

    return-void
.end method

.method public static synthetic c(Lr4/mc0;)Lr4/lb0;
    .locals 0

    iget-object p0, p0, Lr4/mc0;->a:Lr4/lb0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lc2/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;",
            "Lc2/a;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2f

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onFailedToReceiveAd with error "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {}, Lr4/vl0;->n()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lr4/vl0;->b:Landroid/os/Handler;

    new-instance v0, Lr4/lc0;

    invoke-direct {v0, p0, p2}, Lr4/lc0;-><init>(Lr4/mc0;Lc2/a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lr4/mc0;->a:Lr4/lb0;

    invoke-static {p2}, Lr4/nc0;->a(Lc2/a;)I

    move-result p2

    invoke-interface {p1, p2}, Lr4/lb0;->W(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lcom/google/ads/mediation/MediationBannerAdapter;Lc2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;",
            "Lc2/a;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Adapter called onFailedToReceiveAd with error. "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {}, Lr4/vl0;->n()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lr4/vl0;->b:Landroid/os/Handler;

    new-instance v0, Lr4/kc0;

    invoke-direct {v0, p0, p2}, Lr4/kc0;-><init>(Lr4/mc0;Lc2/a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lr4/mc0;->a:Lr4/lb0;

    invoke-static {p2}, Lr4/nc0;->a(Lc2/a;)I

    move-result p2

    invoke-interface {p1, p2}, Lr4/lb0;->W(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
