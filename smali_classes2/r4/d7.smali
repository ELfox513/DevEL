.class public final Lr4/d7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/c7;

.field public final b:Lr4/b7;

.field public final c:Lr4/ka;

.field public final d:Lr4/e8;

.field public e:I

.field public f:Ljava/lang/Object;

.field public final g:Landroid/os/Looper;

.field public final h:I

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Lr4/b7;Lr4/c7;Lr4/e8;ILr4/ka;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/d7;->b:Lr4/b7;

    iput-object p2, p0, Lr4/d7;->a:Lr4/c7;

    iput-object p3, p0, Lr4/d7;->d:Lr4/e8;

    iput-object p6, p0, Lr4/d7;->g:Landroid/os/Looper;

    iput-object p5, p0, Lr4/d7;->c:Lr4/ka;

    iput p4, p0, Lr4/d7;->h:I

    return-void
.end method


# virtual methods
.method public final a()Lr4/c7;
    .locals 1

    iget-object v0, p0, Lr4/d7;->a:Lr4/c7;

    return-object v0
.end method

.method public final b(I)Lr4/d7;
    .locals 1

    iget-boolean v0, p0, Lr4/d7;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iput p1, p0, Lr4/d7;->e:I

    return-object p0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lr4/d7;->e:I

    return v0
.end method

.method public final d(Ljava/lang/Object;)Lr4/d7;
    .locals 1

    iget-boolean v0, p0, Lr4/d7;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iput-object p1, p0, Lr4/d7;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/d7;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lr4/d7;->g:Landroid/os/Looper;

    return-object v0
.end method

.method public final g()Lr4/d7;
    .locals 2

    iget-boolean v0, p0, Lr4/d7;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iput-boolean v1, p0, Lr4/d7;->i:Z

    iget-object v0, p0, Lr4/d7;->b:Lr4/b7;

    invoke-interface {v0, p0}, Lr4/b7;->a(Lr4/d7;)V

    return-object p0
.end method

.method public final declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized i(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/d7;->j:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lr4/d7;->j:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/d7;->k:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(J)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lr4/d7;->i:Z

    invoke-static {p1}, Lr4/ja;->d(Z)V

    iget-object p1, p0, Lr4/d7;->g:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lr4/ja;->d(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x7d0

    add-long/2addr p1, v0

    :goto_1
    iget-boolean v2, p0, Lr4/d7;->k:Z

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p1, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, p0, Lr4/d7;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
