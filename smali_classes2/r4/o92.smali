.class public final Lr4/o92;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/t92;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/t92<",
            "Lr4/i31;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public c:Lr4/hx;


# direct methods
.method public constructor <init>(Lr4/t92;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/t92<",
            "Lr4/i31;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/o92;->a:Lr4/t92;

    iput-object p2, p0, Lr4/o92;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lr4/o92;Lr4/hx;)Lr4/hx;
    .locals 0

    iput-object p1, p0, Lr4/o92;->c:Lr4/hx;

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/o92;->a:Lr4/t92;

    invoke-interface {v0}, Lr4/t92;->a()Z

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

.method public final declared-synchronized c(Lr4/tt;I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lr4/o92;->c:Lr4/hx;

    new-instance v0, Lr4/u92;

    invoke-direct {v0, p2}, Lr4/u92;-><init>(I)V

    iget-object p2, p0, Lr4/o92;->a:Lr4/t92;

    iget-object v1, p0, Lr4/o92;->b:Ljava/lang/String;

    new-instance v2, Lr4/n92;

    invoke-direct {v2, p0}, Lr4/n92;-><init>(Lr4/o92;)V

    invoke-interface {p2, p1, v1, v0, v2}, Lr4/t92;->b(Lr4/tt;Ljava/lang/String;Lr4/r92;Lr4/s92;)Z
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
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lr4/o92;->c:Lr4/hx;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lr4/hx;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lr4/o92;->c:Lr4/hx;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lr4/hx;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method
