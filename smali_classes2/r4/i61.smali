.class public final Lr4/i61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/j71;
.implements Lr4/me1;
.implements Lr4/ic1;
.implements Lr4/z71;


# instance fields
.field public final a:Lr4/b81;

.field public final b:Lr4/no2;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final k:Ljava/util/concurrent/Executor;

.field public final p:Lr4/p83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/p83<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/b81;Lr4/no2;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lr4/p83;->E()Lr4/p83;

    move-result-object v0

    iput-object v0, p0, Lr4/i61;->p:Lr4/p83;

    iput-object p1, p0, Lr4/i61;->a:Lr4/b81;

    iput-object p2, p0, Lr4/i61;->b:Lr4/no2;

    iput-object p3, p0, Lr4/i61;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lr4/i61;->k:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic d(Lr4/i61;)Lr4/b81;
    .locals 0

    iget-object p0, p0, Lr4/i61;->a:Lr4/b81;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    sget-object v0, Lr4/rz;->a1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/i61;->b:Lr4/no2;

    iget v1, v0, Lr4/no2;->U:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v0, v0, Lr4/no2;->q:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/i61;->a:Lr4/b81;

    invoke-virtual {v0}, Lr4/b81;->zza()V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/i61;->p:Lr4/p83;

    new-instance v1, Lr4/h61;

    invoke-direct {v1, p0}, Lr4/h61;-><init>(Lr4/i61;)V

    iget-object v2, p0, Lr4/i61;->k:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lr4/i61;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lr4/g61;

    invoke-direct {v1, p0}, Lr4/g61;-><init>(Lr4/i61;)V

    iget-object v2, p0, Lr4/i61;->b:Lr4/no2;

    iget v2, v2, Lr4/no2;->q:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lr4/i61;->q:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/i61;->p:Lr4/p83;

    invoke-virtual {v0}, Lr4/p63;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/i61;->q:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lr4/i61;->p:Lr4/p83;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr4/p83;->u(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lr4/i61;->b:Lr4/no2;

    iget v0, v0, Lr4/no2;->U:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lr4/i61;->a:Lr4/b81;

    invoke-virtual {v0}, Lr4/b81;->zza()V

    return-void
.end method

.method public final synthetic g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/i61;->p:Lr4/p83;

    invoke-virtual {v0}, Lr4/p63;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/i61;->p:Lr4/p83;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr4/p83;->u(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized o(Lr4/lt;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lr4/i61;->p:Lr4/p83;

    invoke-virtual {p1}, Lr4/p63;->isDone()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lr4/i61;->q:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object p1, p0, Lr4/i61;->p:Lr4/p83;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lr4/p83;->v(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final q(Lr4/eh0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
