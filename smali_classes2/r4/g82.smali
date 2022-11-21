.class public final Lr4/g82;
.super Lr4/nv;
.source "SourceFile"


# instance fields
.field public final a:Lr4/o92;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/bu0;Lr4/fp2;Lr4/pj1;Lr4/iv;)V
    .locals 2

    invoke-direct {p0}, Lr4/nv;-><init>()V

    new-instance v0, Lr4/q92;

    invoke-virtual {p2}, Lr4/bu0;->g()Lr4/xt2;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lr4/q92;-><init>(Lr4/pj1;Lr4/xt2;)V

    invoke-virtual {v0, p5}, Lr4/q92;->a(Lr4/iv;)V

    new-instance p4, Lr4/da2;

    invoke-direct {p4, p2, p1, v0, p3}, Lr4/da2;-><init>(Lr4/bu0;Landroid/content/Context;Lr4/q92;Lr4/fp2;)V

    new-instance p1, Lr4/o92;

    invoke-virtual {p3}, Lr4/fp2;->M()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lr4/o92;-><init>(Lr4/t92;Ljava/lang/String;)V

    iput-object p1, p0, Lr4/g82;->a:Lr4/o92;

    return-void
.end method


# virtual methods
.method public final U6(Lr4/tt;)V
    .locals 2

    iget-object v0, p0, Lr4/g82;->a:Lr4/o92;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lr4/o92;->c(Lr4/tt;I)V

    return-void
.end method

.method public final declared-synchronized V2(Lr4/tt;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/g82;->a:Lr4/o92;

    invoke-virtual {v0, p1, p2}, Lr4/o92;->c(Lr4/tt;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/g82;->a:Lr4/o92;

    invoke-virtual {v0}, Lr4/o92;->d()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/g82;->a:Lr4/o92;

    invoke-virtual {v0}, Lr4/o92;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/g82;->a:Lr4/o92;

    invoke-virtual {v0}, Lr4/o92;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
