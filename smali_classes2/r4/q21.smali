.class public final Lr4/q21;
.super Lr4/h11;
.source "SourceFile"


# instance fields
.field public final i:Lr4/d40;

.field public final j:Ljava/lang/Runnable;

.field public final k:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lr4/h31;Lr4/d40;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/h11;-><init>(Lr4/h31;)V

    iput-object p2, p0, Lr4/q21;->i:Lr4/d40;

    iput-object p3, p0, Lr4/q21;->j:Ljava/lang/Runnable;

    iput-object p4, p0, Lr4/q21;->k:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lr4/q21;->j:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lr4/o21;

    invoke-direct {v1, v0}, Lr4/o21;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v0, p0, Lr4/q21;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lr4/p21;

    invoke-direct {v2, p0, v1}, Lr4/p21;-><init>(Lr4/q21;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Landroid/view/ViewGroup;Lr4/yt;)V
    .locals 0

    return-void
.end method

.method public final i()Lr4/lx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lr4/qo2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Lr4/qo2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final synthetic n(Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/q21;->i:Lr4/d40;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/d40;->b0(Lf4/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
