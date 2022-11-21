.class public abstract Lr4/w44;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/p44;

.field public b:Lr4/d14;

.field public c:Lr4/d04;

.field public d:Lr4/r44;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:Lr4/u44;

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/p44;

    invoke-direct {v0}, Lr4/p44;-><init>()V

    iput-object v0, p0, Lr4/w44;->a:Lr4/p44;

    new-instance v0, Lr4/u44;

    invoke-direct {v0}, Lr4/u44;-><init>()V

    iput-object v0, p0, Lr4/w44;->j:Lr4/u44;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lr4/u44;

    invoke-direct {p1}, Lr4/u44;-><init>()V

    iput-object p1, p0, Lr4/w44;->j:Lr4/u44;

    iput-wide v0, p0, Lr4/w44;->f:J

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lr4/w44;->h:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lr4/w44;->e:J

    iput-wide v0, p0, Lr4/w44;->g:J

    return-void
.end method

.method public abstract b(Lr4/xb;)J
.end method

.method public abstract c(Lr4/xb;JLr4/u44;)Z
.end method

.method public final d(Lr4/d04;Lr4/d14;)V
    .locals 0

    iput-object p1, p0, Lr4/w44;->c:Lr4/d04;

    iput-object p2, p0, Lr4/w44;->b:Lr4/d14;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr4/w44;->a(Z)V

    return-void
.end method

.method public final e(JJ)V
    .locals 3

    iget-object v0, p0, Lr4/w44;->a:Lr4/p44;

    invoke-virtual {v0}, Lr4/p44;->a()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lr4/w44;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lr4/w44;->a(Z)V

    return-void

    :cond_0
    iget p1, p0, Lr4/w44;->h:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Lr4/w44;->h(J)J

    move-result-wide p1

    iput-wide p1, p0, Lr4/w44;->e:J

    iget-object p3, p0, Lr4/w44;->d:Lr4/r44;

    sget p4, Lr4/lc;->a:I

    invoke-interface {p3, p1, p2}, Lr4/r44;->a(J)V

    const/4 p1, 0x2

    iput p1, p0, Lr4/w44;->h:I

    :cond_1
    return-void
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 21

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget-object v1, v11, Lr4/w44;->b:Lr4/d14;

    invoke-static {v1}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lr4/lc;->a:I

    iget v1, v11, Lr4/w44;->h:I

    const/4 v2, 0x3

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v12, :cond_0

    return v5

    :cond_0
    iget-object v1, v11, Lr4/w44;->d:Lr4/r44;

    invoke-interface {v1, v0}, Lr4/r44;->b(Lr4/b04;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-ltz v1, :cond_1

    move-object/from16 v1, p2

    iput-wide v7, v1, Lr4/w04;->a:J

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    cmp-long v1, v7, v3

    if-gez v1, :cond_2

    const-wide/16 v14, 0x2

    add-long/2addr v7, v14

    neg-long v7, v7

    invoke-virtual {v11, v7, v8}, Lr4/w44;->i(J)V

    :cond_2
    iget-boolean v1, v11, Lr4/w44;->l:Z

    if-nez v1, :cond_3

    iget-object v1, v11, Lr4/w44;->d:Lr4/r44;

    invoke-interface {v1}, Lr4/r44;->g()Lr4/z04;

    move-result-object v1

    invoke-static {v1}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v11, Lr4/w44;->c:Lr4/d04;

    invoke-interface {v7, v1}, Lr4/d04;->j(Lr4/z04;)V

    iput-boolean v6, v11, Lr4/w44;->l:Z

    :cond_3
    iget-wide v6, v11, Lr4/w44;->k:J

    cmp-long v1, v6, v9

    if-gtz v1, :cond_5

    iget-object v1, v11, Lr4/w44;->a:Lr4/p44;

    invoke-virtual {v1, v0}, Lr4/p44;->b(Lr4/b04;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iput v2, v11, Lr4/w44;->h:I

    goto :goto_1

    :cond_5
    :goto_0
    iput-wide v9, v11, Lr4/w44;->k:J

    iget-object v0, v11, Lr4/w44;->a:Lr4/p44;

    invoke-virtual {v0}, Lr4/p44;->d()Lr4/xb;

    move-result-object v0

    invoke-virtual {v11, v0}, Lr4/w44;->b(Lr4/xb;)J

    move-result-wide v1

    cmp-long v5, v1, v9

    if-ltz v5, :cond_6

    iget-wide v5, v11, Lr4/w44;->g:J

    add-long v7, v5, v1

    iget-wide v9, v11, Lr4/w44;->e:J

    cmp-long v12, v7, v9

    if-ltz v12, :cond_6

    invoke-virtual {v11, v5, v6}, Lr4/w44;->g(J)J

    move-result-wide v15

    iget-object v5, v11, Lr4/w44;->b:Lr4/d14;

    invoke-virtual {v0}, Lr4/xb;->m()I

    move-result v6

    invoke-static {v5, v0, v6}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget-object v14, v11, Lr4/w44;->b:Lr4/d14;

    const/16 v17, 0x1

    invoke-virtual {v0}, Lr4/xb;->m()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v14 .. v20}, Lr4/d14;->e(JIIILr4/c14;)V

    iput-wide v3, v11, Lr4/w44;->e:J

    :cond_6
    iget-wide v3, v11, Lr4/w44;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v11, Lr4/w44;->g:J

    const/4 v5, 0x0

    :goto_1
    return v5

    :cond_7
    iget-wide v1, v11, Lr4/w44;->f:J

    check-cast v0, Lr4/vz3;

    long-to-int v2, v1

    invoke-virtual {v0, v2, v13}, Lr4/vz3;->n(IZ)Z

    iput v12, v11, Lr4/w44;->h:I

    return v13

    :cond_8
    :goto_2
    iget-object v1, v11, Lr4/w44;->a:Lr4/p44;

    invoke-virtual {v1, v0}, Lr4/p44;->b(Lr4/b04;)Z

    move-result v1

    if-nez v1, :cond_9

    iput v2, v11, Lr4/w44;->h:I

    goto/16 :goto_5

    :cond_9
    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v7

    iget-wide v9, v11, Lr4/w44;->f:J

    sub-long/2addr v7, v9

    iput-wide v7, v11, Lr4/w44;->k:J

    iget-object v1, v11, Lr4/w44;->a:Lr4/p44;

    invoke-virtual {v1}, Lr4/p44;->d()Lr4/xb;

    move-result-object v1

    iget-wide v7, v11, Lr4/w44;->f:J

    iget-object v9, v11, Lr4/w44;->j:Lr4/u44;

    invoke-virtual {v11, v1, v7, v8, v9}, Lr4/w44;->c(Lr4/xb;JLr4/u44;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v7

    iput-wide v7, v11, Lr4/w44;->f:J

    goto :goto_2

    :cond_a
    iget-object v1, v11, Lr4/w44;->j:Lr4/u44;

    iget-object v1, v1, Lr4/u44;->a:Lr4/e5;

    iget v2, v1, Lr4/e5;->z:I

    iput v2, v11, Lr4/w44;->i:I

    iget-boolean v2, v11, Lr4/w44;->m:Z

    if-nez v2, :cond_b

    iget-object v2, v11, Lr4/w44;->b:Lr4/d14;

    invoke-interface {v2, v1}, Lr4/d14;->f(Lr4/e5;)V

    iput-boolean v6, v11, Lr4/w44;->m:Z

    :cond_b
    iget-object v1, v11, Lr4/w44;->j:Lr4/u44;

    iget-object v1, v1, Lr4/u44;->b:Lr4/r44;

    if-eqz v1, :cond_c

    iput-object v1, v11, Lr4/w44;->d:Lr4/r44;

    goto :goto_4

    :cond_c
    invoke-interface/range {p1 .. p1}, Lr4/b04;->q()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_d

    new-instance v0, Lr4/v44;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/v44;-><init>(Lr4/t44;)V

    iput-object v0, v11, Lr4/w44;->d:Lr4/r44;

    goto :goto_4

    :cond_d
    iget-object v1, v11, Lr4/w44;->a:Lr4/p44;

    invoke-virtual {v1}, Lr4/p44;->c()Lr4/q44;

    move-result-object v1

    iget v2, v1, Lr4/q44;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_e

    const/4 v10, 0x1

    goto :goto_3

    :cond_e
    const/4 v10, 0x0

    :goto_3
    new-instance v14, Lr4/k44;

    iget-wide v2, v11, Lr4/w44;->f:J

    invoke-interface/range {p1 .. p1}, Lr4/b04;->q()J

    move-result-wide v4

    iget v0, v1, Lr4/q44;->d:I

    iget v6, v1, Lr4/q44;->e:I

    add-int/2addr v0, v6

    int-to-long v6, v0

    iget-wide v8, v1, Lr4/q44;->b:J

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v10}, Lr4/k44;-><init>(Lr4/w44;JJJJZ)V

    iput-object v14, v11, Lr4/w44;->d:Lr4/r44;

    :goto_4
    iput v12, v11, Lr4/w44;->h:I

    iget-object v0, v11, Lr4/w44;->a:Lr4/p44;

    invoke-virtual {v0}, Lr4/p44;->e()V

    const/4 v5, 0x0

    :goto_5
    return v5
.end method

.method public final g(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lr4/w44;->i:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final h(J)J
    .locals 2

    iget v0, p0, Lr4/w44;->i:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method public i(J)V
    .locals 0

    iput-wide p1, p0, Lr4/w44;->g:J

    return-void
.end method
