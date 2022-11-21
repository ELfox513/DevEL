.class public final Lr4/z21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y81;
.implements Lr4/nm;


# instance fields
.field public final a:Lr4/no2;

.field public final b:Lr4/b81;

.field public final d:Lr4/h91;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lr4/no2;Lr4/b81;Lr4/h91;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lr4/z21;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lr4/z21;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lr4/z21;->a:Lr4/no2;

    iput-object p2, p0, Lr4/z21;->b:Lr4/b81;

    iput-object p3, p0, Lr4/z21;->d:Lr4/h91;

    return-void
.end method


# virtual methods
.method public final Y(Lr4/mm;)V
    .locals 2

    iget-object v0, p0, Lr4/z21;->a:Lr4/no2;

    iget v0, v0, Lr4/no2;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lr4/mm;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/z21;->a()V

    :cond_0
    iget-boolean p1, p1, Lr4/mm;->j:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/z21;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/z21;->d:Lr4/h91;

    invoke-virtual {p1}, Lr4/h91;->zza()V

    :cond_1
    return-void
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lr4/z21;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/z21;->b:Lr4/b81;

    invoke-virtual {v0}, Lr4/b81;->zza()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/z21;->a:Lr4/no2;

    iget v0, v0, Lr4/no2;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lr4/z21;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
