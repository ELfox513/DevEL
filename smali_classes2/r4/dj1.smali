.class public final Lr4/dj1;
.super Lr4/kx;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lr4/lx;

.field public final d:Lr4/ub0;


# direct methods
.method public constructor <init>(Lr4/lx;Lr4/ub0;)V
    .locals 1

    invoke-direct {p0}, Lr4/kx;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/dj1;->a:Ljava/lang/Object;

    iput-object p1, p0, Lr4/dj1;->b:Lr4/lx;

    iput-object p2, p0, Lr4/dj1;->d:Lr4/ub0;

    return-void
.end method


# virtual methods
.method public final U4(Lr4/ox;)V
    .locals 2

    iget-object v0, p0, Lr4/dj1;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/dj1;->b:Lr4/lx;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lr4/lx;->U4(Lr4/ox;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final d()V
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final f()Z
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final h()F
    .locals 1

    iget-object v0, p0, Lr4/dj1;->d:Lr4/ub0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/ub0;->z()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()F
    .locals 1

    iget-object v0, p0, Lr4/dj1;->d:Lr4/ub0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/ub0;->P()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()I
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final l()F
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final m()V
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final n0(Z)V
    .locals 0

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final o()Z
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final p()Z
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final q()Lr4/ox;
    .locals 2

    iget-object v0, p0, Lr4/dj1;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/dj1;->b:Lr4/lx;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lr4/lx;->q()Lr4/ox;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
