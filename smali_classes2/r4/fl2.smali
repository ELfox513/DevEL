.class public final Lr4/fl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/am2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lr4/r61<",
        "TAdT;>;AdT:",
        "Lr4/i31;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/am2<",
        "TR;TAdT;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/am2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/am2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/am2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/am2<",
            "TR;",
            "Lr4/kl2<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field

.field public final c:Lr4/qr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/qr2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public e:Lr4/r61;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lr4/am2;Lr4/am2;Lr4/qr2;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/am2<",
            "TR;TAdT;>;",
            "Lr4/am2<",
            "TR;",
            "Lr4/kl2<",
            "TR;TAdT;>;>;",
            "Lr4/qr2<",
            "TR;TAdT;>;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/fl2;->a:Lr4/am2;

    iput-object p2, p0, Lr4/fl2;->b:Lr4/am2;

    iput-object p3, p0, Lr4/fl2;->c:Lr4/qr2;

    iput-object p4, p0, Lr4/fl2;->d:Ljava/lang/String;

    iput-object p5, p0, Lr4/fl2;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bm2;Lr4/zl2;Ljava/lang/Object;)Lr4/h83;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lr4/fl2;->c(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b()Lr4/r61;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/fl2;->e:Lr4/r61;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bm2;",
            "Lr4/zl2<",
            "TR;>;TR;)",
            "Lr4/h83<",
            "TAdT;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lr4/bm2;->b:Lr4/yl2;

    invoke-interface {v5, v1}, Lr4/zl2;->a(Lr4/yl2;)Lr4/q61;

    move-result-object v1

    new-instance v2, Lr4/gl2;

    iget-object v3, v7, Lr4/fl2;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lr4/gl2;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lr4/q61;->p(Lr4/gl2;)Lr4/q61;

    invoke-interface {v1}, Lr4/q61;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lr4/r61;

    invoke-interface {v6}, Lr4/r61;->Z()Lr4/hp2;

    invoke-interface {v6}, Lr4/r61;->Z()Lr4/hp2;

    invoke-interface {v6}, Lr4/r61;->Z()Lr4/hp2;

    move-result-object v1

    iget-object v1, v1, Lr4/hp2;->d:Lr4/tt;

    iget-object v2, v1, Lr4/tt;->D:Lr4/jt;

    if-nez v2, :cond_1

    iget-object v1, v1, Lr4/tt;->I:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Lr4/r61;->Z()Lr4/hp2;

    move-result-object v1

    iget-object v11, v1, Lr4/hp2;->d:Lr4/tt;

    iget-object v12, v1, Lr4/hp2;->f:Ljava/lang/String;

    iget-object v14, v1, Lr4/hp2;->j:Lr4/eu;

    new-instance v4, Lr4/el2;

    iget-object v13, v7, Lr4/fl2;->f:Ljava/util/concurrent/Executor;

    const/4 v15, 0x0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v15}, Lr4/el2;-><init>(Lr4/zl2;Lr4/bm2;Lr4/tt;Ljava/lang/String;Ljava/util/concurrent/Executor;Lr4/eu;Lr4/er2;)V

    iget-object v1, v7, Lr4/fl2;->b:Lr4/am2;

    check-cast v1, Lr4/ml2;

    invoke-virtual {v1, v0, v5, v6}, Lr4/ml2;->b(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;

    move-result-object v1

    invoke-static {v1}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object v8

    new-instance v9, Lr4/bl2;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lr4/bl2;-><init>(Lr4/fl2;Lr4/bm2;Lr4/el2;Lr4/zl2;Lr4/r61;)V

    iget-object v0, v7, Lr4/fl2;->f:Ljava/util/concurrent/Executor;

    invoke-static {v8, v9, v0}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    iput-object v6, v7, Lr4/fl2;->e:Lr4/r61;

    iget-object v1, v7, Lr4/fl2;->a:Lr4/am2;

    check-cast v1, Lr4/ql2;

    invoke-virtual {v1, v0, v5, v6}, Lr4/ql2;->c(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic d(Lr4/nr2;)Lr4/h83;
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lr4/nr2;->a:Lr4/dr2;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lr4/nr2;->b:Lr4/pr2;

    if-eqz v0, :cond_0

    check-cast v0, Lr4/el2;

    invoke-static {}, Lr4/bq;->C()Lr4/vp;

    move-result-object v1

    invoke-static {}, Lr4/up;->C()Lr4/tp;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lr4/tp;->A(I)Lr4/tp;

    invoke-static {}, Lr4/yp;->D()Lr4/yp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/tp;->v(Lr4/yp;)Lr4/tp;

    invoke-virtual {v1, v2}, Lr4/vp;->v(Lr4/tp;)Lr4/vp;

    invoke-virtual {v1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v1

    check-cast v1, Lr4/bq;

    iget-object v2, p1, Lr4/nr2;->a:Lr4/dr2;

    iget-object v2, v2, Lr4/dr2;->a:Lr4/r61;

    invoke-interface {v2}, Lr4/r61;->r()Lr4/m41;

    move-result-object v2

    invoke-virtual {v2}, Lr4/m41;->e()Lr4/tc1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/tc1;->m0(Lr4/bq;)V

    iget-object p1, p1, Lr4/nr2;->a:Lr4/dr2;

    iget-object v0, v0, Lr4/el2;->b:Lr4/bm2;

    invoke-virtual {p0, p1, v0}, Lr4/fl2;->g(Lr4/dr2;Lr4/bm2;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lr4/sv1;

    const/4 v0, 0x1

    const-string v1, "Empty prefetch"

    invoke-direct {p1, v0, v1}, Lr4/sv1;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/fl2;->b()Lr4/r61;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f(Lr4/bm2;Lr4/el2;Lr4/zl2;Lr4/r61;Lr4/kl2;)Lr4/h83;
    .locals 9

    if-eqz p5, :cond_2

    iget-object v7, p5, Lr4/kl2;->a:Lr4/er2;

    new-instance v8, Lr4/el2;

    iget-object v1, p2, Lr4/el2;->a:Lr4/zl2;

    iget-object v2, p2, Lr4/el2;->b:Lr4/bm2;

    iget-object v3, p2, Lr4/el2;->c:Lr4/tt;

    iget-object v4, p2, Lr4/el2;->d:Ljava/lang/String;

    iget-object v5, p2, Lr4/el2;->e:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lr4/el2;->f:Lr4/eu;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lr4/el2;-><init>(Lr4/zl2;Lr4/bm2;Lr4/tt;Ljava/lang/String;Ljava/util/concurrent/Executor;Lr4/eu;Lr4/er2;)V

    iget-object p2, p5, Lr4/kl2;->c:Lr4/dr2;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput-object v0, p0, Lr4/fl2;->e:Lr4/r61;

    iget-object p2, p0, Lr4/fl2;->c:Lr4/qr2;

    invoke-virtual {p2, v8}, Lr4/qr2;->c(Lr4/pr2;)V

    iget-object p2, p5, Lr4/kl2;->c:Lr4/dr2;

    invoke-virtual {p0, p2, p1}, Lr4/fl2;->g(Lr4/dr2;Lr4/bm2;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lr4/fl2;->c:Lr4/qr2;

    invoke-virtual {p2, v8}, Lr4/qr2;->d(Lr4/pr2;)Lr4/h83;

    move-result-object p2

    if-eqz p2, :cond_1

    iput-object v0, p0, Lr4/fl2;->e:Lr4/r61;

    new-instance p1, Lr4/cl2;

    invoke-direct {p1, p0}, Lr4/cl2;-><init>(Lr4/fl2;)V

    iget-object p3, p0, Lr4/fl2;->f:Ljava/util/concurrent/Executor;

    invoke-static {p2, p1, p3}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lr4/fl2;->c:Lr4/qr2;

    invoke-virtual {p2, v8}, Lr4/qr2;->c(Lr4/pr2;)V

    new-instance p2, Lr4/bm2;

    iget-object p1, p1, Lr4/bm2;->b:Lr4/yl2;

    iget-object p5, p5, Lr4/kl2;->b:Lr4/og0;

    invoke-direct {p2, p1, p5}, Lr4/bm2;-><init>(Lr4/yl2;Lr4/og0;)V

    move-object p1, p2

    :cond_2
    iget-object p2, p0, Lr4/fl2;->a:Lr4/am2;

    check-cast p2, Lr4/ql2;

    invoke-virtual {p2, p1, p3, p4}, Lr4/ql2;->c(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;

    move-result-object p1

    iput-object p4, p0, Lr4/fl2;->e:Lr4/r61;

    return-object p1
.end method

.method public final g(Lr4/dr2;Lr4/bm2;)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/dr2<",
            "TR;TAdT;>;",
            "Lr4/bm2;",
            ")",
            "Lr4/h83<",
            "TAdT;>;"
        }
    .end annotation

    iget-object v0, p1, Lr4/dr2;->a:Lr4/r61;

    iput-object v0, p0, Lr4/fl2;->e:Lr4/r61;

    iget-object v1, p1, Lr4/dr2;->c:Lr4/i31;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lr4/r61;->P()Lr4/xl2;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lr4/dr2;->c:Lr4/i31;

    invoke-virtual {p2}, Lr4/i31;->e()Lr4/xl2;

    move-result-object p2

    iget-object v0, p1, Lr4/dr2;->a:Lr4/r61;

    invoke-interface {v0}, Lr4/r61;->P()Lr4/xl2;

    move-result-object v0

    invoke-interface {p2, v0}, Lr4/xl2;->s(Lr4/xl2;)V

    :cond_0
    iget-object p1, p1, Lr4/dr2;->c:Lr4/i31;

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lr4/r61;->r()Lr4/m41;

    move-result-object v0

    iget-object v1, p1, Lr4/dr2;->b:Lr4/bp2;

    invoke-virtual {v0, v1}, Lr4/m41;->i(Lr4/bp2;)V

    iget-object v0, p0, Lr4/fl2;->a:Lr4/am2;

    iget-object p1, p1, Lr4/dr2;->a:Lr4/r61;

    check-cast v0, Lr4/ql2;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lr4/ql2;->c(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
