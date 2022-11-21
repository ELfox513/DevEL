.class public final Lr4/o83;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lr4/l73;->a:Lr4/l73;

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/ExecutorService;)Lr4/i83;
    .locals 1

    instance-of v0, p0, Lr4/i83;

    if-eqz v0, :cond_0

    check-cast p0, Lr4/i83;

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    new-instance v0, Lr4/n83;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lr4/n83;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lr4/k83;

    invoke-direct {v0, p0}, Lr4/k83;-><init>(Ljava/util/concurrent/ExecutorService;)V

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lr4/p63;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lr4/p63<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lr4/l73;->a:Lr4/l73;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lr4/j83;

    invoke-direct {v0, p0, p1}, Lr4/j83;-><init>(Ljava/util/concurrent/Executor;Lr4/p63;)V

    return-object v0
.end method
