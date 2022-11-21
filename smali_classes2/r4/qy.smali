.class public final Lr4/qy;
.super Lr4/xh0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/xh0;-><init>()V

    return-void
.end method

.method public static g7(Lr4/fi0;)V
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lr4/cm0;->c(Ljava/lang/String;)V

    sget-object v0, Lr4/vl0;->b:Landroid/os/Handler;

    new-instance v1, Lr4/py;

    invoke-direct {v1, p0}, Lr4/py;-><init>(Lr4/fi0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final A3(Lr4/bx;)V
    .locals 0

    return-void
.end method

.method public final D5(Lr4/bi0;)V
    .locals 0

    return-void
.end method

.method public final F3(Lr4/ni0;)V
    .locals 0

    return-void
.end method

.method public final L2(Lr4/tt;Lr4/fi0;)V
    .locals 0

    invoke-static {p2}, Lr4/qy;->g7(Lr4/fi0;)V

    return-void
.end method

.method public final M0(Z)V
    .locals 0

    return-void
.end method

.method public final M5(Lr4/ex;)V
    .locals 0

    return-void
.end method

.method public final b0(Lf4/a;)V
    .locals 0

    return-void
.end method

.method public final g()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final i1(Lf4/a;Z)V
    .locals 0

    return-void
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k()Lr4/vh0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lr4/hx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final r3(Lr4/tt;Lr4/fi0;)V
    .locals 0

    invoke-static {p2}, Lr4/qy;->g7(Lr4/fi0;)V

    return-void
.end method

.method public final t2(Lr4/hi0;)V
    .locals 0

    return-void
.end method
