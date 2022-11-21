.class public final Lr4/wy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/kg0;


# direct methods
.method public constructor <init>(Lr4/az1;Lr4/kg0;)V
    .locals 0

    iput-object p2, p0, Lr4/wy1;->a:Lr4/kg0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/wy1;->a:Lr4/kg0;

    invoke-static {p1}, Lb3/g0;->X0(Ljava/lang/Throwable;)Lb3/g0;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/kg0;->M4(Lb3/g0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Service can\'t call client"

    invoke-static {v0, p1}, Lb3/w1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    :try_start_0
    iget-object v0, p0, Lr4/wy1;->a:Lr4/kg0;

    invoke-interface {v0, p1}, Lr4/kg0;->E4(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Service can\'t call client"

    invoke-static {v0, p1}, Lb3/w1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
