.class public final Lr4/at0;
.super Lr4/kx;
.source "SourceFile"


# instance fields
.field public final a:Lr4/po0;

.field public final b:Ljava/lang/Object;

.field public final d:Z

.field public final k:Z

.field public p:I

.field public q:Lr4/ox;

.field public r:Z

.field public s:Z

.field public t:F

.field public u:F

.field public v:F

.field public w:Z

.field public x:Z

.field public y:Lr4/u30;


# direct methods
.method public constructor <init>(Lr4/po0;FZZ)V
    .locals 1

    invoke-direct {p0}, Lr4/kx;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/at0;->s:Z

    iput-object p1, p0, Lr4/at0;->a:Lr4/po0;

    iput p2, p0, Lr4/at0;->t:F

    iput-boolean p3, p0, Lr4/at0;->d:Z

    iput-boolean p4, p0, Lr4/at0;->k:Z

    return-void
.end method


# virtual methods
.method public final U4(Lr4/ox;)V
    .locals 1

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lr4/at0;->q:Lr4/ox;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 2

    const-string v0, "play"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lr4/at0;->m7(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final d()V
    .locals 2

    const-string v0, "pause"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lr4/at0;->m7(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/at0;->s:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g7(Lr4/xy;)V
    .locals 9

    iget-boolean v0, p1, Lr4/xy;->a:Z

    iget-boolean v1, p1, Lr4/xy;->b:Z

    iget-boolean p1, p1, Lr4/xy;->d:Z

    iget-object v2, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-boolean v1, p0, Lr4/at0;->w:Z

    iput-boolean p1, p0, Lr4/at0;->x:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    move-object v4, v0

    if-eq v2, v1, :cond_1

    const-string v0, "0"

    goto :goto_1

    :cond_1
    const-string v0, "1"

    :goto_1
    move-object v6, v0

    if-eq v2, p1, :cond_2

    const-string p1, "0"

    goto :goto_2

    :cond_2
    const-string p1, "1"

    :goto_2
    move-object v8, p1

    const-string p1, "initialState"

    const-string v3, "muteStart"

    const-string v5, "customControlsRequested"

    const-string v7, "clickToExpandRequested"

    invoke-static/range {v3 .. v8}, Lc4/g;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lr4/at0;->m7(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h()F
    .locals 2

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/at0;->t:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h7(F)V
    .locals 1

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lr4/at0;->u:F

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final i()F
    .locals 2

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/at0;->u:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i7(FFIZF)V
    .locals 3

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/at0;->t:F

    const/4 v2, 0x1

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    iget v1, p0, Lr4/at0;->v:F

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iput p2, p0, Lr4/at0;->t:F

    iput p1, p0, Lr4/at0;->u:F

    iget-boolean p1, p0, Lr4/at0;->s:Z

    iput-boolean p4, p0, Lr4/at0;->s:Z

    iget p2, p0, Lr4/at0;->p:I

    iput p3, p0, Lr4/at0;->p:I

    iget v1, p0, Lr4/at0;->v:F

    iput p5, p0, Lr4/at0;->v:F

    sub-float/2addr p5, v1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float p5, p5, v1

    if-lez p5, :cond_2

    iget-object p5, p0, Lr4/at0;->a:Lr4/po0;

    invoke-interface {p5}, Lr4/pt0;->I()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    :try_start_1
    iget-object p5, p0, Lr4/at0;->y:Lr4/u30;

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Lr4/u30;->c()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p5

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p5}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    invoke-virtual {p0, p2, p3, p1, p4}, Lr4/at0;->n7(IIZZ)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final j()I
    .locals 2

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/at0;->p:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final synthetic j7(IIZZ)V
    .locals 8

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/at0;->r:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-ne p2, v3, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v4, p2

    const/4 v5, 0x0

    :goto_0
    if-eq p1, p2, :cond_1

    if-ne v4, v3, :cond_1

    const/4 v4, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eq p1, p2, :cond_2

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eq p1, p2, :cond_3

    const/4 p1, 0x3

    if-ne v4, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-nez v1, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    iput-boolean v2, p0, Lr4/at0;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_6

    :try_start_1
    iget-object p2, p0, Lr4/at0;->q:Lr4/ox;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lr4/ox;->c()V

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    iget-object p2, p0, Lr4/at0;->q:Lr4/ox;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lr4/ox;->d()V

    :cond_7
    if-eqz v7, :cond_8

    iget-object p2, p0, Lr4/at0;->q:Lr4/ox;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Lr4/ox;->g()V

    :cond_8
    if-eqz p1, :cond_a

    iget-object p1, p0, Lr4/at0;->q:Lr4/ox;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lr4/ox;->f()V

    :cond_9
    iget-object p1, p0, Lr4/at0;->a:Lr4/po0;

    invoke-interface {p1}, Lr4/po0;->z()V

    :cond_a
    if-eq p3, p4, :cond_b

    iget-object p1, p0, Lr4/at0;->q:Lr4/ox;

    if-eqz p1, :cond_b

    invoke-interface {p1, p4}, Lr4/ox;->w4(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_2
    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final synthetic k7(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lr4/at0;->a:Lr4/po0;

    const-string v1, "pubVideoCmd"

    invoke-interface {v0, v1, p1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final l()F
    .locals 2

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/at0;->v:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l7(Lr4/u30;)V
    .locals 1

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lr4/at0;->y:Lr4/u30;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final m()V
    .locals 2

    const-string v0, "stop"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lr4/at0;->m7(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final m7(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_0
    const-string v0, "action"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lr4/qm0;->e:Lr4/i83;

    new-instance v0, Lr4/ys0;

    invoke-direct {v0, p0, p2}, Lr4/ys0;-><init>(Lr4/at0;Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n0(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const-string p1, "unmute"

    goto :goto_0

    :cond_0
    const-string p1, "mute"

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr4/at0;->m7(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final n7(IIZZ)V
    .locals 8

    sget-object v0, Lr4/qm0;->e:Lr4/i83;

    new-instance v7, Lr4/zs0;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lr4/zs0;-><init>(Lr4/at0;IIZZ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o()Z
    .locals 3

    invoke-virtual {p0}, Lr4/at0;->p()Z

    move-result v0

    iget-object v1, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lr4/at0;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lr4/at0;->k:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final p()Z
    .locals 3

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/at0;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lr4/at0;->w:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final q()Lr4/ox;
    .locals 2

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/at0;->q:Lr4/ox;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final w()V
    .locals 4

    iget-object v0, p0, Lr4/at0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/at0;->s:Z

    iget v2, p0, Lr4/at0;->p:I

    const/4 v3, 0x3

    iput v3, p0, Lr4/at0;->p:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2, v3, v1, v1}, Lr4/at0;->n7(IIZZ)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
