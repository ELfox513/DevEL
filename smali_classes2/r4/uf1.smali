.class public final Lr4/uf1;
.super Lr4/yc1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/yc1<",
        "Lt2/v$a;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lt2/v$a;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr4/yc1;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Lr4/qf1;->a:Lr4/xc1;

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lr4/rf1;->a:Lr4/xc1;

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/uf1;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/uf1;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lr4/sf1;->a:Lr4/xc1;

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/uf1;->b:Z

    :cond_0
    sget-object v0, Lr4/tf1;->a:Lr4/xc1;

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza()V
    .locals 1

    sget-object v0, Lr4/pf1;->a:Lr4/xc1;

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    return-void
.end method
