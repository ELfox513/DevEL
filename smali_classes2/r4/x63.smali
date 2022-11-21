.class public abstract Lr4/x63;
.super Lr4/c73;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/c73<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field public static final z:Ljava/util/logging/Logger;


# instance fields
.field public w:Lr4/j33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/j33<",
            "+",
            "Lr4/h83<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field public final x:Z

.field public final y:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lr4/x63;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lr4/x63;->z:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lr4/j33;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/j33<",
            "+",
            "Lr4/h83<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lr4/c73;-><init>(I)V

    iput-object p1, p0, Lr4/x63;->w:Lr4/j33;

    iput-boolean p2, p0, Lr4/x63;->x:Z

    iput-boolean p3, p0, Lr4/x63;->y:Z

    return-void
.end method

.method public static P(Ljava/lang/Throwable;)V
    .locals 7

    instance-of v0, p0, Ljava/lang/Error;

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    goto :goto_0

    :cond_0
    const-string v0, "Input Future failed with Error"

    :goto_0
    move-object v5, v0

    sget-object v1, Lr4/x63;->z:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    const-string v4, "log"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static R(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic S(Lr4/x63;Lr4/j33;)Lr4/j33;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/x63;->w:Lr4/j33;

    return-object p1
.end method

.method public static synthetic U(Lr4/x63;ILjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lr4/x63;->Q(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic V(Lr4/x63;Lr4/j33;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/j33<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/c73;->J()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Less than 0 remaining futures"

    invoke-static {v2, v3}, Lr4/z03;->b(ZLjava/lang/Object;)V

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lr4/j33;->d()Lr4/r53;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1, v0}, Lr4/x63;->Q(ILjava/util/concurrent/Future;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lr4/c73;->K()V

    invoke-virtual {p0}, Lr4/x63;->M()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lr4/x63;->N(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final L(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lr4/p63;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr4/p63;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lr4/x63;->R(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public abstract M()V
.end method

.method public N(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/x63;->w:Lr4/j33;

    return-void
.end method

.method public final O(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lr4/x63;->x:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lr4/p63;->v(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr4/c73;->I()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/x63;->R(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lr4/x63;->P(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lr4/x63;->P(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final Q(ILjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lr4/y73;->q(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lr4/x63;->W(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lr4/x63;->O(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr4/x63;->O(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final T()V
    .locals 5

    iget-object v0, p0, Lr4/x63;->w:Lr4/j33;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/x63;->M()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lr4/x63;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/x63;->w:Lr4/j33;

    invoke-virtual {v0}, Lr4/j33;->d()Lr4/r53;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/h83;

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lr4/v63;

    invoke-direct {v4, p0, v2, v1}, Lr4/v63;-><init>(Lr4/x63;Lr4/h83;I)V

    sget-object v1, Lr4/l73;->a:Lr4/l73;

    invoke-interface {v2, v4, v1}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v3

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lr4/x63;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/x63;->w:Lr4/j33;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lr4/w63;

    invoke-direct {v1, p0, v0}, Lr4/w63;-><init>(Lr4/x63;Lr4/j33;)V

    iget-object v0, p0, Lr4/x63;->w:Lr4/j33;

    invoke-virtual {v0}, Lr4/j33;->d()Lr4/r53;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/h83;

    sget-object v3, Lr4/l73;->a:Lr4/l73;

    invoke-interface {v2, v1, v3}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public abstract W(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr4/x63;->w:Lr4/j33;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "futures="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lr4/p63;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lr4/x63;->w:Lr4/j33;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lr4/x63;->N(I)V

    invoke-virtual {p0}, Lr4/p63;->isCancelled()Z

    move-result v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lr4/p63;->t()Z

    move-result v1

    invoke-virtual {v0}, Lr4/j33;->d()Lr4/r53;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method
