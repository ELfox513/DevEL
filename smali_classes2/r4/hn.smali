.class public final Lr4/hn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lr4/fn;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/hn;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/hn;->b:Lr4/fn;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/hn;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lr4/hn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/hn;->c:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p1

    :cond_0
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Application;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const-string p1, "Can not cast Context to Application"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v2, p0, Lr4/hn;->b:Lr4/fn;

    if-nez v2, :cond_3

    new-instance v2, Lr4/fn;

    invoke-direct {v2}, Lr4/fn;-><init>()V

    iput-object v2, p0, Lr4/hn;->b:Lr4/fn;

    :cond_3
    iget-object v2, p0, Lr4/hn;->b:Lr4/fn;

    invoke-virtual {v2, v1, p1}, Lr4/fn;->f(Landroid/app/Application;Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/hn;->c:Z

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lr4/gn;)V
    .locals 2

    iget-object v0, p0, Lr4/hn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/hn;->b:Lr4/fn;

    if-nez v1, :cond_0

    new-instance v1, Lr4/fn;

    invoke-direct {v1}, Lr4/fn;-><init>()V

    iput-object v1, p0, Lr4/hn;->b:Lr4/fn;

    :cond_0
    iget-object v1, p0, Lr4/hn;->b:Lr4/fn;

    invoke-virtual {v1, p1}, Lr4/fn;->g(Lr4/gn;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lr4/gn;)V
    .locals 2

    iget-object v0, p0, Lr4/hn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/hn;->b:Lr4/fn;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Lr4/fn;->h(Lr4/gn;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lr4/hn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/hn;->b:Lr4/fn;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lr4/fn;->i()Landroid/app/Activity;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lr4/hn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/hn;->b:Lr4/fn;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lr4/fn;->j()Landroid/content/Context;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
