.class public abstract Ln0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/e$b;,
        Ln0/e$d;,
        Ln0/e$a;,
        Ln0/e$c;
    }
.end annotation


# instance fields
.field public volatile a:Lq0/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Lq0/c;

.field public final e:Landroidx/room/c;

.field public f:Z

.field public g:Z

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln0/e$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Ln0/e;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ln0/e;->j:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ln0/e;->k:Ljava/util/Map;

    invoke-virtual {p0}, Ln0/e;->e()Landroidx/room/c;

    move-result-object v0

    iput-object v0, p0, Ln0/e;->e:Landroidx/room/c;

    return-void
.end method

.method public static n()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Ln0/e;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ln0/e;->n()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Ln0/e;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ln0/e;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ln0/e;->a()V

    iget-object v0, p0, Ln0/e;->d:Lq0/c;

    invoke-interface {v0}, Lq0/c;->n0()Lq0/b;

    move-result-object v0

    iget-object v1, p0, Ln0/e;->e:Landroidx/room/c;

    invoke-virtual {v1, v0}, Landroidx/room/c;->m(Lq0/b;)V

    invoke-interface {v0}, Lq0/b;->u()V

    return-void
.end method

.method public d(Ljava/lang/String;)Lq0/f;
    .locals 1

    invoke-virtual {p0}, Ln0/e;->a()V

    invoke-virtual {p0}, Ln0/e;->b()V

    iget-object v0, p0, Ln0/e;->d:Lq0/c;

    invoke-interface {v0}, Lq0/c;->n0()Lq0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lq0/b;->K(Ljava/lang/String;)Lq0/f;

    move-result-object p1

    return-object p1
.end method

.method public abstract e()Landroidx/room/c;
.end method

.method public abstract f(Ln0/a;)Lq0/c;
.end method

.method public g()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ln0/e;->d:Lq0/c;

    invoke-interface {v0}, Lq0/c;->n0()Lq0/b;

    move-result-object v0

    invoke-interface {v0}, Lq0/b;->s0()V

    invoke-virtual {p0}, Ln0/e;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln0/e;->e:Landroidx/room/c;

    invoke-virtual {v0}, Landroidx/room/c;->f()V

    :cond_0
    return-void
.end method

.method public h()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Ln0/e;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public i()Lq0/c;
    .locals 1

    iget-object v0, p0, Ln0/e;->d:Lq0/c;

    return-object v0
.end method

.method public j()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Ln0/e;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Ln0/e;->d:Lq0/c;

    invoke-interface {v0}, Lq0/c;->n0()Lq0/b;

    move-result-object v0

    invoke-interface {v0}, Lq0/b;->E0()Z

    move-result v0

    return v0
.end method

.method public l(Ln0/a;)V
    .locals 3

    invoke-virtual {p0, p1}, Ln0/e;->f(Ln0/a;)Lq0/c;

    move-result-object v0

    iput-object v0, p0, Ln0/e;->d:Lq0/c;

    instance-of v1, v0, Ln0/j;

    if-eqz v1, :cond_0

    check-cast v0, Ln0/j;

    invoke-virtual {v0, p1}, Ln0/j;->d(Ln0/a;)V

    :cond_0
    iget-object v0, p1, Ln0/a;->g:Ln0/e$c;

    sget-object v1, Ln0/e$c;->d:Ln0/e$c;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ln0/e;->d:Lq0/c;

    invoke-interface {v1, v0}, Lq0/c;->setWriteAheadLoggingEnabled(Z)V

    iget-object v1, p1, Ln0/a;->e:Ljava/util/List;

    iput-object v1, p0, Ln0/e;->h:Ljava/util/List;

    iget-object v1, p1, Ln0/a;->h:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Ln0/e;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln0/m;

    iget-object v2, p1, Ln0/a;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2}, Ln0/m;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Ln0/e;->c:Ljava/util/concurrent/Executor;

    iget-boolean v1, p1, Ln0/a;->f:Z

    iput-boolean v1, p0, Ln0/e;->f:Z

    iput-boolean v0, p0, Ln0/e;->g:Z

    iget-boolean v0, p1, Ln0/a;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln0/e;->e:Landroidx/room/c;

    iget-object v1, p1, Ln0/a;->b:Landroid/content/Context;

    iget-object p1, p1, Ln0/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/room/c;->i(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public m(Lq0/b;)V
    .locals 1

    iget-object v0, p0, Ln0/e;->e:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->d(Lq0/b;)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Ln0/e;->a:Lq0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lq0/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(Lq0/e;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ln0/e;->q(Lq0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public q(Lq0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    invoke-virtual {p0}, Ln0/e;->a()V

    invoke-virtual {p0}, Ln0/e;->b()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Ln0/e;->d:Lq0/c;

    invoke-interface {v0}, Lq0/c;->n0()Lq0/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lq0/b;->y0(Lq0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Ln0/e;->d:Lq0/c;

    invoke-interface {p2}, Lq0/c;->n0()Lq0/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lq0/b;->C0(Lq0/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public r()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ln0/e;->d:Lq0/c;

    invoke-interface {v0}, Lq0/c;->n0()Lq0/b;

    move-result-object v0

    invoke-interface {v0}, Lq0/b;->e0()V

    return-void
.end method
