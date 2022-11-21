.class public final Lr4/ox2;
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
            "Lr4/pb4;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/ox2;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/ox2;->d:Ljava/lang/String;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lr4/ox2;->p:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p3, Lr4/py2;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x8c6180

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lr4/py2;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/c$a;Lx3/c$b;I)V

    iput-object p3, p0, Lr4/ox2;->a:Lr4/py2;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lr4/ox2;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p3}, Lx3/c;->p()V

    return-void
.end method

.method public static c()Lr4/pb4;
    .locals 3

    invoke-static {}, Lr4/pb4;->z0()Lr4/za4;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lr4/za4;->q0(J)Lr4/za4;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v0

    check-cast v0, Lr4/pb4;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lr4/pb4;
    .locals 3

    :try_start_0
    iget-object p1, p0, Lr4/ox2;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/pb4;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    invoke-static {}, Lr4/ox2;->c()Lr4/pb4;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/ox2;->a:Lr4/py2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lx3/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/ox2;->a:Lr4/py2;

    invoke-virtual {v0}, Lx3/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lr4/ox2;->a:Lr4/py2;

    invoke-virtual {v0}, Lx3/c;->e()V

    :cond_1
    return-void
.end method

.method public final d()Lr4/uy2;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/ox2;->a:Lr4/py2;

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

.method public final j0(I)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lr4/ox2;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lr4/ox2;->c()Lr4/pb4;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final o0(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lr4/ox2;->d()Lr4/uy2;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lr4/qy2;

    iget-object v1, p0, Lr4/ox2;->b:Ljava/lang/String;

    iget-object v2, p0, Lr4/ox2;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lr4/qy2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lr4/uy2;->b2(Lr4/qy2;)Lr4/sy2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/sy2;->X0()Lr4/pb4;

    move-result-object p1

    iget-object v0, p0, Lr4/ox2;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    invoke-virtual {p0}, Lr4/ox2;->b()V

    iget-object p1, p0, Lr4/ox2;->p:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    :try_start_1
    iget-object p1, p0, Lr4/ox2;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lr4/ox2;->c()Lr4/pb4;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lr4/ox2;->b()V

    iget-object v0, p0, Lr4/ox2;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_0
    return-void
.end method

.method public final t0(Lt3/b;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lr4/ox2;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lr4/ox2;->c()Lr4/pb4;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
