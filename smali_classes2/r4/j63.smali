.class public final Lr4/j63;
.super Lr4/c63;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(Lr4/g63;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lr4/c63;-><init>(Lr4/g63;)V

    return-void
.end method


# virtual methods
.method public final a(Lr4/o63;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lr4/o63;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final b(Lr4/o63;Lr4/o63;)V
    .locals 0

    iput-object p2, p1, Lr4/o63;->b:Lr4/o63;

    return-void
.end method

.method public final c(Lr4/p63;Lr4/o63;Lr4/o63;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/p63<",
            "*>;",
            "Lr4/o63;",
            "Lr4/o63;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lr4/p63;->q(Lr4/p63;)Lr4/o63;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-static {p1, p3}, Lr4/p63;->r(Lr4/p63;Lr4/o63;)Lr4/o63;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final d(Lr4/p63;Lr4/f63;Lr4/f63;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/p63<",
            "*>;",
            "Lr4/f63;",
            "Lr4/f63;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lr4/p63;->o(Lr4/p63;)Lr4/f63;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-static {p1, p3}, Lr4/p63;->p(Lr4/p63;Lr4/f63;)Lr4/f63;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final e(Lr4/p63;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/p63<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lr4/p63;->m(Lr4/p63;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-static {p1, p3}, Lr4/p63;->n(Lr4/p63;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
