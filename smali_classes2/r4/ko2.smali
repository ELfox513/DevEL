.class public final Lr4/ko2;
.super Lr4/hh0;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ao2;

.field public final b:Lr4/qn2;

.field public final d:Lr4/cp2;

.field public k:Lr4/uo1;

.field public p:Z


# direct methods
.method public constructor <init>(Lr4/ao2;Lr4/qn2;Lr4/cp2;)V
    .locals 1

    invoke-direct {p0}, Lr4/hh0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/ko2;->p:Z

    iput-object p1, p0, Lr4/ko2;->a:Lr4/ao2;

    iput-object p2, p0, Lr4/ko2;->b:Lr4/qn2;

    iput-object p3, p0, Lr4/ko2;->d:Lr4/cp2;

    return-void
.end method

.method public static synthetic f7(Lr4/ko2;Lr4/uo1;)Lr4/uo1;
    .locals 0

    iput-object p1, p0, Lr4/ko2;->k:Lr4/uo1;

    return-object p1
.end method

.method public static synthetic g7(Lr4/ko2;)Lr4/uo1;
    .locals 0

    iget-object p0, p0, Lr4/ko2;->k:Lr4/uo1;

    return-object p0
.end method


# virtual methods
.method public final A5(Lr4/lh0;)V
    .locals 1

    const-string v0, "setRewardedVideoAdListener can only be called from the UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ko2;->b:Lr4/qn2;

    invoke-virtual {v0, p1}, Lr4/qn2;->Q(Lr4/lh0;)V

    return-void
.end method

.method public final declared-synchronized N4(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iput-boolean p1, p0, Lr4/ko2;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized O()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/uo1;->j()Z

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

.method public final declared-synchronized P1(Lr4/mh0;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p1, Lr4/mh0;->b:Ljava/lang/String;

    sget-object v1, Lr4/rz;->J3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    const-string v2, "NonagonUtil.isPatternMatched"

    invoke-virtual {v1, v0, v2}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lr4/ko2;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lr4/rz;->L3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    new-instance v0, Lr4/sn2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/sn2;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lr4/ko2;->k:Lr4/uo1;

    iget-object v1, p0, Lr4/ko2;->a:Lr4/ao2;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lr4/ao2;->i(I)V

    iget-object v1, p0, Lr4/ko2;->a:Lr4/ao2;

    iget-object v2, p1, Lr4/mh0;->a:Lr4/tt;

    iget-object p1, p1, Lr4/mh0;->b:Ljava/lang/String;

    new-instance v3, Lr4/io2;

    invoke-direct {v3, p0}, Lr4/io2;-><init>(Lr4/ko2;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lr4/ao2;->b(Lr4/tt;Ljava/lang/String;Lr4/r92;Lr4/s92;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final R4(Lr4/gh0;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setRewardedAdSkuListener"

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ko2;->b:Lr4/qn2;

    invoke-virtual {v0, p1}, Lr4/qn2;->U(Lr4/gh0;)V

    return-void
.end method

.method public final declared-synchronized a0(Lf4/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    :goto_0
    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

    invoke-virtual {v0}, Lr4/i31;->c()Lr4/j81;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/j81;->Z0(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a6(Lf4/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :cond_1
    :goto_0
    iget-object p1, p0, Lr4/ko2;->k:Lr4/uo1;

    iget-boolean v1, p0, Lr4/ko2;->p:Z

    invoke-virtual {p1, v1, v0}, Lr4/uo1;->g(ZLandroid/app/Activity;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lr4/ko2;->a6(Lf4/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/ko2;->O()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/ko2;->m0(Lf4/a;)V

    return-void
.end method

.method public final d1(Lr4/zv;)V
    .locals 2

    const-string v0, "setAdMetadataListener can only be called from the UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lr4/ko2;->b:Lr4/qn2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/qn2;->L(Lr4/cx2;)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/ko2;->b:Lr4/qn2;

    new-instance v1, Lr4/jo2;

    invoke-direct {v1, p0, p1}, Lr4/jo2;-><init>(Lr4/ko2;Lr4/zv;)V

    invoke-virtual {v0, v1}, Lr4/qn2;->L(Lr4/cx2;)V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/ko2;->s0(Lf4/a;)V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/ko2;->a0(Lf4/a;)V

    return-void
.end method

.method public final declared-synchronized h0(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setUserId must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ko2;->d:Lr4/cp2;

    iput-object p1, v0, Lr4/cp2;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

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

.method public final declared-synchronized m0(Lf4/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    :goto_0
    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

    invoke-virtual {v0}, Lr4/i31;->c()Lr4/j81;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/j81;->T0(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized n()Lr4/hx;
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
    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata can only be called from the UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

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

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/uo1;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized s0(Lf4/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ko2;->b:Lr4/qn2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/qn2;->L(Lr4/cx2;)V

    iget-object v0, p0, Lr4/ko2;->k:Lr4/uo1;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    :goto_0
    iget-object p1, p0, Lr4/ko2;->k:Lr4/uo1;

    invoke-virtual {p1}, Lr4/i31;->c()Lr4/j81;

    move-result-object p1

    invoke-virtual {p1, v1}, Lr4/j81;->e1(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized v6(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread.: setCustomData"

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/ko2;->d:Lr4/cp2;

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
