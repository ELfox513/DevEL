.class public final Lr4/bt3;
.super Lr4/ps3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/ps3<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Lr4/ht3;

.field public final k:Z

.field public final l:Lr4/d8;

.field public final m:Lr4/b8;

.field public n:Lr4/ys3;

.field public o:Lr4/xs3;

.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>(Lr4/ht3;Z)V
    .locals 0

    invoke-direct {p0}, Lr4/ps3;-><init>()V

    iput-object p1, p0, Lr4/bt3;->j:Lr4/ht3;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lr4/ht3;->n()Z

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lr4/bt3;->k:Z

    new-instance p2, Lr4/d8;

    invoke-direct {p2}, Lr4/d8;-><init>()V

    iput-object p2, p0, Lr4/bt3;->l:Lr4/d8;

    new-instance p2, Lr4/b8;

    invoke-direct {p2}, Lr4/b8;-><init>()V

    iput-object p2, p0, Lr4/bt3;->m:Lr4/b8;

    invoke-interface {p1}, Lr4/ht3;->r()Lr4/e8;

    invoke-interface {p1}, Lr4/ht3;->v()Lr4/u5;

    move-result-object p1

    invoke-static {p1}, Lr4/ys3;->q(Lr4/u5;)Lr4/ys3;

    move-result-object p1

    iput-object p1, p0, Lr4/bt3;->n:Lr4/ys3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic B(Ljava/lang/Object;Lr4/ft3;)Lr4/ft3;
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p2, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v0, p0, Lr4/bt3;->n:Lr4/ys3;

    invoke-static {v0}, Lr4/ys3;->p(Lr4/ys3;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/bt3;->n:Lr4/ys3;

    invoke-static {v0}, Lr4/ys3;->p(Lr4/ys3;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lr4/ys3;->f:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2, p1}, Lr4/ft3;->c(Ljava/lang/Object;)Lr4/ft3;

    move-result-object p1

    return-object p1
.end method

.method public final C(Lr4/ft3;Lr4/qw3;J)Lr4/xs3;
    .locals 7

    new-instance v6, Lr4/xs3;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lr4/xs3;-><init>(Lr4/ft3;Lr4/qw3;J[B)V

    iget-object p2, p0, Lr4/bt3;->j:Lr4/ht3;

    invoke-virtual {v6, p2}, Lr4/xs3;->s(Lr4/ht3;)V

    iget-boolean p2, p0, Lr4/bt3;->q:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lr4/bt3;->D(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr4/ft3;->c(Ljava/lang/Object;)Lr4/ft3;

    move-result-object p1

    invoke-virtual {v6, p1}, Lr4/xs3;->t(Lr4/ft3;)V

    goto :goto_0

    :cond_0
    iput-object v6, p0, Lr4/bt3;->o:Lr4/xs3;

    iget-boolean p1, p0, Lr4/bt3;->p:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/bt3;->p:Z

    const/4 p1, 0x0

    iget-object p2, p0, Lr4/bt3;->j:Lr4/ht3;

    invoke-virtual {p0, p1, p2}, Lr4/ps3;->A(Ljava/lang/Object;Lr4/ht3;)V

    :cond_1
    :goto_0
    return-object v6
.end method

.method public final D(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/bt3;->n:Lr4/ys3;

    invoke-static {v0}, Lr4/ys3;->p(Lr4/ys3;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lr4/ys3;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lr4/bt3;->n:Lr4/ys3;

    invoke-static {p1}, Lr4/ys3;->p(Lr4/ys3;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final E(J)V
    .locals 6

    iget-object v0, p0, Lr4/bt3;->o:Lr4/xs3;

    iget-object v1, p0, Lr4/bt3;->n:Lr4/ys3;

    iget-object v2, v0, Lr4/xs3;->a:Lr4/ft3;

    iget-object v2, v2, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lr4/ts3;->i(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lr4/bt3;->n:Lr4/ys3;

    iget-object v3, p0, Lr4/bt3;->m:Lr4/b8;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    iget-wide v1, v3, Lr4/b8;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x0

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lr4/xs3;->n(J)V

    return-void
.end method

.method public final F()Lr4/e8;
    .locals 1

    iget-object v0, p0, Lr4/bt3;->n:Lr4/ys3;

    return-object v0
.end method

.method public final bridge synthetic b(Lr4/ft3;Lr4/qw3;J)Lr4/et3;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lr4/bt3;->C(Lr4/ft3;Lr4/qw3;J)Lr4/xs3;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lr4/et3;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lr4/xs3;

    invoke-virtual {v0}, Lr4/xs3;->u()V

    iget-object v0, p0, Lr4/bt3;->o:Lr4/xs3;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/bt3;->o:Lr4/xs3;

    :cond_0
    return-void
.end method

.method public final m(Lr4/ho;)V
    .locals 1

    invoke-super {p0, p1}, Lr4/ps3;->m(Lr4/ho;)V

    iget-boolean p1, p0, Lr4/bt3;->k:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/bt3;->p:Z

    const/4 p1, 0x0

    iget-object v0, p0, Lr4/bt3;->j:Lr4/ht3;

    invoke-virtual {p0, p1, v0}, Lr4/ps3;->A(Ljava/lang/Object;Lr4/ht3;)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/bt3;->q:Z

    iput-boolean v0, p0, Lr4/bt3;->p:Z

    invoke-super {p0}, Lr4/ps3;->p()V

    return-void
.end method

.method public final t()V
    .locals 0

    return-void
.end method

.method public final v()Lr4/u5;
    .locals 1

    iget-object v0, p0, Lr4/bt3;->j:Lr4/ht3;

    invoke-interface {v0}, Lr4/ht3;->v()Lr4/u5;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic z(Ljava/lang/Object;Lr4/ht3;Lr4/e8;)V
    .locals 11

    check-cast p1, Ljava/lang/Void;

    iget-boolean p1, p0, Lr4/bt3;->q:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/bt3;->n:Lr4/ys3;

    invoke-virtual {p1, p3}, Lr4/ys3;->s(Lr4/e8;)Lr4/ys3;

    move-result-object p1

    iput-object p1, p0, Lr4/bt3;->n:Lr4/ys3;

    iget-object p1, p0, Lr4/bt3;->o:Lr4/xs3;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lr4/xs3;->r()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lr4/bt3;->E(J)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p3}, Lr4/e8;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lr4/bt3;->r:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/bt3;->n:Lr4/ys3;

    invoke-virtual {p1, p3}, Lr4/ys3;->s(Lr4/e8;)Lr4/ys3;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lr4/d8;->o:Ljava/lang/Object;

    sget-object v0, Lr4/ys3;->f:Ljava/lang/Object;

    invoke-static {p3, p1, v0}, Lr4/ys3;->r(Lr4/e8;Ljava/lang/Object;Ljava/lang/Object;)Lr4/ys3;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lr4/bt3;->n:Lr4/ys3;

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lr4/bt3;->l:Lr4/d8;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, p1, v1, v2}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    iget-object p1, p0, Lr4/bt3;->l:Lr4/d8;

    iget-object p1, p1, Lr4/d8;->a:Ljava/lang/Object;

    iget-object v3, p0, Lr4/bt3;->o:Lr4/xs3;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lr4/xs3;->k()J

    move-result-wide v3

    iget-object v5, p0, Lr4/bt3;->n:Lr4/ys3;

    iget-object v6, p0, Lr4/bt3;->o:Lr4/xs3;

    iget-object v6, v6, Lr4/xs3;->a:Lr4/ft3;

    iget-object v6, v6, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v7, p0, Lr4/bt3;->m:Lr4/b8;

    invoke-virtual {v5, v6, v7}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget-object v5, p0, Lr4/bt3;->n:Lr4/ys3;

    iget-object v6, p0, Lr4/bt3;->l:Lr4/d8;

    invoke-virtual {v5, v0, v6, v1, v2}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    move-wide v9, v3

    goto :goto_1

    :cond_3
    move-wide v9, v1

    :goto_1
    iget-object v6, p0, Lr4/bt3;->l:Lr4/d8;

    iget-object v7, p0, Lr4/bt3;->m:Lr4/b8;

    const/4 v8, 0x0

    move-object v5, p3

    invoke-virtual/range {v5 .. v10}, Lr4/e8;->m(Lr4/d8;Lr4/b8;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-boolean v0, p0, Lr4/bt3;->r:Z

    if-eqz v0, :cond_4

    iget-object p1, p0, Lr4/bt3;->n:Lr4/ys3;

    invoke-virtual {p1, p3}, Lr4/ys3;->s(Lr4/e8;)Lr4/ys3;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {p3, p1, v1}, Lr4/ys3;->r(Lr4/e8;Ljava/lang/Object;Ljava/lang/Object;)Lr4/ys3;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lr4/bt3;->n:Lr4/ys3;

    iget-object p1, p0, Lr4/bt3;->o:Lr4/xs3;

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2, v3}, Lr4/bt3;->E(J)V

    iget-object p1, p1, Lr4/xs3;->a:Lr4/ft3;

    iget-object p2, p1, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lr4/bt3;->D(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr4/ft3;->c(Ljava/lang/Object;)Lr4/ft3;

    move-result-object p2

    :cond_5
    :goto_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/bt3;->r:Z

    iput-boolean p1, p0, Lr4/bt3;->q:Z

    iget-object p1, p0, Lr4/bt3;->n:Lr4/ys3;

    invoke-virtual {p0, p1}, Lr4/so3;->q(Lr4/e8;)V

    if-eqz p2, :cond_6

    iget-object p1, p0, Lr4/bt3;->o:Lr4/xs3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lr4/xs3;->t(Lr4/ft3;)V

    :cond_6
    return-void
.end method
