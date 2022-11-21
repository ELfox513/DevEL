.class public final Lr4/oz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nm;
.implements Lr4/e81;
.implements La3/q;
.implements Lr4/d81;


# instance fields
.field public final a:Lr4/iz0;

.field public final b:Lr4/kz0;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lr4/cs0;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lr4/qa0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/qa0<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/concurrent/Executor;

.field public final q:Lc4/f;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Lr4/nz0;

.field public t:Z

.field public u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/na0;Lr4/kz0;Ljava/util/concurrent/Executor;Lr4/iz0;Lc4/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr4/oz0;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lr4/oz0;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lr4/nz0;

    invoke-direct {v0}, Lr4/nz0;-><init>()V

    iput-object v0, p0, Lr4/oz0;->s:Lr4/nz0;

    iput-boolean v1, p0, Lr4/oz0;->t:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr4/oz0;->u:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lr4/oz0;->a:Lr4/iz0;

    sget-object p4, Lr4/ba0;->b:Lr4/y90;

    const-string v0, "google.afma.activeView.handleUpdate"

    invoke-virtual {p1, v0, p4, p4}, Lr4/na0;->a(Ljava/lang/String;Lr4/w90;Lr4/v90;)Lr4/qa0;

    move-result-object p1

    iput-object p1, p0, Lr4/oz0;->k:Lr4/qa0;

    iput-object p2, p0, Lr4/oz0;->b:Lr4/kz0;

    iput-object p3, p0, Lr4/oz0;->p:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lr4/oz0;->q:Lc4/f;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A2()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/oz0;->s:Lr4/nz0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr4/nz0;->b:Z

    invoke-virtual {p0}, Lr4/oz0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final C6(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized Y(Lr4/mm;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/oz0;->s:Lr4/nz0;

    iget-boolean v1, p1, Lr4/mm;->j:Z

    iput-boolean v1, v0, Lr4/nz0;->a:Z

    iput-object p1, v0, Lr4/nz0;->f:Lr4/mm;

    invoke-virtual {p0}, Lr4/oz0;->a()V
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
    iget-object v0, p0, Lr4/oz0;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lr4/oz0;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/oz0;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lr4/oz0;->s:Lr4/nz0;

    iget-object v1, p0, Lr4/oz0;->q:Lc4/f;

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lr4/nz0;->d:J

    iget-object v0, p0, Lr4/oz0;->b:Lr4/kz0;

    iget-object v1, p0, Lr4/oz0;->s:Lr4/nz0;

    invoke-virtual {v0, v1}, Lr4/kz0;->a(Lr4/nz0;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lr4/oz0;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/cs0;

    iget-object v3, p0, Lr4/oz0;->p:Ljava/util/concurrent/Executor;

    new-instance v4, Lr4/mz0;

    invoke-direct {v4, v2, v0}, Lr4/mz0;-><init>(Lr4/cs0;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr4/oz0;->k:Lr4/qa0;

    invoke-virtual {v1, v0}, Lr4/qa0;->b(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    const-string v1, "ActiveViewListener.callActiveViewJs"

    invoke-static {v0, v1}, Lr4/tm0;->b(Lr4/h83;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Failed to call ActiveViewJS"

    invoke-static {v1, v0}, Lb3/w1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lr4/oz0;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/oz0;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/oz0;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final declared-synchronized d(Lr4/cs0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/oz0;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/oz0;->a:Lr4/iz0;

    invoke-virtual {v0, p1}, Lr4/iz0;->d(Lr4/cs0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized e0(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lr4/oz0;->s:Lr4/nz0;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lr4/nz0;->b:Z

    invoke-virtual {p0}, Lr4/oz0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e3()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/oz0;->s:Lr4/nz0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lr4/nz0;->b:Z

    invoke-virtual {p0}, Lr4/oz0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/oz0;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/oz0;->a:Lr4/iz0;

    invoke-virtual {v0, p0}, Lr4/iz0;->c(Lr4/oz0;)V

    invoke-virtual {p0}, Lr4/oz0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr4/oz0;->u:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final j0()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lr4/oz0;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/cs0;

    iget-object v2, p0, Lr4/oz0;->a:Lr4/iz0;

    invoke-virtual {v2, v1}, Lr4/iz0;->e(Lr4/cs0;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/oz0;->a:Lr4/iz0;

    invoke-virtual {v0}, Lr4/iz0;->f()V

    return-void
.end method

.method public final declared-synchronized o(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lr4/oz0;->s:Lr4/nz0;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lr4/nz0;->b:Z

    invoke-virtual {p0}, Lr4/oz0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized v(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lr4/oz0;->s:Lr4/nz0;

    const-string v0, "u"

    iput-object v0, p1, Lr4/nz0;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lr4/oz0;->a()V

    invoke-virtual {p0}, Lr4/oz0;->k()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/oz0;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
