.class public final Lr4/px1;
.super Lr4/jx1;
.source "SourceFile"


# instance fields
.field public r:Ljava/lang/String;

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lr4/jx1;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lr4/px1;->s:I

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
.method public final b(Lr4/og0;)Lr4/h83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/og0;",
            ")",
            "Lr4/h83<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/jx1;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/px1;->s:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    new-instance p1, Lr4/yx1;

    invoke-direct {p1, v3}, Lr4/yx1;-><init>(I)V

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lr4/jx1;->d:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lr4/jx1;->a:Lr4/vm0;

    monitor-exit v0

    return-object p1

    :cond_1
    iput v3, p0, Lr4/px1;->s:I

    iput-boolean v2, p0, Lr4/jx1;->d:Z

    iput-object p1, p0, Lr4/jx1;->p:Lr4/og0;

    iget-object p1, p0, Lr4/jx1;->q:Lr4/yf0;

    invoke-virtual {p1}, Lx3/c;->p()V

    iget-object p1, p0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v1, Lr4/nx1;

    invoke-direct {v1, p0}, Lr4/nx1;-><init>(Lr4/px1;)V

    sget-object v2, Lr4/qm0;->f:Lr4/i83;

    invoke-virtual {p1, v1, v2}, Lr4/vm0;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lr4/jx1;->a:Lr4/vm0;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/String;)Lr4/h83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lr4/h83<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/jx1;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/px1;->s:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    new-instance p1, Lr4/yx1;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lr4/yx1;-><init>(I)V

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lr4/jx1;->d:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lr4/jx1;->a:Lr4/vm0;

    monitor-exit v0

    return-object p1

    :cond_1
    iput v2, p0, Lr4/px1;->s:I

    iput-boolean v3, p0, Lr4/jx1;->d:Z

    iput-object p1, p0, Lr4/px1;->r:Ljava/lang/String;

    iget-object p1, p0, Lr4/jx1;->q:Lr4/yf0;

    invoke-virtual {p1}, Lx3/c;->p()V

    iget-object p1, p0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v1, Lr4/ox1;

    invoke-direct {v1, p0}, Lr4/ox1;-><init>(Lr4/px1;)V

    sget-object v2, Lr4/qm0;->f:Lr4/i83;

    invoke-virtual {p1, v1, v2}, Lr4/vm0;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lr4/jx1;->a:Lr4/vm0;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final o0(Landroid/os/Bundle;)V
    .locals 4

    iget-object p1, p0, Lr4/jx1;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lr4/jx1;->k:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/jx1;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Lr4/px1;->s:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lr4/jx1;->q:Lr4/yf0;

    invoke-virtual {v1}, Lr4/yf0;->h0()Lr4/gg0;

    move-result-object v1

    iget-object v2, p0, Lr4/jx1;->p:Lr4/og0;

    new-instance v3, Lr4/gx1;

    invoke-direct {v3, p0}, Lr4/gx1;-><init>(Lr4/jx1;)V

    invoke-interface {v1, v2, v3}, Lr4/gg0;->k4(Lr4/og0;Lr4/kg0;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lr4/jx1;->q:Lr4/yf0;

    invoke-virtual {v1}, Lr4/yf0;->h0()Lr4/gg0;

    move-result-object v1

    iget-object v2, p0, Lr4/px1;->r:Ljava/lang/String;

    new-instance v3, Lr4/gx1;

    invoke-direct {v3, p0}, Lr4/gx1;-><init>(Lr4/jx1;)V

    invoke-interface {v1, v2, v3}, Lr4/gg0;->c3(Ljava/lang/String;Lr4/kg0;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v2, Lr4/yx1;

    invoke-direct {v2, v0}, Lr4/yx1;-><init>(I)V

    invoke-virtual {v1, v2}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z
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

    const-string v3, "RemoteUrlAndCacheKeyClientTask.onConnected"

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

    :cond_2
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

.method public final t0(Lt3/b;)V
    .locals 2

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v0, Lr4/yx1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr4/yx1;-><init>(I)V

    invoke-virtual {p1, v0}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method
