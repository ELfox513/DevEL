.class public final Lr4/pv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/q;
.implements Lr4/qt0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/im0;

.field public d:Lr4/iv1;

.field public k:Lr4/cs0;

.field public p:Z

.field public q:Z

.field public r:J

.field public s:Lr4/yw;

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/im0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pv1;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/pv1;->b:Lr4/im0;

    return-void
.end method


# virtual methods
.method public final A2()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized C6(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lr4/pv1;->k:Lr4/cs0;

    invoke-interface {p1}, Lr4/cs0;->destroy()V

    iget-boolean p1, p0, Lr4/pv1;->t:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Inspector closed."

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/pv1;->s:Lr4/yw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1, v0}, Lr4/yw;->q0(Lr4/lt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :try_start_2
    iput-boolean p1, p0, Lr4/pv1;->q:Z

    iput-boolean p1, p0, Lr4/pv1;->p:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lr4/pv1;->r:J

    iput-boolean p1, p0, Lr4/pv1;->t:Z

    iput-object v0, p0, Lr4/pv1;->s:Lr4/yw;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized R(Z)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "Ad inspector loaded."

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    iput-boolean v0, p0, Lr4/pv1;->p:Z

    invoke-virtual {p0}, Lr4/pv1;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "Ad inspector failed to load."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lr4/pv1;->s:Lr4/yw;

    if-eqz p1, :cond_1

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v1

    invoke-interface {p1, v1}, Lr4/yw;->q0(Lr4/lt;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_1
    :try_start_3
    iput-boolean v0, p0, Lr4/pv1;->t:Z

    iget-object p1, p0, Lr4/pv1;->k:Lr4/cs0;

    invoke-interface {p1}, Lr4/cs0;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lr4/iv1;)V
    .locals 0

    iput-object p1, p0, Lr4/pv1;->d:Lr4/iv1;

    return-void
.end method

.method public final declared-synchronized b(Lr4/yw;Lr4/v50;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lr4/pv1;->f(Lr4/yw;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x11

    :try_start_1
    invoke-static {}, Lz2/t;->e()Lr4/os0;

    iget-object v5, v1, Lr4/pv1;->a:Landroid/content/Context;

    iget-object v12, v1, Lr4/pv1;->b:Lr4/im0;

    invoke-static {}, Lr4/vt0;->b()Lr4/vt0;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {}, Lr4/ip;->a()Lr4/ip;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v5 .. v18}, Lr4/os0;->a(Landroid/content/Context;Lr4/vt0;Ljava/lang/String;ZZLr4/u;Lr4/r00;Lr4/im0;Lr4/h00;Lz2/l;Lz2/a;Lr4/ip;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v0

    iput-object v0, v1, Lr4/pv1;->k:Lr4/cs0;
    :try_end_1
    .catch Lr4/ns0; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Failed to obtain a web view for the ad inspector"

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "Failed to obtain a web view for the ad inspector"

    invoke-static {v4, v0, v3}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v0

    invoke-interface {v2, v0}, Lr4/yw;->q0(Lr4/lt;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_4
    iput-object v2, v1, Lr4/pv1;->s:Lr4/yw;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object v5, v0

    move-object/from16 v20, p2

    invoke-interface/range {v5 .. v21}, Lr4/st0;->d0(Lr4/gt;Lr4/t40;La3/q;Lr4/v40;La3/x;ZLr4/x50;Lz2/b;Lr4/ge0;Lr4/ej0;Lr4/c12;Lr4/pu2;Lr4/ls1;Lr4/xt2;Lr4/v50;Lr4/cf1;)V

    invoke-interface {v0, v1}, Lr4/st0;->s0(Lr4/qt0;)V

    iget-object v0, v1, Lr4/pv1;->k:Lr4/cs0;

    sget-object v2, Lr4/rz;->q6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lr4/cs0;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Lz2/t;->c()La3/o;

    iget-object v0, v1, Lr4/pv1;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v1, Lr4/pv1;->k:Lr4/cs0;

    iget-object v4, v1, Lr4/pv1;->b:Lr4/im0;

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v5, v4}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(La3/q;Lr4/cs0;ILr4/im0;)V

    invoke-static {v0, v2, v5}, La3/o;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v2

    iput-wide v2, v1, Lr4/pv1;->r:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    :try_start_5
    const-string v5, "Failed to obtain a web view for the ad inspector"

    invoke-static {v5, v0}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v0, "Failed to obtain a web view for the ad inspector"

    invoke-static {v4, v0, v3}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v0

    invoke-interface {v2, v0}, Lr4/yw;->q0(Lr4/lt;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catch_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final synthetic d()V
    .locals 3

    iget-object v0, p0, Lr4/pv1;->k:Lr4/cs0;

    iget-object v1, p0, Lr4/pv1;->d:Lr4/iv1;

    invoke-virtual {v1}, Lr4/iv1;->m()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "window.inspectorInfo"

    invoke-interface {v0, v2, v1}, Lr4/s80;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final e3()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized f(Lr4/yw;)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Lr4/rz;->p6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "Ad inspector had an internal error."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1, v3, v3}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v0

    invoke-interface {p1, v0}, Lr4/yw;->q0(Lr4/lt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_2
    iget-object v0, p0, Lr4/pv1;->d:Lr4/iv1;

    if-nez v0, :cond_1

    const-string v0, "Ad inspector had an internal error."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v1, v3, v3}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v0

    invoke-interface {p1, v0}, Lr4/yw;->q0(Lr4/lt;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    monitor-exit p0

    return v2

    :cond_1
    :try_start_4
    iget-boolean v0, p0, Lr4/pv1;->p:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lr4/pv1;->q:Z

    if-nez v0, :cond_3

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    iget-wide v4, p0, Lr4/pv1;->r:J

    sget-object v6, Lr4/rz;->s6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v7

    invoke-virtual {v7, v6}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_3
    :goto_0
    :try_start_5
    const-string v0, "Ad inspector cannot be opened because it is already open."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v0, 0x13

    :try_start_6
    invoke-static {v0, v3, v3}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v0

    invoke-interface {p1, v0}, Lr4/yw;->q0(Lr4/lt;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/pv1;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/pv1;->q:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lr4/qm0;->e:Lr4/i83;

    new-instance v1, Lr4/ov1;

    invoke-direct {v1, p0}, Lr4/ov1;-><init>(Lr4/pv1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j0()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lr4/pv1;->q:Z

    invoke-virtual {p0}, Lr4/pv1;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
