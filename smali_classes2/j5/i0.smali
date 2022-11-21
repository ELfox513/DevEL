.class public final Lj5/i0;
.super Lj5/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lj5/i<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lj5/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/e0<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lj5/i;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    new-instance v0, Lj5/e0;

    invoke-direct {v0}, Lj5/e0;-><init>()V

    iput-object v0, p0, Lj5/i0;->b:Lj5/e0;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lj5/i0;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lj5/i0;->b:Lj5/e0;

    invoke-virtual {v0, p0}, Lj5/e0;->b(Lj5/i;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Ljava/util/concurrent/Executor;Lj5/c;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lj5/c;",
            ")",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lj5/i0;->b:Lj5/e0;

    new-instance v1, Lj5/u;

    invoke-direct {v1, p1, p2}, Lj5/u;-><init>(Ljava/util/concurrent/Executor;Lj5/c;)V

    invoke-virtual {v0, v1}, Lj5/e0;->a(Lj5/d0;)V

    invoke-virtual {p0}, Lj5/i0;->A()V

    return-object p0
.end method

.method public final b(Landroid/app/Activity;Lj5/d;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lj5/d<",
            "TTResult;>;)",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lj5/w;

    sget-object v1, Lj5/k;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lj5/w;-><init>(Ljava/util/concurrent/Executor;Lj5/d;)V

    iget-object p2, p0, Lj5/i0;->b:Lj5/e0;

    invoke-virtual {p2, v0}, Lj5/e0;->a(Lj5/d0;)V

    invoke-static {p1}, Lj5/h0;->l(Landroid/app/Activity;)Lj5/h0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lj5/h0;->m(Lj5/d0;)V

    invoke-virtual {p0}, Lj5/i0;->A()V

    return-object p0
.end method

.method public final c(Lj5/d;)Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/d<",
            "TTResult;>;)",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lj5/k;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lj5/i0;->b:Lj5/e0;

    new-instance v2, Lj5/w;

    invoke-direct {v2, v0, p1}, Lj5/w;-><init>(Ljava/util/concurrent/Executor;Lj5/d;)V

    invoke-virtual {v1, v2}, Lj5/e0;->a(Lj5/d0;)V

    invoke-virtual {p0}, Lj5/i0;->A()V

    return-object p0
.end method

.method public final d(Ljava/util/concurrent/Executor;Lj5/d;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lj5/d<",
            "TTResult;>;)",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lj5/i0;->b:Lj5/e0;

    new-instance v1, Lj5/w;

    invoke-direct {v1, p1, p2}, Lj5/w;-><init>(Ljava/util/concurrent/Executor;Lj5/d;)V

    invoke-virtual {v0, v1}, Lj5/e0;->a(Lj5/d0;)V

    invoke-virtual {p0}, Lj5/i0;->A()V

    return-object p0
.end method

.method public final e(Ljava/util/concurrent/Executor;Lj5/e;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lj5/e;",
            ")",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lj5/i0;->b:Lj5/e0;

    new-instance v1, Lj5/y;

    invoke-direct {v1, p1, p2}, Lj5/y;-><init>(Ljava/util/concurrent/Executor;Lj5/e;)V

    invoke-virtual {v0, v1}, Lj5/e0;->a(Lj5/d0;)V

    invoke-virtual {p0}, Lj5/i0;->A()V

    return-object p0
.end method

.method public final f(Ljava/util/concurrent/Executor;Lj5/f;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lj5/f<",
            "-TTResult;>;)",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lj5/i0;->b:Lj5/e0;

    new-instance v1, Lj5/a0;

    invoke-direct {v1, p1, p2}, Lj5/a0;-><init>(Ljava/util/concurrent/Executor;Lj5/f;)V

    invoke-virtual {v0, v1}, Lj5/e0;->a(Lj5/d0;)V

    invoke-virtual {p0}, Lj5/i0;->A()V

    return-object p0
.end method

.method public final g(Lj5/a;)Lj5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/a<",
            "TTResult;TTContinuationResult;>;)",
            "Lj5/i<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lj5/k;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lj5/i;->h(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lj5/a<",
            "TTResult;TTContinuationResult;>;)",
            "Lj5/i<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lj5/i0;

    invoke-direct {v0}, Lj5/i0;-><init>()V

    iget-object v1, p0, Lj5/i0;->b:Lj5/e0;

    new-instance v2, Lj5/q;

    invoke-direct {v2, p1, p2, v0}, Lj5/q;-><init>(Ljava/util/concurrent/Executor;Lj5/a;Lj5/i0;)V

    invoke-virtual {v1, v2}, Lj5/e0;->a(Lj5/d0;)V

    invoke-virtual {p0}, Lj5/i0;->A()V

    return-object v0
.end method

.method public final i(Lj5/a;)Lj5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/a<",
            "TTResult;",
            "Lj5/i<",
            "TTContinuationResult;>;>;)",
            "Lj5/i<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lj5/k;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lj5/i;->j(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lj5/a<",
            "TTResult;",
            "Lj5/i<",
            "TTContinuationResult;>;>;)",
            "Lj5/i<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lj5/i0;

    invoke-direct {v0}, Lj5/i0;-><init>()V

    iget-object v1, p0, Lj5/i0;->b:Lj5/e0;

    new-instance v2, Lj5/s;

    invoke-direct {v2, p1, p2, v0}, Lj5/s;-><init>(Ljava/util/concurrent/Executor;Lj5/a;Lj5/i0;)V

    invoke-virtual {v1, v2}, Lj5/e0;->a(Lj5/d0;)V

    invoke-virtual {p0}, Lj5/i0;->A()V

    return-object v0
.end method

.method public final k()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj5/i0;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lj5/i0;->x()V

    invoke-virtual {p0}, Lj5/i0;->z()V

    iget-object v1, p0, Lj5/i0;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lj5/i0;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v2, Lj5/g;

    invoke-direct {v2, v1}, Lj5/g;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    iget-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lj5/i0;->x()V

    invoke-virtual {p0}, Lj5/i0;->z()V

    iget-object v1, p0, Lj5/i0;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lj5/i0;->f:Ljava/lang/Exception;

    if-nez p1, :cond_0

    iget-object p1, p0, Lj5/i0;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :cond_0
    new-instance v1, Lj5/g;

    invoke-direct {v1, p1}, Lj5/g;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lj5/i0;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lj5/i0;->d:Z

    return v0
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lj5/i0;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p()Z
    .locals 3

    iget-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lj5/i0;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lj5/i0;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lj5/i0;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

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

.method public final q(Lj5/h;)Lj5/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/h<",
            "TTResult;TTContinuationResult;>;)",
            "Lj5/i<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lj5/k;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lj5/i0;

    invoke-direct {v1}, Lj5/i0;-><init>()V

    iget-object v2, p0, Lj5/i0;->b:Lj5/e0;

    new-instance v3, Lj5/c0;

    invoke-direct {v3, v0, p1, v1}, Lj5/c0;-><init>(Ljava/util/concurrent/Executor;Lj5/h;Lj5/i0;)V

    invoke-virtual {v2, v3}, Lj5/e0;->a(Lj5/d0;)V

    invoke-virtual {p0}, Lj5/i0;->A()V

    return-object v1
.end method

.method public final r(Ljava/util/concurrent/Executor;Lj5/h;)Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lj5/h<",
            "TTResult;TTContinuationResult;>;)",
            "Lj5/i<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lj5/i0;

    invoke-direct {v0}, Lj5/i0;-><init>()V

    iget-object v1, p0, Lj5/i0;->b:Lj5/e0;

    new-instance v2, Lj5/c0;

    invoke-direct {v2, p1, p2, v0}, Lj5/c0;-><init>(Ljava/util/concurrent/Executor;Lj5/h;Lj5/i0;)V

    invoke-virtual {v1, v2}, Lj5/e0;->a(Lj5/d0;)V

    invoke-virtual {p0}, Lj5/i0;->A()V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lj5/i0;->y()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj5/i0;->c:Z

    iput-object p1, p0, Lj5/i0;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lj5/i0;->b:Lj5/e0;

    invoke-virtual {p1, p0}, Lj5/e0;->b(Lj5/i;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final t(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lj5/i0;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lj5/i0;->c:Z

    iput-object p1, p0, Lj5/i0;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lj5/i0;->b:Lj5/e0;

    invoke-virtual {p1, p0}, Lj5/e0;->b(Lj5/i;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final u(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lj5/i0;->y()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj5/i0;->c:Z

    iput-object p1, p0, Lj5/i0;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lj5/i0;->b:Lj5/e0;

    invoke-virtual {p1, p0}, Lj5/e0;->b(Lj5/i;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final v(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lj5/i0;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lj5/i0;->c:Z

    iput-object p1, p0, Lj5/i0;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lj5/i0;->b:Lj5/e0;

    invoke-virtual {p1, p0}, Lj5/e0;->b(Lj5/i;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final w()Z
    .locals 2

    iget-object v0, p0, Lj5/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lj5/i0;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lj5/i0;->c:Z

    iput-boolean v1, p0, Lj5/i0;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lj5/i0;->b:Lj5/e0;

    invoke-virtual {v0, p0}, Lj5/e0;->b(Lj5/i;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final x()V
    .locals 2

    iget-boolean v0, p0, Lj5/i0;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lx3/q;->n(ZLjava/lang/Object;)V

    return-void
.end method

.method public final y()V
    .locals 1

    iget-boolean v0, p0, Lj5/i0;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lj5/b;->a(Lj5/i;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final z()V
    .locals 2

    iget-boolean v0, p0, Lj5/i0;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
