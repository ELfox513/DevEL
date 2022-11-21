.class public final Lx5/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "awaitEvenIfOnMainThread task continuation executor"

    invoke-static {v0}, Lx5/t;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lx5/k0;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lj5/j;Lj5/i;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1}, Lx5/k0;->h(Lj5/j;Lj5/i;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lj5/j;Lj5/i;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1}, Lx5/k0;->g(Lj5/j;Lj5/i;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/concurrent/CountDownLatch;Lj5/i;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lx5/k0;->f(Ljava/util/concurrent/CountDownLatch;Lj5/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lj5/i;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/i<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, Lx5/k0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lx5/h0;

    invoke-direct {v2, v0}, Lx5/h0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1, v2}, Lj5/i;->h(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0x4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    :goto_0
    invoke-virtual {p0}, Lj5/i;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lj5/i;->n()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lj5/i;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "Lj5/i<",
            "TT;>;>;)",
            "Lj5/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lj5/j;

    invoke-direct {v0}, Lj5/j;-><init>()V

    new-instance v1, Lx5/k0$a;

    invoke-direct {v1, p1, v0}, Lx5/k0$a;-><init>(Ljava/util/concurrent/Callable;Lj5/j;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lj5/j;->a()Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/concurrent/CountDownLatch;Lj5/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic g(Lj5/j;Lj5/i;)Ljava/lang/Void;
    .locals 1

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj5/j;->e(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lj5/j;->d(Ljava/lang/Exception;)Z

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic h(Lj5/j;Lj5/i;)Ljava/lang/Void;
    .locals 1

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj5/j;->e(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lj5/j;->d(Ljava/lang/Exception;)Z

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Lj5/i;Lj5/i;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/i<",
            "TT;>;",
            "Lj5/i<",
            "TT;>;)",
            "Lj5/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lj5/j;

    invoke-direct {v0}, Lj5/j;-><init>()V

    new-instance v1, Lx5/j0;

    invoke-direct {v1, v0}, Lx5/j0;-><init>(Lj5/j;)V

    invoke-virtual {p0, v1}, Lj5/i;->g(Lj5/a;)Lj5/i;

    invoke-virtual {p1, v1}, Lj5/i;->g(Lj5/a;)Lj5/i;

    invoke-virtual {v0}, Lj5/j;->a()Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/util/concurrent/Executor;Lj5/i;Lj5/i;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lj5/i<",
            "TT;>;",
            "Lj5/i<",
            "TT;>;)",
            "Lj5/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lj5/j;

    invoke-direct {v0}, Lj5/j;-><init>()V

    new-instance v1, Lx5/i0;

    invoke-direct {v1, v0}, Lx5/i0;-><init>(Lj5/j;)V

    invoke-virtual {p1, p0, v1}, Lj5/i;->h(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    invoke-virtual {p2, p0, v1}, Lj5/i;->h(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    invoke-virtual {v0}, Lj5/j;->a()Lj5/i;

    move-result-object p0

    return-object p0
.end method
