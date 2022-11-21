.class public final Lr4/t84;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lr4/q84<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lr4/q84<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lr4/q84<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Lr4/z74;

.field public final f:Lr4/i84;

.field public final g:[Lr4/j84;

.field public h:Lr4/b84;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/s84;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/r84;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lr4/g84;


# direct methods
.method public constructor <init>(Lr4/z74;Lr4/i84;I)V
    .locals 2

    new-instance p3, Lr4/g84;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lr4/g84;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lr4/t84;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr4/t84;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lr4/t84;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lr4/t84;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/t84;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/t84;->j:Ljava/util/List;

    iput-object p1, p0, Lr4/t84;->e:Lr4/z74;

    iput-object p2, p0, Lr4/t84;->f:Lr4/i84;

    const/4 p1, 0x4

    new-array p1, p1, [Lr4/j84;

    iput-object p1, p0, Lr4/t84;->g:[Lr4/j84;

    iput-object p3, p0, Lr4/t84;->k:Lr4/g84;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lr4/t84;->h:Lr4/b84;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/b84;->b()V

    :cond_0
    iget-object v0, p0, Lr4/t84;->g:[Lr4/j84;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lr4/j84;->a()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lr4/b84;

    iget-object v5, p0, Lr4/t84;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v6, p0, Lr4/t84;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v7, p0, Lr4/t84;->e:Lr4/z74;

    iget-object v8, p0, Lr4/t84;->k:Lr4/g84;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lr4/b84;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lr4/z74;Lr4/g84;[B)V

    iput-object v0, p0, Lr4/t84;->h:Lr4/b84;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    if-ge v1, v3, :cond_3

    new-instance v0, Lr4/j84;

    iget-object v5, p0, Lr4/t84;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v6, p0, Lr4/t84;->f:Lr4/i84;

    iget-object v7, p0, Lr4/t84;->e:Lr4/z74;

    iget-object v8, p0, Lr4/t84;->k:Lr4/g84;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lr4/j84;-><init>(Ljava/util/concurrent/BlockingQueue;Lr4/i84;Lr4/z74;Lr4/g84;[B)V

    iget-object v2, p0, Lr4/t84;->g:[Lr4/j84;

    aput-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final b(Lr4/q84;)Lr4/q84;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/q84<",
            "TT;>;)",
            "Lr4/q84<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lr4/q84;->n(Lr4/t84;)Lr4/q84;

    iget-object v0, p0, Lr4/t84;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/t84;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr4/t84;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lr4/q84;->p(I)Lr4/q84;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lr4/q84;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr4/t84;->d(Lr4/q84;I)V

    iget-object v0, p0, Lr4/t84;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Lr4/q84;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/q84<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/t84;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/t84;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lr4/t84;->i:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lr4/t84;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/s84;

    invoke-interface {v2}, Lr4/s84;->zza()V

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lr4/t84;->d(Lr4/q84;I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final d(Lr4/q84;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/q84<",
            "*>;I)V"
        }
    .end annotation

    iget-object p1, p0, Lr4/t84;->j:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lr4/t84;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/r84;

    invoke-interface {v0}, Lr4/r84;->zza()V

    goto :goto_0

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method
