.class public final Lj5/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lj5/i;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lj5/i;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/i<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    invoke-static {}, Lx3/q;->h()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj5/i;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lj5/l;->i(Lj5/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lj5/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj5/m;-><init>(Lj5/j0;)V

    invoke-static {p0, v0}, Lj5/l;->j(Lj5/i;Lj5/n;)V

    invoke-virtual {v0, p1, p2, p3}, Lj5/m;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lj5/l;->i(Lj5/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lj5/i;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Executor must not be null"

    invoke-static {p0, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj5/i0;

    invoke-direct {v0}, Lj5/i0;-><init>()V

    new-instance v1, Lj5/j0;

    invoke-direct {v1, v0, p1}, Lj5/j0;-><init>(Lj5/i0;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Exception;)Lj5/i;
    .locals 1
    .param p0    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lj5/i0;

    invoke-direct {v0}, Lj5/i0;-><init>()V

    invoke-virtual {v0, p0}, Lj5/i0;->u(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Lj5/i;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lj5/i0;

    invoke-direct {v0}, Lj5/i0;-><init>()V

    invoke-virtual {v0, p0}, Lj5/i0;->s(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Ljava/util/Collection;)Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lj5/i<",
            "*>;>;)",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj5/i;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null tasks are not accepted"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Lj5/i0;

    invoke-direct {v0}, Lj5/i0;-><init>()V

    new-instance v1, Lj5/o;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lj5/o;-><init>(ILj5/i0;)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj5/i;

    invoke-static {v2, v1}, Lj5/l;->j(Lj5/i;Lj5/n;)V

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    invoke-static {p0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f([Lj5/i;)Lj5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj5/i<",
            "*>;)",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lj5/l;->e(Ljava/util/Collection;)Lj5/i;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    invoke-static {p0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/util/Collection;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lj5/i<",
            "*>;>;)",
            "Lj5/i<",
            "Ljava/util/List<",
            "Lj5/i<",
            "*>;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lj5/l;->e(Ljava/util/Collection;)Lj5/i;

    move-result-object v0

    new-instance v1, Lj5/k0;

    invoke-direct {v1, p0}, Lj5/k0;-><init>(Ljava/util/Collection;)V

    sget-object p0, Lj5/k;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0, v1}, Lj5/i;->j(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h([Lj5/i;)Lj5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj5/i<",
            "*>;)",
            "Lj5/i<",
            "Ljava/util/List<",
            "Lj5/i<",
            "*>;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lj5/l;->g(Ljava/util/Collection;)Lj5/i;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lj5/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/i<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    invoke-virtual {p0}, Lj5/i;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj5/i;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static j(Lj5/i;Lj5/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/i<",
            "TT;>;",
            "Lj5/n<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, Lj5/k;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lj5/i;->f(Ljava/util/concurrent/Executor;Lj5/f;)Lj5/i;

    invoke-virtual {p0, v0, p1}, Lj5/i;->e(Ljava/util/concurrent/Executor;Lj5/e;)Lj5/i;

    invoke-virtual {p0, v0, p1}, Lj5/i;->a(Ljava/util/concurrent/Executor;Lj5/c;)Lj5/i;

    return-void
.end method
