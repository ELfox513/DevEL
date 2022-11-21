.class public final Lr4/b84;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final r:Z


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

.field public final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lr4/q84<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Lr4/z74;

.field public volatile k:Z

.field public final p:Lr4/d94;

.field public final q:Lr4/g84;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lr4/c94;->b:Z

    sput-boolean v0, Lr4/b84;->r:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lr4/z74;Lr4/g84;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lr4/q84<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lr4/q84<",
            "*>;>;",
            "Lr4/z74;",
            "Lr4/g84;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lr4/b84;->k:Z

    iput-object p1, p0, Lr4/b84;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lr4/b84;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lr4/b84;->d:Lr4/z74;

    iput-object p4, p0, Lr4/b84;->q:Lr4/g84;

    new-instance p1, Lr4/d94;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p4, p3}, Lr4/d94;-><init>(Lr4/b84;Ljava/util/concurrent/BlockingQueue;Lr4/g84;[B)V

    iput-object p1, p0, Lr4/b84;->p:Lr4/d94;

    return-void
.end method

.method public static synthetic a(Lr4/b84;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lr4/b84;->b:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/b84;->k:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final c()V
    .locals 11

    iget-object v0, p0, Lr4/b84;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/q84;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lr4/q84;->h(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr4/q84;->l(I)V

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0}, Lr4/q84;->A()Z

    iget-object v3, p0, Lr4/b84;->d:Lr4/z74;

    invoke-virtual {v0}, Lr4/q84;->v()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lr4/z74;->q(Ljava/lang/String;)Lr4/y74;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lr4/q84;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lr4/b84;->p:Lr4/d94;

    invoke-virtual {v1, v0}, Lr4/d94;->c(Lr4/q84;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr4/b84;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0, v2}, Lr4/q84;->l(I)V

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lr4/y74;->a(J)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lr4/q84;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lr4/q84;->x(Lr4/y74;)Lr4/q84;

    iget-object v1, p0, Lr4/b84;->p:Lr4/d94;

    invoke-virtual {v1, v0}, Lr4/d94;->c(Lr4/q84;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lr4/b84;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v0, v2}, Lr4/q84;->l(I)V

    return-void

    :cond_3
    :try_start_2
    const-string v6, "cache-hit"

    invoke-virtual {v0, v6}, Lr4/q84;->h(Ljava/lang/String;)V

    new-instance v6, Lr4/l84;

    iget-object v7, v3, Lr4/y74;->a:[B

    iget-object v8, v3, Lr4/y74;->g:Ljava/util/Map;

    invoke-direct {v6, v7, v8}, Lr4/l84;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v6}, Lr4/q84;->H(Lr4/l84;)Lr4/w84;

    move-result-object v6

    const-string v7, "cache-hit-parsed"

    invoke-virtual {v0, v7}, Lr4/q84;->h(Ljava/lang/String;)V

    invoke-virtual {v6}, Lr4/w84;->c()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_5

    const-string v3, "cache-parsing-failed"

    invoke-virtual {v0, v3}, Lr4/q84;->h(Ljava/lang/String;)V

    iget-object v3, p0, Lr4/b84;->d:Lr4/z74;

    invoke-virtual {v0}, Lr4/q84;->v()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lr4/z74;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0, v8}, Lr4/q84;->x(Lr4/y74;)Lr4/q84;

    iget-object v1, p0, Lr4/b84;->p:Lr4/d94;

    invoke-virtual {v1, v0}, Lr4/d94;->c(Lr4/q84;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lr4/b84;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    invoke-virtual {v0, v2}, Lr4/q84;->l(I)V

    return-void

    :cond_5
    :try_start_3
    iget-wide v9, v3, Lr4/y74;->f:J

    cmp-long v7, v9, v4

    if-gez v7, :cond_7

    const-string v4, "cache-hit-refresh-needed"

    invoke-virtual {v0, v4}, Lr4/q84;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lr4/q84;->x(Lr4/y74;)Lr4/q84;

    iput-boolean v1, v6, Lr4/w84;->d:Z

    iget-object v1, p0, Lr4/b84;->p:Lr4/d94;

    invoke-virtual {v1, v0}, Lr4/d94;->c(Lr4/q84;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lr4/b84;->q:Lr4/g84;

    new-instance v3, Lr4/a84;

    invoke-direct {v3, p0, v0}, Lr4/a84;-><init>(Lr4/b84;Lr4/q84;)V

    invoke-virtual {v1, v0, v6, v3}, Lr4/g84;->a(Lr4/q84;Lr4/w84;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lr4/b84;->q:Lr4/g84;

    invoke-virtual {v1, v0, v6, v8}, Lr4/g84;->a(Lr4/q84;Lr4/w84;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lr4/b84;->q:Lr4/g84;

    invoke-virtual {v1, v0, v6, v8}, Lr4/g84;->a(Lr4/q84;Lr4/w84;Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {v0, v2}, Lr4/q84;->l(I)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v2}, Lr4/q84;->l(I)V

    throw v1
.end method

.method public final run()V
    .locals 3

    sget-boolean v0, Lr4/b84;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lr4/c94;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lr4/b84;->d:Lr4/z74;

    invoke-interface {v0}, Lr4/z74;->b()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lr4/b84;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lr4/b84;->k:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    invoke-static {v2, v0}, Lr4/c94;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
