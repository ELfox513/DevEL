.class public final Lr4/ok2;
.super Lr4/uv;
.source "SourceFile"

# interfaces
.implements La3/q;
.implements Lr4/bo;


# instance fields
.field public final a:Lr4/bu0;

.field public final b:Landroid/content/Context;

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/lang/String;

.field public final p:Lr4/hk2;

.field public final q:Lr4/fk2;

.field public r:J

.field public s:Lr4/b01;

.field public t:Lr4/a11;


# direct methods
.method public constructor <init>(Lr4/bu0;Landroid/content/Context;Ljava/lang/String;Lr4/hk2;Lr4/fk2;)V
    .locals 2

    invoke-direct {p0}, Lr4/uv;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lr4/ok2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/ok2;->r:J

    iput-object p1, p0, Lr4/ok2;->a:Lr4/bu0;

    iput-object p2, p0, Lr4/ok2;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/ok2;->k:Ljava/lang/String;

    iput-object p4, p0, Lr4/ok2;->p:Lr4/hk2;

    iput-object p5, p0, Lr4/ok2;->q:Lr4/fk2;

    invoke-virtual {p5, p0}, Lr4/fk2;->q(La3/q;)V

    return-void
.end method

.method public static synthetic g7(Lr4/ok2;)Lr4/fk2;
    .locals 0

    iget-object p0, p0, Lr4/ok2;->q:Lr4/fk2;

    return-object p0
.end method


# virtual methods
.method public final A0(Z)V
    .locals 0

    return-void
.end method

.method public final A2()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized B()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final B2(Lr4/ff0;)V
    .locals 0

    return-void
.end method

.method public final B6(Lr4/ev;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized C1(Lr4/n00;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final C6(I)V
    .locals 2

    add-int/lit8 v0, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, p1, :cond_1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lr4/ok2;->f7(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lr4/ok2;->f7(I)V

    return-void

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lr4/ok2;->f7(I)V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lr4/ok2;->f7(I)V

    return-void

    :cond_4
    const/4 p1, 0x0

    throw p1
.end method

.method public final D1(Lr4/eu;)V
    .locals 1

    iget-object v0, p0, Lr4/ok2;->p:Lr4/hk2;

    invoke-virtual {v0, p1}, Lr4/pj2;->i(Lr4/eu;)V

    return-void
.end method

.method public final E5(Lr4/kf0;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final G1(Lr4/lh0;)V
    .locals 0

    return-void
.end method

.method public final H6(Lr4/zv;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized I()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/ok2;->p:Lr4/hk2;

    invoke-virtual {v0}, Lr4/pj2;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized J4(Z)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final L()Lr4/iv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final L1(Lf4/a;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized P()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/ok2;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Q5(Lr4/tt;Lr4/lv;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized S0(Lr4/yt;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    invoke-static {p1}, Lx3/q;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final S1(Lr4/iv;)V
    .locals 0

    return-void
.end method

.method public final S5(Lr4/px;)V
    .locals 0

    return-void
.end method

.method public final X4(Lr4/ex;)V
    .locals 0

    return-void
.end method

.method public final Y1(Lr4/go;)V
    .locals 1

    iget-object v0, p0, Lr4/ok2;->q:Lr4/fk2;

    invoke-virtual {v0, p1}, Lr4/fk2;->g(Lr4/go;)V

    return-void
.end method

.method public final declared-synchronized Z1(Lr4/xy;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/ok2;->t:Lr4/a11;

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lr4/ok2;->r:J

    sub-long/2addr v1, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lr4/a11;->j(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final e3()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lr4/ok2;->a:Lr4/bu0;

    invoke-virtual {v0}, Lr4/bu0;->h()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lr4/jk2;

    invoke-direct {v1, p0}, Lr4/jk2;-><init>(Lr4/ok2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized f7(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/ok2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr4/ok2;->q:Lr4/fk2;

    invoke-virtual {v0}, Lr4/fk2;->A()V

    iget-object v0, p0, Lr4/ok2;->s:Lr4/b01;

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/t;->g()Lr4/hn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/hn;->c(Lr4/gn;)V

    :cond_0
    iget-object v0, p0, Lr4/ok2;->t:Lr4/a11;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lr4/ok2;->r:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lr4/ok2;->r:J

    sub-long v2, v0, v2

    :goto_0
    iget-object v0, p0, Lr4/ok2;->t:Lr4/a11;

    invoke-virtual {v0, v2, v3, p1}, Lr4/a11;->j(JI)V

    :cond_2
    invoke-virtual {p0}, Lr4/ok2;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ok2;->t:Lr4/a11;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h4(Lr4/gw;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lf4/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized j0()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/ok2;->t:Lr4/a11;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lr4/ok2;->r:J

    iget-object v0, p0, Lr4/ok2;->t:Lr4/a11;

    invoke-virtual {v0}, Lr4/a11;->i()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Lr4/b01;

    iget-object v2, p0, Lr4/ok2;->a:Lr4/bu0;

    invoke-virtual {v2}, Lr4/bu0;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lr4/b01;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lc4/f;)V

    iput-object v1, p0, Lr4/ok2;->s:Lr4/b01;

    new-instance v2, Lr4/lk2;

    invoke-direct {v2, p0}, Lr4/lk2;-><init>(Lr4/ok2;)V

    invoke-virtual {v1, v0, v2}, Lr4/b01;->a(ILjava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final synthetic o0()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lr4/ok2;->f7(I)V

    return-void
.end method

.method public final declared-synchronized p()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final s5(Lr4/kw;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized t()Lr4/yt;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized v()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final v4(Lr4/cw;)V
    .locals 0

    return-void
.end method

.method public final w()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized w0()Lr4/lx;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized w5(Lr4/tt;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lr4/ok2;->b:Landroid/content/Context;

    invoke-static {v0}, Lb3/k2;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lr4/tt;->D:Lr4/jt;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/ok2;->q:Lr4/fk2;

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/fk2;->B(Lr4/lt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lr4/ok2;->I()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lr4/ok2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lr4/mk2;

    invoke-direct {v0, p0}, Lr4/mk2;-><init>(Lr4/ok2;)V

    iget-object v1, p0, Lr4/ok2;->p:Lr4/hk2;

    iget-object v2, p0, Lr4/ok2;->k:Ljava/lang/String;

    new-instance v3, Lr4/nk2;

    invoke-direct {v3, p0}, Lr4/nk2;-><init>(Lr4/ok2;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lr4/pj2;->b(Lr4/tt;Ljava/lang/String;Lr4/r92;Lr4/s92;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final x1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final x3(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final y()Lr4/cw;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized z()Lr4/hx;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lr4/ok2;->f7(I)V

    return-void
.end method
