.class public final Lr4/xs3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/et3;
.implements Lr4/dt3;


# instance fields
.field public final a:Lr4/ft3;

.field public final b:J

.field public d:Lr4/ht3;

.field public k:Lr4/et3;

.field public p:Lr4/dt3;

.field public q:J

.field public final r:Lr4/qw3;


# direct methods
.method public constructor <init>(Lr4/ft3;Lr4/qw3;J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/xs3;->a:Lr4/ft3;

    iput-object p2, p0, Lr4/xs3;->r:Lr4/qw3;

    iput-wide p3, p0, Lr4/xs3;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/xs3;->q:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lr4/xs3;->k:Lr4/et3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1, p2}, Lr4/et3;->a(J)V

    return-void
.end method

.method public final b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/xs3;->k:Lr4/et3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/et3;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/xs3;->d:Lr4/ht3;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lr4/ht3;->t()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public final c(J)Z
    .locals 1

    iget-object v0, p0, Lr4/xs3;->k:Lr4/et3;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lr4/et3;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d([Lr4/hv3;[Z[Lr4/vu3;[ZJ)J
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Lr4/xs3;->q:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lr4/xs3;->b:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    iput-wide v3, v0, Lr4/xs3;->q:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    :goto_0
    iget-object v8, v0, Lr4/xs3;->k:Lr4/et3;

    sget v1, Lr4/lc;->a:I

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-interface/range {v8 .. v14}, Lr4/et3;->d([Lr4/hv3;[Z[Lr4/vu3;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final e()Lr4/j44;
    .locals 2

    iget-object v0, p0, Lr4/xs3;->k:Lr4/et3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0}, Lr4/et3;->e()Lr4/j44;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 2

    iget-object v0, p0, Lr4/xs3;->k:Lr4/et3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0}, Lr4/et3;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    iget-object v0, p0, Lr4/xs3;->k:Lr4/et3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0}, Lr4/et3;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(Lr4/et3;)V
    .locals 1

    iget-object p1, p0, Lr4/xs3;->p:Lr4/dt3;

    sget v0, Lr4/lc;->a:I

    invoke-interface {p1, p0}, Lr4/dt3;->h(Lr4/et3;)V

    return-void
.end method

.method public final i()J
    .locals 2

    iget-object v0, p0, Lr4/xs3;->k:Lr4/et3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0}, Lr4/et3;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic j(Lr4/xu3;)V
    .locals 1

    check-cast p1, Lr4/et3;

    iget-object p1, p0, Lr4/xs3;->p:Lr4/dt3;

    sget v0, Lr4/lc;->a:I

    invoke-interface {p1, p0}, Lr4/wu3;->j(Lr4/xu3;)V

    return-void
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lr4/xs3;->b:J

    return-wide v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lr4/xs3;->k:Lr4/et3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/et3;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m(Lr4/dt3;J)V
    .locals 0

    iput-object p1, p0, Lr4/xs3;->p:Lr4/dt3;

    iget-object p1, p0, Lr4/xs3;->k:Lr4/et3;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Lr4/xs3;->b:J

    invoke-virtual {p0, p2, p3}, Lr4/xs3;->v(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lr4/et3;->m(Lr4/dt3;J)V

    :cond_0
    return-void
.end method

.method public final n(J)V
    .locals 0

    iput-wide p1, p0, Lr4/xs3;->q:J

    return-void
.end method

.method public final o(JLr4/k7;)J
    .locals 2

    iget-object v0, p0, Lr4/xs3;->k:Lr4/et3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1, p2, p3}, Lr4/et3;->o(JLr4/k7;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final p(J)J
    .locals 2

    iget-object v0, p0, Lr4/xs3;->k:Lr4/et3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1, p2}, Lr4/et3;->p(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final q(JZ)V
    .locals 1

    iget-object p3, p0, Lr4/xs3;->k:Lr4/et3;

    sget v0, Lr4/lc;->a:I

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lr4/et3;->q(JZ)V

    return-void
.end method

.method public final r()J
    .locals 2

    iget-wide v0, p0, Lr4/xs3;->q:J

    return-wide v0
.end method

.method public final s(Lr4/ht3;)V
    .locals 1

    iget-object v0, p0, Lr4/xs3;->d:Lr4/ht3;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/ja;->d(Z)V

    iput-object p1, p0, Lr4/xs3;->d:Lr4/ht3;

    return-void
.end method

.method public final t(Lr4/ft3;)V
    .locals 4

    iget-wide v0, p0, Lr4/xs3;->b:J

    invoke-virtual {p0, v0, v1}, Lr4/xs3;->v(J)J

    move-result-wide v0

    iget-object v2, p0, Lr4/xs3;->d:Lr4/ht3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lr4/xs3;->r:Lr4/qw3;

    invoke-interface {v2, p1, v3, v0, v1}, Lr4/ht3;->b(Lr4/ft3;Lr4/qw3;J)Lr4/et3;

    move-result-object p1

    iput-object p1, p0, Lr4/xs3;->k:Lr4/et3;

    iget-object v2, p0, Lr4/xs3;->p:Lr4/dt3;

    if-eqz v2, :cond_0

    invoke-interface {p1, p0, v0, v1}, Lr4/et3;->m(Lr4/dt3;J)V

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lr4/xs3;->k:Lr4/et3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/xs3;->d:Lr4/ht3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lr4/ht3;->h(Lr4/et3;)V

    :cond_0
    return-void
.end method

.method public final v(J)J
    .locals 5

    iget-wide v0, p0, Lr4/xs3;->q:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method
