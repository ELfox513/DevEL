.class public Lcom/google/firebase/perf/metrics/AppStartTrace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/metrics/AppStartTrace$a;
    }
.end annotation


# static fields
.field public static final w:J

.field public static volatile x:Lcom/google/firebase/perf/metrics/AppStartTrace;


# instance fields
.field public a:Z

.field public final b:Li7/k;

.field public final d:Lj7/a;

.field public k:Landroid/content/Context;

.field public p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:Lj7/h;

.field public t:Lj7/h;

.field public u:Lj7/h;

.field public v:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->w:J

    return-void
.end method

.method public constructor <init>(Li7/k;Lj7/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lj7/h;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lj7/h;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Lj7/h;

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:Z

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Li7/k;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lj7/a;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/perf/metrics/AppStartTrace;)Lj7/h;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lj7/h;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/perf/metrics/AppStartTrace;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:Z

    return p1
.end method

.method public static c()Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 2

    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Lcom/google/firebase/perf/metrics/AppStartTrace;

    goto :goto_0

    :cond_0
    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v0

    new-instance v1, Lj7/a;

    invoke-direct {v1}, Lj7/a;-><init>()V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->d(Li7/k;Lj7/a;)Lcom/google/firebase/perf/metrics/AppStartTrace;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static d(Li7/k;Lj7/a;)Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 2

    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/perf/metrics/AppStartTrace;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/perf/metrics/AppStartTrace;-><init>(Li7/k;Lj7/a;)V

    sput-object v1, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Lcom/google/firebase/perf/metrics/AppStartTrace;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Lcom/google/firebase/perf/metrics/AppStartTrace;

    return-object p0
.end method

.method public static setLauncherActivityOnCreateTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method

.method public static setLauncherActivityOnResumeTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method

.method public static setLauncherActivityOnStartTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method


# virtual methods
.method public declared-synchronized e(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
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

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Landroid/content/Context;
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

.method public declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lj7/h;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->p:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lj7/a;

    invoke-virtual {p1}, Lj7/a;->a()Lj7/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lj7/h;

    invoke-static {}, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->getAppStartTime()Lj7/h;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lj7/h;

    invoke-virtual {p1, p2}, Lj7/h;->j(Lj7/h;)J

    move-result-wide p1

    sget-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->w:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Lj7/h;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->q:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lj7/a;

    invoke-virtual {v0}, Lj7/a;->a()Lj7/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Lj7/h;

    invoke-static {}, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->getAppStartTime()Lj7/h;

    move-result-object v0

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Lj7/h;

    invoke-virtual {v0, p1}, Lj7/h;->j(Lj7/h;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " microseconds"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc7/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lk7/m;->v0()Lk7/m$b;

    move-result-object p1

    sget-object v1, Lj7/c;->b:Lj7/c;

    invoke-virtual {v1}, Lj7/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lk7/m$b;->a0(Ljava/lang/String;)Lk7/m$b;

    move-result-object p1

    invoke-virtual {v0}, Lj7/h;->l()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lk7/m$b;->Y(J)Lk7/m$b;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Lj7/h;

    invoke-virtual {v0, v1}, Lj7/h;->j(Lj7/h;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lk7/m$b;->Z(J)Lk7/m$b;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lk7/m;->v0()Lk7/m$b;

    move-result-object v2

    sget-object v3, Lj7/c;->d:Lj7/c;

    invoke-virtual {v3}, Lj7/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lk7/m$b;->a0(Ljava/lang/String;)Lk7/m$b;

    move-result-object v2

    invoke-virtual {v0}, Lj7/h;->l()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk7/m$b;->Y(J)Lk7/m$b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lj7/h;

    invoke-virtual {v0, v3}, Lj7/h;->j(Lj7/h;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk7/m$b;->Z(J)Lk7/m$b;

    move-result-object v0

    invoke-virtual {v0}, Lo7/y$a;->D()Lo7/y;

    move-result-object v0

    check-cast v0, Lk7/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lk7/m;->v0()Lk7/m$b;

    move-result-object v0

    sget-object v2, Lj7/c;->k:Lj7/c;

    invoke-virtual {v2}, Lj7/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk7/m$b;->a0(Ljava/lang/String;)Lk7/m$b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lj7/h;

    invoke-virtual {v3}, Lj7/h;->l()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk7/m$b;->Y(J)Lk7/m$b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lj7/h;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lj7/h;

    invoke-virtual {v3, v4}, Lj7/h;->j(Lj7/h;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk7/m$b;->Z(J)Lk7/m$b;

    invoke-virtual {v0}, Lo7/y$a;->D()Lo7/y;

    move-result-object v0

    check-cast v0, Lk7/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lk7/m;->v0()Lk7/m$b;

    move-result-object v0

    sget-object v2, Lj7/c;->p:Lj7/c;

    invoke-virtual {v2}, Lj7/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk7/m$b;->a0(Ljava/lang/String;)Lk7/m$b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lj7/h;

    invoke-virtual {v3}, Lj7/h;->l()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk7/m$b;->Y(J)Lk7/m$b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lj7/h;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Lj7/h;

    invoke-virtual {v3, v4}, Lj7/h;->j(Lj7/h;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk7/m$b;->Z(J)Lk7/m$b;

    invoke-virtual {v0}, Lo7/y$a;->D()Lo7/y;

    move-result-object v0

    check-cast v0, Lk7/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Lk7/m$b;->S(Ljava/lang/Iterable;)Lk7/m$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lg7/a;

    move-result-object v1

    invoke-virtual {v1}, Lg7/a;->a()Lk7/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk7/m$b;->T(Lk7/k;)Lk7/m$b;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Li7/k;

    invoke-virtual {p1}, Lo7/y$a;->D()Lo7/y;

    move-result-object p1

    check-cast p1, Lk7/m;

    sget-object v1, Lk7/d;->p:Lk7/d;

    invoke-virtual {v0, p1, v1}, Li7/k;->C(Lk7/m;Lk7/d;)V

    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
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
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lj7/h;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lj7/a;

    invoke-virtual {p1}, Lj7/a;->a()Lj7/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lj7/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
