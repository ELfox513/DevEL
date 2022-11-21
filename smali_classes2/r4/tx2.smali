.class public final Lr4/tx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c$a;
.implements Lx3/c$b;


# instance fields
.field public final a:Lr4/py2;

.field public final b:Lr4/jy2;

.field public final d:Ljava/lang/Object;

.field public k:Z

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lr4/jy2;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/tx2;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/tx2;->k:Z

    iput-boolean v0, p0, Lr4/tx2;->p:Z

    iput-object p3, p0, Lr4/tx2;->b:Lr4/jy2;

    new-instance p3, Lr4/py2;

    const v6, 0xc35000

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lr4/py2;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/c$a;Lx3/c$b;I)V

    iput-object p3, p0, Lr4/tx2;->a:Lr4/py2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/tx2;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/tx2;->k:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lr4/tx2;->k:Z

    iget-object v1, p0, Lr4/tx2;->a:Lr4/py2;

    invoke-virtual {v1}, Lx3/c;->p()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lr4/tx2;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/tx2;->a:Lr4/py2;

    invoke-virtual {v1}, Lx3/c;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr4/tx2;->a:Lr4/py2;

    invoke-virtual {v1}, Lx3/c;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lr4/tx2;->a:Lr4/py2;

    invoke-virtual {v1}, Lx3/c;->e()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j0(I)V
    .locals 0

    return-void
.end method

.method public final o0(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lr4/tx2;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lr4/tx2;->p:Z

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/tx2;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lr4/tx2;->a:Lr4/py2;

    invoke-virtual {v0}, Lr4/py2;->h0()Lr4/uy2;

    move-result-object v0

    new-instance v1, Lr4/ny2;

    iget-object v2, p0, Lr4/tx2;->b:Lr4/jy2;

    invoke-virtual {v2}, Lr4/uk3;->t()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lr4/ny2;-><init>([B)V

    invoke-virtual {v0, v1}, Lr4/uy2;->A2(Lr4/ny2;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lr4/tx2;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lr4/tx2;->b()V

    throw v0

    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final t0(Lt3/b;)V
    .locals 0

    return-void
.end method
