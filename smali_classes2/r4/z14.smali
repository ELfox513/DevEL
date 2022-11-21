.class public final Lr4/z14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;


# instance fields
.field public final a:Lr4/xb;

.field public b:Lr4/d04;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:Lr4/da;

.field public h:Lr4/b04;

.field public i:Lr4/c24;

.field public j:Lr4/y34;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/xb;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/z14;->a:Lr4/xb;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/z14;->f:J

    return-void
.end method


# virtual methods
.method public final a(Lr4/b04;)I
    .locals 3

    iget-object v0, p0, Lr4/z14;->a:Lr4/xb;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lr4/xb;->i(I)V

    iget-object v0, p0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    check-cast p1, Lr4/vz3;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Lr4/vz3;->i([BIIZ)Z

    iget-object p1, p0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {p1}, Lr4/xb;->w()I

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [Lr4/i8;

    invoke-virtual {p0, v0}, Lr4/z14;->c([Lr4/i8;)V

    iget-object v0, p0, Lr4/z14;->b:Lr4/d04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lr4/d04;->y()V

    iget-object v0, p0, Lr4/z14;->b:Lr4/d04;

    new-instance v1, Lr4/y04;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lr4/y04;-><init>(JJ)V

    invoke-interface {v0, v1}, Lr4/d04;->j(Lr4/z04;)V

    const/4 v0, 0x6

    iput v0, p0, Lr4/z14;->c:I

    return-void
.end method

.method public final varargs c([Lr4/i8;)V
    .locals 3

    iget-object v0, p0, Lr4/z14;->b:Lr4/d04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v0

    new-instance v1, Lr4/c5;

    invoke-direct {v1}, Lr4/c5;-><init>()V

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Lr4/c5;->m(Ljava/lang/String;)Lr4/c5;

    new-instance v2, Lr4/j8;

    invoke-direct {v2, p1}, Lr4/j8;-><init>([Lr4/i8;)V

    invoke-virtual {v1, v2}, Lr4/c5;->l(Lr4/j8;)Lr4/c5;

    invoke-virtual {v1}, Lr4/c5;->I()Lr4/e5;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/d14;->f(Lr4/e5;)V

    return-void
.end method

.method public final e(Lr4/b04;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lr4/z14;->a(Lr4/b04;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffd8

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lr4/z14;->a(Lr4/b04;)I

    move-result v0

    iput v0, p0, Lr4/z14;->d:I

    const v2, 0xffe0

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v0, v3}, Lr4/xb;->i(I)V

    iget-object v0, p0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lr4/vz3;

    invoke-virtual {v2, v0, v1, v3, v1}, Lr4/vz3;->i([BIIZ)Z

    iget-object v0, p0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0, v1}, Lr4/vz3;->o(IZ)Z

    invoke-virtual {p0, p1}, Lr4/z14;->a(Lr4/b04;)I

    move-result v0

    iput v0, p0, Lr4/z14;->d:I

    :cond_1
    const v2, 0xffe1

    if-ne v0, v2, :cond_2

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, v3, v1}, Lr4/vz3;->o(IZ)Z

    iget-object v0, p0, Lr4/z14;->a:Lr4/xb;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lr4/xb;->i(I)V

    iget-object v0, p0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2, v1}, Lr4/vz3;->i([BIIZ)Z

    iget-object p1, p0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {p1}, Lr4/xb;->B()J

    move-result-wide v2

    const-wide/32 v4, 0x45786966    # 5.758429993E-315

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    iget-object p1, p0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {p1}, Lr4/xb;->w()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lr4/z14;->c:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_18

    if-eq v3, v6, :cond_17

    const/4 v10, -0x1

    if-eq v3, v5, :cond_a

    const/4 v5, 0x5

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_1

    const/4 v1, 0x6

    if-ne v3, v1, :cond_0

    return v10

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    iget-object v3, v0, Lr4/z14;->i:Lr4/c24;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lr4/z14;->h:Lr4/b04;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Lr4/z14;->h:Lr4/b04;

    new-instance v3, Lr4/c24;

    iget-wide v4, v0, Lr4/z14;->f:J

    invoke-direct {v3, v1, v4, v5}, Lr4/c24;-><init>(Lr4/b04;J)V

    iput-object v3, v0, Lr4/z14;->i:Lr4/c24;

    :cond_3
    iget-object v1, v0, Lr4/z14;->j:Lr4/y34;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lr4/z14;->i:Lr4/c24;

    invoke-virtual {v1, v3, v2}, Lr4/y34;->f(Lr4/b04;Lr4/w04;)I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-wide v3, v2, Lr4/w04;->a:J

    iget-wide v5, v0, Lr4/z14;->f:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lr4/w04;->a:J

    :cond_4
    return v1

    :cond_5
    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v3

    iget-wide v7, v0, Lr4/z14;->f:J

    cmp-long v10, v3, v7

    if-nez v10, :cond_9

    iget-object v2, v0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    invoke-interface {v1, v2, v9, v6, v6}, Lr4/b04;->i([BIIZ)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lr4/z14;->b()V

    goto :goto_0

    :cond_6
    invoke-interface/range {p1 .. p1}, Lr4/b04;->k()V

    iget-object v2, v0, Lr4/z14;->j:Lr4/y34;

    if-nez v2, :cond_7

    new-instance v2, Lr4/y34;

    invoke-direct {v2, v9}, Lr4/y34;-><init>(I)V

    iput-object v2, v0, Lr4/z14;->j:Lr4/y34;

    :cond_7
    new-instance v2, Lr4/c24;

    iget-wide v3, v0, Lr4/z14;->f:J

    invoke-direct {v2, v1, v3, v4}, Lr4/c24;-><init>(Lr4/b04;J)V

    iput-object v2, v0, Lr4/z14;->i:Lr4/c24;

    iget-object v1, v0, Lr4/z14;->j:Lr4/y34;

    invoke-virtual {v1, v2}, Lr4/y34;->e(Lr4/b04;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lr4/z14;->j:Lr4/y34;

    new-instance v2, Lr4/e24;

    iget-wide v3, v0, Lr4/z14;->f:J

    iget-object v7, v0, Lr4/z14;->b:Lr4/d04;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v4, v7}, Lr4/e24;-><init>(JLr4/d04;)V

    invoke-virtual {v1, v2}, Lr4/y34;->h(Lr4/d04;)V

    new-array v1, v6, [Lr4/i8;

    iget-object v2, v0, Lr4/z14;->g:Lr4/da;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Lr4/z14;->c([Lr4/i8;)V

    iput v5, v0, Lr4/z14;->c:I

    goto :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lr4/z14;->b()V

    :goto_0
    return v9

    :cond_9
    iput-wide v7, v2, Lr4/w04;->a:J

    return v6

    :cond_a
    iget v2, v0, Lr4/z14;->d:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_16

    new-instance v2, Lr4/xb;

    iget v3, v0, Lr4/z14;->e:I

    invoke-direct {v2, v3}, Lr4/xb;-><init>(I)V

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v3

    iget v4, v0, Lr4/z14;->e:I

    move-object v6, v1

    check-cast v6, Lr4/vz3;

    invoke-virtual {v6, v3, v9, v4, v9}, Lr4/vz3;->f([BIIZ)Z

    iget-object v3, v0, Lr4/z14;->g:Lr4/da;

    if-nez v3, :cond_15

    invoke-virtual {v2, v9}, Lr4/xb;->g(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2, v9}, Lr4/xb;->g(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-interface/range {p1 .. p1}, Lr4/b04;->q()J

    move-result-wide v3

    cmp-long v6, v3, v7

    if-nez v6, :cond_c

    :cond_b
    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_c
    invoke-static {v2}, Lr4/f24;->a(Ljava/lang/String;)Lr4/b24;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_1

    :cond_d
    iget-object v6, v2, Lr4/b24;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v5, :cond_e

    goto :goto_1

    :cond_e
    iget-object v5, v2, Lr4/b24;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v10

    move-wide v11, v7

    move-wide v13, v11

    move-wide/from16 v17, v13

    move-wide/from16 v19, v17

    const/4 v6, 0x0

    :goto_2
    if-ltz v5, :cond_13

    iget-object v10, v2, Lr4/b24;->b:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr4/a24;

    iget-object v15, v10, Lr4/a24;->a:Ljava/lang/String;

    const-string v1, "video/mp4"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v6

    if-nez v5, :cond_f

    iget-wide v9, v10, Lr4/a24;->d:J

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x0

    goto :goto_3

    :cond_f
    iget-wide v9, v10, Lr4/a24;->c:J

    sub-long v9, v3, v9

    :goto_3
    move-wide/from16 v21, v3

    move-wide v3, v9

    move-wide/from16 v9, v21

    if-eqz v1, :cond_10

    cmp-long v6, v3, v9

    if-eqz v6, :cond_10

    sub-long v19, v9, v3

    move-wide/from16 v17, v3

    const/4 v6, 0x0

    goto :goto_4

    :cond_10
    move v6, v1

    :goto_4
    if-nez v5, :cond_11

    move-wide v13, v9

    :cond_11
    if-nez v5, :cond_12

    move-wide v11, v3

    :cond_12
    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_13
    cmp-long v1, v17, v7

    if-eqz v1, :cond_b

    cmp-long v1, v19, v7

    if-eqz v1, :cond_b

    cmp-long v1, v11, v7

    if-eqz v1, :cond_b

    cmp-long v1, v13, v7

    if-nez v1, :cond_14

    goto :goto_1

    :cond_14
    new-instance v1, Lr4/da;

    iget-wide v2, v2, Lr4/b24;->a:J

    move-object v10, v1

    move-wide v15, v2

    invoke-direct/range {v10 .. v20}, Lr4/da;-><init>(JJJJJ)V

    :goto_5
    iput-object v1, v0, Lr4/z14;->g:Lr4/da;

    if-eqz v1, :cond_15

    iget-wide v1, v1, Lr4/da;->k:J

    iput-wide v1, v0, Lr4/z14;->f:J

    :cond_15
    const/4 v3, 0x0

    goto :goto_6

    :cond_16
    iget v2, v0, Lr4/z14;->e:I

    check-cast v1, Lr4/vz3;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lr4/vz3;->n(IZ)Z

    :goto_6
    iput v3, v0, Lr4/z14;->c:I

    return v3

    :cond_17
    const/4 v3, 0x0

    iget-object v2, v0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v2, v5}, Lr4/xb;->i(I)V

    iget-object v2, v0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    check-cast v1, Lr4/vz3;

    invoke-virtual {v1, v2, v3, v5, v3}, Lr4/vz3;->f([BIIZ)Z

    iget-object v1, v0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->w()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lr4/z14;->e:I

    iput v5, v0, Lr4/z14;->c:I

    return v3

    :cond_18
    const/4 v3, 0x0

    iget-object v2, v0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v2, v5}, Lr4/xb;->i(I)V

    iget-object v2, v0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    check-cast v1, Lr4/vz3;

    invoke-virtual {v1, v2, v3, v5, v3}, Lr4/vz3;->f([BIIZ)Z

    iget-object v1, v0, Lr4/z14;->a:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->w()I

    move-result v1

    iput v1, v0, Lr4/z14;->d:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1a

    iget-wide v1, v0, Lr4/z14;->f:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_19

    iput v4, v0, Lr4/z14;->c:I

    goto :goto_7

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lr4/z14;->b()V

    goto :goto_7

    :cond_1a
    const v2, 0xffd0

    if-lt v1, v2, :cond_1b

    const v2, 0xffd9

    if-le v1, v2, :cond_1c

    :cond_1b
    const v2, 0xff01

    if-eq v1, v2, :cond_1c

    iput v6, v0, Lr4/z14;->c:I

    :cond_1c
    :goto_7
    const/4 v1, 0x0

    return v1
.end method

.method public final h(Lr4/d04;)V
    .locals 0

    iput-object p1, p0, Lr4/z14;->b:Lr4/d04;

    return-void
.end method

.method public final i(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lr4/z14;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/z14;->j:Lr4/y34;

    return-void

    :cond_0
    iget v0, p0, Lr4/z14;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lr4/z14;->j:Lr4/y34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3, p4}, Lr4/y34;->i(JJ)V

    :cond_1
    return-void
.end method
