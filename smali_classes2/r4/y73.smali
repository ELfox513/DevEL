.class public final Lr4/y73;
.super Lr4/a83;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lr4/h83<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lr4/c83;->b:Lr4/h83;

    return-object p0

    :cond_0
    new-instance v0, Lr4/c83;

    invoke-direct {v0, p0}, Lr4/c83;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b()Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr4/c83;->b:Lr4/h83;

    return-object v0
.end method

.method public static c(Ljava/lang/Throwable;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lr4/h83<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lr4/b83;

    invoke-direct {v0, p0}, Lr4/b83;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr4/h83<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lr4/x83;

    invoke-direct {v0, p0}, Lr4/x83;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static e(Lr4/d73;Ljava/util/concurrent/Executor;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/d73<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr4/h83<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lr4/x83;

    invoke-direct {v0, p0}, Lr4/x83;-><init>(Lr4/d73;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static f(Lr4/h83;Ljava/lang/Class;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lr4/h83<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lr4/p03<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr4/h83<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lr4/a63;

    invoke-direct {v0, p0, p1, p2}, Lr4/a63;-><init>(Lr4/h83;Ljava/lang/Class;Lr4/p03;)V

    invoke-static {p3, v0}, Lr4/o83;->c(Ljava/util/concurrent/Executor;Lr4/p63;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lr4/h83<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lr4/e73<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr4/h83<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lr4/z53;

    invoke-direct {v0, p0, p1, p2}, Lr4/z53;-><init>(Lr4/h83;Ljava/lang/Class;Lr4/e73;)V

    invoke-static {p3, v0}, Lr4/o83;->c(Ljava/util/concurrent/Executor;Lr4/p63;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/h83<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lr4/h83<",
            "TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lr4/t83;->I(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/h83<",
            "TI;>;",
            "Lr4/e73<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr4/h83<",
            "TO;>;"
        }
    .end annotation

    sget v0, Lr4/u63;->u:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lr4/r63;

    invoke-direct {v0, p0, p1}, Lr4/r63;-><init>(Lr4/h83;Lr4/e73;)V

    invoke-static {p2, v0}, Lr4/o83;->c(Ljava/util/concurrent/Executor;Lr4/p63;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/h83<",
            "TI;>;",
            "Lr4/p03<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr4/h83<",
            "TO;>;"
        }
    .end annotation

    sget v0, Lr4/u63;->u:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lr4/s63;

    invoke-direct {v0, p0, p1}, Lr4/s63;-><init>(Lr4/h83;Lr4/p03;)V

    invoke-static {p2, v0}, Lr4/o83;->c(Ljava/util/concurrent/Executor;Lr4/p63;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static k(Ljava/lang/Iterable;)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lr4/h83<",
            "+TV;>;>;)",
            "Lr4/h83<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lr4/f73;

    invoke-static {p0}, Lr4/o33;->w(Ljava/lang/Iterable;)Lr4/o33;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lr4/f73;-><init>(Lr4/j33;Z)V

    return-object v0
.end method

.method public static varargs l([Lr4/h83;)Lr4/w73;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lr4/h83<",
            "+TV;>;)",
            "Lr4/w73<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lr4/w73;

    invoke-static {p0}, Lr4/o33;->y([Ljava/lang/Object;)Lr4/o33;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lr4/w73;-><init>(ZLr4/o33;Lr4/x73;)V

    return-object v0
.end method

.method public static m(Ljava/lang/Iterable;)Lr4/w73;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lr4/h83<",
            "+TV;>;>;)",
            "Lr4/w73<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lr4/w73;

    invoke-static {p0}, Lr4/o33;->w(Ljava/lang/Iterable;)Lr4/o33;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lr4/w73;-><init>(ZLr4/o33;Lr4/x73;)V

    return-object v0
.end method

.method public static varargs n([Lr4/h83;)Lr4/w73;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lr4/h83<",
            "+TV;>;)",
            "Lr4/w73<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lr4/w73;

    invoke-static {p0}, Lr4/o33;->y([Ljava/lang/Object;)Lr4/o33;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lr4/w73;-><init>(ZLr4/o33;Lr4/x73;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Iterable;)Lr4/w73;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lr4/h83<",
            "+TV;>;>;)",
            "Lr4/w73<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lr4/w73;

    invoke-static {p0}, Lr4/o33;->w(Ljava/lang/Iterable;)Lr4/o33;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lr4/w73;-><init>(ZLr4/o33;Lr4/x73;)V

    return-object v0
.end method

.method public static p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/h83<",
            "TV;>;",
            "Lr4/t73<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lr4/v73;

    invoke-direct {v0, p0, p1}, Lr4/v73;-><init>(Ljava/util/concurrent/Future;Lr4/t73;)V

    invoke-interface {p0, v0, p2}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static q(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lr4/z83;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Future was expected to be done: %s"

    invoke-static {p0, v1}, Lr4/l13;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lr4/z83;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    new-instance v0, Lr4/m73;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lr4/m73;-><init>(Ljava/lang/Error;)V

    throw v0

    :cond_0
    new-instance v0, Lr4/y83;

    invoke-direct {v0, p0}, Lr4/y83;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
