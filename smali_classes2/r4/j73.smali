.class public abstract Lr4/j73;
.super Lr4/g83;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/g83<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Executor;

.field public final synthetic k:Lr4/k73;


# direct methods
.method public constructor <init>(Lr4/k73;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lr4/j73;->k:Lr4/k73;

    invoke-direct {p0}, Lr4/g83;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lr4/j73;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    iget-object v0, p0, Lr4/j73;->k:Lr4/k73;

    invoke-virtual {v0}, Lr4/p63;->isDone()Z

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/j73;->k:Lr4/k73;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/k73;->X(Lr4/k73;Lr4/j73;)Lr4/j73;

    invoke-virtual {p0, p1}, Lr4/j73;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lr4/j73;->k:Lr4/k73;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/k73;->X(Lr4/k73;Lr4/j73;)Lr4/j73;

    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/j73;->k:Lr4/k73;

    check-cast p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/p63;->v(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lr4/j73;->k:Lr4/k73;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/p63;->cancel(Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lr4/j73;->k:Lr4/k73;

    invoke-virtual {v0, p1}, Lr4/p63;->v(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public abstract h(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/j73;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lr4/j73;->k:Lr4/k73;

    invoke-virtual {v1, v0}, Lr4/p63;->v(Ljava/lang/Throwable;)Z

    return-void
.end method
