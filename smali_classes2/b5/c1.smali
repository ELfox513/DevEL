.class public final Lb5/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb5/u3;

.field public b:Lb5/v4;

.field public final c:Lb5/c;

.field public final d:Lb5/ag;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lb5/u3;

    invoke-direct {v0}, Lb5/u3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb5/c1;->a:Lb5/u3;

    iget-object v1, v0, Lb5/u3;->b:Lb5/v4;

    invoke-virtual {v1}, Lb5/v4;->a()Lb5/v4;

    move-result-object v1

    iput-object v1, p0, Lb5/c1;->b:Lb5/v4;

    new-instance v1, Lb5/c;

    invoke-direct {v1}, Lb5/c;-><init>()V

    iput-object v1, p0, Lb5/c1;->c:Lb5/c;

    new-instance v1, Lb5/ag;

    invoke-direct {v1}, Lb5/ag;-><init>()V

    iput-object v1, p0, Lb5/c1;->d:Lb5/ag;

    new-instance v1, Lb5/a;

    invoke-direct {v1, p0}, Lb5/a;-><init>(Lb5/c1;)V

    iget-object v2, v0, Lb5/u3;->d:Lb5/y7;

    const-string v3, "internal.registerCallback"

    invoke-virtual {v2, v3, v1}, Lb5/y7;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    new-instance v1, Lb5/b0;

    invoke-direct {v1, p0}, Lb5/b0;-><init>(Lb5/c1;)V

    iget-object v0, v0, Lb5/u3;->d:Lb5/y7;

    const-string v2, "internal.eventLogger"

    invoke-virtual {v0, v2, v1}, Lb5/y7;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public final a()Lb5/c;
    .locals 1

    iget-object v0, p0, Lb5/c1;->c:Lb5/c;

    return-object v0
.end method

.method public final synthetic b()Lb5/j;
    .locals 2

    new-instance v0, Lb5/wf;

    iget-object v1, p0, Lb5/c1;->d:Lb5/ag;

    invoke-direct {v0, v1}, Lb5/wf;-><init>(Lb5/ag;)V

    return-object v0
.end method

.method public final c(Lb5/k5;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lb5/c1;->a:Lb5/u3;

    iget-object v0, v0, Lb5/u3;->b:Lb5/v4;

    invoke-virtual {v0}, Lb5/v4;->a()Lb5/v4;

    move-result-object v0

    iput-object v0, p0, Lb5/c1;->b:Lb5/v4;

    invoke-virtual {p1}, Lb5/k5;->u()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lb5/c1;->a:Lb5/u3;

    iget-object v2, p0, Lb5/c1;->b:Lb5/v4;

    const/4 v3, 0x0

    new-array v4, v3, [Lb5/p5;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb5/p5;

    invoke-virtual {v1, v2, v0}, Lb5/u3;->a(Lb5/v4;[Lb5/p5;)Lb5/q;

    move-result-object v0

    instance-of v0, v0, Lb5/h;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lb5/k5;->s()Lb5/g5;

    move-result-object p1

    invoke-virtual {p1}, Lb5/g5;->v()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/i5;

    invoke-virtual {v0}, Lb5/i5;->u()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lb5/i5;->t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb5/p5;

    iget-object v4, p0, Lb5/c1;->a:Lb5/u3;

    iget-object v5, p0, Lb5/c1;->b:Lb5/v4;

    const/4 v6, 0x1

    new-array v6, v6, [Lb5/p5;

    aput-object v2, v6, v3

    invoke-virtual {v4, v5, v6}, Lb5/u3;->a(Lb5/v4;[Lb5/p5;)Lb5/q;

    move-result-object v2

    instance-of v4, v2, Lb5/n;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lb5/c1;->b:Lb5/v4;

    invoke-virtual {v4, v0}, Lb5/v4;->h(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v0}, Lb5/v4;->d(Ljava/lang/String;)Lb5/q;

    move-result-object v4

    instance-of v5, v4, Lb5/j;

    if-nez v5, :cond_3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid function name: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast v4, Lb5/j;

    :goto_2
    if-nez v4, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Rule function is undefined: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v5, p0, Lb5/c1;->b:Lb5/v4;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lb5/j;->a(Lb5/v4;Ljava/util/List;)Lb5/q;

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid rule definition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Program loading failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    new-instance v0, Lb5/y1;

    invoke-direct {v0, p1}, Lb5/y1;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public final d(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lb5/j;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb5/c1;->a:Lb5/u3;

    iget-object v0, v0, Lb5/u3;->d:Lb5/y7;

    invoke-virtual {v0, p1, p2}, Lb5/y7;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final e(Lb5/b;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lb5/c1;->c:Lb5/c;

    invoke-virtual {v0, p1}, Lb5/c;->d(Lb5/b;)V

    iget-object p1, p0, Lb5/c1;->a:Lb5/u3;

    iget-object p1, p1, Lb5/u3;->c:Lb5/v4;

    new-instance v0, Lb5/i;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lb5/i;-><init>(Ljava/lang/Double;)V

    const-string v1, "runtime.counter"

    invoke-virtual {p1, v1, v0}, Lb5/v4;->g(Ljava/lang/String;Lb5/q;)V

    iget-object p1, p0, Lb5/c1;->d:Lb5/ag;

    iget-object v0, p0, Lb5/c1;->b:Lb5/v4;

    invoke-virtual {v0}, Lb5/v4;->a()Lb5/v4;

    move-result-object v0

    iget-object v1, p0, Lb5/c1;->c:Lb5/c;

    invoke-virtual {p1, v0, v1}, Lb5/ag;->b(Lb5/v4;Lb5/c;)V

    invoke-virtual {p0}, Lb5/c1;->g()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lb5/c1;->f()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    new-instance v0, Lb5/y1;

    invoke-direct {v0, p1}, Lb5/y1;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lb5/c1;->c:Lb5/c;

    invoke-virtual {v0}, Lb5/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lb5/c1;->c:Lb5/c;

    invoke-virtual {v0}, Lb5/c;->b()Lb5/b;

    move-result-object v0

    iget-object v1, p0, Lb5/c1;->c:Lb5/c;

    invoke-virtual {v1}, Lb5/c;->a()Lb5/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb5/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
