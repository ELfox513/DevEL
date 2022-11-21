.class public abstract Li2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/concurrent/Executor;
    .locals 2

    new-instance v0, Li2/k;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Li2/k;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
