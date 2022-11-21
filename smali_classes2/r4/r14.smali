.class public final Lr4/r14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;


# static fields
.field public static final n:Lr4/g04;


# instance fields
.field public final a:[B

.field public final b:Lr4/xb;

.field public final c:Lr4/h04;

.field public d:Lr4/d04;

.field public e:Lr4/d14;

.field public f:I

.field public g:Lr4/j8;

.field public h:Lr4/n04;

.field public i:I

.field public j:I

.field public k:Lr4/p14;

.field public l:I

.field public m:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/q14;->a:Lr4/g04;

    sput-object v0, Lr4/r14;->n:Lr4/g04;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lr4/r14;->a:[B

    new-instance p1, Lr4/xb;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lr4/xb;-><init>([BI)V

    iput-object p1, p0, Lr4/r14;->b:Lr4/xb;

    new-instance p1, Lr4/h04;

    invoke-direct {p1}, Lr4/h04;-><init>()V

    iput-object p1, p0, Lr4/r14;->c:Lr4/h04;

    iput v1, p0, Lr4/r14;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lr4/xb;Z)J
    .locals 4

    iget-object v0, p0, Lr4/r14;->h:Lr4/n04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lr4/xb;->o()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lr4/xb;->m()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lr4/xb;->p(I)V

    iget-object v1, p0, Lr4/r14;->h:Lr4/n04;

    iget v2, p0, Lr4/r14;->j:I

    iget-object v3, p0, Lr4/r14;->c:Lr4/h04;

    invoke-static {p1, v1, v2, v3}, Lr4/i04;->a(Lr4/xb;Lr4/n04;ILr4/h04;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lr4/xb;->p(I)V

    iget-object p1, p0, Lr4/r14;->c:Lr4/h04;

    iget-wide p1, p1, Lr4/h04;->a:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    invoke-virtual {p1}, Lr4/xb;->m()I

    move-result p2

    iget v1, p0, Lr4/r14;->i:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    invoke-virtual {p1, v0}, Lr4/xb;->p(I)V

    :try_start_0
    iget-object p2, p0, Lr4/r14;->h:Lr4/n04;

    iget v1, p0, Lr4/r14;->j:I

    iget-object v2, p0, Lr4/r14;->c:Lr4/h04;

    invoke-static {p1, p2, v1, v2}, Lr4/i04;->a(Lr4/xb;Lr4/n04;ILr4/h04;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1}, Lr4/xb;->o()I

    move-result v1

    invoke-virtual {p1}, Lr4/xb;->m()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Lr4/xb;->p(I)V

    iget-object p1, p0, Lr4/r14;->c:Lr4/h04;

    iget-wide p1, p1, Lr4/h04;->a:J

    return-wide p1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lr4/xb;->m()I

    move-result p2

    invoke-virtual {p1, p2}, Lr4/xb;->p(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v0}, Lr4/xb;->p(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public final b()V
    .locals 11

    iget-wide v0, p0, Lr4/r14;->m:J

    iget-object v2, p0, Lr4/r14;->h:Lr4/n04;

    sget v3, Lr4/lc;->a:I

    iget v2, v2, Lr4/n04;->e:I

    const-wide/32 v3, 0xf4240

    mul-long v0, v0, v3

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v4, p0, Lr4/r14;->e:Lr4/d14;

    iget v8, p0, Lr4/r14;->l:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lr4/d14;->e(JIIILr4/c14;)V

    return-void
.end method

.method public final e(Lr4/b04;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr4/k04;->a(Lr4/b04;Z)Lr4/j8;

    new-instance v1, Lr4/xb;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lr4/xb;-><init>(I)V

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v3

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, v3, v0, v2, v0}, Lr4/vz3;->i([BIIZ)Z

    invoke-virtual {v1}, Lr4/xb;->B()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lr4/r14;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_17

    const/4 v5, 0x2

    if-eq v2, v3, :cond_16

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v2, v5, :cond_14

    if-eq v2, v7, :cond_d

    const-wide/16 v9, -0x1

    if-eq v2, v8, :cond_9

    iget-object v2, v0, Lr4/r14;->e:Lr4/d14;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lr4/r14;->h:Lr4/n04;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lr4/r14;->k:Lr4/p14;

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lr4/rz3;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lr4/r14;->k:Lr4/p14;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lr4/rz3;->d(Lr4/b04;Lr4/w04;)I

    move-result v4

    goto/16 :goto_2

    :cond_0
    iget-wide v6, v0, Lr4/r14;->m:J

    cmp-long v2, v6, v9

    if-nez v2, :cond_1

    iget-object v2, v0, Lr4/r14;->h:Lr4/n04;

    invoke-static {v1, v2}, Lr4/i04;->b(Lr4/b04;Lr4/n04;)J

    move-result-wide v1

    iput-wide v1, v0, Lr4/r14;->m:J

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->m()I

    move-result v2

    const v6, 0x8000

    if-ge v2, v6, :cond_4

    iget-object v7, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v7}, Lr4/xb;->q()[B

    move-result-object v7

    sub-int/2addr v6, v2

    invoke-interface {v1, v7, v2, v6}, Lr4/b04;->b([BII)I

    move-result v1

    if-ne v1, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    iget-object v5, v0, Lr4/r14;->b:Lr4/xb;

    add-int/2addr v2, v1

    invoke-virtual {v5, v2}, Lr4/xb;->n(I)V

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->l()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lr4/r14;->b()V

    const/4 v4, -0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_1
    iget-object v1, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->o()I

    move-result v1

    iget v2, v0, Lr4/r14;->l:I

    iget v5, v0, Lr4/r14;->i:I

    if-ge v2, v5, :cond_6

    iget-object v6, v0, Lr4/r14;->b:Lr4/xb;

    sub-int/2addr v5, v2

    invoke-virtual {v6}, Lr4/xb;->l()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v6, v2}, Lr4/xb;->s(I)V

    :cond_6
    iget-object v2, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v0, v2, v3}, Lr4/r14;->a(Lr4/xb;Z)J

    move-result-wide v2

    iget-object v5, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v5}, Lr4/xb;->o()I

    move-result v5

    sub-int/2addr v5, v1

    iget-object v6, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v6, v1}, Lr4/xb;->p(I)V

    iget-object v1, v0, Lr4/r14;->e:Lr4/d14;

    iget-object v6, v0, Lr4/r14;->b:Lr4/xb;

    invoke-static {v1, v6, v5}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget v1, v0, Lr4/r14;->l:I

    add-int/2addr v1, v5

    iput v1, v0, Lr4/r14;->l:I

    cmp-long v1, v2, v9

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lr4/r14;->b()V

    iput v4, v0, Lr4/r14;->l:I

    iput-wide v2, v0, Lr4/r14;->m:J

    :cond_7
    iget-object v1, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->l()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_8

    :goto_2
    return v4

    :cond_8
    iget-object v1, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->l()I

    move-result v1

    iget-object v2, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    iget-object v3, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->o()I

    move-result v3

    iget-object v5, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v5}, Lr4/xb;->q()[B

    move-result-object v5

    invoke-static {v2, v3, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v2, v4}, Lr4/xb;->p(I)V

    iget-object v2, v0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {v2, v1}, Lr4/xb;->n(I)V

    return v4

    :cond_9
    invoke-interface/range {p1 .. p1}, Lr4/b04;->k()V

    new-instance v2, Lr4/xb;

    invoke-direct {v2, v5}, Lr4/xb;-><init>(I)V

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v3

    move-object v7, v1

    check-cast v7, Lr4/vz3;

    invoke-virtual {v7, v3, v4, v5, v4}, Lr4/vz3;->i([BIIZ)Z

    invoke-virtual {v2}, Lr4/xb;->w()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_c

    invoke-interface/range {p1 .. p1}, Lr4/b04;->k()V

    iput v2, v0, Lr4/r14;->j:I

    iget-object v2, v0, Lr4/r14;->d:Lr4/d04;

    sget v3, Lr4/lc;->a:I

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Lr4/b04;->q()J

    move-result-wide v16

    iget-object v12, v0, Lr4/r14;->h:Lr4/n04;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v12, Lr4/n04;->k:Lr4/m04;

    if-eqz v1, :cond_a

    new-instance v1, Lr4/l04;

    invoke-direct {v1, v12, v14, v15}, Lr4/l04;-><init>(Lr4/n04;J)V

    goto :goto_3

    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v1, v16, v9

    if-eqz v1, :cond_b

    iget-wide v7, v12, Lr4/n04;->j:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_b

    new-instance v1, Lr4/p14;

    iget v13, v0, Lr4/r14;->j:I

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lr4/p14;-><init>(Lr4/n04;IJJ)V

    iput-object v1, v0, Lr4/r14;->k:Lr4/p14;

    invoke-virtual {v1}, Lr4/rz3;->a()Lr4/z04;

    move-result-object v1

    goto :goto_3

    :cond_b
    new-instance v1, Lr4/y04;

    invoke-virtual {v12}, Lr4/n04;->a()J

    move-result-wide v7

    invoke-direct {v1, v7, v8, v5, v6}, Lr4/y04;-><init>(JJ)V

    :goto_3
    invoke-interface {v2, v1}, Lr4/d04;->j(Lr4/z04;)V

    const/4 v1, 0x5

    iput v1, v0, Lr4/r14;->f:I

    return v4

    :cond_c
    invoke-interface/range {p1 .. p1}, Lr4/b04;->k()V

    const-string v1, "First frame does not start with sync code."

    invoke-static {v1, v6}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v1

    throw v1

    :cond_d
    new-instance v2, Lr4/j04;

    iget-object v3, v0, Lr4/r14;->h:Lr4/n04;

    invoke-direct {v2, v3}, Lr4/j04;-><init>(Lr4/n04;)V

    :cond_e
    invoke-interface/range {p1 .. p1}, Lr4/b04;->k()V

    new-instance v3, Lr4/wb;

    new-array v5, v8, [B

    invoke-direct {v3, v5, v8}, Lr4/wb;-><init>([BI)V

    iget-object v5, v3, Lr4/wb;->a:[B

    move-object v6, v1

    check-cast v6, Lr4/vz3;

    invoke-virtual {v6, v5, v4, v8, v4}, Lr4/vz3;->i([BIIZ)Z

    invoke-virtual {v3}, Lr4/wb;->g()Z

    move-result v5

    const/4 v9, 0x7

    invoke-virtual {v3, v9}, Lr4/wb;->h(I)I

    move-result v9

    const/16 v10, 0x18

    invoke-virtual {v3, v10}, Lr4/wb;->h(I)I

    move-result v3

    add-int/2addr v3, v8

    const/4 v10, 0x6

    if-nez v9, :cond_f

    const/16 v3, 0x26

    new-array v9, v3, [B

    invoke-virtual {v6, v9, v4, v3, v4}, Lr4/vz3;->f([BIIZ)Z

    new-instance v3, Lr4/n04;

    invoke-direct {v3, v9, v8}, Lr4/n04;-><init>([BI)V

    iput-object v3, v2, Lr4/j04;->a:Lr4/n04;

    goto/16 :goto_4

    :cond_f
    iget-object v11, v2, Lr4/j04;->a:Lr4/n04;

    if-eqz v11, :cond_13

    if-ne v9, v7, :cond_10

    new-instance v9, Lr4/xb;

    invoke-direct {v9, v3}, Lr4/xb;-><init>(I)V

    invoke-virtual {v9}, Lr4/xb;->q()[B

    move-result-object v12

    invoke-virtual {v6, v12, v4, v3, v4}, Lr4/vz3;->f([BIIZ)Z

    invoke-static {v9}, Lr4/k04;->b(Lr4/xb;)Lr4/m04;

    move-result-object v3

    invoke-virtual {v11, v3}, Lr4/n04;->e(Lr4/m04;)Lr4/n04;

    move-result-object v3

    iput-object v3, v2, Lr4/j04;->a:Lr4/n04;

    goto/16 :goto_4

    :cond_10
    if-ne v9, v8, :cond_11

    new-instance v9, Lr4/xb;

    invoke-direct {v9, v3}, Lr4/xb;-><init>(I)V

    invoke-virtual {v9}, Lr4/xb;->q()[B

    move-result-object v12

    invoke-virtual {v6, v12, v4, v3, v4}, Lr4/vz3;->f([BIIZ)Z

    invoke-virtual {v9, v8}, Lr4/xb;->s(I)V

    invoke-static {v9, v4, v4}, Lr4/j14;->b(Lr4/xb;ZZ)Lr4/f14;

    move-result-object v3

    iget-object v3, v3, Lr4/f14;->b:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v11, v3}, Lr4/n04;->f(Ljava/util/List;)Lr4/n04;

    move-result-object v3

    iput-object v3, v2, Lr4/j04;->a:Lr4/n04;

    goto :goto_4

    :cond_11
    if-ne v9, v10, :cond_12

    new-instance v9, Lr4/xb;

    invoke-direct {v9, v3}, Lr4/xb;-><init>(I)V

    invoke-virtual {v9}, Lr4/xb;->q()[B

    move-result-object v12

    invoke-virtual {v6, v12, v4, v3, v4}, Lr4/vz3;->f([BIIZ)Z

    invoke-virtual {v9, v8}, Lr4/xb;->s(I)V

    invoke-virtual {v9}, Lr4/xb;->D()I

    move-result v14

    invoke-virtual {v9}, Lr4/xb;->D()I

    move-result v3

    sget-object v6, Lr4/n03;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v3, v6}, Lr4/xb;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lr4/xb;->D()I

    move-result v3

    sget-object v6, Lr4/n03;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v3, v6}, Lr4/xb;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v9}, Lr4/xb;->D()I

    move-result v17

    invoke-virtual {v9}, Lr4/xb;->D()I

    move-result v18

    invoke-virtual {v9}, Lr4/xb;->D()I

    move-result v19

    invoke-virtual {v9}, Lr4/xb;->D()I

    move-result v20

    invoke-virtual {v9}, Lr4/xb;->D()I

    move-result v3

    new-array v6, v3, [B

    invoke-virtual {v9, v6, v4, v3}, Lr4/xb;->u([BII)V

    new-instance v3, Lr4/r8;

    move-object v13, v3

    move-object/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lr4/r8;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v11, v3}, Lr4/n04;->g(Ljava/util/List;)Lr4/n04;

    move-result-object v3

    iput-object v3, v2, Lr4/j04;->a:Lr4/n04;

    goto :goto_4

    :cond_12
    invoke-virtual {v6, v3, v4}, Lr4/vz3;->n(IZ)Z

    :goto_4
    iget-object v3, v2, Lr4/j04;->a:Lr4/n04;

    sget v6, Lr4/lc;->a:I

    iput-object v3, v0, Lr4/r14;->h:Lr4/n04;

    if-eqz v5, :cond_e

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v3, Lr4/n04;->c:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lr4/r14;->i:I

    iget-object v1, v0, Lr4/r14;->e:Lr4/d14;

    iget-object v2, v0, Lr4/r14;->h:Lr4/n04;

    iget-object v3, v0, Lr4/r14;->a:[B

    iget-object v5, v0, Lr4/r14;->g:Lr4/j8;

    invoke-virtual {v2, v3, v5}, Lr4/n04;->c([BLr4/j8;)Lr4/e5;

    move-result-object v2

    invoke-interface {v1, v2}, Lr4/d14;->f(Lr4/e5;)V

    iput v8, v0, Lr4/r14;->f:I

    return v4

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_14
    new-instance v2, Lr4/xb;

    invoke-direct {v2, v8}, Lr4/xb;-><init>(I)V

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v3

    check-cast v1, Lr4/vz3;

    invoke-virtual {v1, v3, v4, v8, v4}, Lr4/vz3;->f([BIIZ)Z

    invoke-virtual {v2}, Lr4/xb;->B()J

    move-result-wide v1

    const-wide/32 v8, 0x664c6143

    cmp-long v3, v1, v8

    if-nez v3, :cond_15

    iput v7, v0, Lr4/r14;->f:I

    return v4

    :cond_15
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v1, v6}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v1

    throw v1

    :cond_16
    iget-object v2, v0, Lr4/r14;->a:[B

    move-object v3, v1

    check-cast v3, Lr4/vz3;

    const/16 v6, 0x2a

    invoke-virtual {v3, v2, v4, v6, v4}, Lr4/vz3;->i([BIIZ)Z

    invoke-interface/range {p1 .. p1}, Lr4/b04;->k()V

    iput v5, v0, Lr4/r14;->f:I

    return v4

    :cond_17
    invoke-interface/range {p1 .. p1}, Lr4/b04;->k()V

    invoke-interface/range {p1 .. p1}, Lr4/b04;->l()J

    move-result-wide v5

    invoke-static {v1, v3}, Lr4/k04;->a(Lr4/b04;Z)Lr4/j8;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lr4/b04;->l()J

    move-result-wide v7

    check-cast v1, Lr4/vz3;

    sub-long/2addr v7, v5

    long-to-int v5, v7

    invoke-virtual {v1, v5, v4}, Lr4/vz3;->n(IZ)Z

    iput-object v2, v0, Lr4/r14;->g:Lr4/j8;

    iput v3, v0, Lr4/r14;->f:I

    return v4
.end method

.method public final h(Lr4/d04;)V
    .locals 2

    iput-object p1, p0, Lr4/r14;->d:Lr4/d04;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v0

    iput-object v0, p0, Lr4/r14;->e:Lr4/d14;

    invoke-interface {p1}, Lr4/d04;->y()V

    return-void
.end method

.method public final i(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    iput v0, p0, Lr4/r14;->f:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/r14;->k:Lr4/p14;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Lr4/rz3;->b(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    :goto_1
    iput-wide v1, p0, Lr4/r14;->m:J

    iput v0, p0, Lr4/r14;->l:I

    iget-object p1, p0, Lr4/r14;->b:Lr4/xb;

    invoke-virtual {p1, v0}, Lr4/xb;->i(I)V

    return-void
.end method
