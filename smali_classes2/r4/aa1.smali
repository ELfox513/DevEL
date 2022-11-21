.class public final Lr4/aa1;
.super Lr4/yc1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/yc1<",
        "Lr4/ba1;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Lc4/f;

.field public k:J

.field public p:J

.field public q:Z

.field public r:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lc4/f;)V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lr4/yc1;-><init>(Ljava/util/Set;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/aa1;->k:J

    iput-wide v0, p0, Lr4/aa1;->p:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/aa1;->q:Z

    iput-object p1, p0, Lr4/aa1;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lr4/aa1;->d:Lc4/f;

    return-void
.end method


# virtual methods
.method public final declared-synchronized T0(I)V
    .locals 6

    monitor-enter p0

    if-gtz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-boolean p1, p0, Lr4/aa1;->q:Z

    if-eqz p1, :cond_2

    iget-wide v2, p0, Lr4/aa1;->p:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lr4/aa1;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object p1, p0, Lr4/aa1;->d:Lc4/f;

    invoke-interface {p1}, Lc4/f;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lr4/aa1;->k:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_4

    iget-object p1, p0, Lr4/aa1;->d:Lc4/f;

    invoke-interface {p1}, Lc4/f;->b()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v4, v2

    cmp-long p1, v4, v0

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {p0, v0, v1}, Lr4/aa1;->Z0(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Z0(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/aa1;->r:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/aa1;->r:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lr4/aa1;->d:Lc4/f;

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lr4/aa1;->k:J

    iget-object v0, p0, Lr4/aa1;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lr4/z91;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lr4/z91;-><init>(Lr4/aa1;Lr4/y91;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lr4/aa1;->r:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/aa1;->q:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lr4/aa1;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lr4/aa1;->r:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lr4/aa1;->p:J

    invoke-virtual {p0, v0, v1}, Lr4/aa1;->Z0(J)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/aa1;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lr4/aa1;->q:Z

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lr4/aa1;->Z0(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/aa1;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/aa1;->r:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/aa1;->r:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-wide v2, p0, Lr4/aa1;->k:J

    iget-object v0, p0, Lr4/aa1;->d:Lc4/f;

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lr4/aa1;->p:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lr4/aa1;->p:J

    :goto_0
    iput-boolean v1, p0, Lr4/aa1;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
