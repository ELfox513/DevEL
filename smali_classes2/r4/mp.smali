.class public final Lr4/mp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr4/pc;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/rz;->a(Landroid/content/Context;)V

    sget-object v0, Lr4/rz;->o3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    sget-object v1, Lr4/jp;->a:Lr4/em0;

    invoke-static {p1, v0, v1}, Lr4/gm0;->a(Landroid/content/Context;Ljava/lang/String;Lr4/em0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/pc;

    iput-object v0, p0, Lr4/mp;->a:Lr4/pc;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    iget-object v0, p0, Lr4/mp;->a:Lr4/pc;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p1

    const-string v1, "GMA_SDK"

    invoke-interface {v0, p1, v1}, Lr4/pc;->V4(Lf4/a;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/mp;->b:Z
    :try_end_0
    .catch Lr4/fm0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Cannot dynamite load clearcut"

    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
