.class public final Lr4/wv1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/i83;

.field public final b:Lr4/i83;

.field public final c:Lr4/fx1;

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
.method public constructor <init>(Lr4/i83;Lr4/i83;Lr4/fx1;Lr4/or3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/i83;",
            "Lr4/i83;",
            "Lr4/fx1;",
            "Lr4/or3<",
            "Lr4/az1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wv1;->a:Lr4/i83;

    iput-object p2, p0, Lr4/wv1;->b:Lr4/i83;

    iput-object p3, p0, Lr4/wv1;->c:Lr4/fx1;

    iput-object p4, p0, Lr4/wv1;->d:Lr4/or3;

    return-void
.end method


# virtual methods
.method public final a(Lr4/og0;)Lr4/h83;
    .locals 4
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

    if-eqz v0, :cond_0

    new-instance v0, Lr4/yx1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr4/yx1;-><init>(I)V

    invoke-static {v0}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/wv1;->a:Lr4/i83;

    new-instance v1, Lr4/tv1;

    invoke-direct {v1, p0, p1}, Lr4/tv1;-><init>(Lr4/wv1;Lr4/og0;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ExecutionException;

    sget-object v2, Lr4/uv1;->a:Lr4/e73;

    iget-object v3, p0, Lr4/wv1;->b:Lr4/i83;

    invoke-static {v0, v1, v2, v3}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Lr4/vv1;

    invoke-direct {v2, p0, p1, v1}, Lr4/vv1;-><init>(Lr4/wv1;Lr4/og0;I)V

    const-class p1, Lr4/yx1;

    iget-object v1, p0, Lr4/wv1;->b:Lr4/i83;

    invoke-static {v0, p1, v2, v1}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lr4/og0;ILr4/yx1;)Lr4/h83;
    .locals 0

    iget-object p3, p0, Lr4/wv1;->d:Lr4/or3;

    invoke-interface {p3}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr4/az1;

    invoke-virtual {p3, p1, p2}, Lr4/az1;->f7(Lr4/og0;I)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lr4/og0;)Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, Lr4/wv1;->c:Lr4/fx1;

    iget-object v1, v0, Lr4/jx1;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lr4/jx1;->d:Z

    if-eqz v2, :cond_0

    iget-object p1, v0, Lr4/jx1;->a:Lr4/vm0;

    monitor-exit v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lr4/jx1;->d:Z

    iput-object p1, v0, Lr4/jx1;->p:Lr4/og0;

    iget-object p1, v0, Lr4/jx1;->q:Lr4/yf0;

    invoke-virtual {p1}, Lx3/c;->p()V

    iget-object p1, v0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v2, Lr4/ex1;

    invoke-direct {v2, v0}, Lr4/ex1;-><init>(Lr4/fx1;)V

    sget-object v3, Lr4/qm0;->f:Lr4/i83;

    invoke-virtual {p1, v2, v3}, Lr4/vm0;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, v0, Lr4/jx1;->a:Lr4/vm0;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sget-object v0, Lr4/rz;->P3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
