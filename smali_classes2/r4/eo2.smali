.class public final Lr4/eo2;
.super Lr4/xh0;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ao2;

.field public final b:Lr4/qn2;

.field public final d:Ljava/lang/String;

.field public final k:Lr4/cp2;

.field public final p:Landroid/content/Context;

.field public q:Lr4/uo1;

.field public r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr4/ao2;Landroid/content/Context;Lr4/qn2;Lr4/cp2;)V
    .locals 0

    invoke-direct {p0}, Lr4/xh0;-><init>()V

    iput-object p1, p0, Lr4/eo2;->d:Ljava/lang/String;

    iput-object p2, p0, Lr4/eo2;->a:Lr4/ao2;

    iput-object p4, p0, Lr4/eo2;->b:Lr4/qn2;

    iput-object p5, p0, Lr4/eo2;->k:Lr4/cp2;

    iput-object p3, p0, Lr4/eo2;->p:Landroid/content/Context;

    sget-object p1, Lr4/rz;->t0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr4/eo2;->r:Z

    return-void
.end method

.method public static synthetic g7(Lr4/eo2;)Lr4/uo1;
    .locals 0

    iget-object p0, p0, Lr4/eo2;->q:Lr4/uo1;

    return-object p0
.end method

.method public static synthetic h7(Lr4/eo2;Lr4/uo1;)Lr4/uo1;
    .locals 0

    iput-object p1, p0, Lr4/eo2;->q:Lr4/uo1;

    return-object p1
.end method


# virtual methods
.method public final A3(Lr4/bx;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lr4/eo2;->b:Lr4/qn2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/qn2;->L(Lr4/cx2;)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/eo2;->b:Lr4/qn2;

    new-instance v1, Lr4/co2;

    invoke-direct {v1, p0, p1}, Lr4/co2;-><init>(Lr4/eo2;Lr4/bx;)V

    invoke-virtual {v0, v1}, Lr4/qn2;->L(Lr4/cx2;)V

    return-void
.end method

.method public final D5(Lr4/bi0;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/eo2;->b:Lr4/qn2;

    invoke-virtual {v0, p1}, Lr4/qn2;->A(Lr4/bi0;)V

    return-void
.end method

.method public final declared-synchronized F3(Lr4/ni0;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/eo2;->k:Lr4/cp2;

    iget-object v1, p1, Lr4/ni0;->a:Ljava/lang/String;

    iput-object v1, v0, Lr4/cp2;->a:Ljava/lang/String;

    iget-object p1, p1, Lr4/ni0;->b:Ljava/lang/String;

    iput-object p1, v0, Lr4/cp2;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized L2(Lr4/tt;Lr4/fi0;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lr4/eo2;->i7(Lr4/tt;Lr4/fi0;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized M0(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iput-boolean p1, p0, Lr4/eo2;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final M5(Lr4/ex;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/eo2;->b:Lr4/qn2;

    invoke-virtual {v0, p1}, Lr4/qn2;->N(Lr4/ex;)V

    return-void
.end method

.method public final declared-synchronized b0(Lf4/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/eo2;->r:Z

    invoke-virtual {p0, p1, v0}, Lr4/eo2;->i1(Lf4/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()Landroid/os/Bundle;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/eo2;->q:Lr4/uo1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/uo1;->l()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/eo2;->q:Lr4/uo1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/eo2;->q:Lr4/uo1;

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    invoke-virtual {v0}, Lr4/b71;->c()Ljava/lang/String;

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

.method public final declared-synchronized i1(Lf4/a;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/eo2;->q:Lr4/uo1;

    if-nez v0, :cond_0

    const-string p1, "Rewarded can not be shown before loaded"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/eo2;->b:Lr4/qn2;

    const/16 p2, 0x9

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr4/qn2;->o(Lr4/lt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lr4/eo2;->q:Lr4/uo1;

    invoke-virtual {v0, p2, p1}, Lr4/uo1;->g(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i7(Lr4/tt;Lr4/fi0;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/eo2;->b:Lr4/qn2;

    invoke-virtual {v0, p2}, Lr4/qn2;->z(Lr4/fi0;)V

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object p2, p0, Lr4/eo2;->p:Landroid/content/Context;

    invoke-static {p2}, Lb3/k2;->k(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p1, Lr4/tt;->D:Lr4/jt;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/eo2;->b:Lr4/qn2;

    const/4 p2, 0x4

    invoke-static {p2, v0, v0}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr4/qn2;->B(Lr4/lt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object p2, p0, Lr4/eo2;->q:Lr4/uo1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance p2, Lr4/sn2;

    invoke-direct {p2, v0}, Lr4/sn2;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/eo2;->a:Lr4/ao2;

    invoke-virtual {v0, p3}, Lr4/ao2;->i(I)V

    iget-object p3, p0, Lr4/eo2;->a:Lr4/ao2;

    iget-object v0, p0, Lr4/eo2;->d:Ljava/lang/String;

    new-instance v1, Lr4/do2;

    invoke-direct {v1, p0}, Lr4/do2;-><init>(Lr4/eo2;)V

    invoke-virtual {p3, p1, v0, p2, v1}, Lr4/ao2;->b(Lr4/tt;Ljava/lang/String;Lr4/r92;Lr4/s92;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j()Z
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/eo2;->q:Lr4/uo1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/uo1;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Lr4/vh0;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/eo2;->q:Lr4/uo1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/uo1;->i()Lr4/vh0;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lr4/hx;
    .locals 2

    sget-object v0, Lr4/rz;->b5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lr4/eo2;->q:Lr4/uo1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final declared-synchronized r3(Lr4/tt;Lr4/fi0;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lr4/eo2;->i7(Lr4/tt;Lr4/fi0;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final t2(Lr4/hi0;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/eo2;->b:Lr4/qn2;

    invoke-virtual {v0, p1}, Lr4/qn2;->S(Lr4/hi0;)V

    return-void
.end method
