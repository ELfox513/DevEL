.class public final Lr4/n14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qz3;


# instance fields
.field public final a:Lr4/n04;

.field public final b:I

.field public final c:Lr4/h04;


# direct methods
.method public synthetic constructor <init>(Lr4/n04;ILr4/o14;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/n14;->a:Lr4/n04;

    iput p2, p0, Lr4/n14;->b:I

    new-instance p1, Lr4/h04;

    invoke-direct {p1}, Lr4/h04;-><init>()V

    iput-object p1, p0, Lr4/n14;->c:Lr4/h04;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lr4/b04;J)Lr4/pz3;
    .locals 10

    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lr4/n14;->c(Lr4/b04;)J

    move-result-wide v2

    invoke-interface {p1}, Lr4/b04;->l()J

    move-result-wide v4

    iget-object v6, p0, Lr4/n14;->a:Lr4/n04;

    iget v6, v6, Lr4/n04;->c:I

    const/4 v7, 0x6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object v7, p1

    check-cast v7, Lr4/vz3;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lr4/vz3;->o(IZ)Z

    invoke-virtual {p0, p1}, Lr4/n14;->c(Lr4/b04;)J

    move-result-wide v6

    invoke-interface {p1}, Lr4/b04;->l()J

    move-result-wide v8

    cmp-long p1, v2, p2

    if-gtz p1, :cond_1

    cmp-long p1, v6, p2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, Lr4/pz3;->f(J)Lr4/pz3;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    cmp-long p1, v6, p2

    if-gtz p1, :cond_2

    invoke-static {v6, v7, v8, v9}, Lr4/pz3;->e(JJ)Lr4/pz3;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v2, v3, v0, v1}, Lr4/pz3;->d(JJ)Lr4/pz3;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lr4/b04;)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    invoke-interface/range {p1 .. p1}, Lr4/b04;->l()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lr4/b04;->q()J

    move-result-wide v4

    const-wide/16 v6, -0x6

    add-long/2addr v4, v6

    const/4 v8, 0x0

    cmp-long v9, v2, v4

    if-gez v9, :cond_2

    iget-object v2, v0, Lr4/n14;->a:Lr4/n04;

    iget v3, v0, Lr4/n14;->b:I

    iget-object v4, v0, Lr4/n14;->c:Lr4/h04;

    invoke-interface/range {p1 .. p1}, Lr4/b04;->l()J

    move-result-wide v9

    const/4 v5, 0x2

    new-array v11, v5, [B

    move-object v12, v1

    check-cast v12, Lr4/vz3;

    invoke-virtual {v12, v11, v8, v5, v8}, Lr4/vz3;->i([BIIZ)Z

    aget-byte v13, v11, v8

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    const/4 v14, 0x1

    aget-byte v15, v11, v14

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v13, v15

    if-eq v13, v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lr4/b04;->k()V

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v2

    sub-long/2addr v9, v2

    long-to-int v2, v9

    invoke-virtual {v12, v2, v8}, Lr4/vz3;->o(IZ)Z

    goto :goto_1

    :cond_0
    new-instance v13, Lr4/xb;

    const/16 v15, 0x10

    invoke-direct {v13, v15}, Lr4/xb;-><init>(I)V

    invoke-virtual {v13}, Lr4/xb;->q()[B

    move-result-object v15

    invoke-static {v11, v8, v15, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v13}, Lr4/xb;->q()[B

    move-result-object v11

    const/16 v15, 0xe

    invoke-static {v1, v11, v5, v15}, Lr4/e04;->b(Lr4/b04;[BII)I

    move-result v5

    invoke-virtual {v13, v5}, Lr4/xb;->n(I)V

    invoke-interface/range {p1 .. p1}, Lr4/b04;->k()V

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v15

    sub-long/2addr v9, v15

    long-to-int v5, v9

    invoke-virtual {v12, v5, v8}, Lr4/vz3;->o(IZ)Z

    invoke-static {v13, v2, v3, v4}, Lr4/i04;->a(Lr4/xb;Lr4/n04;ILr4/h04;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v12, v14, v8}, Lr4/vz3;->o(IZ)Z

    goto :goto_0

    :cond_2
    :goto_2
    invoke-interface/range {p1 .. p1}, Lr4/b04;->l()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lr4/b04;->q()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    invoke-interface/range {p1 .. p1}, Lr4/b04;->q()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lr4/b04;->l()J

    move-result-wide v4

    check-cast v1, Lr4/vz3;

    sub-long/2addr v2, v4

    long-to-int v3, v2

    invoke-virtual {v1, v3, v8}, Lr4/vz3;->o(IZ)Z

    iget-object v1, v0, Lr4/n14;->a:Lr4/n04;

    iget-wide v1, v1, Lr4/n04;->j:J

    return-wide v1

    :cond_3
    iget-object v1, v0, Lr4/n14;->c:Lr4/h04;

    iget-wide v1, v1, Lr4/h04;->a:J

    return-wide v1
.end method
