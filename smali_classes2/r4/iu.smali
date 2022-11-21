.class public final Lr4/iu;
.super Lr4/xu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/xu<",
        "Lr4/we0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lr4/wu;


# direct methods
.method public constructor <init>(Lr4/wu;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lr4/iu;->c:Lr4/wu;

    iput-object p2, p0, Lr4/iu;->b:Landroid/app/Activity;

    invoke-direct {p0}, Lr4/xu;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/iu;->b:Landroid/app/Activity;

    const-string v1, "ad_overlay"

    invoke-static {v0, v1}, Lr4/wu;->g(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/iu;->b:Landroid/app/Activity;

    invoke-static {v0}, Lr4/rz;->a(Landroid/content/Context;)V

    sget-object v0, Lr4/rz;->W6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lr4/iu;->b:Landroid/app/Activity;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    iget-object v1, p0, Lr4/iu;->b:Landroid/app/Activity;

    const-string v2, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl"

    sget-object v3, Lr4/hu;->a:Lr4/em0;

    invoke-static {v1, v2, v3}, Lr4/gm0;->a(Landroid/content/Context;Ljava/lang/String;Lr4/em0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/ze0;

    invoke-interface {v1, v0}, Lr4/ze0;->M(Lf4/a;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lr4/ve0;->f7(Landroid/os/IBinder;)Lr4/we0;

    move-result-object v0
    :try_end_0
    .catch Lr4/fm0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    iget-object v1, p0, Lr4/iu;->c:Lr4/wu;

    iget-object v2, p0, Lr4/iu;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lr4/vf0;->c(Landroid/content/Context;)Lr4/xf0;

    move-result-object v2

    invoke-static {v1, v2}, Lr4/wu;->e(Lr4/wu;Lr4/xf0;)Lr4/xf0;

    iget-object v1, p0, Lr4/iu;->c:Lr4/wu;

    invoke-static {v1}, Lr4/wu;->f(Lr4/wu;)Lr4/xf0;

    move-result-object v1

    const-string v2, "ClientApiBroker.createAdOverlay"

    invoke-interface {v1, v0, v2}, Lr4/xf0;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lr4/iu;->c:Lr4/wu;

    invoke-static {v0}, Lr4/wu;->d(Lr4/wu;)Lr4/te0;

    move-result-object v0

    iget-object v1, p0, Lr4/iu;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lr4/te0;->c(Landroid/app/Activity;)Lr4/we0;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final bridge synthetic c(Lr4/fw;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/iu;->b:Landroid/app/Activity;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lr4/fw;->U(Lf4/a;)Lr4/we0;

    move-result-object p1

    return-object p1
.end method
