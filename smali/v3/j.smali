.class public final Lv3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/a$f;
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final w:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final d:Landroid/content/ComponentName;

.field public final k:Landroid/content/Context;

.field public final p:Lv3/e;

.field public final q:Landroid/os/Handler;

.field public final r:Lv3/k;

.field public s:Landroid/os/IBinder;

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lv3/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lv3/j;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lv3/j;->j()V

    iput-object p1, p0, Lv3/j;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lv3/j;->e()V

    return-void
.end method

.method public final c()Z
    .locals 1

    invoke-virtual {p0}, Lv3/j;->j()V

    iget-boolean v0, p0, Lv3/j;->t:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lv3/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lv3/j;->d:Landroid/content/ComponentName;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv3/j;->d:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Lv3/j;->j()V

    const-string v0, "Disconnect called."

    invoke-virtual {p0, v0}, Lv3/j;->s(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lv3/j;->k:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/j;->t:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/j;->s:Landroid/os/IBinder;

    return-void
.end method

.method public final f(Lx3/c$e;)V
    .locals 0
    .param p1    # Lx3/c$e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final h(Lx3/c$c;)V
    .locals 3
    .param p1    # Lx3/c$c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lv3/j;->j()V

    const-string p1, "Connect started."

    invoke-virtual {p0, p1}, Lv3/j;->s(Ljava/lang/String;)V

    invoke-virtual {p0}, Lv3/j;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "connect() called when already connected"

    invoke-virtual {p0, p1}, Lv3/j;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lv3/j;->d:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lv3/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lv3/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lv3/j;->k:Landroid/content/Context;

    invoke-static {}, Lx3/h;->a()I

    move-result v2

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lv3/j;->t:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_2

    iput-object p1, p0, Lv3/j;->s:Landroid/os/IBinder;

    iget-object p1, p0, Lv3/j;->r:Lv3/k;

    new-instance v0, Lt3/b;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lt3/b;-><init>(I)V

    invoke-interface {p1, v0}, Lv3/k;->t0(Lt3/b;)V

    :cond_2
    const-string p1, "Finished connect."

    invoke-virtual {p0, p1}, Lv3/j;->s(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lv3/j;->t:Z

    iput-object p1, p0, Lv3/j;->s:Landroid/os/IBinder;

    throw v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lv3/j;->j()V

    iget-object v0, p0, Lv3/j;->s:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lv3/j;->q:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should only run on the NonGmsServiceBrokerClient\'s handler thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()[Lt3/d;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lt3/d;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lv3/j;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o(Lx3/j;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/j;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lv3/j;->q:Landroid/os/Handler;

    new-instance v0, Lv3/l0;

    invoke-direct {v0, p0, p2}, Lv3/l0;-><init>(Lv3/j;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lv3/j;->q:Landroid/os/Handler;

    new-instance v0, Lv3/n0;

    invoke-direct {v0, p0}, Lv3/n0;-><init>(Lv3/j;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv3/j;->v:Ljava/lang/String;

    return-void
.end method

.method public final synthetic q()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/j;->t:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/j;->s:Landroid/os/IBinder;

    const-string v0, "Disconnected."

    invoke-virtual {p0, v0}, Lv3/j;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lv3/j;->p:Lv3/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lv3/e;->j0(I)V

    return-void
.end method

.method public final synthetic r(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/j;->t:Z

    iput-object p1, p0, Lv3/j;->s:Landroid/os/IBinder;

    const-string p1, "Connected."

    invoke-virtual {p0, p1}, Lv3/j;->s(Ljava/lang/String;)V

    iget-object p1, p0, Lv3/j;->p:Lv3/e;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v0}, Lv3/e;->o0(Landroid/os/Bundle;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lv3/j;->s:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    return-void
.end method
