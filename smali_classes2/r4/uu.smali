.class public final Lr4/uu;
.super Lr4/xu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/xu<",
        "Lr4/nw;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lr4/wu;


# direct methods
.method public constructor <init>(Lr4/wu;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lr4/uu;->c:Lr4/wu;

    iput-object p2, p0, Lr4/uu;->b:Landroid/content/Context;

    invoke-direct {p0}, Lr4/xu;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/uu;->b:Landroid/content/Context;

    const-string v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lr4/wu;->g(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lr4/oy;

    invoke-direct {v0}, Lr4/oy;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/uu;->b:Landroid/content/Context;

    invoke-static {v0}, Lr4/rz;->a(Landroid/content/Context;)V

    sget-object v0, Lr4/rz;->W6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lr4/uu;->b:Landroid/content/Context;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    iget-object v2, p0, Lr4/uu;->b:Landroid/content/Context;

    const-string v3, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl"

    sget-object v4, Lr4/tu;->a:Lr4/em0;

    invoke-static {v2, v3, v4}, Lr4/gm0;->a(Landroid/content/Context;Ljava/lang/String;Lr4/em0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/ow;

    const v3, 0xcbe6bb0

    invoke-virtual {v2, v0, v3}, Lr4/ow;->b2(Lf4/a;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lr4/nw;

    if-eqz v3, :cond_1

    check-cast v2, Lr4/nw;

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lr4/lw;

    invoke-direct {v2, v0}, Lr4/lw;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lr4/fm0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    iget-object v2, p0, Lr4/uu;->c:Lr4/wu;

    iget-object v3, p0, Lr4/uu;->b:Landroid/content/Context;

    invoke-static {v3}, Lr4/vf0;->c(Landroid/content/Context;)Lr4/xf0;

    move-result-object v3

    invoke-static {v2, v3}, Lr4/wu;->e(Lr4/wu;Lr4/xf0;)Lr4/xf0;

    iget-object v2, p0, Lr4/uu;->c:Lr4/wu;

    invoke-static {v2}, Lr4/wu;->f(Lr4/wu;)Lr4/xf0;

    move-result-object v2

    const-string v3, "ClientApiBroker.getMobileAdsSettingsManager"

    invoke-interface {v2, v0, v3}, Lr4/xf0;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lr4/uu;->c:Lr4/wu;

    invoke-static {v0}, Lr4/wu;->c(Lr4/wu;)Lr4/fy;

    move-result-object v0

    iget-object v1, p0, Lr4/uu;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lr4/fy;->c(Landroid/content/Context;)Lr4/nw;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public final bridge synthetic c(Lr4/fw;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/uu;->b:Landroid/content/Context;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    const v1, 0xcbe6bb0

    invoke-interface {p1, v0, v1}, Lr4/fw;->b4(Lf4/a;I)Lr4/nw;

    move-result-object p1

    return-object p1
.end method
