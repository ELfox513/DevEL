.class public final Lr4/lx1;
.super Lr4/jx1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lr4/jx1;-><init>()V

    invoke-static {}, Lz2/t;->r()Lb3/c1;

    move-result-object v0

    invoke-virtual {v0}, Lb3/c1;->a()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lr4/yf0;

    invoke-direct {v1, p1, v0, p0, p0}, Lr4/yf0;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/c$a;Lx3/c$b;)V

    iput-object v1, p0, Lr4/jx1;->q:Lr4/yf0;

    return-void
.end method


# virtual methods
.method public final o0(Landroid/os/Bundle;)V
    .locals 4

    iget-object p1, p0, Lr4/jx1;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lr4/jx1;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/jx1;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lr4/jx1;->q:Lr4/yf0;

    invoke-virtual {v1}, Lr4/yf0;->h0()Lr4/gg0;

    move-result-object v1

    iget-object v2, p0, Lr4/jx1;->p:Lr4/og0;

    new-instance v3, Lr4/gx1;

    invoke-direct {v3, p0}, Lr4/gx1;-><init>(Lr4/jx1;)V

    invoke-interface {v1, v2, v3}, Lr4/gg0;->w6(Lr4/og0;Lr4/kg0;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v2

    const-string v3, "RemoteSignalsClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v2, Lr4/yx1;

    invoke-direct {v2, v0}, Lr4/yx1;-><init>(I)V

    invoke-virtual {v1, v2}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v2, Lr4/yx1;

    invoke-direct {v2, v0}, Lr4/yx1;-><init>(I)V

    invoke-virtual {v1, v2}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
