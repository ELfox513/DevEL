.class public final Lr4/om2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lr4/xf1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/s92;

.field public final synthetic b:Lr4/vg1;

.field public final synthetic c:Lr4/pm2;


# direct methods
.method public constructor <init>(Lr4/pm2;Lr4/s92;Lr4/vg1;)V
    .locals 0

    iput-object p1, p0, Lr4/om2;->c:Lr4/pm2;

    iput-object p2, p0, Lr4/om2;->a:Lr4/s92;

    iput-object p3, p0, Lr4/om2;->b:Lr4/vg1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lr4/om2;->b:Lr4/vg1;

    invoke-virtual {v0}, Lr4/vg1;->b()Lr4/m41;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/m41;->h(Ljava/lang/Throwable;)Lr4/lt;

    move-result-object v0

    iget-object v1, p0, Lr4/om2;->c:Lr4/pm2;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lr4/om2;->c:Lr4/pm2;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lr4/pm2;->f(Lr4/pm2;Lr4/h83;)Lr4/h83;

    iget-object v2, p0, Lr4/om2;->b:Lr4/vg1;

    invoke-virtual {v2}, Lr4/vg1;->a()Lr4/l71;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/l71;->B(Lr4/lt;)V

    sget-object v2, Lr4/rz;->Q5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lr4/om2;->c:Lr4/pm2;

    invoke-static {v2}, Lr4/pm2;->c(Lr4/pm2;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lr4/lm2;

    invoke-direct {v3, p0, v0}, Lr4/lm2;-><init>(Lr4/om2;Lr4/lt;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lr4/om2;->c:Lr4/pm2;

    invoke-static {v2}, Lr4/pm2;->c(Lr4/pm2;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lr4/nm2;

    invoke-direct {v3, p0, v0}, Lr4/nm2;-><init>(Lr4/om2;Lr4/lt;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget v0, v0, Lr4/lt;->a:I

    const-string v2, "InterstitialAdLoader.onFailure"

    invoke-static {v0, p1, v2}, Lr4/yp2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lr4/om2;->a:Lr4/s92;

    invoke-interface {p1}, Lr4/s92;->zza()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lr4/xf1;

    iget-object v0, p0, Lr4/om2;->c:Lr4/pm2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/om2;->c:Lr4/pm2;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/pm2;->f(Lr4/pm2;Lr4/h83;)Lr4/h83;

    sget-object v1, Lr4/rz;->Q5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lr4/i31;->f()Lr4/ub1;

    move-result-object v2

    iget-object v3, p0, Lr4/om2;->c:Lr4/pm2;

    invoke-static {v3}, Lr4/pm2;->d(Lr4/pm2;)Lr4/d92;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/ub1;->a(Lr4/d92;)Lr4/ub1;

    iget-object v3, p0, Lr4/om2;->c:Lr4/pm2;

    invoke-static {v3}, Lr4/pm2;->e(Lr4/pm2;)Lr4/qn2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/ub1;->d(Lr4/qn2;)Lr4/ub1;

    :cond_0
    iget-object v2, p0, Lr4/om2;->a:Lr4/s92;

    invoke-interface {v2, p1}, Lr4/s92;->b(Ljava/lang/Object;)V

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p1

    invoke-virtual {p1, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/om2;->c:Lr4/pm2;

    invoke-static {p1}, Lr4/pm2;->c(Lr4/pm2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lr4/jm2;

    invoke-direct {v1, p0}, Lr4/jm2;-><init>(Lr4/om2;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lr4/om2;->c:Lr4/pm2;

    invoke-static {p1}, Lr4/pm2;->c(Lr4/pm2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lr4/km2;

    invoke-direct {v1, p0}, Lr4/km2;-><init>(Lr4/om2;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
