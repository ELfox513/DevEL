.class public Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForParallelTransformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$EagerWork;,
        Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$Factory;,
        Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService;
    }
.end annotation


# instance fields
.field private deferred:I

.field private final failed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final futures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final materializers:Ljava/util/concurrent/CompletionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletionService<",
            "Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;",
            ">;"
        }
    .end annotation
.end field

.field private final preprocessings:Ljava/util/concurrent/CompletionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletionService<",
            "Ljava/util/concurrent/Callable<",
            "Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sink:Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;

.field private final transformed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final unresolved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->sink:Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;

    iput-object p3, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->transformed:Ljava/util/List;

    iput-object p4, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->failed:Ljava/util/Map;

    iput-object p5, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->unresolved:Ljava/util/List;

    new-instance p2, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->preprocessings:Ljava/util/concurrent/CompletionService;

    new-instance p2, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->materializers:Ljava/util/concurrent/CompletionService;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->futures:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public accept(Ljava/util/concurrent/Callable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;",
            ">;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->futures:Ljava/util/Set;

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->materializers:Ljava/util/concurrent/CompletionService;

    new-instance v1, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$EagerWork;

    invoke-direct {v1, p1}, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$EagerWork;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->deferred:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->deferred:I

    iget-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->futures:Ljava/util/Set;

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->preprocessings:Ljava/util/concurrent/CompletionService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->futures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public complete()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->deferred:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iget v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->deferred:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->deferred:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->preprocessings:Ljava/util/concurrent/CompletionService;

    invoke-interface {v1}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->futures:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->futures:Ljava/util/Set;

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->materializers:Ljava/util/concurrent/CompletionService;

    invoke-interface {v3, v1}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->futures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->materializers:Ljava/util/concurrent/CompletionService;

    invoke-interface {v0}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->futures:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->sink:Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->transformed:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->failed:Ljava/util/Map;

    iget-object v4, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation;->unresolved:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3, v4}, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Materializable;->materialize(Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_5
    check-cast v0, Ljava/io/IOException;

    throw v0

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
