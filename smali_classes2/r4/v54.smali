.class public final Lr4/v54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m54;


# instance fields
.field public final a:Lr4/o64;

.field public final b:Lr4/b64;

.field public final c:Lr4/b64;

.field public final d:Lr4/b64;

.field public e:J

.field public final f:[Z

.field public g:Ljava/lang/String;

.field public h:Lr4/d14;

.field public i:Lr4/u54;

.field public j:Z

.field public k:J

.field public l:Z

.field public final m:Lr4/xb;


# direct methods
.method public constructor <init>(Lr4/o64;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/v54;->a:Lr4/o64;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lr4/v54;->f:[Z

    new-instance p1, Lr4/b64;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lr4/b64;-><init>(II)V

    iput-object p1, p0, Lr4/v54;->b:Lr4/b64;

    new-instance p1, Lr4/b64;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lr4/b64;-><init>(II)V

    iput-object p1, p0, Lr4/v54;->c:Lr4/b64;

    new-instance p1, Lr4/b64;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lr4/b64;-><init>(II)V

    iput-object p1, p0, Lr4/v54;->d:Lr4/b64;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/v54;->k:J

    new-instance p1, Lr4/xb;

    invoke-direct {p1}, Lr4/xb;-><init>()V

    iput-object p1, p0, Lr4/v54;->m:Lr4/xb;

    return-void
.end method


# virtual methods
.method public final a(Lr4/d04;Lr4/z64;)V
    .locals 3

    invoke-virtual {p2}, Lr4/z64;->a()V

    invoke-virtual {p2}, Lr4/z64;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/v54;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lr4/z64;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v0

    iput-object v0, p0, Lr4/v54;->h:Lr4/d14;

    new-instance v1, Lr4/u54;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lr4/u54;-><init>(Lr4/d14;ZZ)V

    iput-object v1, p0, Lr4/v54;->i:Lr4/u54;

    iget-object v0, p0, Lr4/v54;->a:Lr4/o64;

    invoke-virtual {v0, p1, p2}, Lr4/o64;->a(Lr4/d04;Lr4/z64;)V

    return-void
.end method

.method public final b(Lr4/xb;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/v54;->h:Lr4/d14;

    invoke-static {v1}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lr4/lc;->a:I

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->o()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->m()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->q()[B

    move-result-object v3

    iget-wide v4, v0, Lr4/v54;->e:J

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->l()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lr4/v54;->e:J

    iget-object v4, v0, Lr4/v54;->h:Lr4/d14;

    invoke-virtual/range {p1 .. p1}, Lr4/xb;->l()I

    move-result v5

    move-object/from16 v6, p1

    invoke-static {v4, v6, v5}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    :goto_0
    iget-object v4, v0, Lr4/v54;->f:[Z

    invoke-static {v3, v1, v2, v4}, Lr4/nb;->d([BII[Z)I

    move-result v4

    if-eq v4, v2, :cond_9

    add-int/lit8 v5, v4, 0x3

    aget-byte v6, v3, v5

    and-int/lit8 v10, v6, 0x1f

    sub-int v6, v4, v1

    if-lez v6, :cond_0

    invoke-virtual {v0, v3, v1, v4}, Lr4/v54;->e([BII)V

    :cond_0
    sub-int v14, v2, v4

    iget-wide v7, v0, Lr4/v54;->e:J

    int-to-long v11, v14

    sub-long v17, v7, v11

    if-gez v6, :cond_1

    neg-int v4, v6

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-wide v6, v0, Lr4/v54;->k:J

    iget-boolean v8, v0, Lr4/v54;->j:Z

    if-eqz v8, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v8, v0, Lr4/v54;->b:Lr4/b64;

    invoke-virtual {v8, v4}, Lr4/b64;->e(I)Z

    iget-object v8, v0, Lr4/v54;->c:Lr4/b64;

    invoke-virtual {v8, v4}, Lr4/b64;->e(I)Z

    iget-boolean v8, v0, Lr4/v54;->j:Z

    const/4 v9, 0x3

    if-nez v8, :cond_3

    iget-object v8, v0, Lr4/v54;->b:Lr4/b64;

    invoke-virtual {v8}, Lr4/b64;->b()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lr4/v54;->c:Lr4/b64;

    invoke-virtual {v8}, Lr4/b64;->b()Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, Lr4/v54;->b:Lr4/b64;

    iget-object v12, v11, Lr4/b64;->d:[B

    iget v11, v11, Lr4/b64;->e:I

    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lr4/v54;->c:Lr4/b64;

    iget-object v12, v11, Lr4/b64;->d:[B

    iget v11, v11, Lr4/b64;->e:I

    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lr4/v54;->b:Lr4/b64;

    iget-object v12, v11, Lr4/b64;->d:[B

    iget v11, v11, Lr4/b64;->e:I

    invoke-static {v12, v9, v11}, Lr4/nb;->b([BII)Lr4/mb;

    move-result-object v11

    iget-object v12, v0, Lr4/v54;->c:Lr4/b64;

    iget-object v13, v12, Lr4/b64;->d:[B

    iget v12, v12, Lr4/b64;->e:I

    invoke-static {v13, v9, v12}, Lr4/nb;->c([BII)Lr4/lb;

    move-result-object v9

    iget v12, v11, Lr4/mb;->a:I

    iget v13, v11, Lr4/mb;->b:I

    iget v15, v11, Lr4/mb;->c:I

    invoke-static {v12, v13, v15}, Lr4/la;->a(III)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lr4/v54;->h:Lr4/d14;

    new-instance v15, Lr4/c5;

    invoke-direct {v15}, Lr4/c5;-><init>()V

    iget-object v1, v0, Lr4/v54;->g:Ljava/lang/String;

    invoke-virtual {v15, v1}, Lr4/c5;->d(Ljava/lang/String;)Lr4/c5;

    const-string v1, "video/avc"

    invoke-virtual {v15, v1}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v15, v12}, Lr4/c5;->k(Ljava/lang/String;)Lr4/c5;

    iget v1, v11, Lr4/mb;->e:I

    invoke-virtual {v15, v1}, Lr4/c5;->s(I)Lr4/c5;

    iget v1, v11, Lr4/mb;->f:I

    invoke-virtual {v15, v1}, Lr4/c5;->t(I)Lr4/c5;

    iget v1, v11, Lr4/mb;->g:F

    invoke-virtual {v15, v1}, Lr4/c5;->w(F)Lr4/c5;

    invoke-virtual {v15, v8}, Lr4/c5;->p(Ljava/util/List;)Lr4/c5;

    invoke-virtual {v15}, Lr4/c5;->I()Lr4/e5;

    move-result-object v1

    invoke-interface {v13, v1}, Lr4/d14;->f(Lr4/e5;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr4/v54;->j:Z

    iget-object v1, v0, Lr4/v54;->i:Lr4/u54;

    invoke-virtual {v1, v11}, Lr4/u54;->a(Lr4/mb;)V

    iget-object v1, v0, Lr4/v54;->i:Lr4/u54;

    invoke-virtual {v1, v9}, Lr4/u54;->b(Lr4/lb;)V

    iget-object v1, v0, Lr4/v54;->b:Lr4/b64;

    invoke-virtual {v1}, Lr4/b64;->a()V

    iget-object v1, v0, Lr4/v54;->c:Lr4/b64;

    invoke-virtual {v1}, Lr4/b64;->a()V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lr4/v54;->b:Lr4/b64;

    invoke-virtual {v1}, Lr4/b64;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lr4/v54;->b:Lr4/b64;

    iget-object v8, v1, Lr4/b64;->d:[B

    iget v1, v1, Lr4/b64;->e:I

    invoke-static {v8, v9, v1}, Lr4/nb;->b([BII)Lr4/mb;

    move-result-object v1

    iget-object v8, v0, Lr4/v54;->i:Lr4/u54;

    invoke-virtual {v8, v1}, Lr4/u54;->a(Lr4/mb;)V

    iget-object v1, v0, Lr4/v54;->b:Lr4/b64;

    invoke-virtual {v1}, Lr4/b64;->a()V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lr4/v54;->c:Lr4/b64;

    invoke-virtual {v1}, Lr4/b64;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lr4/v54;->c:Lr4/b64;

    iget-object v8, v1, Lr4/b64;->d:[B

    iget v1, v1, Lr4/b64;->e:I

    invoke-static {v8, v9, v1}, Lr4/nb;->c([BII)Lr4/lb;

    move-result-object v1

    iget-object v8, v0, Lr4/v54;->i:Lr4/u54;

    invoke-virtual {v8, v1}, Lr4/u54;->b(Lr4/lb;)V

    iget-object v1, v0, Lr4/v54;->c:Lr4/b64;

    invoke-virtual {v1}, Lr4/b64;->a()V

    :cond_5
    :goto_2
    iget-object v1, v0, Lr4/v54;->d:Lr4/b64;

    invoke-virtual {v1, v4}, Lr4/b64;->e(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lr4/v54;->d:Lr4/b64;

    iget-object v4, v1, Lr4/b64;->d:[B

    iget v1, v1, Lr4/b64;->e:I

    invoke-static {v4, v1}, Lr4/nb;->a([BI)I

    move-result v1

    iget-object v4, v0, Lr4/v54;->m:Lr4/xb;

    iget-object v8, v0, Lr4/v54;->d:Lr4/b64;

    iget-object v8, v8, Lr4/b64;->d:[B

    invoke-virtual {v4, v8, v1}, Lr4/xb;->j([BI)V

    iget-object v1, v0, Lr4/v54;->m:Lr4/xb;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lr4/xb;->p(I)V

    iget-object v1, v0, Lr4/v54;->a:Lr4/o64;

    iget-object v4, v0, Lr4/v54;->m:Lr4/xb;

    invoke-virtual {v1, v6, v7, v4}, Lr4/o64;->b(JLr4/xb;)V

    :cond_6
    iget-object v11, v0, Lr4/v54;->i:Lr4/u54;

    iget-boolean v15, v0, Lr4/v54;->j:Z

    iget-boolean v1, v0, Lr4/v54;->l:Z

    move-wide/from16 v12, v17

    move/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lr4/u54;->e(JIZZ)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, v0, Lr4/v54;->l:Z

    :cond_7
    iget-wide v11, v0, Lr4/v54;->k:J

    iget-boolean v1, v0, Lr4/v54;->j:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lr4/v54;->b:Lr4/b64;

    invoke-virtual {v1, v10}, Lr4/b64;->c(I)V

    iget-object v1, v0, Lr4/v54;->c:Lr4/b64;

    invoke-virtual {v1, v10}, Lr4/b64;->c(I)V

    :cond_8
    iget-object v1, v0, Lr4/v54;->d:Lr4/b64;

    invoke-virtual {v1, v10}, Lr4/b64;->c(I)V

    iget-object v7, v0, Lr4/v54;->i:Lr4/u54;

    move-wide/from16 v8, v17

    invoke-virtual/range {v7 .. v12}, Lr4/u54;->d(JIJ)V

    move v1, v5

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0, v3, v1, v2}, Lr4/v54;->e([BII)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(JI)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lr4/v54;->k:J

    :cond_0
    iget-boolean p1, p0, Lr4/v54;->l:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lr4/v54;->l:Z

    return-void
.end method

.method public final e([BII)V
    .locals 1

    iget-boolean v0, p0, Lr4/v54;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/v54;->b:Lr4/b64;

    invoke-virtual {v0, p1, p2, p3}, Lr4/b64;->d([BII)V

    iget-object v0, p0, Lr4/v54;->c:Lr4/b64;

    invoke-virtual {v0, p1, p2, p3}, Lr4/b64;->d([BII)V

    :cond_0
    iget-object v0, p0, Lr4/v54;->d:Lr4/b64;

    invoke-virtual {v0, p1, p2, p3}, Lr4/b64;->d([BII)V

    return-void
.end method

.method public final zza()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr4/v54;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/v54;->l:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/v54;->k:J

    iget-object v0, p0, Lr4/v54;->f:[Z

    invoke-static {v0}, Lr4/nb;->e([Z)V

    iget-object v0, p0, Lr4/v54;->b:Lr4/b64;

    invoke-virtual {v0}, Lr4/b64;->a()V

    iget-object v0, p0, Lr4/v54;->c:Lr4/b64;

    invoke-virtual {v0}, Lr4/b64;->a()V

    iget-object v0, p0, Lr4/v54;->d:Lr4/b64;

    invoke-virtual {v0}, Lr4/b64;->a()V

    iget-object v0, p0, Lr4/v54;->i:Lr4/u54;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/u54;->c()V

    :cond_0
    return-void
.end method
