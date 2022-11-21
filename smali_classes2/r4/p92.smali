.class public final synthetic Lr4/p92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m71;


# instance fields
.field public final a:Lr4/d92;

.field public final b:Lr4/c80;


# direct methods
.method public constructor <init>(Lr4/d92;Lr4/c80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/p92;->a:Lr4/d92;

    iput-object p2, p0, Lr4/p92;->b:Lr4/c80;

    return-void
.end method


# virtual methods
.method public final B(Lr4/lt;)V
    .locals 3

    iget-object v0, p0, Lr4/p92;->a:Lr4/d92;

    iget-object v1, p0, Lr4/p92;->b:Lr4/c80;

    invoke-virtual {v0, p1}, Lr4/d92;->B(Lr4/lt;)V

    const-string v0, "#007 Could not call remote method."

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lr4/c80;->F(Lr4/lt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v0, v2}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    iget p1, p1, Lr4/lt;->a:I

    invoke-interface {v1, p1}, Lr4/c80;->C(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
