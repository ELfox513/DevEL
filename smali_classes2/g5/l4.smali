.class public final Lg5/l4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg5/k4;


# direct methods
.method public constructor <init>(Lg5/k4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lg5/l4;->a:Lg5/k4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lg5/b5;->C(Landroid/content/Context;Lb5/o1;Ljava/lang/Long;)Lg5/b5;

    move-result-object v0

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    if-nez p2, :cond_0

    invoke-virtual {v1}, Lg5/q3;->r()Lg5/o3;

    move-result-object p1

    const-string p2, "Receiver called with null intent"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lg5/b5;->G()Lg5/b;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    const-string v2, "Local receiver got"

    invoke-virtual {v0, v2, p2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    const-string v1, "Starting wakeful intent."

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lg5/l4;->a:Lg5/k4;

    invoke-interface {v0, p1, p2}, Lg5/k4;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string p1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lg5/q3;->r()Lg5/o3;

    move-result-object p1

    const-string p2, "Install Referrer Broadcasts are deprecated"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
