.class public final Lg5/u5;
.super Lg5/f3;
.source "SourceFile"


# instance fields
.field public final a:Lg5/ba;

.field public b:Ljava/lang/Boolean;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg5/ba;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lg5/f3;-><init>()V

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lg5/u5;->a:Lg5/ba;

    const/4 p1, 0x0

    iput-object p1, p0, Lg5/u5;->d:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic A2(Lg5/u5;Lg5/u;Lg5/pa;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg5/u5;->t0(Lg5/u;Lg5/pa;)V

    return-void
.end method

.method public static bridge synthetic b2(Lg5/u5;)Lg5/ba;
    .locals 0

    iget-object p0, p0, Lg5/u5;->a:Lg5/ba;

    return-object p0
.end method


# virtual methods
.method public final C5(Lg5/pa;)V
    .locals 2

    iget-object v0, p1, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {v0}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lg5/pa;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lg5/u5;->o0(Ljava/lang/String;Z)V

    new-instance v0, Lg5/k5;

    invoke-direct {v0, p0, p1}, Lg5/k5;-><init>(Lg5/u5;Lg5/pa;)V

    invoke-virtual {p0, v0}, Lg5/u5;->C6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final C6(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/y4;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F4(Lg5/pa;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg5/u5;->e7(Lg5/pa;Z)V

    new-instance v0, Lg5/s5;

    invoke-direct {v0, p0, p1}, Lg5/s5;-><init>(Lg5/u5;Lg5/pa;)V

    invoke-virtual {p0, v0}, Lg5/u5;->C6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final H1(Ljava/lang/String;Ljava/lang/String;ZLg5/pa;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lg5/pa;",
            ")",
            "Ljava/util/List<",
            "Lg5/ea;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lg5/u5;->e7(Lg5/pa;Z)V

    iget-object v0, p4, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v1}, Lg5/ba;->P()Lg5/y4;

    move-result-object v1

    new-instance v2, Lg5/f5;

    invoke-direct {v2, p0, v0, p1, p2}, Lg5/f5;-><init>(Lg5/u5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lg5/y4;->n(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/ga;

    if-nez p3, :cond_1

    iget-object v1, v0, Lg5/ga;->c:Ljava/lang/String;

    invoke-static {v1}, Lg5/ia;->V(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    new-instance v1, Lg5/ea;

    invoke-direct {v1, v0}, Lg5/ea;-><init>(Lg5/ga;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    iget-object p2, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p2}, Lg5/ba;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->m()Lg5/o3;

    move-result-object p2

    iget-object p3, p4, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {p3}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Failed to query user properties. appId"

    invoke-virtual {p2, p4, p3, p1}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final L0(Lg5/u;Lg5/pa;)Lg5/u;
    .locals 8

    iget-object p2, p1, Lg5/u;->a:Ljava/lang/String;

    const-string v0, "_cmp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lg5/u;->b:Lg5/s;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lg5/s;->X0()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lg5/u;->b:Lg5/s;

    const-string v0, "_cis"

    invoke-virtual {p2, v0}, Lg5/s;->d1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "referrer broadcast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "referrer API"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p2}, Lg5/ba;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->p()Lg5/o3;

    move-result-object p2

    invoke-virtual {p1}, Lg5/u;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event has been filtered "

    invoke-virtual {p2, v1, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lg5/u;

    iget-object v4, p1, Lg5/u;->b:Lg5/s;

    iget-object v5, p1, Lg5/u;->d:Ljava/lang/String;

    iget-wide v6, p1, Lg5/u;->k:J

    const-string v3, "_cmpx"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lg5/u;-><init>(Ljava/lang/String;Lg5/s;Ljava/lang/String;J)V

    return-object p2

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final L3(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lg5/t5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lg5/t5;-><init>(Lg5/u5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v7}, Lg5/u5;->C6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final M3(Lg5/u;Lg5/pa;)V
    .locals 1

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lg5/u5;->e7(Lg5/pa;Z)V

    new-instance v0, Lg5/n5;

    invoke-direct {v0, p0, p1, p2}, Lg5/n5;-><init>(Lg5/u5;Lg5/u;Lg5/pa;)V

    invoke-virtual {p0, v0}, Lg5/u5;->C6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final N6(Lg5/ea;Lg5/pa;)V
    .locals 1

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lg5/u5;->e7(Lg5/pa;Z)V

    new-instance v0, Lg5/q5;

    invoke-direct {v0, p0, p1, p2}, Lg5/q5;-><init>(Lg5/u5;Lg5/ea;Lg5/pa;)V

    invoke-virtual {p0, v0}, Lg5/u5;->C6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final T2(Lg5/u;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lg5/u5;->o0(Ljava/lang/String;Z)V

    new-instance p3, Lg5/o5;

    invoke-direct {p3, p0, p1, p2}, Lg5/o5;-><init>(Lg5/u5;Lg5/u;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lg5/u5;->C6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final V1(Lg5/u;Ljava/lang/String;)[B
    .locals 11

    invoke-static {p2}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lg5/u5;->o0(Ljava/lang/String;Z)V

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    iget-object v1, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v1}, Lg5/ba;->W()Lg5/l3;

    move-result-object v1

    iget-object v2, p1, Lg5/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Log and bundle. event"

    invoke-virtual {v0, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->c()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-object v4, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v4}, Lg5/ba;->P()Lg5/y4;

    move-result-object v4

    new-instance v5, Lg5/p5;

    invoke-direct {v5, p0, p1, p2}, Lg5/p5;-><init>(Lg5/u5;Lg5/u;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lg5/y4;->o(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_0

    iget-object v4, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v4}, Lg5/ba;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->m()Lg5/o3;

    move-result-object v4

    const-string v5, "Log and bundle returned null. appId"

    invoke-static {p2}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B

    :cond_0
    iget-object v5, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v5}, Lg5/ba;->Q()Lc4/f;

    move-result-object v5

    invoke-interface {v5}, Lc4/f;->c()J

    move-result-wide v5

    iget-object v7, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v7}, Lg5/ba;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->l()Lg5/o3;

    move-result-object v7

    const-string v8, "Log and bundle processed. event, size, time_ms"

    iget-object v9, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v9}, Lg5/ba;->W()Lg5/l3;

    move-result-object v9

    iget-object v10, p1, Lg5/u;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    array-length v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    div-long/2addr v5, v2

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v8, v9, v10, v0}, Lg5/o3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v1}, Lg5/ba;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->m()Lg5/o3;

    move-result-object v1

    invoke-static {p2}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v2}, Lg5/ba;->W()Lg5/l3;

    move-result-object v2

    iget-object p1, p1, Lg5/u;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to log and bundle. appId, event, error"

    invoke-virtual {v1, v2, p2, p1, v0}, Lg5/o3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final Y5(Ljava/lang/String;Ljava/lang/String;Lg5/pa;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lg5/pa;",
            ")",
            "Ljava/util/List<",
            "Lg5/c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lg5/u5;->e7(Lg5/pa;Z)V

    iget-object p3, p3, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {p3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/i5;

    invoke-direct {v1, p0, p3, p1, p2}, Lg5/i5;-><init>(Lg5/u5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg5/y4;->n(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p2}, Lg5/ba;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->m()Lg5/o3;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a5(Lg5/c;Lg5/pa;)V
    .locals 1

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lg5/c;->d:Lg5/ea;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lg5/u5;->e7(Lg5/pa;Z)V

    new-instance v0, Lg5/c;

    invoke-direct {v0, p1}, Lg5/c;-><init>(Lg5/c;)V

    iget-object p1, p2, Lg5/pa;->a:Ljava/lang/String;

    iput-object p1, v0, Lg5/c;->a:Ljava/lang/String;

    new-instance p1, Lg5/d5;

    invoke-direct {p1, p0, v0, p2}, Lg5/d5;-><init>(Lg5/u5;Lg5/c;Lg5/pa;)V

    invoke-virtual {p0, p1}, Lg5/u5;->C6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c2(Lg5/c;)V
    .locals 2

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lg5/c;->d:Lg5/ea;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lg5/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lg5/c;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lg5/u5;->o0(Ljava/lang/String;Z)V

    new-instance v0, Lg5/c;

    invoke-direct {v0, p1}, Lg5/c;-><init>(Lg5/c;)V

    new-instance p1, Lg5/e5;

    invoke-direct {p1, p0, v0}, Lg5/e5;-><init>(Lg5/u5;Lg5/c;)V

    invoke-virtual {p0, p1}, Lg5/u5;->C6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e3(Lg5/u;Lg5/pa;)V
    .locals 7

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->Z()Lg5/t4;

    move-result-object v0

    iget-object v1, p2, Lg5/pa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg5/t4;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lg5/u5;->t0(Lg5/u;Lg5/pa;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    iget-object v1, p2, Lg5/pa;->a:Ljava/lang/String;

    const-string v2, "EES config found for"

    invoke-virtual {v0, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->Z()Lg5/t4;

    move-result-object v0

    iget-object v1, p2, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {}, Lb5/qe;->b()Z

    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    move-result-object v2

    sget-object v3, Lg5/c3;->x0:Lg5/b3;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lg5/t4;->i:Lp/e;

    invoke-virtual {v0, v1}, Lp/e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lb5/c1;

    :cond_2
    :goto_0
    if-eqz v4, :cond_7

    :try_start_0
    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->f0()Lg5/da;

    move-result-object v0

    iget-object v1, p1, Lg5/u;->b:Lg5/s;

    invoke-virtual {v1}, Lg5/s;->Z0()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lg5/da;->H(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lg5/u;->a:Ljava/lang/String;

    invoke-static {v1}, Lg5/z5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lg5/u;->a:Ljava/lang/String;

    :cond_3
    new-instance v2, Lb5/b;

    iget-wide v5, p1, Lg5/u;->k:J

    invoke-direct {v2, v1, v5, v6, v0}, Lb5/b;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    invoke-virtual {v4, v2}, Lb5/c1;->e(Lb5/b;)Z

    move-result v0
    :try_end_0
    .catch Lb5/y1; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v4}, Lb5/c1;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    iget-object p1, p1, Lg5/u;->a:Ljava/lang/String;

    const-string v1, "EES edited event"

    invoke-virtual {v0, v1, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p1}, Lg5/ba;->f0()Lg5/da;

    move-result-object p1

    invoke-virtual {v4}, Lb5/c1;->a()Lb5/c;

    move-result-object v0

    invoke-virtual {v0}, Lb5/c;->b()Lb5/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg5/da;->w(Lb5/b;)Lg5/u;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lg5/u5;->t0(Lg5/u;Lg5/pa;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, p2}, Lg5/u5;->t0(Lg5/u;Lg5/pa;)V

    :goto_1
    invoke-virtual {v4}, Lb5/c1;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v4}, Lb5/c1;->a()Lb5/c;

    move-result-object p1

    invoke-virtual {p1}, Lb5/c;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/b;

    iget-object v1, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v1}, Lg5/ba;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    invoke-virtual {v0}, Lb5/b;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EES logging created event"

    invoke-virtual {v1, v3, v2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v1}, Lg5/ba;->f0()Lg5/da;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg5/da;->w(Lb5/b;)Lg5/u;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lg5/u5;->t0(Lg5/u;Lg5/pa;)V

    goto :goto_2

    :cond_6
    return-void

    :catch_0
    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    iget-object v1, p2, Lg5/pa;->b:Ljava/lang/String;

    iget-object v2, p1, Lg5/u;->a:Ljava/lang/String;

    const-string v3, "EES error. appId, eventName"

    invoke-virtual {v0, v3, v1, v2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    iget-object v1, p1, Lg5/u;->a:Ljava/lang/String;

    const-string v2, "EES was not applied to event"

    invoke-virtual {v0, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lg5/u5;->t0(Lg5/u;Lg5/pa;)V

    return-void

    :cond_7
    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    iget-object v1, p2, Lg5/pa;->a:Ljava/lang/String;

    const-string v2, "EES not loaded for"

    invoke-virtual {v0, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lg5/u5;->t0(Lg5/u;Lg5/pa;)V

    return-void
.end method

.method public final e4(Lg5/pa;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg5/u5;->e7(Lg5/pa;Z)V

    new-instance v0, Lg5/l5;

    invoke-direct {v0, p0, p1}, Lg5/l5;-><init>(Lg5/u5;Lg5/pa;)V

    invoke-virtual {p0, v0}, Lg5/u5;->C6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e7(Lg5/pa;Z)V
    .locals 2

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {p2}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p1, Lg5/pa;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lg5/u5;->o0(Ljava/lang/String;Z)V

    iget-object p2, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p2}, Lg5/ba;->g0()Lg5/ia;

    move-result-object p2

    iget-object v0, p1, Lg5/pa;->b:Ljava/lang/String;

    iget-object v1, p1, Lg5/pa;->B:Ljava/lang/String;

    iget-object p1, p1, Lg5/pa;->F:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lg5/ia;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final g4(Lg5/pa;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg5/pa;",
            "Z)",
            "Ljava/util/List<",
            "Lg5/ea;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg5/u5;->e7(Lg5/pa;Z)V

    iget-object v0, p1, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v1}, Lg5/ba;->P()Lg5/y4;

    move-result-object v1

    new-instance v2, Lg5/r5;

    invoke-direct {v2, p0, v0}, Lg5/r5;-><init>(Lg5/u5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lg5/y4;->n(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/ga;

    if-nez p2, :cond_1

    iget-object v3, v2, Lg5/ga;->c:Ljava/lang/String;

    invoke-static {v3}, Lg5/ia;->V(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lg5/ea;

    invoke-direct {v3, v2}, Lg5/ea;-><init>(Lg5/ga;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_1
    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    iget-object p1, p1, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {p1}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to get user properties. appId"

    invoke-virtual {v0, v1, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final g6(Lg5/pa;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg5/u5;->e7(Lg5/pa;Z)V

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0, p1}, Lg5/ba;->i0(Lg5/pa;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j5(Landroid/os/Bundle;Lg5/pa;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lg5/u5;->e7(Lg5/pa;Z)V

    iget-object p2, p2, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {p2}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lg5/c5;

    invoke-direct {v0, p0, p2, p1}, Lg5/c5;-><init>(Lg5/u5;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lg5/u5;->C6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o0(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lg5/u5;->b:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    iget-object v2, p0, Lg5/u5;->d:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p2}, Lg5/ba;->O()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {p2, v2}, Lc4/t;->a(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p2}, Lg5/ba;->O()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lt3/n;->a(Landroid/content/Context;)Lt3/n;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lt3/n;->c(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lg5/u5;->b:Ljava/lang/Boolean;

    :cond_2
    iget-object p2, p0, Lg5/u5;->b:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_3
    iget-object p2, p0, Lg5/u5;->d:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object p2, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p2}, Lg5/ba;->O()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {p2, v2, p1}, Lt3/m;->j(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-object p1, p0, Lg5/u5;->d:Ljava/lang/String;

    :cond_4
    iget-object p2, p0, Lg5/u5;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "Unknown calling package name \'%s\'."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    invoke-static {p1}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    invoke-virtual {v0, v1, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    throw p2

    :cond_7
    iget-object p1, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p1}, Lg5/ba;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lg5/c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lg5/u5;->o0(Ljava/lang/String;Z)V

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/j5;

    invoke-direct {v1, p0, p1, p2, p3}, Lg5/j5;-><init>(Lg5/u5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg5/y4;->n(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p2}, Lg5/ba;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->m()Lg5/o3;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties as"

    invoke-virtual {p2, p3, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic p6(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->V()Lg5/k;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    invoke-virtual {v0}, Lg5/r9;->d()V

    new-instance v11, Lg5/p;

    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    const-string v3, ""

    const-string v5, "dep"

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v11

    move-object v4, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lg5/p;-><init>(Lg5/b5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object p2, v0, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {p2}, Lg5/ba;->f0()Lg5/da;

    move-result-object p2

    invoke-virtual {p2, v11}, Lg5/da;->x(Lg5/p;)Lb5/j4;

    move-result-object p2

    invoke-virtual {p2}, Lb5/f7;->e()[B

    move-result-object p2

    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->y()Lg5/l3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Saving default event parameters, appId, data size"

    invoke-virtual {v1, v4, v2, v3}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "parameters"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    invoke-virtual {v0}, Lg5/k;->R()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "default_event_params"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    iget-object p2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->m()Lg5/o3;

    move-result-object p2

    const-string v1, "Failed to insert default event parameters (got -1). appId"

    invoke-static {p1}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    invoke-static {p1}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing default event parameters. appId"

    invoke-virtual {v0, v1, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final q3(Lg5/pa;)V
    .locals 1

    iget-object v0, p1, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {v0}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lg5/pa;->G:Ljava/lang/String;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lg5/m5;

    invoke-direct {v0, p0, p1}, Lg5/m5;-><init>(Lg5/u5;Lg5/pa;)V

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p1}, Lg5/ba;->P()Lg5/y4;

    move-result-object p1

    invoke-virtual {p1}, Lg5/y4;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p1, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p1}, Lg5/ba;->P()Lg5/y4;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg5/y4;->v(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t0(Lg5/u;Lg5/pa;)V
    .locals 1

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->a()V

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0, p1, p2}, Lg5/ba;->d(Lg5/u;Lg5/pa;)V

    return-void
.end method

.method public final v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lg5/ea;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lg5/u5;->o0(Ljava/lang/String;Z)V

    iget-object v0, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/h5;

    invoke-direct {v1, p0, p1, p2, p3}, Lg5/h5;-><init>(Lg5/u5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg5/y4;->n(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/ga;

    if-nez p4, :cond_1

    iget-object v1, v0, Lg5/ga;->c:Ljava/lang/String;

    invoke-static {v1}, Lg5/ia;->V(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    new-instance v1, Lg5/ea;

    invoke-direct {v1, v0}, Lg5/ea;-><init>(Lg5/ga;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_1
    iget-object p3, p0, Lg5/u5;->a:Lg5/ba;

    invoke-virtual {p3}, Lg5/ba;->F()Lg5/q3;

    move-result-object p3

    invoke-virtual {p3}, Lg5/q3;->m()Lg5/o3;

    move-result-object p3

    invoke-static {p1}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Failed to get user properties as. appId"

    invoke-virtual {p3, p4, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
