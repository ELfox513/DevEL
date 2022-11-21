.class public final Lr4/mj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# instance fields
.field public final synthetic a:Lr4/s92;

.field public final synthetic b:Lr4/nj2;

.field public final synthetic c:Lr4/pj2;


# direct methods
.method public constructor <init>(Lr4/pj2;Lr4/s92;Lr4/nj2;)V
    .locals 0

    iput-object p1, p0, Lr4/mj2;->c:Lr4/pj2;

    iput-object p2, p0, Lr4/mj2;->a:Lr4/s92;

    iput-object p3, p0, Lr4/mj2;->b:Lr4/nj2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lr4/mj2;->c:Lr4/pj2;

    invoke-static {v0}, Lr4/pj2;->f(Lr4/pj2;)Lr4/am2;

    move-result-object v0

    invoke-interface {v0}, Lr4/am2;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/o01;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lr4/dq2;->b(Ljava/lang/Throwable;Lr4/v12;)Lr4/lt;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lr4/r61;->r()Lr4/m41;

    move-result-object v2

    invoke-virtual {v2, p1}, Lr4/m41;->h(Ljava/lang/Throwable;)Lr4/lt;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lr4/mj2;->c:Lr4/pj2;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lr4/mj2;->c:Lr4/pj2;

    invoke-static {v4, v1}, Lr4/pj2;->g(Lr4/pj2;Lr4/h83;)Lr4/h83;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lr4/o01;->x()Lr4/l71;

    move-result-object v0

    invoke-virtual {v0, v2}, Lr4/l71;->B(Lr4/lt;)V

    sget-object v0, Lr4/rz;->P5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/mj2;->c:Lr4/pj2;

    invoke-static {v0}, Lr4/pj2;->d(Lr4/pj2;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lr4/lj2;

    invoke-direct {v1, p0, v2}, Lr4/lj2;-><init>(Lr4/mj2;Lr4/lt;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lr4/mj2;->c:Lr4/pj2;

    invoke-static {v0}, Lr4/pj2;->e(Lr4/pj2;)Lr4/fk2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lr4/fk2;->B(Lr4/lt;)V

    iget-object v0, p0, Lr4/mj2;->c:Lr4/pj2;

    iget-object v1, p0, Lr4/mj2;->b:Lr4/nj2;

    invoke-static {v0, v1}, Lr4/pj2;->h(Lr4/pj2;Lr4/yl2;)Lr4/q61;

    move-result-object v0

    invoke-interface {v0}, Lr4/q61;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/o01;

    invoke-interface {v0}, Lr4/r61;->r()Lr4/m41;

    move-result-object v0

    invoke-virtual {v0}, Lr4/m41;->e()Lr4/tc1;

    move-result-object v0

    invoke-virtual {v0}, Lr4/tc1;->o()V

    :cond_2
    :goto_1
    iget v0, v2, Lr4/lt;->a:I

    const-string v1, "AppOpenAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lr4/yp2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lr4/mj2;->a:Lr4/s92;

    invoke-interface {p1}, Lr4/s92;->zza()V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lr4/i31;

    iget-object v0, p0, Lr4/mj2;->c:Lr4/pj2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/mj2;->c:Lr4/pj2;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/pj2;->g(Lr4/pj2;Lr4/h83;)Lr4/h83;

    sget-object v1, Lr4/rz;->P5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lr4/i31;->f()Lr4/ub1;

    move-result-object v1

    iget-object v2, p0, Lr4/mj2;->c:Lr4/pj2;

    invoke-static {v2}, Lr4/pj2;->e(Lr4/pj2;)Lr4/fk2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr4/ub1;->c(Lr4/fk2;)Lr4/ub1;

    :cond_0
    iget-object v1, p0, Lr4/mj2;->a:Lr4/s92;

    invoke-interface {v1, p1}, Lr4/s92;->b(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
