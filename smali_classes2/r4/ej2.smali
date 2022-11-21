.class public final Lr4/ej2;
.super Lr4/uv;
.source "SourceFile"

# interfaces
.implements La3/b0;
.implements Lr4/bo;
.implements Lr4/k91;


# instance fields
.field public final a:Lr4/bu0;

.field public final b:Landroid/content/Context;

.field public final d:Landroid/view/ViewGroup;

.field public k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/lang/String;

.field public final q:Lr4/yi2;

.field public final r:Lr4/fk2;

.field public final s:Lr4/im0;

.field public t:J

.field public u:Lr4/b01;

.field public v:Lr4/p01;


# direct methods
.method public constructor <init>(Lr4/bu0;Landroid/content/Context;Ljava/lang/String;Lr4/yi2;Lr4/fk2;Lr4/im0;)V
    .locals 2

    invoke-direct {p0}, Lr4/uv;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lr4/ej2;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/ej2;->t:J

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lr4/ej2;->d:Landroid/view/ViewGroup;

    iput-object p1, p0, Lr4/ej2;->a:Lr4/bu0;

    iput-object p2, p0, Lr4/ej2;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/ej2;->p:Ljava/lang/String;

    iput-object p4, p0, Lr4/ej2;->q:Lr4/yi2;

    iput-object p5, p0, Lr4/ej2;->r:Lr4/fk2;

    invoke-virtual {p5, p0}, Lr4/fk2;->p(Lr4/k91;)V

    iput-object p6, p0, Lr4/ej2;->s:Lr4/im0;

    return-void
.end method

.method public static synthetic h7(Lr4/ej2;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lr4/ej2;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic i7(Lr4/ej2;)Lr4/fk2;
    .locals 0

    iget-object p0, p0, Lr4/ej2;->r:Lr4/fk2;

    return-object p0
.end method

.method public static synthetic j7(Lr4/ej2;)Lr4/im0;
    .locals 0

    iget-object p0, p0, Lr4/ej2;->s:Lr4/im0;

    return-object p0
.end method

.method public static synthetic k7(Lr4/ej2;Lr4/p01;)La3/s;
    .locals 5

    invoke-virtual {p1}, Lr4/p01;->l()Z

    move-result p1

    sget-object v0, Lr4/rz;->n3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, La3/r;

    invoke-direct {v1}, La3/r;-><init>()V

    const/16 v2, 0x32

    iput v2, v1, La3/r;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v3, p1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iput v4, v1, La3/r;->a:I

    if-eq v3, p1, :cond_1

    move v2, v0

    :cond_1
    iput v2, v1, La3/r;->b:I

    iput v0, v1, La3/r;->c:I

    new-instance p1, La3/s;

    iget-object v0, p0, Lr4/ej2;->b:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p0}, La3/s;-><init>(Landroid/content/Context;La3/r;La3/b0;)V

    return-object p1
.end method

.method public static synthetic l7(Lr4/ej2;)Lr4/yt;
    .locals 1

    iget-object v0, p0, Lr4/ej2;->b:Landroid/content/Context;

    iget-object p0, p0, Lr4/ej2;->v:Lr4/p01;

    invoke-virtual {p0}, Lr4/p01;->g()Lr4/qo2;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lr4/lp2;->b(Landroid/content/Context;Ljava/util/List;)Lr4/yt;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0(Z)V
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

.method public final D1(Lr4/eu;)V
    .locals 1

    iget-object v0, p0, Lr4/ej2;->q:Lr4/yi2;

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
    iget-object v0, p0, Lr4/ej2;->q:Lr4/yi2;

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
    iget-object v0, p0, Lr4/ej2;->p:Ljava/lang/String;
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

    iget-object v0, p0, Lr4/ej2;->r:Lr4/fk2;

    invoke-virtual {v0, p1}, Lr4/fk2;->g(Lr4/go;)V

    return-void
.end method

.method public final declared-synchronized Z1(Lr4/xy;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lr4/ej2;->g7(I)V

    return-void
.end method

.method public final synthetic f7()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lr4/ej2;->g7(I)V

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {}, Lr4/vl0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lr4/ej2;->g7(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/ej2;->a:Lr4/bu0;

    invoke-virtual {v0}, Lr4/bu0;->h()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lr4/aj2;

    invoke-direct {v1, p0}, Lr4/aj2;-><init>(Lr4/ej2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized g7(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/ej2;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lr4/ej2;->v:Lr4/p01;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/p01;->q()Lr4/io;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/ej2;->r:Lr4/fk2;

    iget-object v1, p0, Lr4/ej2;->v:Lr4/p01;

    invoke-virtual {v1}, Lr4/p01;->q()Lr4/io;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/fk2;->L(Lr4/io;)V

    :cond_0
    iget-object v0, p0, Lr4/ej2;->r:Lr4/fk2;

    invoke-virtual {v0}, Lr4/fk2;->A()V

    iget-object v0, p0, Lr4/ej2;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lr4/ej2;->u:Lr4/b01;

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/t;->g()Lr4/hn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/hn;->c(Lr4/gn;)V

    :cond_1
    iget-object v0, p0, Lr4/ej2;->v:Lr4/p01;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lr4/ej2;->t:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lr4/ej2;->t:J

    sub-long v2, v0, v2

    :goto_0
    iget-object v0, p0, Lr4/ej2;->v:Lr4/p01;

    invoke-virtual {v0, v2, v3, p1}, Lr4/p01;->o(JI)V

    :cond_3
    invoke-virtual {p0}, Lr4/ej2;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
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

    iget-object v0, p0, Lr4/ej2;->v:Lr4/p01;

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

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ej2;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    return-object v0
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

.method public final o0()V
    .locals 4

    iget-object v0, p0, Lr4/ej2;->v:Lr4/p01;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lr4/ej2;->t:J

    iget-object v0, p0, Lr4/ej2;->v:Lr4/p01;

    invoke-virtual {v0}, Lr4/p01;->i()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lr4/b01;

    iget-object v2, p0, Lr4/ej2;->a:Lr4/bu0;

    invoke-virtual {v2}, Lr4/bu0;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lr4/b01;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lc4/f;)V

    iput-object v1, p0, Lr4/ej2;->u:Lr4/b01;

    new-instance v2, Lr4/bj2;

    invoke-direct {v2, p0}, Lr4/bj2;-><init>(Lr4/ej2;)V

    invoke-virtual {v1, v0, v2}, Lr4/b01;->a(ILjava/lang/Runnable;)V

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

.method public final r()V
    .locals 0

    return-void
.end method

.method public final s5(Lr4/kw;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized t()Lr4/yt;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ej2;->v:Lr4/p01;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/ej2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lr4/p01;->g()Lr4/qo2;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lr4/lp2;->b(Landroid/content/Context;Ljava/util/List;)Lr4/yt;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    iget-object v0, p0, Lr4/ej2;->b:Landroid/content/Context;

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

    iget-object p1, p0, Lr4/ej2;->r:Lr4/fk2;

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
    invoke-virtual {p0}, Lr4/ej2;->I()Z

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

    iput-object v0, p0, Lr4/ej2;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lr4/cj2;

    invoke-direct {v0, p0}, Lr4/cj2;-><init>(Lr4/ej2;)V

    iget-object v1, p0, Lr4/ej2;->q:Lr4/yi2;

    iget-object v2, p0, Lr4/ej2;->p:Ljava/lang/String;

    new-instance v3, Lr4/dj2;

    invoke-direct {v3, p0}, Lr4/dj2;-><init>(Lr4/ej2;)V

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

    invoke-virtual {p0, v0}, Lr4/ej2;->g7(I)V

    return-void
.end method
