.class public final Lr4/qk;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lr4/rk;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lr4/rk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lr4/pk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/pk<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final k:J

.field public p:Ljava/io/IOException;

.field public q:I

.field public volatile r:Ljava/lang/Thread;

.field public volatile s:Z

.field public final synthetic t:Lr4/tk;


# direct methods
.method public constructor <init>(Lr4/tk;Landroid/os/Looper;Lr4/rk;Lr4/pk;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lr4/pk<",
            "TT;>;IJ)V"
        }
    .end annotation

    iput-object p1, p0, Lr4/qk;->t:Lr4/tk;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lr4/qk;->a:Lr4/rk;

    iput-object p4, p0, Lr4/qk;->b:Lr4/pk;

    iput p5, p0, Lr4/qk;->d:I

    iput-wide p6, p0, Lr4/qk;->k:J

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lr4/qk;->p:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Lr4/qk;->q:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(J)V
    .locals 4

    iget-object v0, p0, Lr4/qk;->t:Lr4/tk;

    invoke-static {v0}, Lr4/tk;->b(Lr4/tk;)Lr4/qk;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/vk;->d(Z)V

    iget-object v0, p0, Lr4/qk;->t:Lr4/tk;

    invoke-static {v0, p0}, Lr4/tk;->c(Lr4/tk;Lr4/qk;)Lr4/qk;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lr4/qk;->d()V

    return-void
.end method

.method public final c(Z)V
    .locals 8

    iput-boolean p1, p0, Lr4/qk;->s:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/qk;->p:Ljava/io/IOException;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v1, p0, Lr4/qk;->a:Lr4/rk;

    invoke-interface {v1}, Lr4/rk;->b()V

    iget-object v1, p0, Lr4/qk;->r:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/qk;->r:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lr4/qk;->t:Lr4/tk;

    invoke-static {p1, v0}, Lr4/tk;->c(Lr4/tk;Lr4/qk;)Lr4/qk;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lr4/qk;->b:Lr4/pk;

    iget-object v2, p0, Lr4/qk;->a:Lr4/rk;

    iget-wide v5, p0, Lr4/qk;->k:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Lr4/pk;->a(Lr4/rk;JJZ)V

    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/qk;->p:Ljava/io/IOException;

    iget-object v0, p0, Lr4/qk;->t:Lr4/tk;

    invoke-static {v0}, Lr4/tk;->a(Lr4/tk;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lr4/qk;->t:Lr4/tk;

    invoke-static {v1}, Lr4/tk;->b(Lr4/tk;)Lr4/qk;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    iget-boolean v0, p0, Lr4/qk;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr4/qk;->d()V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lr4/qk;->t:Lr4/tk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/tk;->c(Lr4/tk;Lr4/qk;)Lr4/qk;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v0, p0, Lr4/qk;->k:J

    sub-long v6, v4, v0

    iget-object v0, p0, Lr4/qk;->a:Lr4/rk;

    invoke-interface {v0}, Lr4/rk;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lr4/qk;->b:Lr4/pk;

    iget-object v3, p0, Lr4/qk;->a:Lr4/rk;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lr4/pk;->a(Lr4/rk;JJZ)V

    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v9, 0x2

    if-eq v0, v9, :cond_7

    const/4 v10, 0x3

    if-eq v0, v10, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lr4/qk;->p:Ljava/io/IOException;

    iget-object v2, p0, Lr4/qk;->b:Lr4/pk;

    iget-object v3, p0, Lr4/qk;->a:Lr4/rk;

    invoke-interface/range {v2 .. v8}, Lr4/pk;->g(Lr4/rk;JJLjava/io/IOException;)I

    move-result p1

    if-ne p1, v10, :cond_4

    iget-object p1, p0, Lr4/qk;->t:Lr4/tk;

    iget-object v0, p0, Lr4/qk;->p:Ljava/io/IOException;

    invoke-static {p1, v0}, Lr4/tk;->d(Lr4/tk;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    :cond_4
    if-eq p1, v9, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_0

    :cond_5
    iget p1, p0, Lr4/qk;->q:I

    add-int/2addr v1, p1

    :goto_0
    iput v1, p0, Lr4/qk;->q:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit16 v1, v1, 0x3e8

    const/16 p1, 0x1388

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lr4/qk;->b(J)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object v2, p0, Lr4/qk;->b:Lr4/pk;

    iget-object v3, p0, Lr4/qk;->a:Lr4/rk;

    invoke-interface/range {v2 .. v7}, Lr4/pk;->i(Lr4/rk;JJ)V

    return-void

    :cond_8
    iget-object v2, p0, Lr4/qk;->b:Lr4/pk;

    iget-object v3, p0, Lr4/qk;->a:Lr4/rk;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lr4/pk;->a(Lr4/rk;JJZ)V

    return-void

    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final run()V
    .locals 6

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lr4/qk;->r:Ljava/lang/Thread;

    iget-object v3, p0, Lr4/qk;->a:Lr4/rk;

    invoke-interface {v3}, Lr4/rk;->e()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "load:"

    iget-object v4, p0, Lr4/qk;->a:Lr4/rk;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-static {v3}, Lr4/jl;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lr4/qk;->a:Lr4/rk;

    invoke-interface {v3}, Lr4/rk;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lr4/jl;->b()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {}, Lr4/jl;->b()V

    throw v3

    :cond_1
    :goto_1
    iget-boolean v3, p0, Lr4/qk;->s:Z

    if-nez v3, :cond_3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lr4/qk;->s:Z

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    throw v1

    :catch_1
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lr4/qk;->s:Z

    if-nez v0, :cond_3

    new-instance v0, Lr4/sk;

    invoke-direct {v0, v1}, Lr4/sk;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_2
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lr4/qk;->s:Z

    if-nez v0, :cond_3

    new-instance v0, Lr4/sk;

    invoke-direct {v0, v1}, Lr4/sk;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_3
    nop

    iget-object v0, p0, Lr4/qk;->a:Lr4/rk;

    invoke-interface {v0}, Lr4/rk;->e()Z

    move-result v0

    invoke-static {v0}, Lr4/vk;->d(Z)V

    iget-boolean v0, p0, Lr4/qk;->s:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_4
    move-exception v0

    iget-boolean v1, p0, Lr4/qk;->s:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method
