.class public final Lr4/fn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/content/Context;

.field public final d:Ljava/lang/Object;

.field public k:Z

.field public p:Z

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/gn;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/vn;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/Runnable;

.field public t:Z

.field public u:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/fn;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/fn;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/fn;->p:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lr4/fn;->q:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lr4/fn;->r:Ljava/util/List;

    iput-boolean v0, p0, Lr4/fn;->t:Z

    return-void
.end method

.method public static synthetic a(Lr4/fn;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr4/fn;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lr4/fn;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/fn;->k:Z

    return p0
.end method

.method public static synthetic c(Lr4/fn;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/fn;->k:Z

    return p1
.end method

.method public static synthetic d(Lr4/fn;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/fn;->p:Z

    return p0
.end method

.method public static synthetic e(Lr4/fn;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lr4/fn;->q:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final f(Landroid/app/Application;Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lr4/fn;->t:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lr4/fn;->k(Landroid/app/Activity;)V

    :cond_0
    iput-object p1, p0, Lr4/fn;->b:Landroid/content/Context;

    sget-object p1, Lr4/rz;->D0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lr4/fn;->u:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/fn;->t:Z

    :cond_1
    return-void
.end method

.method public final g(Lr4/gn;)V
    .locals 2

    iget-object v0, p0, Lr4/fn;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/fn;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final h(Lr4/gn;)V
    .locals 2

    iget-object v0, p0, Lr4/fn;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/fn;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final i()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lr4/fn;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final j()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lr4/fn;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final k(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lr4/fn;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lr4/fn;->a:Landroid/app/Activity;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lr4/fn;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/fn;->a:Landroid/app/Activity;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/fn;->a:Landroid/app/Activity;

    :cond_0
    iget-object p1, p0, Lr4/fn;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/vn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Lr4/vn;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v2

    const-string v3, "AppActivityTracker.ActivityListener.onActivityDestroyed"

    invoke-virtual {v2, v1, v3}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {v2, v1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0, p1}, Lr4/fn;->k(Landroid/app/Activity;)V

    iget-object p1, p0, Lr4/fn;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/fn;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/vn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Lr4/vn;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v2

    const-string v3, "AppActivityTracker.ActivityListener.onActivityPaused"

    invoke-virtual {v2, v1, v3}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {v2, v1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/fn;->p:Z

    iget-object p1, p0, Lr4/fn;->s:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    sget-object p1, Lb3/k2;->i:Lr4/c03;

    new-instance v0, Lr4/en;

    invoke-direct {v0, p0}, Lr4/en;-><init>(Lr4/fn;)V

    iput-object v0, p0, Lr4/fn;->s:Ljava/lang/Runnable;

    iget-wide v1, p0, Lr4/fn;->u:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    invoke-virtual {p0, p1}, Lr4/fn;->k(Landroid/app/Activity;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/fn;->p:Z

    iget-boolean p1, p0, Lr4/fn;->k:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean v0, p0, Lr4/fn;->k:Z

    iget-object v1, p0, Lr4/fn;->s:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    sget-object v2, Lb3/k2;->i:Lr4/c03;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lr4/fn;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lr4/fn;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/vn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3}, Lr4/vn;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v4

    const-string v5, "AppActivityTracker.ActivityListener.onActivityResumed"

    invoke-virtual {v4, v3, v5}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v4, ""

    invoke-static {v4, v3}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lr4/fn;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/gn;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v2, v0}, Lr4/gn;->R(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    const-string v3, ""

    invoke-static {v3, v2}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string p1, "App is still foreground."

    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr4/fn;->k(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
