.class public final Lg5/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lg5/j4;


# direct methods
.method public constructor <init>(Lg5/j4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg5/i4;->b:Lg5/j4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg5/i4;->a:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lg5/i4;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg5/i4;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p2}, Lb5/s0;->o0(Landroid/os/IBinder;)Lb5/t0;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lg5/i4;->b:Lg5/j4;

    iget-object p1, p1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->r()Lg5/o3;

    move-result-object p1

    const-string p2, "Install Referrer Service implementation was not found"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lg5/i4;->b:Lg5/j4;

    iget-object p2, p2, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->q()Lg5/o3;

    move-result-object p2

    const-string v0, "Install Referrer Service connected"

    invoke-virtual {p2, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lg5/i4;->b:Lg5/j4;

    iget-object p2, p2, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->P()Lg5/y4;

    move-result-object p2

    new-instance v0, Lg5/h4;

    invoke-direct {v0, p0, p1, p0}, Lg5/h4;-><init>(Lg5/i4;Lb5/t0;Landroid/content/ServiceConnection;)V

    invoke-virtual {p2, v0}, Lg5/y4;->u(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lg5/i4;->b:Lg5/j4;

    iget-object p2, p2, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->r()Lg5/o3;

    move-result-object p2

    const-string v0, "Exception occurred while calling Install Referrer API"

    invoke-virtual {p2, v0, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lg5/i4;->b:Lg5/j4;

    iget-object p1, p1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->r()Lg5/o3;

    move-result-object p1

    const-string p2, "Install Referrer connection returned with null binder"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lg5/i4;->b:Lg5/j4;

    iget-object p1, p1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->q()Lg5/o3;

    move-result-object p1

    const-string v0, "Install Referrer Service disconnected"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void
.end method
