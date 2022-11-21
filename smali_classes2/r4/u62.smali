.class public final Lr4/u62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t81;


# instance fields
.field public a:Z

.field public final synthetic b:Lr4/t12;

.field public final synthetic c:Lr4/vm0;

.field public final synthetic d:Lr4/v62;


# direct methods
.method public constructor <init>(Lr4/v62;Lr4/t12;Lr4/vm0;)V
    .locals 0

    iput-object p1, p0, Lr4/u62;->d:Lr4/v62;

    iput-object p2, p0, Lr4/u62;->b:Lr4/t12;

    iput-object p3, p0, Lr4/u62;->c:Lr4/vm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/u62;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lr4/lt;)V
    .locals 3

    sget-object v0, Lr4/rz;->M3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    iget-object v0, p0, Lr4/u62;->c:Lr4/vm0;

    new-instance v2, Lr4/u12;

    invoke-direct {v2, v1, p1}, Lr4/u12;-><init>(ILr4/lt;)V

    invoke-virtual {v0, v2}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final declared-synchronized g0(Lr4/lt;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lr4/u62;->a:Z

    invoke-virtual {p0, p1}, Lr4/u62;->a(Lr4/lt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final x(I)V
    .locals 7

    iget-boolean v0, p0, Lr4/u62;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/u62;->b:Lr4/t12;

    iget-object v0, v0, Lr4/t12;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lr4/v62;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lr4/lt;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "undefined"

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lr4/lt;-><init>(ILjava/lang/String;Ljava/lang/String;Lr4/lt;Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Lr4/u62;->a(Lr4/lt;)V

    return-void
.end method

.method public final declared-synchronized y0(ILjava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/u62;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lr4/u62;->a:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lr4/u62;->b:Lr4/t12;

    iget-object p2, p2, Lr4/t12;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Lr4/v62;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v2, p2

    new-instance p2, Lr4/lt;

    const-string v3, "undefined"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lr4/lt;-><init>(ILjava/lang/String;Ljava/lang/String;Lr4/lt;Landroid/os/IBinder;)V

    invoke-virtual {p0, p2}, Lr4/u62;->a(Lr4/lt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/u62;->c:Lr4/vm0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/vm0;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
