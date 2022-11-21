.class public final Lr4/dt2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/String;

.field public final c:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/h83<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lr4/et2;


# direct methods
.method public constructor <init>(Lr4/et2;Ljava/lang/Object;Ljava/lang/String;Lr4/h83;Ljava/util/List;Lr4/h83;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/et2;",
            "Ljava/lang/String;",
            "Lr4/h83;",
            "Ljava/util/List<",
            "Lr4/h83;",
            ">;",
            "Lr4/h83<",
            "TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lr4/dt2;->f:Lr4/et2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/dt2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lr4/dt2;->b:Ljava/lang/String;

    iput-object p4, p0, Lr4/dt2;->c:Lr4/h83;

    iput-object p5, p0, Lr4/dt2;->d:Ljava/util/List;

    iput-object p6, p0, Lr4/dt2;->e:Lr4/h83;

    return-void
.end method

.method public synthetic constructor <init>(Lr4/et2;Ljava/lang/Object;Ljava/lang/String;Lr4/h83;Ljava/util/List;Lr4/h83;Lr4/vs2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/et2;",
            "Ljava/lang/String;",
            "Lr4/h83;",
            "Ljava/util/List<",
            "Lr4/h83;",
            ">;",
            "Lr4/h83<",
            "TO;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lr4/dt2;-><init>(Lr4/et2;Ljava/lang/Object;Ljava/lang/String;Lr4/h83;Ljava/util/List;Lr4/h83;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lr4/dt2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lr4/dt2<",
            "TO;>;"
        }
    .end annotation

    new-instance v7, Lr4/dt2;

    iget-object v1, p0, Lr4/dt2;->f:Lr4/et2;

    iget-object v2, p0, Lr4/dt2;->a:Ljava/lang/Object;

    iget-object v4, p0, Lr4/dt2;->c:Lr4/h83;

    iget-object v5, p0, Lr4/dt2;->d:Ljava/util/List;

    iget-object v6, p0, Lr4/dt2;->e:Lr4/h83;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lr4/dt2;-><init>(Lr4/et2;Ljava/lang/Object;Ljava/lang/String;Lr4/h83;Ljava/util/List;Lr4/h83;)V

    return-object v7
.end method

.method public final b(Lr4/ps2;)Lr4/dt2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/ps2<",
            "TO;TO2;>;)",
            "Lr4/dt2<",
            "TO2;>;"
        }
    .end annotation

    new-instance v0, Lr4/ys2;

    invoke-direct {v0, p1}, Lr4/ys2;-><init>(Lr4/ps2;)V

    invoke-virtual {p0, v0}, Lr4/dt2;->c(Lr4/e73;)Lr4/dt2;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lr4/e73;)Lr4/dt2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/e73<",
            "TO;TO2;>;)",
            "Lr4/dt2<",
            "TO2;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/dt2;->f:Lr4/et2;

    invoke-static {v0}, Lr4/et2;->b(Lr4/et2;)Lr4/i83;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lr4/dt2;->d(Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/dt2;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/dt2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/e73<",
            "TO;TO2;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr4/dt2<",
            "TO2;>;"
        }
    .end annotation

    new-instance v7, Lr4/dt2;

    iget-object v1, p0, Lr4/dt2;->f:Lr4/et2;

    iget-object v2, p0, Lr4/dt2;->a:Ljava/lang/Object;

    iget-object v3, p0, Lr4/dt2;->b:Ljava/lang/String;

    iget-object v4, p0, Lr4/dt2;->c:Lr4/h83;

    iget-object v5, p0, Lr4/dt2;->d:Ljava/util/List;

    iget-object v0, p0, Lr4/dt2;->e:Lr4/h83;

    invoke-static {v0, p1, p2}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/dt2;-><init>(Lr4/et2;Ljava/lang/Object;Ljava/lang/String;Lr4/h83;Ljava/util/List;Lr4/h83;)V

    return-object v7
.end method

.method public final e(Lr4/h83;)Lr4/dt2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/h83<",
            "TO2;>;)",
            "Lr4/dt2<",
            "TO2;>;"
        }
    .end annotation

    new-instance v0, Lr4/zs2;

    invoke-direct {v0, p1}, Lr4/zs2;-><init>(Lr4/h83;)V

    sget-object p1, Lr4/qm0;->f:Lr4/i83;

    invoke-virtual {p0, v0, p1}, Lr4/dt2;->d(Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/dt2;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Class;Lr4/ps2;)Lr4/dt2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lr4/ps2<",
            "TT;TO;>;)",
            "Lr4/dt2<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lr4/at2;

    invoke-direct {v0, p2}, Lr4/at2;-><init>(Lr4/ps2;)V

    invoke-virtual {p0, p1, v0}, Lr4/dt2;->g(Ljava/lang/Class;Lr4/e73;)Lr4/dt2;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/Class;Lr4/e73;)Lr4/dt2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lr4/e73<",
            "TT;TO;>;)",
            "Lr4/dt2<",
            "TO;>;"
        }
    .end annotation

    new-instance v7, Lr4/dt2;

    iget-object v1, p0, Lr4/dt2;->f:Lr4/et2;

    iget-object v2, p0, Lr4/dt2;->a:Ljava/lang/Object;

    iget-object v3, p0, Lr4/dt2;->b:Ljava/lang/String;

    iget-object v4, p0, Lr4/dt2;->c:Lr4/h83;

    iget-object v5, p0, Lr4/dt2;->d:Ljava/util/List;

    iget-object v0, p0, Lr4/dt2;->e:Lr4/h83;

    invoke-static {v1}, Lr4/et2;->b(Lr4/et2;)Lr4/i83;

    move-result-object v6

    invoke-static {v0, p1, p2, v6}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/dt2;-><init>(Lr4/et2;Ljava/lang/Object;Ljava/lang/String;Lr4/h83;Ljava/util/List;Lr4/h83;)V

    return-object v7
.end method

.method public final h(JLjava/util/concurrent/TimeUnit;)Lr4/dt2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lr4/dt2<",
            "TO;>;"
        }
    .end annotation

    new-instance v7, Lr4/dt2;

    iget-object v1, p0, Lr4/dt2;->f:Lr4/et2;

    iget-object v2, p0, Lr4/dt2;->a:Ljava/lang/Object;

    iget-object v3, p0, Lr4/dt2;->b:Ljava/lang/String;

    iget-object v4, p0, Lr4/dt2;->c:Lr4/h83;

    iget-object v5, p0, Lr4/dt2;->d:Ljava/util/List;

    iget-object v0, p0, Lr4/dt2;->e:Lr4/h83;

    invoke-static {v1}, Lr4/et2;->c(Lr4/et2;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-static {v0, p1, p2, p3, v6}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/dt2;-><init>(Lr4/et2;Ljava/lang/Object;Ljava/lang/String;Lr4/h83;Ljava/util/List;Lr4/h83;)V

    return-object v7
.end method

.method public final i()Lr4/rs2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/rs2;"
        }
    .end annotation

    new-instance v0, Lr4/rs2;

    iget-object v1, p0, Lr4/dt2;->a:Ljava/lang/Object;

    iget-object v2, p0, Lr4/dt2;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lr4/dt2;->f:Lr4/et2;

    invoke-virtual {v2, v1}, Lr4/et2;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lr4/dt2;->e:Lr4/h83;

    invoke-direct {v0, v1, v2, v3}, Lr4/rs2;-><init>(Ljava/lang/Object;Ljava/lang/String;Lr4/h83;)V

    iget-object v1, p0, Lr4/dt2;->f:Lr4/et2;

    invoke-static {v1}, Lr4/et2;->d(Lr4/et2;)Lr4/ft2;

    move-result-object v1

    invoke-interface {v1, v0}, Lr4/ft2;->j(Lr4/rs2;)V

    iget-object v1, p0, Lr4/dt2;->c:Lr4/h83;

    new-instance v2, Lr4/bt2;

    invoke-direct {v2, p0, v0}, Lr4/bt2;-><init>(Lr4/dt2;Lr4/rs2;)V

    sget-object v3, Lr4/qm0;->f:Lr4/i83;

    invoke-interface {v1, v2, v3}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, Lr4/ct2;

    invoke-direct {v1, p0, v0}, Lr4/ct2;-><init>(Lr4/dt2;Lr4/rs2;)V

    invoke-static {v0, v1, v3}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final j(Ljava/lang/Object;)Lr4/dt2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lr4/dt2<",
            "TO;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object v0

    iget-object v1, p0, Lr4/dt2;->f:Lr4/et2;

    invoke-virtual {v1, p1, v0}, Lr4/et2;->e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;

    move-result-object p1

    return-object p1
.end method
