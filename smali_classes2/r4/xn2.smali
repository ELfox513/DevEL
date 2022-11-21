.class public final Lr4/xn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lr4/uo1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/s92;

.field public final synthetic b:Lr4/zn2;

.field public final synthetic c:Lr4/ao2;


# direct methods
.method public constructor <init>(Lr4/ao2;Lr4/s92;Lr4/zn2;)V
    .locals 0

    iput-object p1, p0, Lr4/xn2;->c:Lr4/ao2;

    iput-object p2, p0, Lr4/xn2;->a:Lr4/s92;

    iput-object p3, p0, Lr4/xn2;->b:Lr4/zn2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lr4/xn2;->c:Lr4/ao2;

    invoke-static {v0}, Lr4/ao2;->e(Lr4/ao2;)Lr4/am2;

    move-result-object v0

    invoke-interface {v0}, Lr4/am2;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/ap1;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lr4/dq2;->b(Ljava/lang/Throwable;Lr4/v12;)Lr4/lt;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lr4/ap1;->r()Lr4/m41;

    move-result-object v1

    invoke-virtual {v1, p1}, Lr4/m41;->h(Ljava/lang/Throwable;)Lr4/lt;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lr4/xn2;->c:Lr4/ao2;

    monitor-enter v2

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lr4/ap1;->a()Lr4/l71;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr4/l71;->B(Lr4/lt;)V

    iget-object v0, p0, Lr4/xn2;->c:Lr4/ao2;

    invoke-static {v0}, Lr4/ao2;->c(Lr4/ao2;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lr4/wn2;

    invoke-direct {v3, p0, v1}, Lr4/wn2;-><init>(Lr4/xn2;Lr4/lt;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lr4/xn2;->c:Lr4/ao2;

    invoke-static {v0}, Lr4/ao2;->d(Lr4/ao2;)Lr4/qn2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr4/qn2;->B(Lr4/lt;)V

    iget-object v0, p0, Lr4/xn2;->c:Lr4/ao2;

    iget-object v3, p0, Lr4/xn2;->b:Lr4/zn2;

    invoke-static {v0, v3}, Lr4/ao2;->f(Lr4/ao2;Lr4/yl2;)Lr4/zo1;

    move-result-object v0

    invoke-interface {v0}, Lr4/zo1;->zza()Lr4/ap1;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ap1;->r()Lr4/m41;

    move-result-object v0

    invoke-virtual {v0}, Lr4/m41;->e()Lr4/tc1;

    move-result-object v0

    invoke-virtual {v0}, Lr4/tc1;->o()V

    :goto_1
    iget v0, v1, Lr4/lt;->a:I

    const-string v1, "RewardedAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lr4/yp2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lr4/xn2;->a:Lr4/s92;

    invoke-interface {p1}, Lr4/s92;->zza()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lr4/uo1;

    iget-object v0, p0, Lr4/xn2;->c:Lr4/ao2;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lr4/i31;->f()Lr4/ub1;

    move-result-object v1

    iget-object v2, p0, Lr4/xn2;->c:Lr4/ao2;

    invoke-static {v2}, Lr4/ao2;->d(Lr4/ao2;)Lr4/qn2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr4/ub1;->d(Lr4/qn2;)Lr4/ub1;

    iget-object v1, p0, Lr4/xn2;->a:Lr4/s92;

    invoke-interface {v1, p1}, Lr4/s92;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lr4/xn2;->c:Lr4/ao2;

    invoke-static {p1}, Lr4/ao2;->c(Lr4/ao2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v1, p0, Lr4/xn2;->c:Lr4/ao2;

    invoke-static {v1}, Lr4/ao2;->d(Lr4/ao2;)Lr4/qn2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lr4/vn2;->a(Lr4/qn2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lr4/xn2;->c:Lr4/ao2;

    invoke-static {p1}, Lr4/ao2;->d(Lr4/ao2;)Lr4/qn2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/cx2;->v()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
