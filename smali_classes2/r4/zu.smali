.class public Lr4/zu;
.super Lt2/c;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lt2/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt2/c;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/zu;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final F0()V
    .locals 2

    iget-object v0, p0, Lr4/zu;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/zu;->b:Lt2/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lt2/c;->F0()V

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

.method public final j()V
    .locals 2

    iget-object v0, p0, Lr4/zu;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/zu;->b:Lt2/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lt2/c;->j()V

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

.method public o(Lt2/m;)V
    .locals 2

    iget-object v0, p0, Lr4/zu;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/zu;->b:Lt2/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lt2/c;->o(Lt2/m;)V

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

.method public final p()V
    .locals 2

    iget-object v0, p0, Lr4/zu;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/zu;->b:Lt2/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lt2/c;->p()V

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

.method public q()V
    .locals 2

    iget-object v0, p0, Lr4/zu;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/zu;->b:Lt2/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lt2/c;->q()V

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

.method public final s()V
    .locals 2

    iget-object v0, p0, Lr4/zu;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/zu;->b:Lt2/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lt2/c;->s()V

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

.method public final u(Lt2/c;)V
    .locals 1

    iget-object v0, p0, Lr4/zu;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lr4/zu;->b:Lt2/c;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
