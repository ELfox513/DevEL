.class public final Lr4/ca2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lr4/i31;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/s92;

.field public final synthetic b:Lr4/sh1;

.field public final synthetic c:Lr4/da2;


# direct methods
.method public constructor <init>(Lr4/da2;Lr4/s92;Lr4/sh1;)V
    .locals 0

    iput-object p1, p0, Lr4/ca2;->c:Lr4/da2;

    iput-object p2, p0, Lr4/ca2;->a:Lr4/s92;

    iput-object p3, p0, Lr4/ca2;->b:Lr4/sh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lr4/ca2;->b:Lr4/sh1;

    invoke-virtual {v0}, Lr4/sh1;->a()Lr4/m41;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/m41;->h(Ljava/lang/Throwable;)Lr4/lt;

    move-result-object v0

    iget-object v1, p0, Lr4/ca2;->b:Lr4/sh1;

    invoke-virtual {v1}, Lr4/sh1;->b()Lr4/l71;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/l71;->B(Lr4/lt;)V

    iget-object v1, p0, Lr4/ca2;->c:Lr4/da2;

    invoke-static {v1}, Lr4/da2;->c(Lr4/da2;)Lr4/bu0;

    move-result-object v1

    invoke-virtual {v1}, Lr4/bu0;->h()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lr4/ba2;

    invoke-direct {v2, p0, v0}, Lr4/ba2;-><init>(Lr4/ca2;Lr4/lt;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget v0, v0, Lr4/lt;->a:I

    const-string v1, "NativeAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lr4/yp2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lr4/ca2;->a:Lr4/s92;

    invoke-interface {p1}, Lr4/s92;->zza()V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lr4/i31;

    iget-object v0, p0, Lr4/ca2;->c:Lr4/da2;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lr4/i31;->f()Lr4/ub1;

    move-result-object v1

    iget-object v2, p0, Lr4/ca2;->c:Lr4/da2;

    invoke-static {v2}, Lr4/da2;->d(Lr4/da2;)Lr4/q92;

    move-result-object v2

    invoke-virtual {v2}, Lr4/q92;->c()Lr4/d92;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr4/ub1;->a(Lr4/d92;)Lr4/ub1;

    iget-object v1, p0, Lr4/ca2;->a:Lr4/s92;

    invoke-interface {v1, p1}, Lr4/s92;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lr4/ca2;->c:Lr4/da2;

    invoke-static {p1}, Lr4/da2;->c(Lr4/da2;)Lr4/bu0;

    move-result-object p1

    invoke-virtual {p1}, Lr4/bu0;->h()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lr4/aa2;

    invoke-direct {v1, p0}, Lr4/aa2;-><init>(Lr4/ca2;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
