.class public final Lr4/j84;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lr4/q84<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/i84;

.field public final d:Lr4/z74;

.field public volatile k:Z

.field public final p:Lr4/g84;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lr4/i84;Lr4/z74;Lr4/g84;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lr4/q84<",
            "*>;>;",
            "Lr4/i84;",
            "Lr4/z74;",
            "Lr4/g84;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lr4/j84;->k:Z

    iput-object p1, p0, Lr4/j84;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lr4/j84;->b:Lr4/i84;

    iput-object p3, p0, Lr4/j84;->d:Lr4/z74;

    iput-object p4, p0, Lr4/j84;->p:Lr4/g84;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/j84;->k:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lr4/j84;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/q84;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lr4/q84;->l(I)V

    const/4 v1, 0x4

    :try_start_0
    const-string v2, "network-queue-take"

    invoke-virtual {v0, v2}, Lr4/q84;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lr4/q84;->A()Z

    invoke-virtual {v0}, Lr4/q84;->f()I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v2, p0, Lr4/j84;->b:Lr4/i84;

    invoke-interface {v2, v0}, Lr4/i84;->a(Lr4/q84;)Lr4/l84;

    move-result-object v2

    const-string v3, "network-http-complete"

    invoke-virtual {v0, v3}, Lr4/q84;->h(Ljava/lang/String;)V

    iget-boolean v3, v2, Lr4/l84;->e:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lr4/q84;->F()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "not-modified"

    invoke-virtual {v0, v2}, Lr4/q84;->j(Ljava/lang/String;)V

    invoke-virtual {v0}, Lr4/q84;->M()V
    :try_end_0
    .catch Lr4/z84; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lr4/q84;->l(I)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Lr4/q84;->H(Lr4/l84;)Lr4/w84;

    move-result-object v2

    const-string v3, "network-parse-complete"

    invoke-virtual {v0, v3}, Lr4/q84;->h(Ljava/lang/String;)V

    iget-object v3, v2, Lr4/w84;->b:Lr4/y74;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lr4/j84;->d:Lr4/z74;

    invoke-virtual {v0}, Lr4/q84;->v()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lr4/w84;->b:Lr4/y74;

    invoke-interface {v3, v4, v5}, Lr4/z74;->a(Ljava/lang/String;Lr4/y74;)V

    const-string v3, "network-cache-written"

    invoke-virtual {v0, v3}, Lr4/q84;->h(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lr4/q84;->E()V

    iget-object v3, p0, Lr4/j84;->p:Lr4/g84;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Lr4/g84;->a(Lr4/q84;Lr4/w84;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lr4/q84;->L(Lr4/w84;)V
    :try_end_1
    .catch Lr4/z84; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0, v1}, Lr4/q84;->l(I)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Unhandled exception %s"

    invoke-static {v2, v4, v3}, Lr4/c94;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lr4/z84;

    invoke-direct {v3, v2}, Lr4/z84;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Lr4/j84;->p:Lr4/g84;

    invoke-virtual {v2, v0, v3}, Lr4/g84;->b(Lr4/q84;Lr4/z84;)V

    invoke-virtual {v0}, Lr4/q84;->M()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0, v1}, Lr4/q84;->l(I)V

    return-void

    :catch_1
    move-exception v2

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v3, p0, Lr4/j84;->p:Lr4/g84;

    invoke-virtual {v3, v0, v2}, Lr4/g84;->b(Lr4/q84;Lr4/z84;)V

    invoke-virtual {v0}, Lr4/q84;->M()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0, v1}, Lr4/q84;->l(I)V

    return-void

    :goto_0
    invoke-virtual {v0, v1}, Lr4/q84;->l(I)V

    throw v2
.end method

.method public final run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lr4/j84;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lr4/j84;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lr4/c94;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
