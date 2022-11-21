.class public final Lr4/l92;
.super Lr4/uv;
.source "SourceFile"


# instance fields
.field public final a:Lr4/yt;

.field public final b:Landroid/content/Context;

.field public final d:Lr4/pm2;

.field public final k:Ljava/lang/String;

.field public final p:Lr4/d92;

.field public final q:Lr4/qn2;

.field public r:Lr4/xf1;

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/pm2;Lr4/d92;Lr4/qn2;)V
    .locals 0

    invoke-direct {p0}, Lr4/uv;-><init>()V

    iput-object p2, p0, Lr4/l92;->a:Lr4/yt;

    iput-object p3, p0, Lr4/l92;->k:Ljava/lang/String;

    iput-object p1, p0, Lr4/l92;->b:Landroid/content/Context;

    iput-object p4, p0, Lr4/l92;->d:Lr4/pm2;

    iput-object p5, p0, Lr4/l92;->p:Lr4/d92;

    iput-object p6, p0, Lr4/l92;->q:Lr4/qn2;

    sget-object p1, Lr4/rz;->t0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr4/l92;->s:Z

    return-void
.end method

.method public static synthetic f7(Lr4/l92;Lr4/xf1;)Lr4/xf1;
    .locals 0

    iput-object p1, p0, Lr4/l92;->r:Lr4/xf1;

    return-object p1
.end method

.method public static synthetic g7(Lr4/l92;)Lr4/xf1;
    .locals 0

    iget-object p0, p0, Lr4/l92;->r:Lr4/xf1;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized A0(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iput-boolean p1, p0, Lr4/l92;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized B()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;

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
    .locals 0

    return-void
.end method

.method public final declared-synchronized C1(Lr4/n00;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/l92;->d:Lr4/pm2;

    invoke-virtual {v0, p1}, Lr4/pm2;->g(Lr4/n00;)V
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
    .locals 1

    iget-object v0, p0, Lr4/l92;->q:Lr4/qn2;

    invoke-virtual {v0, p1}, Lr4/qn2;->Q(Lr4/lh0;)V

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
    iget-object v0, p0, Lr4/l92;->d:Lr4/pm2;

    invoke-virtual {v0}, Lr4/pm2;->a()Z

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

.method public final J4(Z)V
    .locals 0

    return-void
.end method

.method public final L()Lr4/iv;
    .locals 1

    iget-object v0, p0, Lr4/l92;->p:Lr4/d92;

    invoke-virtual {v0}, Lr4/d92;->c()Lr4/iv;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized L1(Lf4/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;

    if-nez v0, :cond_0

    const-string p1, "Interstitial can not be shown before loaded."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/l92;->p:Lr4/d92;

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/d92;->o(Lr4/lt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;

    iget-boolean v1, p0, Lr4/l92;->s:Z

    invoke-virtual {v0, v1, p1}, Lr4/xf1;->g(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized P()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/l92;->k:Ljava/lang/String;
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
    .locals 1

    iget-object v0, p0, Lr4/l92;->p:Lr4/d92;

    invoke-virtual {v0, p2}, Lr4/d92;->L(Lr4/lv;)V

    invoke-virtual {p0, p1}, Lr4/l92;->w5(Lr4/tt;)Z

    return-void
.end method

.method public final S0(Lr4/yt;)V
    .locals 0

    return-void
.end method

.method public final S1(Lr4/iv;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/l92;->p:Lr4/d92;

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

    iget-object v0, p0, Lr4/l92;->p:Lr4/d92;

    invoke-virtual {v0, p1}, Lr4/d92;->A(Lr4/ex;)V

    return-void
.end method

.method public final Y1(Lr4/go;)V
    .locals 0

    return-void
.end method

.method public final Z1(Lr4/xy;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->c()Lr4/j81;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/j81;->e1(Landroid/content/Context;)V
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

.method public final h4(Lr4/gw;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized h7()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/xf1;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/l92;->h7()Z

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

.method public final j()Lf4/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;

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

.method public final n()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized p()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;

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

.method public final declared-synchronized r()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Interstitial can not be shown before loaded."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/l92;->p:Lr4/d92;

    const/16 v2, 0x9

    invoke-static {v2, v1, v1}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/d92;->o(Lr4/lt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lr4/l92;->s:Z

    invoke-virtual {v0, v2, v1}, Lr4/xf1;->g(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final s5(Lr4/kw;)V
    .locals 1

    iget-object v0, p0, Lr4/l92;->p:Lr4/d92;

    invoke-virtual {v0, p1}, Lr4/d92;->N(Lr4/kw;)V

    return-void
.end method

.method public final t()Lr4/yt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized v()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;

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

    iget-object v0, p0, Lr4/l92;->p:Lr4/d92;

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

.method public final w0()Lr4/lx;
    .locals 1

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

    iget-object v0, p0, Lr4/l92;->b:Landroid/content/Context;

    invoke-static {v0}, Lb3/k2;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lr4/tt;->D:Lr4/jt;

    if-nez v0, :cond_1

    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/l92;->p:Lr4/d92;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, v2, v2}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/d92;->B(Lr4/lt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lr4/l92;->h7()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lr4/l92;->b:Landroid/content/Context;

    iget-boolean v1, p1, Lr4/tt;->q:Z

    invoke-static {v0, v1}, Lr4/yp2;->b(Landroid/content/Context;Z)V

    iput-object v2, p0, Lr4/l92;->r:Lr4/xf1;

    iget-object v0, p0, Lr4/l92;->d:Lr4/pm2;

    iget-object v1, p0, Lr4/l92;->k:Ljava/lang/String;

    new-instance v2, Lr4/hm2;

    iget-object v3, p0, Lr4/l92;->a:Lr4/yt;

    invoke-direct {v2, v3}, Lr4/hm2;-><init>(Lr4/yt;)V

    new-instance v3, Lr4/k92;

    invoke-direct {v3, p0}, Lr4/k92;-><init>(Lr4/l92;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lr4/pm2;->b(Lr4/tt;Ljava/lang/String;Lr4/r92;Lr4/s92;)Z

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

    iget-object v0, p0, Lr4/l92;->p:Lr4/d92;

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
    iget-object v0, p0, Lr4/l92;->r:Lr4/xf1;
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
