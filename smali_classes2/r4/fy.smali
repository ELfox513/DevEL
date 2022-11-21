.class public final Lr4/fy;
.super Lf4/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf4/c<",
        "Lr4/ow;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl"

    invoke-direct {p0, v0}, Lf4/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/ow;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lr4/ow;

    goto :goto_0

    :cond_1
    new-instance v0, Lr4/ow;

    invoke-direct {v0, p1}, Lr4/ow;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final c(Landroid/content/Context;)Lr4/nw;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v1

    invoke-virtual {p0, p1}, Lf4/c;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/ow;

    const v2, 0xcbe6bb0

    invoke-virtual {p1, v1, v2}, Lr4/ow;->b2(Lf4/a;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lr4/nw;

    if-eqz v2, :cond_1

    check-cast v1, Lr4/nw;

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v1, Lr4/lw;

    invoke-direct {v1, p1}, Lr4/lw;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lf4/c$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    const-string v1, "Could not get remote MobileAdsSettingManager."

    invoke-static {v1, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
