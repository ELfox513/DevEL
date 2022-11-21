.class public final Lr4/r54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m54;


# static fields
.field public static final l:[F


# instance fields
.field public final a:Lr4/c74;

.field public final b:Lr4/xb;

.field public final c:[Z

.field public final d:Lr4/p54;

.field public final e:Lr4/b64;

.field public f:Lr4/q54;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Lr4/d14;

.field public j:Z

.field public k:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lr4/r54;->l:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lr4/c74;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/r54;->a:Lr4/c74;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lr4/r54;->c:[Z

    new-instance p1, Lr4/p54;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Lr4/p54;-><init>(I)V

    iput-object p1, p0, Lr4/r54;->d:Lr4/p54;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lr4/r54;->k:J

    new-instance p1, Lr4/b64;

    const/16 v1, 0xb2

    invoke-direct {p1, v1, v0}, Lr4/b64;-><init>(II)V

    iput-object p1, p0, Lr4/r54;->e:Lr4/b64;

    new-instance p1, Lr4/xb;

    invoke-direct {p1}, Lr4/xb;-><init>()V

    iput-object p1, p0, Lr4/r54;->b:Lr4/xb;

    return-void
.end method


# virtual methods
.method public final a(Lr4/d04;Lr4/z64;)V
    .locals 2

    invoke-virtual {p2}, Lr4/z64;->a()V

    invoke-virtual {p2}, Lr4/z64;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/r54;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lr4/z64;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v0

    iput-object v0, p0, Lr4/r54;->i:Lr4/d14;

    new-instance v1, Lr4/q54;

    invoke-direct {v1, v0}, Lr4/q54;-><init>(Lr4/d14;)V

    iput-object v1, p0, Lr4/r54;->f:Lr4/q54;

    iget-object v0, p0, Lr4/r54;->a:Lr4/c74;

    invoke-virtual {v0, p1, p2}, Lr4/c74;->a(Lr4/d04;Lr4/z64;)V

    return-void
.end method

.method public final b(Lr4/xb;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/r54;->f:Lr4/q54;

    invoke-static {v1}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lr4/r54;->i:Lr4/d14;

    invoke-static {v1}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->o()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->m()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->q()[B

    move-result-object v3

    iget-wide v4, v0, Lr4/r54;->g:J

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->l()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lr4/r54;->g:J

    iget-object v4, v0, Lr4/r54;->i:Lr4/d14;

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->l()I

    move-result v5

    move-object/from16 v6, p1

    invoke-static {v4, v6, v5}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    :goto_0
    iget-object v4, v0, Lr4/r54;->c:[Z

    invoke-static {v3, v1, v2, v4}, Lr4/nb;->d([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-boolean v4, v0, Lr4/r54;->j:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lr4/r54;->d:Lr4/p54;

    invoke-virtual {v4, v3, v1, v2}, Lr4/p54;->c([BII)V

    :cond_0
    iget-object v4, v0, Lr4/r54;->f:Lr4/q54;

    invoke-virtual {v4, v3, v1, v2}, Lr4/q54;->c([BII)V

    iget-object v4, v0, Lr4/r54;->e:Lr4/b64;

    invoke-virtual {v4, v3, v1, v2}, Lr4/b64;->d([BII)V

    return-void

    :cond_1
    add-int/lit8 v5, v4, 0x3

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->q()[B

    move-result-object v7

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lr4/r54;->j:Z

    if-nez v9, :cond_d

    if-lez v8, :cond_2

    iget-object v9, v0, Lr4/r54;->d:Lr4/p54;

    invoke-virtual {v9, v3, v1, v4}, Lr4/p54;->c([BII)V

    :cond_2
    if-gez v8, :cond_3

    neg-int v9, v8

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lr4/r54;->d:Lr4/p54;

    invoke-virtual {v12, v7, v9}, Lr4/p54;->b(II)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v0, Lr4/r54;->i:Lr4/d14;

    iget-object v12, v0, Lr4/r54;->d:Lr4/p54;

    iget v13, v12, Lr4/p54;->d:I

    iget-object v14, v0, Lr4/r54;->h:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v12, Lr4/p54;->e:[B

    iget v12, v12, Lr4/p54;->c:I

    invoke-static {v15, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v15, Lr4/wb;

    array-length v10, v12

    invoke-direct {v15, v12, v10}, Lr4/wb;-><init>([BI)V

    invoke-virtual {v15, v13}, Lr4/wb;->k(I)V

    const/4 v10, 0x4

    invoke-virtual {v15, v10}, Lr4/wb;->k(I)V

    invoke-virtual {v15}, Lr4/wb;->e()V

    const/16 v13, 0x8

    invoke-virtual {v15, v13}, Lr4/wb;->f(I)V

    invoke-virtual {v15}, Lr4/wb;->g()Z

    move-result v16

    const/4 v11, 0x3

    if-eqz v16, :cond_4

    invoke-virtual {v15, v10}, Lr4/wb;->f(I)V

    invoke-virtual {v15, v11}, Lr4/wb;->f(I)V

    :cond_4
    invoke-virtual {v15, v10}, Lr4/wb;->h(I)I

    move-result v10

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v11, "Invalid aspect ratio"

    const-string v13, "H263Reader"

    move/from16 v17, v5

    const/16 v5, 0xf

    if-ne v10, v5, :cond_6

    const/16 v5, 0x8

    invoke-virtual {v15, v5}, Lr4/wb;->h(I)I

    move-result v10

    invoke-virtual {v15, v5}, Lr4/wb;->h(I)I

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    int-to-float v10, v10

    int-to-float v5, v5

    div-float v16, v10, v5

    goto :goto_2

    :cond_6
    const/4 v5, 0x7

    if-ge v10, v5, :cond_7

    sget-object v5, Lr4/r54;->l:[F

    aget v16, v5, v10

    :goto_2
    move/from16 v5, v16

    goto :goto_4

    :cond_7
    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v15}, Lr4/wb;->g()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_8

    invoke-virtual {v15, v11}, Lr4/wb;->f(I)V

    const/4 v10, 0x1

    invoke-virtual {v15, v10}, Lr4/wb;->f(I)V

    invoke-virtual {v15}, Lr4/wb;->g()Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0xf

    invoke-virtual {v15, v10}, Lr4/wb;->f(I)V

    invoke-virtual {v15}, Lr4/wb;->e()V

    invoke-virtual {v15, v10}, Lr4/wb;->f(I)V

    invoke-virtual {v15}, Lr4/wb;->e()V

    invoke-virtual {v15, v10}, Lr4/wb;->f(I)V

    invoke-virtual {v15}, Lr4/wb;->e()V

    const/4 v11, 0x3

    invoke-virtual {v15, v11}, Lr4/wb;->f(I)V

    const/16 v11, 0xb

    invoke-virtual {v15, v11}, Lr4/wb;->f(I)V

    invoke-virtual {v15}, Lr4/wb;->e()V

    invoke-virtual {v15, v10}, Lr4/wb;->f(I)V

    invoke-virtual {v15}, Lr4/wb;->e()V

    :cond_8
    const/4 v10, 0x2

    invoke-virtual {v15, v10}, Lr4/wb;->h(I)I

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "Unhandled video object layer shape"

    invoke-static {v13, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v15}, Lr4/wb;->e()V

    const/16 v10, 0x10

    invoke-virtual {v15, v10}, Lr4/wb;->h(I)I

    move-result v10

    invoke-virtual {v15}, Lr4/wb;->e()V

    invoke-virtual {v15}, Lr4/wb;->g()Z

    move-result v11

    if-eqz v11, :cond_c

    if-nez v10, :cond_a

    const-string v10, "Invalid vop_increment_time_resolution"

    invoke-static {v13, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    :goto_5
    if-lez v10, :cond_b

    add-int/lit8 v11, v11, 0x1

    shr-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v15, v11}, Lr4/wb;->f(I)V

    :cond_c
    :goto_6
    invoke-virtual {v15}, Lr4/wb;->e()V

    const/16 v10, 0xd

    invoke-virtual {v15, v10}, Lr4/wb;->h(I)I

    move-result v11

    invoke-virtual {v15}, Lr4/wb;->e()V

    invoke-virtual {v15, v10}, Lr4/wb;->h(I)I

    move-result v10

    invoke-virtual {v15}, Lr4/wb;->e()V

    invoke-virtual {v15}, Lr4/wb;->e()V

    new-instance v13, Lr4/c5;

    invoke-direct {v13}, Lr4/c5;-><init>()V

    invoke-virtual {v13, v14}, Lr4/c5;->d(Ljava/lang/String;)Lr4/c5;

    const-string v14, "video/mp4v-es"

    invoke-virtual {v13, v14}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v13, v11}, Lr4/c5;->s(I)Lr4/c5;

    invoke-virtual {v13, v10}, Lr4/c5;->t(I)Lr4/c5;

    invoke-virtual {v13, v5}, Lr4/c5;->w(F)Lr4/c5;

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v13, v5}, Lr4/c5;->p(Ljava/util/List;)Lr4/c5;

    invoke-virtual {v13}, Lr4/c5;->I()Lr4/e5;

    move-result-object v5

    invoke-interface {v9, v5}, Lr4/d14;->f(Lr4/e5;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Lr4/r54;->j:Z

    goto :goto_7

    :cond_d
    move/from16 v17, v5

    :goto_7
    iget-object v5, v0, Lr4/r54;->f:Lr4/q54;

    invoke-virtual {v5, v3, v1, v4}, Lr4/q54;->c([BII)V

    iget-object v5, v0, Lr4/r54;->e:Lr4/b64;

    if-lez v8, :cond_e

    invoke-virtual {v5, v3, v1, v4}, Lr4/b64;->d([BII)V

    const/4 v10, 0x0

    goto :goto_8

    :cond_e
    neg-int v10, v8

    :goto_8
    iget-object v1, v0, Lr4/r54;->e:Lr4/b64;

    invoke-virtual {v1, v10}, Lr4/b64;->e(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lr4/r54;->e:Lr4/b64;

    iget-object v5, v1, Lr4/b64;->d:[B

    iget v1, v1, Lr4/b64;->e:I

    invoke-static {v5, v1}, Lr4/nb;->a([BI)I

    move-result v1

    iget-object v5, v0, Lr4/r54;->b:Lr4/xb;

    sget v8, Lr4/lc;->a:I

    iget-object v8, v0, Lr4/r54;->e:Lr4/b64;

    iget-object v8, v8, Lr4/b64;->d:[B

    invoke-virtual {v5, v8, v1}, Lr4/xb;->j([BI)V

    iget-object v1, v0, Lr4/r54;->a:Lr4/c74;

    iget-wide v8, v0, Lr4/r54;->k:J

    iget-object v5, v0, Lr4/r54;->b:Lr4/xb;

    invoke-virtual {v1, v8, v9, v5}, Lr4/c74;->b(JLr4/xb;)V

    :cond_f
    const/16 v1, 0xb2

    if-ne v7, v1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->q()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x2

    aget-byte v5, v5, v7

    const/4 v7, 0x1

    if-ne v5, v7, :cond_10

    iget-object v5, v0, Lr4/r54;->e:Lr4/b64;

    invoke-virtual {v5, v1}, Lr4/b64;->c(I)V

    :cond_10
    const/16 v7, 0xb2

    :cond_11
    sub-int v1, v2, v4

    iget-wide v4, v0, Lr4/r54;->g:J

    iget-object v8, v0, Lr4/r54;->f:Lr4/q54;

    int-to-long v9, v1

    sub-long/2addr v4, v9

    iget-boolean v9, v0, Lr4/r54;->j:Z

    invoke-virtual {v8, v4, v5, v1, v9}, Lr4/q54;->d(JIZ)V

    iget-object v1, v0, Lr4/r54;->f:Lr4/q54;

    iget-wide v4, v0, Lr4/r54;->k:J

    invoke-virtual {v1, v7, v4, v5}, Lr4/q54;->b(IJ)V

    move/from16 v1, v17

    goto/16 :goto_0
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

    iput-wide p1, p0, Lr4/r54;->k:J

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 2

    iget-object v0, p0, Lr4/r54;->c:[Z

    invoke-static {v0}, Lr4/nb;->e([Z)V

    iget-object v0, p0, Lr4/r54;->d:Lr4/p54;

    invoke-virtual {v0}, Lr4/p54;->a()V

    iget-object v0, p0, Lr4/r54;->f:Lr4/q54;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/q54;->a()V

    :cond_0
    iget-object v0, p0, Lr4/r54;->e:Lr4/b64;

    invoke-virtual {v0}, Lr4/b64;->a()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr4/r54;->g:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/r54;->k:J

    return-void
.end method
