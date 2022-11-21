.class public final Lr4/w31;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Lr4/p31;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lr4/h83;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lr4/h83<",
            "Lr4/p31;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/w31;->d:Z

    iput-object p1, p0, Lr4/w31;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr4/w31;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lr4/w31;->c:Lr4/h83;

    return-void
.end method

.method public static synthetic b(Lr4/w31;Ljava/util/List;Lr4/t73;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lr4/h83<",
            "+",
            "Lr4/i31;",
            ">;>;",
            "Lr4/t73<",
            "Lr4/i31;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/h83;

    new-instance v2, Lr4/r31;

    invoke-direct {v2, p2}, Lr4/r31;-><init>(Lr4/t73;)V

    iget-object v3, p0, Lr4/w31;->a:Ljava/util/concurrent/Executor;

    const-class v4, Ljava/lang/Throwable;

    invoke-static {v0, v4, v2, v3}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    new-instance v2, Lr4/s31;

    invoke-direct {v2, p0, p2, v1}, Lr4/s31;-><init>(Lr4/w31;Lr4/t73;Lr4/h83;)V

    iget-object v1, p0, Lr4/w31;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, v1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p1, Lr4/v31;

    invoke-direct {p1, p0, p2}, Lr4/v31;-><init>(Lr4/w31;Lr4/t73;)V

    iget-object p0, p0, Lr4/w31;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p0}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_2
    :goto_1
    iget-object p0, p0, Lr4/w31;->a:Ljava/util/concurrent/Executor;

    new-instance p1, Lr4/q31;

    invoke-direct {p1, p2}, Lr4/q31;-><init>(Lr4/t73;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lr4/w31;)V
    .locals 2

    sget-object v0, Lr4/qm0;->e:Lr4/i83;

    new-instance v1, Lr4/t31;

    invoke-direct {v1, p0}, Lr4/t31;-><init>(Lr4/w31;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Lr4/t73;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/t73<",
            "Lr4/i31;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/w31;->c:Lr4/h83;

    new-instance v1, Lr4/u31;

    invoke-direct {v1, p0, p1}, Lr4/u31;-><init>(Lr4/w31;Lr4/t73;)V

    iget-object p1, p0, Lr4/w31;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lr4/w31;->d:Z

    return v0
.end method

.method public final synthetic e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/w31;->d:Z

    return-void
.end method

.method public final synthetic f(Lr4/t73;Lr4/h83;Lr4/i31;)Lr4/h83;
    .locals 2

    if-eqz p3, :cond_0

    invoke-interface {p1, p3}, Lr4/t73;->b(Ljava/lang/Object;)V

    :cond_0
    sget-object p1, Lr4/r10;->b:Lr4/u00;

    invoke-virtual {p1}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p3, p0, Lr4/w31;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p2, v0, v1, p1, p3}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
