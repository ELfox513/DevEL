.class public final Lr4/xr2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lr4/r61<",
        "TAdT;>;AdT:",
        "Lr4/i31;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr4/pr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/pr2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Lr4/nr2<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lr4/uq2;Lr4/or2;Lr4/pr2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/uq2;",
            "Lr4/or2<",
            "TR;TAdT;>;",
            "Lr4/pr2<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/xr2;->c:Z

    iput-boolean v0, p0, Lr4/xr2;->d:Z

    iput-object p3, p0, Lr4/xr2;->a:Lr4/pr2;

    invoke-interface {p2, p3}, Lr4/or2;->b(Lr4/pr2;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/ur2;

    invoke-direct {v1, p0, p2, p1, p3}, Lr4/ur2;-><init>(Lr4/xr2;Lr4/or2;Lr4/uq2;Lr4/pr2;)V

    invoke-interface {p3}, Lr4/pr2;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    new-instance v0, Lr4/vr2;

    invoke-direct {v0, p0, p2}, Lr4/vr2;-><init>(Lr4/xr2;Lr4/or2;)V

    const-class p2, Ljava/lang/Exception;

    invoke-interface {p3}, Lr4/pr2;->zza()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-static {p1, p2, v0, p3}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    iput-object p1, p0, Lr4/xr2;->b:Lr4/h83;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lr4/t73;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/t73<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xr2;->b:Lr4/h83;

    sget-object v1, Lr4/wr2;->a:Lr4/e73;

    iget-object v2, p0, Lr4/xr2;->a:Lr4/pr2;

    invoke-interface {v2}, Lr4/pr2;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    iget-object v1, p0, Lr4/xr2;->a:Lr4/pr2;

    invoke-interface {v1}, Lr4/pr2;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lr4/pr2;)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/pr2<",
            "TR;TAdT;>;)",
            "Lr4/h83<",
            "Lr4/nr2<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/xr2;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lr4/xr2;->c:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lr4/xr2;->a:Lr4/pr2;

    invoke-interface {v0}, Lr4/pr2;->a()Lr4/er2;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lr4/pr2;->a()Lr4/er2;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/xr2;->a:Lr4/pr2;

    invoke-interface {v0}, Lr4/pr2;->a()Lr4/er2;

    move-result-object v0

    invoke-interface {p1}, Lr4/pr2;->a()Lr4/er2;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/er2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/xr2;->c:Z

    iget-object p1, p0, Lr4/xr2;->b:Lr4/h83;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_3
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic c(Lr4/or2;Ljava/lang/Exception;)Lr4/h83;
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lr4/xr2;->d:Z

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic d(Lr4/or2;Lr4/uq2;Lr4/pr2;Lr4/dr2;)Lr4/h83;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lr4/xr2;->d:Z

    invoke-interface {p1, p4}, Lr4/or2;->a(Lr4/dr2;)V

    iget-boolean p1, p0, Lr4/xr2;->c:Z

    if-nez p1, :cond_0

    invoke-interface {p3}, Lr4/pr2;->a()Lr4/er2;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Lr4/uq2;->d(Lr4/er2;Lr4/dr2;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_0
    new-instance p1, Lr4/nr2;

    invoke-direct {p1, p4, p3}, Lr4/nr2;-><init>(Lr4/dr2;Lr4/pr2;)V

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
