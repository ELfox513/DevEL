.class public final Lr4/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c$a;


# instance fields
.field public final synthetic a:Lr4/to;

.field public final synthetic b:Lr4/vm0;

.field public final synthetic d:Lr4/dp;


# direct methods
.method public constructor <init>(Lr4/dp;Lr4/to;Lr4/vm0;)V
    .locals 0

    iput-object p1, p0, Lr4/bp;->d:Lr4/dp;

    iput-object p2, p0, Lr4/bp;->a:Lr4/to;

    iput-object p3, p0, Lr4/bp;->b:Lr4/vm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j0(I)V
    .locals 0

    return-void
.end method

.method public final o0(Landroid/os/Bundle;)V
    .locals 5

    iget-object p1, p0, Lr4/bp;->d:Lr4/dp;

    invoke-static {p1}, Lr4/dp;->d(Lr4/dp;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/bp;->d:Lr4/dp;

    invoke-static {v0}, Lr4/dp;->b(Lr4/dp;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lr4/bp;->d:Lr4/dp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/dp;->c(Lr4/dp;Z)Z

    iget-object v0, p0, Lr4/bp;->d:Lr4/dp;

    invoke-static {v0}, Lr4/dp;->a(Lr4/dp;)Lr4/so;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    sget-object v1, Lr4/qm0;->a:Lr4/i83;

    new-instance v2, Lr4/yo;

    iget-object v3, p0, Lr4/bp;->a:Lr4/to;

    iget-object v4, p0, Lr4/bp;->b:Lr4/vm0;

    invoke-direct {v2, p0, v0, v3, v4}, Lr4/yo;-><init>(Lr4/bp;Lr4/so;Lr4/to;Lr4/vm0;)V

    invoke-interface {v1, v2}, Lr4/i83;->d(Ljava/lang/Runnable;)Lr4/h83;

    move-result-object v0

    iget-object v1, p0, Lr4/bp;->b:Lr4/vm0;

    new-instance v2, Lr4/zo;

    invoke-direct {v2, v1, v0}, Lr4/zo;-><init>(Lr4/vm0;Ljava/util/concurrent/Future;)V

    sget-object v0, Lr4/qm0;->f:Lr4/i83;

    invoke-virtual {v1, v2, v0}, Lr4/vm0;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
