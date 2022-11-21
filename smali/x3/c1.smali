.class public final Lx3/c1;
.super Lx3/s0;
.source "SourceFile"


# instance fields
.field public a:Lx3/c;

.field public final b:I


# direct methods
.method public constructor <init>(Lx3/c;I)V
    .locals 0

    invoke-direct {p0}, Lx3/s0;-><init>()V

    iput-object p1, p0, Lx3/c1;->a:Lx3/c;

    iput p2, p0, Lx3/c1;->b:I

    return-void
.end method


# virtual methods
.method public final D3(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lx3/c1;->a:Lx3/c;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lx3/c1;->a:Lx3/c;

    iget v1, p0, Lx3/c1;->b:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lx3/c;->L(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lx3/c1;->a:Lx3/c;

    return-void
.end method

.method public final f3(ILandroid/os/IBinder;Lx3/h1;)V
    .locals 2

    iget-object v0, p0, Lx3/c1;->a:Lx3/c;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p3}, Lx3/c;->f0(Lx3/c;Lx3/h1;)V

    iget-object p3, p3, Lx3/h1;->a:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Lx3/c1;->D3(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public final v0(ILandroid/os/Bundle;)V
    .locals 1

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
