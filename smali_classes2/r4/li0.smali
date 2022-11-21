.class public final Lr4/li0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Lr4/fb0;)Lr4/yh0;
    .locals 4

    invoke-static {p0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl"

    sget-object v3, Lr4/ki0;->a:Lr4/em0;

    invoke-static {p0, v2, v3}, Lr4/gm0;->a(Landroid/content/Context;Ljava/lang/String;Lr4/em0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/ci0;

    const v2, 0xcbe6bb0

    invoke-virtual {p0, v0, p1, p2, v2}, Lr4/ci0;->b2(Lf4/a;Ljava/lang/String;Lr4/fb0;I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lr4/yh0;

    if-eqz p2, :cond_1

    check-cast p1, Lr4/yh0;

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    new-instance p1, Lr4/wh0;

    invoke-direct {p1, p0}, Lr4/wh0;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lr4/fm0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_2
    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
