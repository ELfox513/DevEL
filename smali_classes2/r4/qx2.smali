.class public final Lr4/qx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c$a;
.implements Lx3/c$b;


# instance fields
.field public final a:Lr4/py2;

.field public final b:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final k:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lr4/cz2;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Landroid/os/HandlerThread;

.field public final q:Lr4/hx2;

.field public final r:J

.field public final s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/hx2;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lr4/qx2;->b:Ljava/lang/String;

    iput p3, p0, Lr4/qx2;->s:I

    iput-object p5, p0, Lr4/qx2;->d:Ljava/lang/String;

    iput-object p7, p0, Lr4/qx2;->q:Lr4/hx2;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassDGClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lr4/qx2;->p:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lr4/qx2;->r:J

    new-instance p3, Lr4/py2;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x12b6488

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lr4/py2;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/c$a;Lx3/c$b;I)V

    iput-object p3, p0, Lr4/qx2;->a:Lr4/py2;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lr4/qx2;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p3}, Lx3/c;->p()V

    return-void
.end method

.method public static c()Lr4/cz2;
    .locals 3

    new-instance v0, Lr4/cz2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr4/cz2;-><init>([BI)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lr4/cz2;
    .locals 4

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lr4/qx2;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/32 v1, 0xc350

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/cz2;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x7d9

    iget-wide v2, p0, Lr4/qx2;->r:J

    invoke-virtual {p0, v1, v2, v3, v0}, Lr4/qx2;->e(IJLjava/lang/Exception;)V

    move-object v0, p1

    :goto_0
    const/16 v1, 0xbbc

    iget-wide v2, p0, Lr4/qx2;->r:J

    invoke-virtual {p0, v1, v2, v3, p1}, Lr4/qx2;->e(IJLjava/lang/Exception;)V

    if-eqz v0, :cond_1

    iget p1, v0, Lr4/cz2;->d:I

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    const/4 p1, 0x3

    invoke-static {p1}, Lr4/hx2;->g(I)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    invoke-static {p1}, Lr4/hx2;->g(I)V

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    invoke-static {}, Lr4/qx2;->c()Lr4/cz2;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/qx2;->a:Lr4/py2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lx3/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/qx2;->a:Lr4/py2;

    invoke-virtual {v0}, Lx3/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lr4/qx2;->a:Lr4/py2;

    invoke-virtual {v0}, Lx3/c;->e()V

    :cond_1
    return-void
.end method

.method public final d()Lr4/uy2;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/qx2;->a:Lr4/py2;

    invoke-virtual {v0}, Lr4/py2;->h0()Lr4/uy2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e(IJLjava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lr4/qx2;->q:Lr4/hx2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2, p4}, Lr4/hx2;->c(IJLjava/lang/Exception;)Lj5/i;

    return-void
.end method

.method public final j0(I)V
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lr4/qx2;->r:J

    const/16 p1, 0xfab

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lr4/qx2;->e(IJLjava/lang/Exception;)V

    iget-object p1, p0, Lr4/qx2;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lr4/qx2;->c()Lr4/cz2;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final o0(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lr4/qx2;->d()Lr4/uy2;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lr4/zy2;

    const/4 v1, 0x1

    iget v2, p0, Lr4/qx2;->s:I

    iget-object v3, p0, Lr4/qx2;->b:Ljava/lang/String;

    iget-object v4, p0, Lr4/qx2;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lr4/zy2;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lr4/uy2;->e3(Lr4/zy2;)Lr4/cz2;

    move-result-object p1

    iget-wide v0, p0, Lr4/qx2;->r:J

    const/16 v2, 0x1393

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lr4/qx2;->e(IJLjava/lang/Exception;)V

    iget-object v0, p0, Lr4/qx2;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lr4/qx2;->b()V

    iget-object p1, p0, Lr4/qx2;->p:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 p1, 0x7da

    iget-wide v1, p0, Lr4/qx2;->r:J

    invoke-virtual {p0, p1, v1, v2, v0}, Lr4/qx2;->e(IJLjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lr4/qx2;->b()V

    iget-object v0, p0, Lr4/qx2;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_0
    return-void
.end method

.method public final t0(Lt3/b;)V
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lr4/qx2;->r:J

    const/16 p1, 0xfac

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lr4/qx2;->e(IJLjava/lang/Exception;)V

    iget-object p1, p0, Lr4/qx2;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lr4/qx2;->c()Lr4/cz2;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
