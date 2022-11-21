.class public final Lr4/jy;
.super Lr4/nv;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/ky;


# direct methods
.method public synthetic constructor <init>(Lr4/ky;Lr4/gy;)V
    .locals 0

    iput-object p1, p0, Lr4/jy;->a:Lr4/ky;

    invoke-direct {p0}, Lr4/nv;-><init>()V

    return-void
.end method


# virtual methods
.method public final U6(Lr4/tt;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lr4/jy;->V2(Lr4/tt;I)V

    return-void
.end method

.method public final V2(Lr4/tt;I)V
    .locals 0

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    sget-object p1, Lr4/vl0;->b:Landroid/os/Handler;

    new-instance p2, Lr4/hy;

    invoke-direct {p2, p0}, Lr4/hy;-><init>(Lr4/jy;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
