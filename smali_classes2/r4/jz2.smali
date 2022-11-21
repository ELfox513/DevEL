.class public final Lr4/jz2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public final synthetic d:Lr4/lz2;


# direct methods
.method public synthetic constructor <init>(Lr4/lz2;[BLr4/kz2;)V
    .locals 0

    iput-object p1, p0, Lr4/jz2;->d:Lr4/lz2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/jz2;->a:[B

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/jz2;->d:Lr4/lz2;

    iget-boolean v1, v0, Lr4/lz2;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lr4/lz2;->b:Lr4/mz2;

    iget-object v1, p0, Lr4/jz2;->a:[B

    invoke-virtual {v0, v1}, Lr4/mz2;->A2([B)V

    iget-object v0, p0, Lr4/jz2;->d:Lr4/lz2;

    iget-object v0, v0, Lr4/lz2;->b:Lr4/mz2;

    iget v1, p0, Lr4/jz2;->b:I

    invoke-virtual {v0, v1}, Lr4/mz2;->Y(I)V

    iget-object v0, p0, Lr4/jz2;->d:Lr4/lz2;

    iget-object v0, v0, Lr4/lz2;->b:Lr4/mz2;

    iget v1, p0, Lr4/jz2;->c:I

    invoke-virtual {v0, v1}, Lr4/mz2;->I0(I)V

    iget-object v0, p0, Lr4/jz2;->d:Lr4/lz2;

    iget-object v0, v0, Lr4/lz2;->b:Lr4/mz2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/mz2;->b2([I)V

    iget-object v0, p0, Lr4/jz2;->d:Lr4/lz2;

    iget-object v0, v0, Lr4/lz2;->b:Lr4/mz2;

    invoke-virtual {v0}, Lr4/mz2;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "GASS"

    const-string v2, "Clearcut log failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final b(I)Lr4/jz2;
    .locals 0

    iput p1, p0, Lr4/jz2;->b:I

    return-object p0
.end method

.method public final c(I)Lr4/jz2;
    .locals 0

    iput p1, p0, Lr4/jz2;->c:I

    return-object p0
.end method
