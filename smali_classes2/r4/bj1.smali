.class public final Lr4/bj1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr4/m20;


# direct methods
.method public constructor <init>(Lr4/pi1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bj1;->a:Lr4/m20;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lr4/m20;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/bj1;->a:Lr4/m20;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lr4/m20;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lr4/bj1;->a:Lr4/m20;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
