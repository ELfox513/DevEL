.class public final Lr4/w71;
.super Lr4/yc1;
.source "SourceFile"

# interfaces
.implements Lr4/n71;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/yc1<",
        "Lr4/n71;",
        ">;",
        "Lr4/n71;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public k:Z

.field public final p:Z


# direct methods
.method public constructor <init>(Lr4/v71;Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/v71;",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/n71;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lr4/yc1;-><init>(Ljava/util/Set;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lr4/w71;->k:Z

    iput-object p4, p0, Lr4/w71;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p2, Lr4/rz;->X6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p4

    invoke-virtual {p4, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lr4/w71;->p:Z

    invoke-virtual {p0, p1, p3}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final S(Lr4/lt;)V
    .locals 1

    new-instance v0, Lr4/o71;

    invoke-direct {v0, p1}, Lr4/o71;-><init>(Lr4/lt;)V

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    return-void
.end method

.method public final U(Lr4/ch1;)V
    .locals 2

    iget-boolean v0, p0, Lr4/w71;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/w71;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/w71;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    new-instance v0, Lr4/p71;

    invoke-direct {v0, p1}, Lr4/p71;-><init>(Lr4/ch1;)V

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/w71;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/w71;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

.method public final c()V
    .locals 5

    iget-boolean v0, p0, Lr4/w71;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lr4/rz;->Y6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lr4/w71;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lr4/r71;

    invoke-direct {v2, p0}, Lr4/r71;-><init>(Lr4/w71;)V

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lr4/w71;->d:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final synthetic d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Timeout waiting for show call succeed to be called."

    invoke-static {v0}, Lr4/cm0;->c(Ljava/lang/String;)V

    new-instance v0, Lr4/ch1;

    const-string v1, "Timeout for show call succeed."

    invoke-direct {v0, v1}, Lr4/ch1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lr4/w71;->U(Lr4/ch1;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/w71;->k:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 1

    sget-object v0, Lr4/q71;->a:Lr4/xc1;

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    return-void
.end method
