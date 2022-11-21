.class public final Lt2/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt2/v$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lr4/lx;

.field public c:Lt2/v$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt2/v;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lt2/v$a;)V
    .locals 3
    .param p1    # Lt2/v$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const-string v0, "VideoLifecycleCallbacks may not be null."

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lt2/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lt2/v;->c:Lt2/v$a;

    iget-object v1, p0, Lt2/v;->b:Lr4/lx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v2, Lr4/wy;

    invoke-direct {v2, p1}, Lr4/wy;-><init>(Lt2/v$a;)V

    invoke-interface {v1, v2}, Lr4/lx;->U4(Lr4/ox;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "Unable to call setVideoLifecycleCallbacks on video controller."

    invoke-static {v1, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final b(Lr4/lx;)V
    .locals 1

    iget-object v0, p0, Lt2/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lt2/v;->b:Lr4/lx;

    iget-object p1, p0, Lt2/v;->c:Lt2/v$a;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lt2/v;->a(Lt2/v$a;)V

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

.method public final c()Lr4/lx;
    .locals 2

    iget-object v0, p0, Lt2/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt2/v;->b:Lr4/lx;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
