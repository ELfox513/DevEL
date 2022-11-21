.class public final Lr4/j54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m54;


# instance fields
.field public final a:Lr4/xb;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lr4/d14;

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:Lr4/e5;

.field public j:I

.field public k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/xb;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lr4/xb;-><init>([B)V

    iput-object v0, p0, Lr4/j54;->a:Lr4/xb;

    const/4 v0, 0x0

    iput v0, p0, Lr4/j54;->e:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/j54;->k:J

    iput-object p1, p0, Lr4/j54;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lr4/d04;Lr4/z64;)V
    .locals 1

    invoke-virtual {p2}, Lr4/z64;->a()V

    invoke-virtual {p2}, Lr4/z64;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/j54;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lr4/z64;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object p1

    iput-object p1, p0, Lr4/j54;->d:Lr4/d14;

    return-void
.end method

.method public final b(Lr4/xb;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lr4/j54;->d:Lr4/d14;

    invoke-static {v2}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lr4/xb;->l()I

    move-result v2

    if-lez v2, :cond_d

    iget v2, v0, Lr4/j54;->e:I

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-eqz v2, :cond_b

    if-eq v2, v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->l()I

    move-result v2

    iget v3, v0, Lr4/j54;->j:I

    iget v4, v0, Lr4/j54;->f:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lr4/j54;->d:Lr4/d14;

    invoke-static {v3, v1, v2}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget v3, v0, Lr4/j54;->f:I

    add-int/2addr v3, v2

    iput v3, v0, Lr4/j54;->f:I

    iget v10, v0, Lr4/j54;->j:I

    if-ne v3, v10, :cond_0

    iget-wide v7, v0, Lr4/j54;->k:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v7, v2

    if-eqz v4, :cond_1

    iget-object v6, v0, Lr4/j54;->d:Lr4/d14;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lr4/d14;->e(JIIILr4/c14;)V

    iget-wide v2, v0, Lr4/j54;->k:J

    iget-wide v6, v0, Lr4/j54;->h:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Lr4/j54;->k:J

    :cond_1
    iput v5, v0, Lr4/j54;->e:I

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lr4/j54;->a:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->l()I

    move-result v9

    iget v10, v0, Lr4/j54;->f:I

    const/16 v11, 0x12

    rsub-int/lit8 v10, v10, 0x12

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, v0, Lr4/j54;->f:I

    invoke-virtual {v1, v2, v10, v9}, Lr4/xb;->u([BII)V

    iget v2, v0, Lr4/j54;->f:I

    add-int/2addr v2, v9

    iput v2, v0, Lr4/j54;->f:I

    if-ne v2, v11, :cond_0

    iget-object v2, v0, Lr4/j54;->a:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    iget-object v9, v0, Lr4/j54;->i:Lr4/e5;

    if-nez v9, :cond_3

    iget-object v9, v0, Lr4/j54;->c:Ljava/lang/String;

    iget-object v10, v0, Lr4/j54;->b:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v2, v9, v10, v12}, Lr4/yz3;->a([BLjava/lang/String;Ljava/lang/String;Lr4/fz3;)Lr4/e5;

    move-result-object v9

    iput-object v9, v0, Lr4/j54;->i:Lr4/e5;

    iget-object v10, v0, Lr4/j54;->d:Lr4/d14;

    invoke-interface {v10, v9}, Lr4/d14;->f(Lr4/e5;)V

    :cond_3
    sget-object v9, Lr4/yz3;->a:[I

    aget-byte v9, v2, v5

    const/16 v10, 0x1f

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/4 v14, 0x5

    const/4 v15, 0x6

    const/16 v16, 0x7

    if-eq v9, v13, :cond_6

    if-eq v9, v12, :cond_5

    if-eq v9, v10, :cond_4

    aget-byte v3, v2, v14

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    or-int/2addr v3, v4

    aget-byte v4, v2, v16

    goto :goto_2

    :cond_4
    aget-byte v17, v2, v15

    and-int/lit8 v4, v17, 0x3

    shl-int/lit8 v4, v4, 0xc

    aget-byte v11, v2, v16

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v8

    or-int/2addr v4, v11

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3c

    shr-int/2addr v3, v6

    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    aget-byte v3, v2, v16

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    or-int/2addr v3, v4

    const/16 v4, 0x9

    aget-byte v4, v2, v4

    and-int/lit8 v4, v4, 0x3c

    shr-int/2addr v4, v6

    or-int/2addr v3, v4

    :goto_1
    add-int/2addr v3, v7

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    aget-byte v3, v2, v8

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v2, v16

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    or-int/2addr v3, v4

    aget-byte v4, v2, v15

    :goto_2
    and-int/lit16 v4, v4, 0xf0

    shr-int/2addr v4, v8

    or-int/2addr v3, v4

    add-int/2addr v3, v7

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_7

    mul-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0xe

    :cond_7
    iput v3, v0, Lr4/j54;->j:I

    if-eq v9, v13, :cond_a

    if-eq v9, v12, :cond_9

    if-eq v9, v10, :cond_8

    aget-byte v3, v2, v8

    and-int/2addr v3, v7

    shl-int/2addr v3, v15

    aget-byte v2, v2, v14

    goto :goto_5

    :cond_8
    aget-byte v3, v2, v14

    and-int/lit8 v3, v3, 0x7

    shl-int/2addr v3, v8

    aget-byte v2, v2, v15

    goto :goto_4

    :cond_9
    aget-byte v3, v2, v8

    and-int/lit8 v3, v3, 0x7

    shl-int/2addr v3, v8

    aget-byte v2, v2, v16

    :goto_4
    and-int/lit8 v2, v2, 0x3c

    goto :goto_6

    :cond_a
    aget-byte v3, v2, v14

    and-int/2addr v3, v7

    shl-int/2addr v3, v15

    aget-byte v2, v2, v8

    :goto_5
    and-int/lit16 v2, v2, 0xfc

    :goto_6
    shr-int/2addr v2, v6

    or-int/2addr v2, v3

    add-int/2addr v2, v7

    mul-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    const-wide/32 v7, 0xf4240

    mul-long v2, v2, v7

    iget-object v4, v0, Lr4/j54;->i:Lr4/e5;

    iget v4, v4, Lr4/e5;->z:I

    int-to-long v7, v4

    div-long/2addr v2, v7

    long-to-int v3, v2

    int-to-long v2, v3

    iput-wide v2, v0, Lr4/j54;->h:J

    iget-object v2, v0, Lr4/j54;->a:Lr4/xb;

    invoke-virtual {v2, v5}, Lr4/xb;->p(I)V

    iget-object v2, v0, Lr4/j54;->d:Lr4/d14;

    iget-object v3, v0, Lr4/j54;->a:Lr4/xb;

    const/16 v4, 0x12

    invoke-static {v2, v3, v4}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iput v6, v0, Lr4/j54;->e:I

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lr4/xb;->l()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v0, Lr4/j54;->g:I

    shl-int/2addr v2, v3

    iput v2, v0, Lr4/j54;->g:I

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->v()I

    move-result v9

    or-int/2addr v2, v9

    iput v2, v0, Lr4/j54;->g:I

    sget-object v9, Lr4/yz3;->a:[I

    const v9, 0x7ffe8001

    if-eq v2, v9, :cond_c

    const v9, -0x180fe80

    if-eq v2, v9, :cond_c

    const v9, 0x1fffe800

    if-eq v2, v9, :cond_c

    const v9, -0xe0ff18

    if-ne v2, v9, :cond_b

    :cond_c
    iget-object v2, v0, Lr4/j54;->a:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    iget v3, v0, Lr4/j54;->g:I

    shr-int/lit8 v9, v3, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v5

    shr-int/lit8 v9, v3, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v7

    shr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    iput v8, v0, Lr4/j54;->f:I

    iput v5, v0, Lr4/j54;->g:I

    iput v7, v0, Lr4/j54;->e:I

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lr4/j54;->k:J

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lr4/j54;->e:I

    iput v0, p0, Lr4/j54;->f:I

    iput v0, p0, Lr4/j54;->g:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/j54;->k:J

    return-void
.end method
