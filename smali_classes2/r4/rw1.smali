.class public final Lr4/rw1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lr4/i83;

.field public final c:Lr4/lx1;

.field public final d:Lr4/or3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/or3<",
            "Lr4/az1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lr4/i83;Lr4/lx1;Lr4/or3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lr4/i83;",
            "Lr4/lx1;",
            "Lr4/or3<",
            "Lr4/az1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/rw1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lr4/rw1;->b:Lr4/i83;

    iput-object p3, p0, Lr4/rw1;->c:Lr4/lx1;

    iput-object p4, p0, Lr4/rw1;->d:Lr4/or3;

    return-void
.end method


# virtual methods
.method public final a(Lr4/og0;)Lr4/h83;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/og0;",
            ")",
            "Lr4/h83<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lr4/og0;->k:Ljava/lang/String;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {v0}, Lb3/k2;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lr4/yx1;

    invoke-direct {v0, v1}, Lr4/yx1;-><init>(I)V

    invoke-static {v0}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/rw1;->c:Lr4/lx1;

    iget-object v2, v0, Lr4/jx1;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v0, Lr4/jx1;->d:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lr4/jx1;->a:Lr4/vm0;

    monitor-exit v2

    goto :goto_0

    :cond_1
    iput-boolean v1, v0, Lr4/jx1;->d:Z

    iput-object p1, v0, Lr4/jx1;->p:Lr4/og0;

    iget-object v1, v0, Lr4/jx1;->q:Lr4/yf0;

    invoke-virtual {v1}, Lx3/c;->p()V

    iget-object v1, v0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v3, Lr4/kx1;

    invoke-direct {v3, v0}, Lr4/kx1;-><init>(Lr4/lx1;)V

    sget-object v4, Lr4/qm0;->f:Lr4/i83;

    invoke-virtual {v1, v3, v4}, Lr4/vm0;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Lr4/jx1;->a:Lr4/vm0;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object v0

    sget-object v2, Lr4/rz;->P3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lr4/rw1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v5, v2

    invoke-static {v0, v5, v6, v3, v4}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object v0

    check-cast v0, Lr4/o73;

    new-instance v2, Lr4/qw1;

    invoke-direct {v2, p0, p1, v1}, Lr4/qw1;-><init>(Lr4/rw1;Lr4/og0;I)V

    const-class p1, Ljava/lang/Throwable;

    iget-object v1, p0, Lr4/rw1;->b:Lr4/i83;

    invoke-static {v0, p1, v2, v1}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final synthetic b(Lr4/og0;ILjava/lang/Throwable;)Lr4/h83;
    .locals 0

    iget-object p3, p0, Lr4/rw1;->d:Lr4/or3;

    invoke-interface {p3}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr4/az1;

    invoke-virtual {p3, p1, p2}, Lr4/az1;->i7(Lr4/og0;I)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
