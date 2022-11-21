.class public final Lx3/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lx3/q1;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ServiceConnection;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public d:Z

.field public k:Landroid/os/IBinder;

.field public final p:Lx3/l1;

.field public q:Landroid/content/ComponentName;

.field public final synthetic r:Lx3/p1;


# direct methods
.method public constructor <init>(Lx3/p1;Lx3/l1;)V
    .locals 0

    iput-object p1, p0, Lx3/n1;->r:Lx3/p1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx3/n1;->p:Lx3/l1;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lx3/n1;->a:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lx3/n1;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x3

    iput v0, p0, Lx3/n1;->b:I

    iget-object v0, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {v0}, Lx3/p1;->i(Lx3/p1;)Lb4/a;

    move-result-object v1

    iget-object v0, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {v0}, Lx3/p1;->h(Lx3/p1;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lx3/n1;->p:Lx3/l1;

    iget-object v3, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {v3}, Lx3/p1;->h(Lx3/p1;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lx3/l1;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    iget-object v0, p0, Lx3/n1;->p:Lx3/l1;

    invoke-virtual {v0}, Lx3/l1;->c()I

    move-result v6

    move-object v3, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lb4/a;->d(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lx3/n1;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {p1}, Lx3/p1;->g(Lx3/p1;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lx3/n1;->p:Lx3/l1;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {v0}, Lx3/p1;->g(Lx3/p1;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {v1}, Lx3/p1;->j(Lx3/p1;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lx3/n1;->b:I

    :try_start_0
    iget-object p1, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {p1}, Lx3/p1;->i(Lx3/p1;)Lb4/a;

    move-result-object p1

    iget-object v0, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {v0}, Lx3/p1;->h(Lx3/p1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lb4/a;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {p1}, Lx3/p1;->g(Lx3/p1;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lx3/n1;->p:Lx3/l1;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {p1}, Lx3/p1;->i(Lx3/p1;)Lb4/a;

    move-result-object p1

    iget-object v0, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {v0}, Lx3/p1;->h(Lx3/p1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lb4/a;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lx3/n1;->d:Z

    const/4 p1, 0x2

    iput p1, p0, Lx3/n1;->b:I

    return-void
.end method

.method public final c(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 0

    iget-object p3, p0, Lx3/n1;->a:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lx3/n1;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lx3/n1;->d:Z

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lx3/n1;->b:I

    return v0
.end method

.method public final g(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lx3/n1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lx3/n1;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final i()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lx3/n1;->k:Landroid/os/IBinder;

    return-object v0
.end method

.method public final j()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lx3/n1;->q:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {v0}, Lx3/p1;->f(Lx3/p1;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {v1}, Lx3/p1;->g(Lx3/p1;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lx3/n1;->p:Lx3/l1;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lx3/n1;->k:Landroid/os/IBinder;

    iput-object p1, p0, Lx3/n1;->q:Landroid/content/ComponentName;

    iget-object v1, p0, Lx3/n1;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lx3/n1;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {v0}, Lx3/p1;->f(Lx3/p1;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lx3/n1;->r:Lx3/p1;

    invoke-static {v1}, Lx3/p1;->g(Lx3/p1;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lx3/n1;->p:Lx3/l1;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lx3/n1;->k:Landroid/os/IBinder;

    iput-object p1, p0, Lx3/n1;->q:Landroid/content/ComponentName;

    iget-object v1, p0, Lx3/n1;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lx3/n1;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
