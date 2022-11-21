.class public final Lr4/i82;
.super Lr4/uv;
.source "SourceFile"

# interfaces
.implements Lr4/ba1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/uk2;

.field public final d:Ljava/lang/String;

.field public final k:Lr4/d92;

.field public p:Lr4/yt;

.field public final q:Lr4/fp2;

.field public r:Lr4/h11;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/uk2;Lr4/d92;)V
    .locals 0

    invoke-direct {p0}, Lr4/uv;-><init>()V

    iput-object p1, p0, Lr4/i82;->a:Landroid/content/Context;

    iput-object p4, p0, Lr4/i82;->b:Lr4/uk2;

    iput-object p2, p0, Lr4/i82;->p:Lr4/yt;

    iput-object p3, p0, Lr4/i82;->d:Ljava/lang/String;

    iput-object p5, p0, Lr4/i82;->k:Lr4/d92;

    invoke-virtual {p4}, Lr4/uk2;->l()Lr4/fp2;

    move-result-object p1

    iput-object p1, p0, Lr4/i82;->q:Lr4/fp2;

    invoke-virtual {p4, p0}, Lr4/uk2;->n(Lr4/ba1;)V

    return-void
.end method

.method public static synthetic f7(Lr4/i82;)Lr4/h11;
    .locals 0

    iget-object p0, p0, Lr4/i82;->r:Lr4/h11;

    return-object p0
.end method

.method public static synthetic g7(Lr4/i82;Lr4/h11;)Lr4/h11;
    .locals 0

    iput-object p1, p0, Lr4/i82;->r:Lr4/h11;

    return-object p1
.end method


# virtual methods
.method public final A0(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized B()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;

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

.method public final B2(Lr4/ff0;)V
    .locals 0

    return-void
.end method

.method public final B6(Lr4/ev;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->b:Lr4/uk2;

    invoke-virtual {v0, p1}, Lr4/uk2;->k(Lr4/ev;)V

    return-void
.end method

.method public final declared-synchronized C1(Lr4/n00;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->b:Lr4/uk2;

    invoke-virtual {v0, p1}, Lr4/uk2;->j(Lr4/n00;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final D1(Lr4/eu;)V
    .locals 0

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

    const-string p1, "setAdMetadataListener must be called on the main UI thread."

    invoke-static {p1}, Lx3/q;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized I()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/i82;->b:Lr4/uk2;

    invoke-virtual {v0}, Lr4/uk2;->a()Z

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
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->q:Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->a(Z)Lr4/fp2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final L()Lr4/iv;
    .locals 1

    iget-object v0, p0, Lr4/i82;->k:Lr4/d92;

    invoke-virtual {v0}, Lr4/d92;->c()Lr4/iv;

    move-result-object v0

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
    iget-object v0, p0, Lr4/i82;->d:Ljava/lang/String;
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
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->q:Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->I(Lr4/yt;)Lr4/fp2;

    iput-object p1, p0, Lr4/i82;->p:Lr4/yt;

    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/i82;->b:Lr4/uk2;

    invoke-virtual {v1}, Lr4/uk2;->i()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lr4/h11;->h(Landroid/view/ViewGroup;Lr4/yt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final S1(Lr4/iv;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->k:Lr4/d92;

    invoke-virtual {v0, p1}, Lr4/d92;->v(Lr4/iv;)V

    return-void
.end method

.method public final S5(Lr4/px;)V
    .locals 0

    return-void
.end method

.method public final X4(Lr4/ex;)V
    .locals 1

    const-string v0, "setPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->k:Lr4/d92;

    invoke-virtual {v0, p1}, Lr4/d92;->A(Lr4/ex;)V

    return-void
.end method

.method public final Y1(Lr4/go;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized Z1(Lr4/xy;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setVideoOptions must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->q:Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->N(Lr4/xy;)Lr4/fp2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;

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
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->q:Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->o(Lr4/gw;)Lr4/fp2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h7(Lr4/yt;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/i82;->q:Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->I(Lr4/yt;)Lr4/fp2;

    iget-object p1, p0, Lr4/i82;->q:Lr4/fp2;

    iget-object v0, p0, Lr4/i82;->p:Lr4/yt;

    iget-boolean v0, v0, Lr4/yt;->y:Z

    invoke-virtual {p1, v0}, Lr4/fp2;->J(Z)Lr4/fp2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized i7(Lr4/tt;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lr4/i82;->a:Landroid/content/Context;

    invoke-static {v0}, Lb3/k2;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lr4/tt;->D:Lr4/jt;

    if-nez v0, :cond_1

    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/i82;->k:Lr4/d92;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, v1, v1}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/d92;->B(Lr4/lt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lr4/i82;->a:Landroid/content/Context;

    iget-boolean v2, p1, Lr4/tt;->q:Z

    invoke-static {v0, v2}, Lr4/yp2;->b(Landroid/content/Context;Z)V

    iget-object v0, p0, Lr4/i82;->b:Lr4/uk2;

    iget-object v2, p0, Lr4/i82;->d:Ljava/lang/String;

    new-instance v3, Lr4/h82;

    invoke-direct {v3, p0}, Lr4/h82;-><init>(Lr4/i82;)V

    invoke-virtual {v0, p1, v2, v1, v3}, Lr4/uk2;->b(Lr4/tt;Ljava/lang/String;Lr4/r92;Lr4/s92;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j()Lf4/a;
    .locals 1

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->b:Lr4/uk2;

    invoke-virtual {v0}, Lr4/uk2;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->c()Lr4/j81;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/j81;->T0(Landroid/content/Context;)V
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

.method public final declared-synchronized n()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/h11;->m()V
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

.method public final declared-synchronized p()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->c()Lr4/j81;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/j81;->Z0(Landroid/content/Context;)V
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

    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/i82;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lr4/h11;->j()Lr4/qo2;

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
    :try_start_1
    iget-object v0, p0, Lr4/i82;->q:Lr4/fp2;

    invoke-virtual {v0}, Lr4/fp2;->K()Lr4/yt;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    :try_start_0
    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;

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

.method public final v4(Lr4/cw;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->k:Lr4/d92;

    invoke-virtual {v0, p1}, Lr4/d92;->z(Lr4/cw;)V

    return-void
.end method

.method public final w()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized w0()Lr4/lx;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/h11;->i()Lr4/lx;

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

.method public final declared-synchronized w5(Lr4/tt;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/i82;->p:Lr4/yt;

    invoke-virtual {p0, v0}, Lr4/i82;->h7(Lr4/yt;)V

    invoke-virtual {p0, p1}, Lr4/i82;->i7(Lr4/tt;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    iget-object v0, p0, Lr4/i82;->k:Lr4/d92;

    invoke-virtual {v0}, Lr4/d92;->s()Lr4/cw;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized z()Lr4/hx;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lr4/rz;->b5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/i82;->r:Lr4/h11;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/i82;->b:Lr4/uk2;

    invoke-virtual {v0}, Lr4/uk2;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/i82;->q:Lr4/fp2;

    invoke-virtual {v0}, Lr4/fp2;->K()Lr4/yt;

    move-result-object v0

    iget-object v1, p0, Lr4/i82;->r:Lr4/h11;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lr4/h11;->k()Lr4/qo2;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr4/i82;->q:Lr4/fp2;

    invoke-virtual {v1}, Lr4/fp2;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lr4/i82;->a:Landroid/content/Context;

    iget-object v1, p0, Lr4/i82;->r:Lr4/h11;

    invoke-virtual {v1}, Lr4/h11;->k()Lr4/qo2;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/lp2;->b(Landroid/content/Context;Ljava/util/List;)Lr4/yt;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lr4/i82;->h7(Lr4/yt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lr4/i82;->q:Lr4/fp2;

    invoke-virtual {v0}, Lr4/fp2;->H()Lr4/tt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/i82;->i7(Lr4/tt;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    const-string v0, "Failed to refresh the banner ad."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lr4/i82;->b:Lr4/uk2;

    invoke-virtual {v0}, Lr4/uk2;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
