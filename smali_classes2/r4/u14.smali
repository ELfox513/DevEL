.class public final Lr4/u14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;


# static fields
.field public static final q:Lr4/g04;


# instance fields
.field public final a:Lr4/xb;

.field public final b:Lr4/xb;

.field public final c:Lr4/xb;

.field public final d:Lr4/xb;

.field public final e:Lr4/v14;

.field public f:Lr4/d04;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:Lr4/s14;

.field public p:Lr4/y14;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/t14;->a:Lr4/g04;

    sput-object v0, Lr4/u14;->q:Lr4/g04;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/xb;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/u14;->a:Lr4/xb;

    new-instance v0, Lr4/xb;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/u14;->b:Lr4/xb;

    new-instance v0, Lr4/xb;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/u14;->c:Lr4/xb;

    new-instance v0, Lr4/xb;

    invoke-direct {v0}, Lr4/xb;-><init>()V

    iput-object v0, p0, Lr4/u14;->d:Lr4/xb;

    new-instance v0, Lr4/v14;

    invoke-direct {v0}, Lr4/v14;-><init>()V

    iput-object v0, p0, Lr4/u14;->e:Lr4/v14;

    const/4 v0, 0x1

    iput v0, p0, Lr4/u14;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lr4/b04;)Lr4/xb;
    .locals 4

    iget v0, p0, Lr4/u14;->l:I

    iget-object v1, p0, Lr4/u14;->d:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->r()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lr4/u14;->d:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->r()I

    move-result v1

    add-int/2addr v1, v1

    iget v3, p0, Lr4/u14;->l:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lr4/xb;->j([BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/u14;->d:Lr4/xb;

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    :goto_0
    iget-object v0, p0, Lr4/u14;->d:Lr4/xb;

    iget v1, p0, Lr4/u14;->l:I

    invoke-virtual {v0, v1}, Lr4/xb;->n(I)V

    iget-object v0, p0, Lr4/u14;->d:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    iget v1, p0, Lr4/u14;->l:I

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, v0, v2, v1, v2}, Lr4/vz3;->f([BIIZ)Z

    iget-object p1, p0, Lr4/u14;->d:Lr4/xb;

    return-object p1
.end method

.method public final b()V
    .locals 6

    iget-boolean v0, p0, Lr4/u14;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/u14;->f:Lr4/d04;

    new-instance v1, Lr4/y04;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lr4/y04;-><init>(JJ)V

    invoke-interface {v0, v1}, Lr4/d04;->j(Lr4/z04;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/u14;->n:Z

    :cond_0
    return-void
.end method

.method public final e(Lr4/b04;)Z
    .locals 4

    iget-object v0, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lr4/vz3;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3, v2}, Lr4/vz3;->i([BIIZ)Z

    iget-object v0, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    iget-object v0, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->z()I

    move-result v0

    const v3, 0x464c56

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3, v2}, Lr4/vz3;->i([BIIZ)Z

    iget-object v0, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    iget-object v0, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->w()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v2, v3, v2}, Lr4/vz3;->i([BIIZ)Z

    iget-object v0, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    iget-object v0, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->D()I

    move-result v0

    invoke-interface {p1}, Lr4/b04;->k()V

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, v0, v2}, Lr4/vz3;->o(IZ)Z

    iget-object v0, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    invoke-virtual {p1, v0, v2, v3, v2}, Lr4/vz3;->i([BIIZ)Z

    iget-object p1, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {p1, v2}, Lr4/xb;->p(I)V

    iget-object p1, p0, Lr4/u14;->a:Lr4/xb;

    invoke-virtual {p1}, Lr4/xb;->D()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lr4/u14;->f:Lr4/d04;

    invoke-static {v2}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget v2, v0, Lr4/u14;->g:I

    const/4 v3, -0x1

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_e

    const/4 v10, 0x3

    if-eq v2, v6, :cond_d

    if-eq v2, v10, :cond_b

    if-ne v2, v7, :cond_a

    iget-boolean v2, v0, Lr4/u14;->h:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lr4/u14;->i:J

    iget-wide v14, v0, Lr4/u14;->m:J

    add-long/2addr v2, v14

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lr4/u14;->e:Lr4/v14;

    invoke-virtual {v2}, Lr4/v14;->d()J

    move-result-wide v2

    cmp-long v14, v2, v12

    if-nez v14, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    iget-wide v2, v0, Lr4/u14;->m:J

    :goto_1
    iget v14, v0, Lr4/u14;->k:I

    if-ne v14, v4, :cond_4

    iget-object v14, v0, Lr4/u14;->o:Lr4/s14;

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lr4/u14;->b()V

    iget-object v4, v0, Lr4/u14;->o:Lr4/s14;

    invoke-virtual/range {p0 .. p1}, Lr4/u14;->a(Lr4/b04;)Lr4/xb;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lr4/x14;->c(Lr4/xb;J)Z

    move-result v2

    :cond_3
    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move v4, v14

    :cond_5
    if-ne v4, v5, :cond_6

    iget-object v4, v0, Lr4/u14;->p:Lr4/y14;

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lr4/u14;->b()V

    iget-object v4, v0, Lr4/u14;->p:Lr4/y14;

    invoke-virtual/range {p0 .. p1}, Lr4/u14;->a(Lr4/b04;)Lr4/xb;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lr4/x14;->c(Lr4/xb;J)Z

    move-result v2

    goto :goto_2

    :cond_6
    const/16 v5, 0x12

    if-ne v4, v5, :cond_7

    iget-boolean v4, v0, Lr4/u14;->n:Z

    if-nez v4, :cond_7

    iget-object v4, v0, Lr4/u14;->e:Lr4/v14;

    invoke-virtual/range {p0 .. p1}, Lr4/u14;->a(Lr4/b04;)Lr4/xb;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lr4/x14;->c(Lr4/xb;J)Z

    move-result v2

    iget-object v3, v0, Lr4/u14;->e:Lr4/v14;

    invoke-virtual {v3}, Lr4/v14;->d()J

    move-result-wide v3

    cmp-long v5, v3, v12

    if-eqz v5, :cond_3

    iget-object v5, v0, Lr4/u14;->f:Lr4/d04;

    new-instance v14, Lr4/s04;

    iget-object v15, v0, Lr4/u14;->e:Lr4/v14;

    invoke-virtual {v15}, Lr4/v14;->f()[J

    move-result-object v15

    iget-object v10, v0, Lr4/u14;->e:Lr4/v14;

    invoke-virtual {v10}, Lr4/v14;->e()[J

    move-result-object v10

    invoke-direct {v14, v15, v10, v3, v4}, Lr4/s04;-><init>([J[JJ)V

    invoke-interface {v5, v14}, Lr4/d04;->j(Lr4/z04;)V

    iput-boolean v9, v0, Lr4/u14;->n:Z

    goto :goto_2

    :cond_7
    iget v2, v0, Lr4/u14;->l:I

    move-object v3, v1

    check-cast v3, Lr4/vz3;

    invoke-virtual {v3, v2, v8}, Lr4/vz3;->n(IZ)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    iget-boolean v4, v0, Lr4/u14;->h:Z

    if-nez v4, :cond_9

    if-eqz v2, :cond_9

    iput-boolean v9, v0, Lr4/u14;->h:Z

    iget-object v2, v0, Lr4/u14;->e:Lr4/v14;

    invoke-virtual {v2}, Lr4/v14;->d()J

    move-result-wide v4

    cmp-long v2, v4, v12

    if-nez v2, :cond_8

    iget-wide v4, v0, Lr4/u14;->m:J

    neg-long v10, v4

    goto :goto_4

    :cond_8
    const-wide/16 v10, 0x0

    :goto_4
    iput-wide v10, v0, Lr4/u14;->i:J

    :cond_9
    iput v7, v0, Lr4/u14;->j:I

    iput v6, v0, Lr4/u14;->g:I

    if-eqz v3, :cond_0

    return v8

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_b
    iget-object v2, v0, Lr4/u14;->c:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    const/16 v4, 0xb

    invoke-interface {v1, v2, v8, v4, v9}, Lr4/b04;->f([BIIZ)Z

    move-result v2

    if-nez v2, :cond_c

    return v3

    :cond_c
    iget-object v2, v0, Lr4/u14;->c:Lr4/xb;

    invoke-virtual {v2, v8}, Lr4/xb;->p(I)V

    iget-object v2, v0, Lr4/u14;->c:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->v()I

    move-result v2

    iput v2, v0, Lr4/u14;->k:I

    iget-object v2, v0, Lr4/u14;->c:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->z()I

    move-result v2

    iput v2, v0, Lr4/u14;->l:I

    iget-object v2, v0, Lr4/u14;->c:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->z()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lr4/u14;->m:J

    iget-object v2, v0, Lr4/u14;->c:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->v()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    iget-wide v4, v0, Lr4/u14;->m:J

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    iput-wide v2, v0, Lr4/u14;->m:J

    iget-object v2, v0, Lr4/u14;->c:Lr4/xb;

    invoke-virtual {v2, v10}, Lr4/xb;->s(I)V

    iput v7, v0, Lr4/u14;->g:I

    goto/16 :goto_0

    :cond_d
    iget v2, v0, Lr4/u14;->j:I

    move-object v3, v1

    check-cast v3, Lr4/vz3;

    invoke-virtual {v3, v2, v8}, Lr4/vz3;->n(IZ)Z

    iput v8, v0, Lr4/u14;->j:I

    iput v10, v0, Lr4/u14;->g:I

    goto/16 :goto_0

    :cond_e
    iget-object v2, v0, Lr4/u14;->b:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    invoke-interface {v1, v2, v8, v5, v9}, Lr4/b04;->f([BIIZ)Z

    move-result v2

    if-nez v2, :cond_f

    return v3

    :cond_f
    iget-object v2, v0, Lr4/u14;->b:Lr4/xb;

    invoke-virtual {v2, v8}, Lr4/xb;->p(I)V

    iget-object v2, v0, Lr4/u14;->b:Lr4/xb;

    invoke-virtual {v2, v7}, Lr4/xb;->s(I)V

    iget-object v2, v0, Lr4/u14;->b:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->v()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    and-int/2addr v2, v7

    if-eqz v2, :cond_10

    iget-object v2, v0, Lr4/u14;->o:Lr4/s14;

    if-nez v2, :cond_10

    new-instance v2, Lr4/s14;

    iget-object v7, v0, Lr4/u14;->f:Lr4/d04;

    invoke-interface {v7, v4, v9}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v4

    invoke-direct {v2, v4}, Lr4/s14;-><init>(Lr4/d14;)V

    iput-object v2, v0, Lr4/u14;->o:Lr4/s14;

    :cond_10
    if-eqz v3, :cond_11

    iget-object v2, v0, Lr4/u14;->p:Lr4/y14;

    if-nez v2, :cond_11

    new-instance v2, Lr4/y14;

    iget-object v3, v0, Lr4/u14;->f:Lr4/d04;

    invoke-interface {v3, v5, v6}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v3

    invoke-direct {v2, v3}, Lr4/y14;-><init>(Lr4/d14;)V

    iput-object v2, v0, Lr4/u14;->p:Lr4/y14;

    :cond_11
    iget-object v2, v0, Lr4/u14;->f:Lr4/d04;

    invoke-interface {v2}, Lr4/d04;->y()V

    iget-object v2, v0, Lr4/u14;->b:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->D()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Lr4/u14;->j:I

    iput v6, v0, Lr4/u14;->g:I

    goto/16 :goto_0
.end method

.method public final h(Lr4/d04;)V
    .locals 0

    iput-object p1, p0, Lr4/u14;->f:Lr4/d04;

    return-void
.end method

.method public final i(JJ)V
    .locals 2

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lr4/u14;->g:I

    iput-boolean p3, p0, Lr4/u14;->h:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lr4/u14;->g:I

    :goto_0
    iput p3, p0, Lr4/u14;->j:I

    return-void
.end method
