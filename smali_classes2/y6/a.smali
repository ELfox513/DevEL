.class public Ly6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/a$a;,
        Ly6/a$b;
    }
.end annotation


# static fields
.field public static final B:Lc7/a;

.field public static volatile C:Ly6/a;


# instance fields
.field public A:Z

.field public final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Ly6/a$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ly6/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final r:Li7/k;

.field public final s:Lz6/a;

.field public final t:Lj7/a;

.field public u:Lr/l;

.field public v:Lj7/h;

.field public w:Lj7/h;

.field public x:Lk7/d;

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v0

    sput-object v0, Ly6/a;->B:Lc7/a;

    return-void
.end method

.method public constructor <init>(Li7/k;Lj7/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ly6/a;->a:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ly6/a;->b:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly6/a;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ly6/a;->k:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ly6/a;->p:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ly6/a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lk7/d;->k:Lk7/d;

    iput-object v0, p0, Ly6/a;->x:Lk7/d;

    iput-boolean v1, p0, Ly6/a;->y:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly6/a;->z:Z

    iput-boolean v1, p0, Ly6/a;->A:Z

    iput-object p1, p0, Ly6/a;->r:Li7/k;

    iput-object p2, p0, Ly6/a;->t:Lj7/a;

    invoke-static {}, Lz6/a;->f()Lz6/a;

    move-result-object p1

    iput-object p1, p0, Ly6/a;->s:Lz6/a;

    invoke-virtual {p0}, Ly6/a;->d()Z

    move-result p1

    iput-boolean p1, p0, Ly6/a;->A:Z

    if-eqz p1, :cond_0

    new-instance p1, Lr/l;

    invoke-direct {p1}, Lr/l;-><init>()V

    iput-object p1, p0, Ly6/a;->u:Lr/l;

    :cond_0
    return-void
.end method

.method public static b()Ly6/a;
    .locals 4

    sget-object v0, Ly6/a;->C:Ly6/a;

    if-nez v0, :cond_1

    const-class v0, Ly6/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ly6/a;->C:Ly6/a;

    if-nez v1, :cond_0

    new-instance v1, Ly6/a;

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v2

    new-instance v3, Lj7/a;

    invoke-direct {v3}, Lj7/a;-><init>()V

    invoke-direct {v1, v2, v3}, Ly6/a;-><init>(Li7/k;Lj7/a;)V

    sput-object v1, Ly6/a;->C:Ly6/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Ly6/a;->C:Ly6/a;

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_st_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lk7/d;
    .locals 1

    iget-object v0, p0, Ly6/a;->x:Lk7/d;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/lang/String;J)V
    .locals 5

    iget-object v0, p0, Ly6/a;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ly6/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    iget-object v1, p0, Ly6/a;->d:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ly6/a;->d:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Ly6/a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Ly6/a;->z:Z

    return v0
.end method

.method public final h(Landroid/app/Activity;)Z
    .locals 0

    iget-boolean p1, p0, Ly6/a;->A:Z

    return p1
.end method

.method public declared-synchronized i(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ly6/a;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ly6/a;->y:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j(Ly6/a$a;)V
    .locals 2

    iget-object v0, p0, Ly6/a;->k:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ly6/a;->p:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ly6/a$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ly6/a;->k:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ly6/a;->k:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Ly6/a;->k:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ly6/a;->p:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/a$a;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ly6/a$a;->a()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final m(Landroid/app/Activity;)V
    .locals 9

    iget-object v0, p0, Ly6/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ly6/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Ly6/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ly6/a;->u:Lr/l;

    invoke-virtual {v1}, Lr/l;->b()[Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/2addr v3, v7

    const/16 v8, 0x2bc

    if-le v6, v8, :cond_2

    add-int/2addr v5, v7

    :cond_2
    const/16 v8, 0x10

    if-le v6, v8, :cond_3

    add-int/2addr v4, v7

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-lez v2, :cond_6

    sget-object v1, Lj7/b;->p:Lj7/b;

    invoke-virtual {v1}, Lj7/b;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v6, v2

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_6
    if-lez v4, :cond_7

    sget-object v1, Lj7/b;->q:Lj7/b;

    invoke-virtual {v1}, Lj7/b;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v6, v4

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_7
    if-lez v5, :cond_8

    sget-object v1, Lj7/b;->r:Lj7/b;

    invoke-virtual {v1}, Lj7/b;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v6, v5

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lj7/k;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Ly6/a;->B:Lc7/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendScreenTrace name:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ly6/a;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " _fr_tot:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " _fr_slo:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " _fr_fzn:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc7/a;->a(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-void
.end method

.method public final n(Ljava/lang/String;Lj7/h;Lj7/h;)V
    .locals 3

    iget-object v0, p0, Ly6/a;->s:Lz6/a;

    invoke-virtual {v0}, Lz6/a;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lk7/m;->v0()Lk7/m$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk7/m$b;->a0(Ljava/lang/String;)Lk7/m$b;

    move-result-object p1

    invoke-virtual {p2}, Lj7/h;->l()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lk7/m$b;->Y(J)Lk7/m$b;

    move-result-object p1

    invoke-virtual {p2, p3}, Lj7/h;->j(Lj7/h;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lk7/m$b;->Z(J)Lk7/m$b;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lg7/a;

    move-result-object p2

    invoke-virtual {p2}, Lg7/a;->a()Lk7/k;

    move-result-object p2

    invoke-virtual {p1, p2}, Lk7/m$b;->T(Lk7/k;)Lk7/m$b;

    move-result-object p1

    iget-object p2, p0, Ly6/a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p2

    iget-object p3, p0, Ly6/a;->d:Ljava/util/Map;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Ly6/a;->d:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lk7/m$b;->V(Ljava/util/Map;)Lk7/m$b;

    if-eqz p2, :cond_1

    sget-object v0, Lj7/b;->k:Lj7/b;

    invoke-virtual {v0}, Lj7/b;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lk7/m$b;->X(Ljava/lang/String;J)Lk7/m$b;

    :cond_1
    iget-object p2, p0, Ly6/a;->d:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Ly6/a;->r:Li7/k;

    invoke-virtual {p1}, Lo7/y$a;->D()Lo7/y;

    move-result-object p1

    check-cast p1, Lk7/m;

    sget-object p3, Lk7/d;->p:Lk7/d;

    invoke-virtual {p2, p1, p3}, Li7/k;->C(Lk7/m;Lk7/d;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public o(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ly6/a$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ly6/a;->k:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ly6/a;->k:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly6/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly6/a;->t:Lj7/a;

    invoke-virtual {v0}, Lj7/a;->a()Lj7/h;

    move-result-object v0

    iput-object v0, p0, Ly6/a;->v:Lj7/h;

    iget-object v0, p0, Ly6/a;->a:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lk7/d;->d:Lk7/d;

    invoke-virtual {p0, p1}, Ly6/a;->p(Lk7/d;)V

    iget-boolean p1, p0, Ly6/a;->z:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ly6/a;->l()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ly6/a;->z:Z

    goto :goto_0

    :cond_0
    sget-object p1, Lj7/c;->r:Lj7/c;

    invoke-virtual {p1}, Lj7/c;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ly6/a;->w:Lj7/h;

    iget-object v1, p0, Ly6/a;->v:Lj7/h;

    invoke-virtual {p0, p1, v0, v1}, Ly6/a;->n(Ljava/lang/String;Lj7/h;Lj7/h;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ly6/a;->a:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ly6/a;->h(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly6/a;->s:Lz6/a;

    invoke-virtual {v0}, Lz6/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly6/a;->u:Lr/l;

    invoke-virtual {v0, p1}, Lr/l;->a(Landroid/app/Activity;)V

    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-static {p1}, Ly6/a;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ly6/a;->r:Li7/k;

    iget-object v3, p0, Ly6/a;->t:Lj7/a;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Li7/k;Lj7/a;Ly6/a;)V

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    iget-object v1, p0, Ly6/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ly6/a;->h(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ly6/a;->m(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Ly6/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly6/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Ly6/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ly6/a;->t:Lj7/a;

    invoke-virtual {p1}, Lj7/a;->a()Lj7/h;

    move-result-object p1

    iput-object p1, p0, Ly6/a;->w:Lj7/h;

    sget-object p1, Lk7/d;->k:Lk7/d;

    invoke-virtual {p0, p1}, Ly6/a;->p(Lk7/d;)V

    sget-object p1, Lj7/c;->q:Lj7/c;

    invoke-virtual {p1}, Lj7/c;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ly6/a;->v:Lj7/h;

    iget-object v1, p0, Ly6/a;->w:Lj7/h;

    invoke-virtual {p0, p1, v0, v1}, Ly6/a;->n(Ljava/lang/String;Lj7/h;Lj7/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final p(Lk7/d;)V
    .locals 3

    iput-object p1, p0, Ly6/a;->x:Lk7/d;

    iget-object p1, p0, Ly6/a;->k:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ly6/a;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/a$b;

    if-eqz v1, :cond_0

    iget-object v2, p0, Ly6/a;->x:Lk7/d;

    invoke-interface {v1, v2}, Ly6/a$b;->onUpdateAppState(Lk7/d;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
