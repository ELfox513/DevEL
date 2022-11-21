.class public final Lr4/h54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m54;


# static fields
.field public static final v:[B


# instance fields
.field public final a:Z

.field public final b:Lr4/wb;

.field public final c:Lr4/xb;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lr4/d14;

.field public g:Lr4/d14;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:Lr4/d14;

.field public u:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lr4/h54;->v:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/wb;

    const/4 v1, 0x7

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lr4/wb;-><init>([BI)V

    iput-object v0, p0, Lr4/h54;->b:Lr4/wb;

    new-instance v0, Lr4/xb;

    sget-object v1, Lr4/h54;->v:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lr4/xb;-><init>([B)V

    iput-object v0, p0, Lr4/h54;->c:Lr4/xb;

    invoke-virtual {p0}, Lr4/h54;->h()V

    const/4 v0, -0x1

    iput v0, p0, Lr4/h54;->m:I

    iput v0, p0, Lr4/h54;->n:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/h54;->q:J

    iput-wide v0, p0, Lr4/h54;->s:J

    iput-boolean p1, p0, Lr4/h54;->a:Z

    iput-object p2, p0, Lr4/h54;->d:Ljava/lang/String;

    return-void
.end method

.method public static e(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final k(BB)Z
    .locals 0

    and-int/lit16 p0, p1, 0xff

    const p1, 0xff00

    or-int/2addr p0, p1

    invoke-static {p0}, Lr4/h54;->e(I)Z

    move-result p0

    return p0
.end method

.method public static final l(Lr4/xb;[BI)Z
    .locals 2

    invoke-virtual {p0}, Lr4/xb;->l()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lr4/xb;->u([BII)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lr4/d04;Lr4/z64;)V
    .locals 2

    invoke-virtual {p2}, Lr4/z64;->a()V

    invoke-virtual {p2}, Lr4/z64;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/h54;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lr4/z64;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v0

    iput-object v0, p0, Lr4/h54;->f:Lr4/d14;

    iput-object v0, p0, Lr4/h54;->t:Lr4/d14;

    iget-boolean v0, p0, Lr4/h54;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lr4/z64;->a()V

    invoke-virtual {p2}, Lr4/z64;->b()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object p1

    iput-object p1, p0, Lr4/h54;->g:Lr4/d14;

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    invoke-virtual {p2}, Lr4/z64;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lr4/c5;->d(Ljava/lang/String;)Lr4/c5;

    const-string p2, "application/id3"

    invoke-virtual {v0, p2}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object p2

    invoke-interface {p1, p2}, Lr4/d14;->f(Lr4/e5;)V

    return-void

    :cond_0
    new-instance p1, Lr4/zz3;

    invoke-direct {p1}, Lr4/zz3;-><init>()V

    iput-object p1, p0, Lr4/h54;->g:Lr4/d14;

    return-void
.end method

.method public final b(Lr4/xb;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lr4/h54;->f:Lr4/d14;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lr4/lc;->a:I

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lr4/xb;->l()I

    move-result v0

    if-lez v0, :cond_1b

    iget v0, v6, Lr4/h54;->h:I

    const/16 v1, 0xd

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v10, :cond_8

    const/16 v5, 0xa

    if-eq v0, v9, :cond_7

    if-eq v0, v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->l()I

    move-result v0

    iget v1, v6, Lr4/h54;->r:I

    iget v2, v6, Lr4/h54;->i:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v6, Lr4/h54;->t:Lr4/d14;

    invoke-interface {v1, v7, v0}, Lr4/d14;->a(Lr4/xb;I)V

    iget v1, v6, Lr4/h54;->i:I

    add-int/2addr v1, v0

    iput v1, v6, Lr4/h54;->i:I

    iget v12, v6, Lr4/h54;->r:I

    if-ne v1, v12, :cond_0

    iget-wide v9, v6, Lr4/h54;->s:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v9, v0

    if-eqz v2, :cond_1

    iget-object v8, v6, Lr4/h54;->t:Lr4/d14;

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lr4/d14;->e(JIIILr4/c14;)V

    iget-wide v0, v6, Lr4/h54;->s:J

    iget-wide v2, v6, Lr4/h54;->u:J

    add-long/2addr v0, v2

    iput-wide v0, v6, Lr4/h54;->s:J

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lr4/h54;->h()V

    goto :goto_0

    :cond_2
    iget-boolean v0, v6, Lr4/h54;->k:Z

    const/4 v11, 0x5

    if-eq v10, v0, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const/4 v0, 0x7

    :goto_1
    iget-object v12, v6, Lr4/h54;->b:Lr4/wb;

    iget-object v12, v12, Lr4/wb;->a:[B

    invoke-virtual {v6, v7, v12, v0}, Lr4/h54;->g(Lr4/xb;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v0, v8}, Lr4/wb;->d(I)V

    iget-boolean v0, v6, Lr4/h54;->p:Z

    if-nez v0, :cond_5

    iget-object v0, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v0, v9}, Lr4/wb;->h(I)I

    move-result v0

    add-int/2addr v0, v10

    if-eq v0, v9, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v12, 0x3d

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Detected audio object type: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AdtsReader"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v0, v11}, Lr4/wb;->f(I)V

    iget-object v0, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v0, v4}, Lr4/wb;->h(I)I

    move-result v0

    iget v5, v6, Lr4/h54;->n:I

    new-array v9, v9, [B

    shr-int/lit8 v11, v5, 0x1

    and-int/2addr v11, v2

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v9, v8

    shl-int/lit8 v2, v5, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x78

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v9, v10

    invoke-static {v9}, Lr4/cz3;->a([B)Lr4/az3;

    move-result-object v0

    new-instance v2, Lr4/c5;

    invoke-direct {v2}, Lr4/c5;-><init>()V

    iget-object v4, v6, Lr4/h54;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lr4/c5;->d(Ljava/lang/String;)Lr4/c5;

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v2, v4}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    iget-object v4, v0, Lr4/az3;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lr4/c5;->k(Ljava/lang/String;)Lr4/c5;

    iget v4, v0, Lr4/az3;->b:I

    invoke-virtual {v2, v4}, Lr4/c5;->B(I)Lr4/c5;

    iget v0, v0, Lr4/az3;->a:I

    invoke-virtual {v2, v0}, Lr4/c5;->C(I)Lr4/c5;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lr4/c5;->p(Ljava/util/List;)Lr4/c5;

    iget-object v0, v6, Lr4/h54;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lr4/c5;->g(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v2}, Lr4/c5;->I()Lr4/e5;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    iget v2, v0, Lr4/e5;->z:I

    int-to-long v8, v2

    div-long/2addr v4, v8

    iput-wide v4, v6, Lr4/h54;->q:J

    iget-object v2, v6, Lr4/h54;->f:Lr4/d14;

    invoke-interface {v2, v0}, Lr4/d14;->f(Lr4/e5;)V

    iput-boolean v10, v6, Lr4/h54;->p:Z

    goto :goto_2

    :cond_5
    iget-object v0, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v0, v5}, Lr4/wb;->f(I)V

    :goto_2
    iget-object v0, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v0, v3}, Lr4/wb;->f(I)V

    iget-object v0, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v0, v1}, Lr4/wb;->h(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    iget-boolean v1, v6, Lr4/h54;->k:Z

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, -0x2

    :cond_6
    move v5, v0

    iget-object v1, v6, Lr4/h54;->f:Lr4/d14;

    iget-wide v2, v6, Lr4/h54;->q:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lr4/h54;->i(Lr4/d14;JII)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, v6, Lr4/h54;->c:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    invoke-virtual {v6, v7, v0, v5}, Lr4/h54;->g(Lr4/xb;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lr4/h54;->g:Lr4/d14;

    iget-object v1, v6, Lr4/h54;->c:Lr4/xb;

    invoke-interface {v0, v1, v5}, Lr4/d14;->a(Lr4/xb;I)V

    iget-object v0, v6, Lr4/h54;->c:Lr4/xb;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lr4/xb;->p(I)V

    iget-object v1, v6, Lr4/h54;->g:Lr4/d14;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    iget-object v0, v6, Lr4/h54;->c:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->a()I

    move-result v0

    add-int/2addr v5, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lr4/h54;->i(Lr4/d14;JII)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lr4/xb;->l()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lr4/h54;->b:Lr4/wb;

    iget-object v0, v0, Lr4/wb;->a:[B

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->q()[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->o()I

    move-result v2

    aget-byte v1, v1, v2

    aput-byte v1, v0, v8

    iget-object v0, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v0, v9}, Lr4/wb;->d(I)V

    iget-object v0, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v0, v3}, Lr4/wb;->h(I)I

    move-result v0

    iget v1, v6, Lr4/h54;->n:I

    if-eq v1, v5, :cond_9

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lr4/h54;->f()V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, v6, Lr4/h54;->l:Z

    if-nez v1, :cond_a

    iput-boolean v10, v6, Lr4/h54;->l:Z

    iget v1, v6, Lr4/h54;->o:I

    iput v1, v6, Lr4/h54;->m:I

    iput v0, v6, Lr4/h54;->n:I

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lr4/h54;->j()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lr4/xb;->q()[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->o()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->m()I

    move-result v12

    :goto_3
    if-ge v11, v12, :cond_1a

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    iget v14, v6, Lr4/h54;->j:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_14

    int-to-byte v14, v11

    invoke-static {v5, v14}, Lr4/h54;->k(BB)Z

    move-result v14

    if-eqz v14, :cond_14

    iget-boolean v14, v6, Lr4/h54;->l:Z

    if-nez v14, :cond_11

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v7, v15}, Lr4/xb;->p(I)V

    iget-object v15, v6, Lr4/h54;->b:Lr4/wb;

    iget-object v15, v15, Lr4/wb;->a:[B

    invoke-static {v7, v15, v10}, Lr4/h54;->l(Lr4/xb;[BI)Z

    move-result v15

    if-nez v15, :cond_c

    goto/16 :goto_7

    :cond_c
    iget-object v15, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v15, v3}, Lr4/wb;->d(I)V

    iget-object v15, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v15, v10}, Lr4/wb;->h(I)I

    move-result v15

    iget v8, v6, Lr4/h54;->m:I

    if-eq v8, v5, :cond_d

    if-ne v15, v8, :cond_14

    :cond_d
    iget v8, v6, Lr4/h54;->n:I

    if-eq v8, v5, :cond_f

    iget-object v8, v6, Lr4/h54;->b:Lr4/wb;

    iget-object v8, v8, Lr4/wb;->a:[B

    invoke-static {v7, v8, v10}, Lr4/h54;->l(Lr4/xb;[BI)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_4

    :cond_e
    iget-object v8, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v8, v9}, Lr4/wb;->d(I)V

    iget-object v8, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v8, v3}, Lr4/wb;->h(I)I

    move-result v8

    iget v9, v6, Lr4/h54;->n:I

    if-ne v8, v9, :cond_14

    add-int/lit8 v8, v14, 0x2

    invoke-virtual {v7, v8}, Lr4/xb;->p(I)V

    :cond_f
    iget-object v8, v6, Lr4/h54;->b:Lr4/wb;

    iget-object v8, v8, Lr4/wb;->a:[B

    invoke-static {v7, v8, v3}, Lr4/h54;->l(Lr4/xb;[BI)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, v6, Lr4/h54;->b:Lr4/wb;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lr4/wb;->d(I)V

    iget-object v8, v6, Lr4/h54;->b:Lr4/wb;

    invoke-virtual {v8, v1}, Lr4/wb;->h(I)I

    move-result v8

    if-lt v8, v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->q()[B

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->m()I

    move-result v1

    add-int/2addr v14, v8

    if-ge v14, v1, :cond_11

    aget-byte v8, v9, v14

    if-ne v8, v5, :cond_10

    add-int/lit8 v14, v14, 0x1

    if-eq v14, v1, :cond_11

    aget-byte v1, v9, v14

    invoke-static {v5, v1}, Lr4/h54;->k(BB)Z

    move-result v1

    if-eqz v1, :cond_14

    aget-byte v1, v9, v14

    and-int/lit8 v1, v1, 0x8

    shr-int/2addr v1, v4

    if-ne v1, v15, :cond_14

    goto :goto_4

    :cond_10
    const/16 v15, 0x49

    if-ne v8, v15, :cond_14

    add-int/lit8 v8, v14, 0x1

    if-eq v8, v1, :cond_11

    aget-byte v8, v9, v8

    const/16 v15, 0x44

    if-ne v8, v15, :cond_14

    add-int/lit8 v14, v14, 0x2

    if-eq v14, v1, :cond_11

    aget-byte v1, v9, v14

    const/16 v8, 0x33

    if-ne v1, v8, :cond_14

    :cond_11
    :goto_4
    and-int/lit8 v0, v11, 0x8

    shr-int/2addr v0, v4

    iput v0, v6, Lr4/h54;->o:I

    and-int/lit8 v0, v11, 0x1

    xor-int/2addr v0, v10

    if-eq v10, v0, :cond_12

    const/4 v0, 0x0

    goto :goto_5

    :cond_12
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v6, Lr4/h54;->k:Z

    iget-boolean v0, v6, Lr4/h54;->l:Z

    if-nez v0, :cond_13

    iput v10, v6, Lr4/h54;->h:I

    const/4 v0, 0x0

    iput v0, v6, Lr4/h54;->i:I

    goto :goto_6

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lr4/h54;->j()V

    :goto_6
    invoke-virtual {v7, v13}, Lr4/xb;->p(I)V

    goto/16 :goto_0

    :cond_14
    :goto_7
    iget v1, v6, Lr4/h54;->j:I

    or-int v8, v1, v11

    const/16 v9, 0x149

    if-eq v8, v9, :cond_19

    const/16 v9, 0x1ff

    if-eq v8, v9, :cond_18

    const/16 v9, 0x344

    if-eq v8, v9, :cond_17

    const/16 v9, 0x433

    if-eq v8, v9, :cond_16

    const/16 v8, 0x100

    if-eq v1, v8, :cond_15

    iput v8, v6, Lr4/h54;->j:I

    add-int/lit8 v11, v13, -0x1

    const/16 v1, 0xd

    const/4 v8, 0x0

    goto :goto_a

    :cond_15
    const/4 v1, 0x2

    const/4 v8, 0x0

    goto :goto_9

    :cond_16
    const/4 v1, 0x2

    iput v1, v6, Lr4/h54;->h:I

    iput v4, v6, Lr4/h54;->i:I

    const/4 v8, 0x0

    iput v8, v6, Lr4/h54;->r:I

    iget-object v0, v6, Lr4/h54;->c:Lr4/xb;

    invoke-virtual {v0, v8}, Lr4/xb;->p(I)V

    invoke-virtual {v7, v13}, Lr4/xb;->p(I)V

    goto/16 :goto_0

    :cond_17
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x400

    goto :goto_8

    :cond_18
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x200

    goto :goto_8

    :cond_19
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x300

    :goto_8
    iput v9, v6, Lr4/h54;->j:I

    :goto_9
    move v11, v13

    const/16 v1, 0xd

    :goto_a
    const/4 v9, 0x2

    goto/16 :goto_3

    :cond_1a
    invoke-virtual {v7, v11}, Lr4/xb;->p(I)V

    goto/16 :goto_0

    :cond_1b
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

    iput-wide p1, p0, Lr4/h54;->s:J

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/h54;->l:Z

    invoke-virtual {p0}, Lr4/h54;->h()V

    return-void
.end method

.method public final g(Lr4/xb;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v0

    iget v1, p0, Lr4/h54;->i:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lr4/h54;->i:I

    invoke-virtual {p1, p2, v1, v0}, Lr4/xb;->u([BII)V

    iget p1, p0, Lr4/h54;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lr4/h54;->i:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/h54;->h:I

    iput v0, p0, Lr4/h54;->i:I

    const/16 v0, 0x100

    iput v0, p0, Lr4/h54;->j:I

    return-void
.end method

.method public final i(Lr4/d14;JII)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lr4/h54;->h:I

    iput p4, p0, Lr4/h54;->i:I

    iput-object p1, p0, Lr4/h54;->t:Lr4/d14;

    iput-wide p2, p0, Lr4/h54;->u:J

    iput p5, p0, Lr4/h54;->r:I

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lr4/h54;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lr4/h54;->i:I

    return-void
.end method

.method public final zza()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/h54;->s:J

    invoke-virtual {p0}, Lr4/h54;->f()V

    return-void
.end method
