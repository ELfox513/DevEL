.class public final Lg5/j8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/pa;

.field public final synthetic b:Lg5/w8;


# direct methods
.method public constructor <init>(Lg5/w8;Lg5/pa;)V
    .locals 0

    iput-object p1, p0, Lg5/j8;->b:Lg5/w8;

    iput-object p2, p0, Lg5/j8;->a:Lg5/pa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg5/j8;->b:Lg5/w8;

    invoke-static {v0}, Lg5/w8;->C(Lg5/w8;)Lg5/g3;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg5/j8;->b:Lg5/w8;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    const-string v1, "Failed to send measurementEnabled to service"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lg5/j8;->a:Lg5/pa;

    invoke-static {v1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg5/j8;->a:Lg5/pa;

    invoke-interface {v0, v1}, Lg5/g3;->e4(Lg5/pa;)V

    iget-object v0, p0, Lg5/j8;->b:Lg5/w8;

    invoke-static {v0}, Lg5/w8;->K(Lg5/w8;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lg5/j8;->b:Lg5/w8;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->m()Lg5/o3;

    move-result-object v1

    const-string v2, "Failed to send measurementEnabled to the service"

    invoke-virtual {v1, v2, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
