.class public final Lr4/c6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/b8;

.field public final b:Lr4/d8;

.field public final c:Lr4/c41;

.field public final d:Landroid/os/Handler;

.field public e:J

.field public f:I

.field public g:Z

.field public h:Lr4/z5;

.field public i:Lr4/z5;

.field public j:Lr4/z5;

.field public k:I

.field public l:Ljava/lang/Object;

.field public m:J


# direct methods
.method public constructor <init>(Lr4/c41;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/c6;->c:Lr4/c41;

    iput-object p2, p0, Lr4/c6;->d:Landroid/os/Handler;

    new-instance p1, Lr4/b8;

    invoke-direct {p1}, Lr4/b8;-><init>()V

    iput-object p1, p0, Lr4/c6;->a:Lr4/b8;

    new-instance p1, Lr4/d8;

    invoke-direct {p1}, Lr4/d8;-><init>()V

    iput-object p1, p0, Lr4/c6;->b:Lr4/d8;

    return-void
.end method

.method public static final c(Lr4/ft3;)Z
    .locals 1

    invoke-virtual {p0}, Lr4/f04;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lr4/f04;->e:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Lr4/e8;Ljava/lang/Object;JJLr4/b8;)Lr4/ft3;
    .locals 6

    invoke-virtual {p0, p1, p6}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    invoke-virtual {p6, p2, p3}, Lr4/b8;->e(J)I

    move-result v2

    const/4 p0, -0x1

    if-ne v2, p0, :cond_0

    invoke-virtual {p6, p2, p3}, Lr4/b8;->f(J)I

    move-result p0

    new-instance p2, Lr4/ft3;

    invoke-direct {p2, p1, p4, p5, p0}, Lr4/ft3;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    :cond_0
    invoke-virtual {p6, v2}, Lr4/b8;->c(I)I

    move-result v3

    new-instance p0, Lr4/ft3;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lr4/ft3;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method


# virtual methods
.method public final A(Lr4/e8;Ljava/lang/Object;IIJJ)Lr4/a6;
    .locals 18

    move-object/from16 v0, p0

    new-instance v7, Lr4/ft3;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lr4/ft3;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v7, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v2, v0, Lr4/c6;->a:Lr4/b8;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v1

    iget v2, v7, Lr4/f04;->b:I

    iget v3, v7, Lr4/f04;->c:I

    invoke-virtual {v1, v2, v3}, Lr4/b8;->h(II)J

    move-result-wide v9

    iget-object v1, v0, Lr4/c6;->a:Lr4/b8;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lr4/b8;->c(I)I

    move-result v1

    move/from16 v2, p4

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {v1}, Lr4/b8;->i()J

    :cond_0
    iget-object v1, v0, Lr4/c6;->a:Lr4/b8;

    iget v2, v7, Lr4/f04;->b:I

    invoke-virtual {v1, v2}, Lr4/b8;->j(I)Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    cmp-long v5, v9, v1

    if-eqz v5, :cond_1

    cmp-long v1, v9, v3

    if-gtz v1, :cond_1

    const-wide/16 v1, -0x1

    add-long/2addr v1, v9

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    :cond_1
    new-instance v15, Lr4/a6;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v15

    move-object v2, v7

    move-wide/from16 v5, p5

    move-wide v7, v11

    move v11, v13

    move v12, v14

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-direct/range {v1 .. v14}, Lr4/a6;-><init>(Lr4/ft3;JJJJZZZZ)V

    return-object v15
.end method

.method public final B(Lr4/e8;Ljava/lang/Object;JJJ)Lr4/a6;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {v1, v2, v5}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget-object v5, v0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {v5, v3, v4}, Lr4/b8;->f(J)I

    move-result v5

    new-instance v7, Lr4/ft3;

    move-wide/from16 v8, p7

    invoke-direct {v7, v2, v8, v9, v5}, Lr4/ft3;-><init>(Ljava/lang/Object;JI)V

    invoke-static {v7}, Lr4/c6;->c(Lr4/ft3;)Z

    move-result v2

    invoke-virtual {v0, v1, v7}, Lr4/c6;->C(Lr4/e8;Lr4/ft3;)Z

    move-result v18

    invoke-virtual {v0, v1, v7, v2}, Lr4/c6;->a(Lr4/e8;Lr4/ft3;Z)Z

    move-result v19

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    iget-object v6, v0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {v6, v5}, Lr4/b8;->j(I)Z

    :cond_0
    const-wide/16 v8, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v1, :cond_1

    iget-object v1, v0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {v1, v5}, Lr4/b8;->b(I)J

    move-wide v12, v8

    goto :goto_0

    :cond_1
    move-wide v12, v10

    :goto_0
    cmp-long v1, v12, v10

    if-eqz v1, :cond_2

    move-wide v14, v12

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lr4/c6;->a:Lr4/b8;

    iget-wide v5, v1, Lr4/b8;->d:J

    move-wide v14, v5

    :goto_1
    cmp-long v1, v14, v10

    if-eqz v1, :cond_3

    cmp-long v1, v3, v14

    if-ltz v1, :cond_3

    const-wide/16 v3, -0x1

    add-long/2addr v3, v14

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_3
    move-wide v8, v3

    new-instance v1, Lr4/a6;

    const/16 v16, 0x0

    move-object v6, v1

    move-wide/from16 v10, p5

    move/from16 v17, v2

    invoke-direct/range {v6 .. v19}, Lr4/a6;-><init>(Lr4/ft3;JJJJZZZZ)V

    return-object v1
.end method

.method public final C(Lr4/e8;Lr4/ft3;)Z
    .locals 5

    invoke-static {p2}, Lr4/c6;->c(Lr4/ft3;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p2, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v2, p0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {p1, v0, v2}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v0

    iget v0, v0, Lr4/b8;->c:I

    iget-object p2, p2, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result p2

    iget-object v2, p0, Lr4/c6;->b:Lr4/d8;

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object p1

    iget p1, p1, Lr4/d8;->n:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final a(Lr4/e8;Lr4/ft3;Z)Z
    .locals 7

    iget-object p2, p2, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Lr4/c6;->a:Lr4/b8;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, p2, v6}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object p2

    iget p2, p2, Lr4/b8;->c:I

    iget-object v0, p0, Lr4/c6;->b:Lr4/d8;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v3}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object p2

    iget-boolean p2, p2, Lr4/d8;->g:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Lr4/c6;->a:Lr4/b8;

    iget-object v3, p0, Lr4/c6;->b:Lr4/d8;

    iget v4, p0, Lr4/c6;->f:I

    iget-boolean v5, p0, Lr4/c6;->g:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lr4/e8;->l(ILr4/b8;Lr4/d8;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v6
.end method

.method public final b(Lr4/e8;Ljava/lang/Object;I)J
    .locals 1

    iget-object v0, p0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {p1, p2, v0}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget-object p1, p0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {p1, p3}, Lr4/b8;->b(I)J

    iget-object p1, p0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {p1, p3}, Lr4/b8;->k(I)J

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final d(Lr4/e8;I)Z
    .locals 0

    iput p2, p0, Lr4/c6;->f:I

    invoke-virtual {p0, p1}, Lr4/c6;->x(Lr4/e8;)Z

    move-result p1

    return p1
.end method

.method public final e(Lr4/e8;Z)Z
    .locals 0

    iput-boolean p2, p0, Lr4/c6;->g:Z

    invoke-virtual {p0, p1}, Lr4/c6;->x(Lr4/e8;)Z

    move-result p1

    return p1
.end method

.method public final f(Lr4/et3;)Z
    .locals 1

    iget-object v0, p0, Lr4/c6;->j:Lr4/z5;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lr4/z5;->a:Lr4/et3;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(J)V
    .locals 1

    iget-object v0, p0, Lr4/c6;->j:Lr4/z5;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lr4/z5;->h(J)V

    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 7

    iget-object v0, p0, Lr4/c6;->j:Lr4/z5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lr4/z5;->f:Lr4/a6;

    iget-boolean v3, v3, Lr4/a6;->i:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lr4/z5;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/c6;->j:Lr4/z5;

    iget-object v0, v0, Lr4/z5;->f:Lr4/a6;

    iget-wide v3, v0, Lr4/a6;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    iget v0, p0, Lr4/c6;->k:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final i(JLr4/o6;)Lr4/a6;
    .locals 8

    iget-object v0, p0, Lr4/c6;->j:Lr4/z5;

    if-nez v0, :cond_0

    iget-object v2, p3, Lr4/o6;->a:Lr4/e8;

    iget-object v3, p3, Lr4/o6;->b:Lr4/ft3;

    iget-wide v4, p3, Lr4/o6;->c:J

    iget-wide v6, p3, Lr4/o6;->s:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lr4/c6;->z(Lr4/e8;Lr4/ft3;JJ)Lr4/a6;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {p0, p3, v0, p1, p2}, Lr4/c6;->y(Lr4/e8;Lr4/z5;J)Lr4/a6;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final j()Lr4/z5;
    .locals 1

    iget-object v0, p0, Lr4/c6;->j:Lr4/z5;

    return-object v0
.end method

.method public final k()Lr4/z5;
    .locals 1

    iget-object v0, p0, Lr4/c6;->h:Lr4/z5;

    return-object v0
.end method

.method public final l()Lr4/z5;
    .locals 1

    iget-object v0, p0, Lr4/c6;->i:Lr4/z5;

    return-object v0
.end method

.method public final m()Lr4/z5;
    .locals 2

    iget-object v0, p0, Lr4/c6;->i:Lr4/z5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/z5;->o()Lr4/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lr4/ja;->d(Z)V

    iget-object v0, p0, Lr4/c6;->i:Lr4/z5;

    invoke-virtual {v0}, Lr4/z5;->o()Lr4/z5;

    move-result-object v0

    iput-object v0, p0, Lr4/c6;->i:Lr4/z5;

    invoke-virtual {p0}, Lr4/c6;->v()V

    iget-object v0, p0, Lr4/c6;->i:Lr4/z5;

    return-object v0
.end method

.method public final n()Lr4/z5;
    .locals 3

    iget-object v0, p0, Lr4/c6;->h:Lr4/z5;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lr4/c6;->i:Lr4/z5;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Lr4/z5;->o()Lr4/z5;

    move-result-object v0

    iput-object v0, p0, Lr4/c6;->i:Lr4/z5;

    :cond_1
    iget-object v0, p0, Lr4/c6;->h:Lr4/z5;

    invoke-virtual {v0}, Lr4/z5;->m()V

    iget v0, p0, Lr4/c6;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr4/c6;->k:I

    if-nez v0, :cond_2

    iput-object v1, p0, Lr4/c6;->j:Lr4/z5;

    iget-object v0, p0, Lr4/c6;->h:Lr4/z5;

    iget-object v1, v0, Lr4/z5;->b:Ljava/lang/Object;

    iput-object v1, p0, Lr4/c6;->l:Ljava/lang/Object;

    iget-object v0, v0, Lr4/z5;->f:Lr4/a6;

    iget-object v0, v0, Lr4/a6;->a:Lr4/ft3;

    iget-wide v0, v0, Lr4/f04;->d:J

    iput-wide v0, p0, Lr4/c6;->m:J

    :cond_2
    iget-object v0, p0, Lr4/c6;->h:Lr4/z5;

    invoke-virtual {v0}, Lr4/z5;->o()Lr4/z5;

    move-result-object v0

    iput-object v0, p0, Lr4/c6;->h:Lr4/z5;

    invoke-virtual {p0}, Lr4/c6;->v()V

    iget-object v0, p0, Lr4/c6;->h:Lr4/z5;

    return-object v0
.end method

.method public final o(Lr4/z5;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lr4/ja;->d(Z)V

    iget-object v2, p0, Lr4/c6;->j:Lr4/z5;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lr4/c6;->j:Lr4/z5;

    :goto_1
    invoke-virtual {p1}, Lr4/z5;->o()Lr4/z5;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lr4/z5;->o()Lr4/z5;

    move-result-object p1

    iget-object v2, p0, Lr4/c6;->i:Lr4/z5;

    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lr4/c6;->h:Lr4/z5;

    iput-object v1, p0, Lr4/c6;->i:Lr4/z5;

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1}, Lr4/z5;->m()V

    iget v2, p0, Lr4/c6;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lr4/c6;->k:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lr4/c6;->j:Lr4/z5;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/z5;->n(Lr4/z5;)V

    invoke-virtual {p0}, Lr4/c6;->v()V

    return v1
.end method

.method public final p()V
    .locals 3

    iget v0, p0, Lr4/c6;->k:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/c6;->h:Lr4/z5;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lr4/z5;->b:Ljava/lang/Object;

    iput-object v1, p0, Lr4/c6;->l:Ljava/lang/Object;

    iget-object v1, v0, Lr4/z5;->f:Lr4/a6;

    iget-object v1, v1, Lr4/a6;->a:Lr4/ft3;

    iget-wide v1, v1, Lr4/f04;->d:J

    iput-wide v1, p0, Lr4/c6;->m:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr4/z5;->m()V

    invoke-virtual {v0}, Lr4/z5;->o()Lr4/z5;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lr4/c6;->h:Lr4/z5;

    iput-object v0, p0, Lr4/c6;->j:Lr4/z5;

    iput-object v0, p0, Lr4/c6;->i:Lr4/z5;

    const/4 v0, 0x0

    iput v0, p0, Lr4/c6;->k:I

    invoke-virtual {p0}, Lr4/c6;->v()V

    return-void
.end method

.method public final q(Lr4/e8;JJ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lr4/c6;->h:Lr4/z5;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_b

    iget-object v5, v2, Lr4/z5;->f:Lr4/a6;

    const/4 v6, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v5}, Lr4/c6;->r(Lr4/e8;Lr4/a6;)Lr4/a6;

    move-result-object v3

    move-wide/from16 v7, p2

    goto :goto_1

    :cond_0
    move-wide/from16 v7, p2

    invoke-virtual {v0, v1, v3, v7, v8}, Lr4/c6;->y(Lr4/e8;Lr4/z5;J)Lr4/a6;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-virtual {v0, v3}, Lr4/c6;->o(Lr4/z5;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    return v6

    :cond_2
    iget-wide v10, v5, Lr4/a6;->b:J

    iget-wide v12, v9, Lr4/a6;->b:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_9

    iget-object v10, v5, Lr4/a6;->a:Lr4/ft3;

    iget-object v11, v9, Lr4/a6;->a:Lr4/ft3;

    invoke-virtual {v10, v11}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v3, v9

    :goto_1
    iget-wide v9, v5, Lr4/a6;->c:J

    invoke-virtual {v3, v9, v10}, Lr4/a6;->b(J)Lr4/a6;

    move-result-object v9

    iput-object v9, v2, Lr4/z5;->f:Lr4/a6;

    iget-wide v9, v5, Lr4/a6;->e:J

    iget-wide v11, v3, Lr4/a6;->e:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v9, v13

    if-eqz v5, :cond_8

    cmp-long v5, v9, v11

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Lr4/z5;->r()V

    iget-wide v7, v3, Lr4/a6;->e:J

    cmp-long v1, v7, v13

    if-nez v1, :cond_4

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lr4/z5;->a()J

    move-result-wide v9

    add-long/2addr v7, v9

    :goto_2
    iget-object v1, v0, Lr4/c6;->i:Lr4/z5;

    if-ne v2, v1, :cond_6

    iget-object v1, v2, Lr4/z5;->f:Lr4/a6;

    iget-boolean v1, v1, Lr4/a6;->f:Z

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v1, p4, v9

    if-eqz v1, :cond_5

    cmp-long v1, p4, v7

    if-ltz v1, :cond_6

    :cond_5
    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Lr4/c6;->o(Lr4/z5;)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    return v4

    :cond_7
    return v6

    :cond_8
    :goto_4
    invoke-virtual {v2}, Lr4/z5;->o()Lr4/z5;

    move-result-object v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0, v3}, Lr4/c6;->o(Lr4/z5;)Z

    move-result v1

    if-nez v1, :cond_a

    return v4

    :cond_a
    return v6

    :cond_b
    return v4
.end method

.method public final r(Lr4/e8;Lr4/a6;)Lr4/a6;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lr4/a6;->a:Lr4/ft3;

    invoke-static {v3}, Lr4/c6;->c(Lr4/ft3;)Z

    move-result v12

    invoke-virtual {v0, v1, v3}, Lr4/c6;->C(Lr4/e8;Lr4/ft3;)Z

    move-result v13

    invoke-virtual {v0, v1, v3, v12}, Lr4/c6;->a(Lr4/e8;Lr4/ft3;Z)Z

    move-result v14

    iget-object v4, v2, Lr4/a6;->a:Lr4/ft3;

    iget-object v4, v4, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v5, v0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {v1, v4, v5}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    invoke-virtual {v3}, Lr4/f04;->b()Z

    move-result v1

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_1

    iget v1, v3, Lr4/f04;->e:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {v7, v1}, Lr4/b8;->b(I)J

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v5

    :goto_1
    invoke-virtual {v3}, Lr4/f04;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lr4/c6;->a:Lr4/b8;

    iget v5, v3, Lr4/f04;->b:I

    iget v6, v3, Lr4/f04;->c:I

    invoke-virtual {v1, v5, v6}, Lr4/b8;->h(II)J

    move-result-wide v5

    :goto_2
    move-wide v9, v5

    goto :goto_3

    :cond_2
    cmp-long v1, v7, v5

    if-eqz v1, :cond_3

    move-wide v9, v7

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lr4/c6;->a:Lr4/b8;

    iget-wide v5, v1, Lr4/b8;->d:J

    goto :goto_2

    :goto_3
    invoke-virtual {v3}, Lr4/f04;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lr4/c6;->a:Lr4/b8;

    iget v4, v3, Lr4/f04;->b:I

    invoke-virtual {v1, v4}, Lr4/b8;->j(I)Z

    goto :goto_4

    :cond_4
    iget v1, v3, Lr4/f04;->e:I

    if-eq v1, v4, :cond_5

    iget-object v4, v0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {v4, v1}, Lr4/b8;->j(I)Z

    :cond_5
    :goto_4
    new-instance v15, Lr4/a6;

    iget-wide v4, v2, Lr4/a6;->b:J

    iget-wide v1, v2, Lr4/a6;->c:J

    const/4 v11, 0x0

    move-wide/from16 v16, v1

    move-object v1, v15

    move-object v2, v3

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v14}, Lr4/a6;-><init>(Lr4/ft3;JJJJZZZZ)V

    return-object v15
.end method

.method public final s(Lr4/e8;Ljava/lang/Object;J)Lr4/ft3;
    .locals 10

    iget-object v0, p0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {p1, p2, v0}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v0

    iget v0, v0, Lr4/b8;->c:I

    iget-object v1, p0, Lr4/c6;->l:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v4, p0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {p1, v1, v4, v2}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object v1

    iget v1, v1, Lr4/b8;->c:I

    if-ne v1, v0, :cond_1

    iget-wide v0, p0, Lr4/c6;->m:J

    :cond_0
    :goto_0
    move-wide v7, v0

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lr4/c6;->h:Lr4/z5;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, v1, Lr4/z5;->b:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v1, Lr4/z5;->f:Lr4/a6;

    iget-object v0, v0, Lr4/a6;->a:Lr4/ft3;

    iget-wide v0, v0, Lr4/f04;->d:J

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lr4/z5;->o()Lr4/z5;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lr4/c6;->h:Lr4/z5;

    :goto_2
    if-eqz v1, :cond_5

    iget-object v4, v1, Lr4/z5;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_4

    iget-object v5, p0, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {p1, v4, v5, v2}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object v4

    iget v4, v4, Lr4/b8;->c:I

    if-ne v4, v0, :cond_4

    iget-object v0, v1, Lr4/z5;->f:Lr4/a6;

    iget-object v0, v0, Lr4/a6;->a:Lr4/ft3;

    iget-wide v0, v0, Lr4/f04;->d:J

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lr4/z5;->o()Lr4/z5;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-wide v0, p0, Lr4/c6;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lr4/c6;->e:J

    iget-object v2, p0, Lr4/c6;->h:Lr4/z5;

    if-nez v2, :cond_0

    iput-object p2, p0, Lr4/c6;->l:Ljava/lang/Object;

    iput-wide v0, p0, Lr4/c6;->m:J

    goto :goto_0

    :goto_3
    iget-object v9, p0, Lr4/c6;->a:Lr4/b8;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v3 .. v9}, Lr4/c6;->w(Lr4/e8;Ljava/lang/Object;JJLr4/b8;)Lr4/ft3;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic t(Lr4/l33;Lr4/ft3;)V
    .locals 1

    iget-object v0, p0, Lr4/c6;->c:Lr4/c41;

    invoke-virtual {p1}, Lr4/l33;->g()Lr4/o33;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lr4/c41;->R(Ljava/util/List;Lr4/ft3;)V

    return-void
.end method

.method public final u([Lr4/h7;Lr4/aw3;Lr4/qw3;Lr4/j6;Lr4/a6;Lr4/cw3;)Lr4/z5;
    .locals 12

    move-object v0, p0

    move-object/from16 v8, p5

    iget-object v1, v0, Lr4/c6;->j:Lr4/z5;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, v8, Lr4/a6;->a:Lr4/ft3;

    invoke-virtual {v1}, Lr4/f04;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v4, v8, Lr4/a6;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    move-wide v3, v4

    goto :goto_0

    :cond_0
    move-wide v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lr4/z5;->a()J

    move-result-wide v1

    iget-object v3, v0, Lr4/c6;->j:Lr4/z5;

    iget-object v3, v3, Lr4/z5;->f:Lr4/a6;

    iget-wide v3, v3, Lr4/a6;->e:J

    add-long/2addr v1, v3

    iget-wide v3, v8, Lr4/a6;->b:J

    sub-long/2addr v1, v3

    move-wide v3, v1

    :goto_0
    new-instance v11, Lr4/z5;

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lr4/z5;-><init>([Lr4/h7;JLr4/aw3;Lr4/qw3;Lr4/j6;Lr4/a6;Lr4/cw3;[B)V

    iget-object v1, v0, Lr4/c6;->j:Lr4/z5;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v11}, Lr4/z5;->n(Lr4/z5;)V

    goto :goto_1

    :cond_2
    iput-object v11, v0, Lr4/c6;->h:Lr4/z5;

    iput-object v11, v0, Lr4/c6;->i:Lr4/z5;

    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Lr4/c6;->l:Ljava/lang/Object;

    iput-object v11, v0, Lr4/c6;->j:Lr4/z5;

    iget v1, v0, Lr4/c6;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lr4/c6;->k:I

    invoke-virtual {p0}, Lr4/c6;->v()V

    return-object v11
.end method

.method public final v()V
    .locals 4

    invoke-static {}, Lr4/o33;->E()Lr4/l33;

    move-result-object v0

    iget-object v1, p0, Lr4/c6;->h:Lr4/z5;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lr4/z5;->f:Lr4/a6;

    iget-object v2, v2, Lr4/a6;->a:Lr4/ft3;

    invoke-virtual {v0, v2}, Lr4/l33;->f(Ljava/lang/Object;)Lr4/l33;

    invoke-virtual {v1}, Lr4/z5;->o()Lr4/z5;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr4/c6;->i:Lr4/z5;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lr4/z5;->f:Lr4/a6;

    iget-object v1, v1, Lr4/a6;->a:Lr4/ft3;

    :goto_1
    iget-object v2, p0, Lr4/c6;->d:Landroid/os/Handler;

    new-instance v3, Lr4/b6;

    invoke-direct {v3, p0, v0, v1}, Lr4/b6;-><init>(Lr4/c6;Lr4/l33;Lr4/ft3;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final x(Lr4/e8;)Z
    .locals 8

    iget-object v0, p0, Lr4/c6;->h:Lr4/z5;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lr4/z5;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lr4/c6;->a:Lr4/b8;

    iget-object v5, p0, Lr4/c6;->b:Lr4/d8;

    iget v6, p0, Lr4/c6;->f:I

    iget-boolean v7, p0, Lr4/c6;->g:Z

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lr4/e8;->l(ILr4/b8;Lr4/d8;IZ)I

    move-result v3

    :goto_1
    invoke-virtual {v0}, Lr4/z5;->o()Lr4/z5;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lr4/z5;->f:Lr4/a6;

    iget-boolean v2, v2, Lr4/a6;->g:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lr4/z5;->o()Lr4/z5;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lr4/z5;->o()Lr4/z5;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v2, Lr4/z5;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v3, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lr4/c6;->o(Lr4/z5;)Z

    move-result v2

    iget-object v3, v0, Lr4/z5;->f:Lr4/a6;

    invoke-virtual {p0, p1, v3}, Lr4/c6;->r(Lr4/e8;Lr4/a6;)Lr4/a6;

    move-result-object p1

    iput-object p1, v0, Lr4/z5;->f:Lr4/a6;

    if-nez v2, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final y(Lr4/e8;Lr4/z5;J)Lr4/a6;
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    iget-object v11, v10, Lr4/z5;->f:Lr4/a6;

    invoke-virtual/range {p2 .. p2}, Lr4/z5;->a()J

    move-result-wide v0

    iget-wide v2, v11, Lr4/a6;->e:J

    add-long/2addr v0, v2

    sub-long v6, v0, p3

    iget-boolean v0, v11, Lr4/a6;->g:Z

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v11, Lr4/a6;->a:Lr4/ft3;

    iget-object v0, v0, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v9, Lr4/c6;->a:Lr4/b8;

    iget-object v3, v9, Lr4/c6;->b:Lr4/d8;

    iget v0, v9, Lr4/c6;->f:I

    iget-boolean v5, v9, Lr4/c6;->g:Z

    move v4, v0

    move-object/from16 v0, p1

    const-wide/16 v12, 0x0

    invoke-virtual/range {v0 .. v5}, Lr4/e8;->l(ILr4/b8;Lr4/d8;IZ)I

    move-result v0

    if-ne v0, v14, :cond_0

    return-object v15

    :cond_0
    iget-object v1, v9, Lr4/c6;->a:Lr4/b8;

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v1, v2}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object v1

    iget v3, v1, Lr4/b8;->c:I

    iget-object v1, v9, Lr4/c6;->a:Lr4/b8;

    iget-object v1, v1, Lr4/b8;->b:Ljava/lang/Object;

    iget-object v2, v11, Lr4/a6;->a:Lr4/ft3;

    iget-wide v4, v2, Lr4/f04;->d:J

    iget-object v2, v9, Lr4/c6;->b:Lr4/d8;

    invoke-virtual {v8, v3, v2, v12, v13}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v2

    iget v2, v2, Lr4/d8;->m:I

    if-ne v2, v0, :cond_3

    iget-object v1, v9, Lr4/c6;->b:Lr4/d8;

    iget-object v2, v9, Lr4/c6;->a:Lr4/b8;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Lr4/e8;->n(Lr4/d8;Lr4/b8;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v15

    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lr4/z5;->o()Lr4/z5;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, v0, Lr4/z5;->b:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lr4/z5;->f:Lr4/a6;

    iget-object v0, v0, Lr4/a6;->a:Lr4/ft3;

    iget-wide v4, v0, Lr4/f04;->d:J

    goto :goto_0

    :cond_2
    iget-wide v4, v9, Lr4/c6;->e:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v9, Lr4/c6;->e:J

    :goto_0
    move-wide v10, v2

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_3
    move-wide v10, v12

    :goto_1
    iget-object v6, v9, Lr4/c6;->a:Lr4/b8;

    move-object/from16 v0, p1

    move-wide v2, v10

    invoke-static/range {v0 .. v6}, Lr4/c6;->w(Lr4/e8;Ljava/lang/Object;JJLr4/b8;)Lr4/ft3;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v12

    move-wide v5, v10

    invoke-virtual/range {v0 .. v6}, Lr4/c6;->z(Lr4/e8;Lr4/ft3;JJ)Lr4/a6;

    move-result-object v0

    return-object v0

    :cond_4
    const-wide/16 v12, 0x0

    iget-object v10, v11, Lr4/a6;->a:Lr4/ft3;

    iget-object v0, v10, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v1, v9, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {v8, v0, v1}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    invoke-virtual {v10}, Lr4/f04;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v3, v10, Lr4/f04;->b:I

    iget-object v0, v9, Lr4/c6;->a:Lr4/b8;

    invoke-virtual {v0, v3}, Lr4/b8;->g(I)I

    move-result v0

    if-ne v0, v14, :cond_5

    return-object v15

    :cond_5
    iget-object v0, v9, Lr4/c6;->a:Lr4/b8;

    iget v1, v10, Lr4/f04;->c:I

    invoke-virtual {v0, v3, v1}, Lr4/b8;->d(II)I

    move-result v4

    if-gez v4, :cond_6

    iget-object v2, v10, Lr4/f04;->a:Ljava/lang/Object;

    iget-wide v5, v11, Lr4/a6;->c:J

    iget-wide v10, v10, Lr4/f04;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Lr4/c6;->A(Lr4/e8;Ljava/lang/Object;IIJJ)Lr4/a6;

    move-result-object v0

    return-object v0

    :cond_6
    iget-wide v0, v11, Lr4/a6;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_8

    iget-object v1, v9, Lr4/c6;->b:Lr4/d8;

    iget-object v2, v9, Lr4/c6;->a:Lr4/b8;

    iget v3, v2, Lr4/b8;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Lr4/e8;->n(Lr4/d8;Lr4/b8;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v15

    :cond_7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_8
    iget-object v2, v10, Lr4/f04;->a:Ljava/lang/Object;

    iget v3, v10, Lr4/f04;->b:I

    invoke-virtual {v9, v8, v2, v3}, Lr4/c6;->b(Lr4/e8;Ljava/lang/Object;I)J

    iget-object v2, v10, Lr4/f04;->a:Ljava/lang/Object;

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v11, Lr4/a6;->c:J

    iget-wide v10, v10, Lr4/f04;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Lr4/c6;->B(Lr4/e8;Ljava/lang/Object;JJJ)Lr4/a6;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, v9, Lr4/c6;->a:Lr4/b8;

    iget v1, v10, Lr4/f04;->e:I

    invoke-virtual {v0, v1}, Lr4/b8;->c(I)I

    move-result v4

    iget-object v0, v9, Lr4/c6;->a:Lr4/b8;

    iget v1, v10, Lr4/f04;->e:I

    invoke-virtual {v0, v1}, Lr4/b8;->g(I)I

    move-result v0

    if-ne v4, v0, :cond_a

    iget-object v0, v10, Lr4/f04;->a:Ljava/lang/Object;

    iget v1, v10, Lr4/f04;->e:I

    invoke-virtual {v9, v8, v0, v1}, Lr4/c6;->b(Lr4/e8;Ljava/lang/Object;I)J

    iget-object v2, v10, Lr4/f04;->a:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    iget-wide v5, v11, Lr4/a6;->e:J

    iget-wide v10, v10, Lr4/f04;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Lr4/c6;->B(Lr4/e8;Ljava/lang/Object;JJJ)Lr4/a6;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v2, v10, Lr4/f04;->a:Ljava/lang/Object;

    iget v3, v10, Lr4/f04;->e:I

    iget-wide v5, v11, Lr4/a6;->e:J

    iget-wide v10, v10, Lr4/f04;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Lr4/c6;->A(Lr4/e8;Ljava/lang/Object;IIJJ)Lr4/a6;

    move-result-object v0

    return-object v0
.end method

.method public final z(Lr4/e8;Lr4/ft3;JJ)Lr4/a6;
    .locals 12

    move-object v0, p2

    iget-object v1, v0, Lr4/f04;->a:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Lr4/c6;->a:Lr4/b8;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    invoke-virtual {p2}, Lr4/f04;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v4, v0, Lr4/f04;->a:Ljava/lang/Object;

    iget v5, v0, Lr4/f04;->b:I

    iget v6, v0, Lr4/f04;->c:I

    iget-wide v9, v0, Lr4/f04;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Lr4/c6;->A(Lr4/e8;Ljava/lang/Object;IIJJ)Lr4/a6;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v4, v0, Lr4/f04;->a:Ljava/lang/Object;

    iget-wide v9, v0, Lr4/f04;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Lr4/c6;->B(Lr4/e8;Ljava/lang/Object;JJJ)Lr4/a6;

    move-result-object v0

    return-object v0
.end method
