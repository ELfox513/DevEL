.class public final Lr4/gj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/yf;


# instance fields
.field public final a:Lr4/cj;

.field public final b:Lr4/bj;

.field public final c:Lr4/dl;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public e:Lr4/dj;

.field public f:Lr4/dj;

.field public g:Lr4/id;

.field public h:Lr4/id;

.field public i:J

.field public j:I

.field public k:Lr4/ej;

.field public final l:Lr4/jk;


# direct methods
.method public constructor <init>(Lr4/jk;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/gj;->l:Lr4/jk;

    new-instance p1, Lr4/cj;

    invoke-direct {p1}, Lr4/cj;-><init>()V

    iput-object p1, p0, Lr4/gj;->a:Lr4/cj;

    new-instance p1, Lr4/bj;

    invoke-direct {p1}, Lr4/bj;-><init>()V

    iput-object p1, p0, Lr4/gj;->b:Lr4/bj;

    new-instance p1, Lr4/dl;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lr4/dl;-><init>(I)V

    iput-object p1, p0, Lr4/gj;->c:Lr4/dl;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lr4/gj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 p1, 0x10000

    iput p1, p0, Lr4/gj;->j:I

    new-instance p2, Lr4/dj;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1, p1}, Lr4/dj;-><init>(JI)V

    iput-object p2, p0, Lr4/gj;->e:Lr4/dj;

    iput-object p2, p0, Lr4/gj;->f:Lr4/dj;

    return-void
.end method


# virtual methods
.method public final a(JIIILr4/xf;)V
    .locals 12

    move-object v1, p0

    invoke-virtual {p0}, Lr4/gj;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v2, v1, Lr4/gj;->i:J

    move/from16 v0, p4

    int-to-long v4, v0

    sub-long v8, v2, v4

    iget-object v4, v1, Lr4/gj;->a:Lr4/cj;

    move-wide v5, p1

    move v7, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Lr4/cj;->k(JIJILr4/xf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lr4/gj;->r()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lr4/gj;->r()V

    throw v0

    :cond_0
    iget-object v0, v1, Lr4/gj;->a:Lr4/cj;

    move-wide v2, p1

    invoke-virtual {v0, p1, p2}, Lr4/cj;->l(J)V

    return-void
.end method

.method public final b(Lr4/of;IZ)I
    .locals 2

    invoke-virtual {p0}, Lr4/gj;->q()Z

    move-result p3

    const/4 v0, -0x1

    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Lr4/of;->c(I)I

    move-result p1

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lr4/gj;->t(I)I

    move-result p2

    iget-object p3, p0, Lr4/gj;->f:Lr4/dj;

    iget-object p3, p3, Lr4/dj;->d:Lr4/ck;

    iget-object p3, p3, Lr4/ck;->a:[B

    iget v1, p0, Lr4/gj;->j:I

    invoke-virtual {p1, p3, v1, p2}, Lr4/of;->a([BII)I

    move-result p1

    if-eq p1, v0, :cond_2

    iget p2, p0, Lr4/gj;->j:I

    add-int/2addr p2, p1

    iput p2, p0, Lr4/gj;->j:I

    iget-wide p2, p0, Lr4/gj;->i:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lr4/gj;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lr4/gj;->r()V

    return p1

    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lr4/gj;->r()V

    throw p1
.end method

.method public final c(Lr4/dl;I)V
    .locals 5

    invoke-virtual {p0}, Lr4/gj;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Lr4/gj;->t(I)I

    move-result v0

    iget-object v1, p0, Lr4/gj;->f:Lr4/dj;

    iget-object v1, v1, Lr4/dj;->d:Lr4/ck;

    iget-object v1, v1, Lr4/ck;->a:[B

    iget v2, p0, Lr4/gj;->j:I

    invoke-virtual {p1, v1, v2, v0}, Lr4/dl;->k([BII)V

    iget v1, p0, Lr4/gj;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lr4/gj;->j:I

    iget-wide v1, p0, Lr4/gj;->i:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lr4/gj;->i:J

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr4/gj;->r()V

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lr4/dl;->j(I)V

    return-void
.end method

.method public final d(Lr4/id;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lr4/gj;->a:Lr4/cj;

    invoke-virtual {v1, v0}, Lr4/cj;->j(Lr4/id;)Z

    move-result v1

    iput-object p1, p0, Lr4/gj;->h:Lr4/id;

    iget-object p1, p0, Lr4/gj;->k:Lr4/ej;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Lr4/ej;->c(Lr4/id;)V

    :cond_1
    return-void
.end method

.method public final e(Z)V
    .locals 3

    iget-object v0, p0, Lr4/gj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v2, p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    invoke-virtual {p0}, Lr4/gj;->s()V

    iget-object v0, p0, Lr4/gj;->a:Lr4/cj;

    invoke-virtual {v0}, Lr4/cj;->b()V

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/gj;->g:Lr4/id;

    :cond_1
    return-void
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lr4/gj;->a:Lr4/cj;

    invoke-virtual {v0}, Lr4/cj;->c()I

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lr4/gj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr4/gj;->s()V

    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lr4/gj;->a:Lr4/cj;

    invoke-virtual {v0}, Lr4/cj;->d()Z

    move-result v0

    return v0
.end method

.method public final i()Lr4/id;
    .locals 1

    iget-object v0, p0, Lr4/gj;->a:Lr4/cj;

    invoke-virtual {v0}, Lr4/cj;->e()Lr4/id;

    move-result-object v0

    return-object v0
.end method

.method public final j()J
    .locals 2

    iget-object v0, p0, Lr4/gj;->a:Lr4/cj;

    invoke-virtual {v0}, Lr4/cj;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lr4/gj;->a:Lr4/cj;

    invoke-virtual {v0}, Lr4/cj;->h()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, Lr4/gj;->p(J)V

    :cond_0
    return-void
.end method

.method public final l(JZ)Z
    .locals 2

    iget-object v0, p0, Lr4/gj;->a:Lr4/cj;

    invoke-virtual {v0, p1, p2, p3}, Lr4/cj;->i(JZ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lr4/gj;->p(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final m(Lr4/jd;Lr4/hf;ZZJ)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    iget-object v1, v0, Lr4/gj;->a:Lr4/cj;

    iget-object v6, v0, Lr4/gj;->g:Lr4/id;

    iget-object v7, v0, Lr4/gj;->b:Lr4/bj;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lr4/cj;->g(Lr4/jd;Lr4/hf;ZZLr4/id;Lr4/bj;)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_e

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lr4/cf;->c()Z

    move-result v1

    if-nez v1, :cond_d

    iget-wide v3, v8, Lr4/hf;->d:J

    cmp-long v1, v3, p5

    if-gez v1, :cond_1

    const/high16 v1, -0x80000000

    invoke-virtual {v8, v1}, Lr4/cf;->f(I)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lr4/hf;->i()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lr4/gj;->b:Lr4/bj;

    iget-wide v3, v1, Lr4/bj;->b:J

    iget-object v5, v0, Lr4/gj;->c:Lr4/dl;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lr4/dl;->a(I)V

    iget-object v5, v0, Lr4/gj;->c:Lr4/dl;

    iget-object v5, v5, Lr4/dl;->a:[B

    invoke-virtual {v0, v3, v4, v5, v6}, Lr4/gj;->o(J[BI)V

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    iget-object v5, v0, Lr4/gj;->c:Lr4/dl;

    iget-object v5, v5, Lr4/dl;->a:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v9, v5, 0x80

    and-int/lit8 v5, v5, 0x7f

    iget-object v10, v8, Lr4/hf;->b:Lr4/ff;

    iget-object v11, v10, Lr4/ff;->a:[B

    if-nez v11, :cond_2

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lr4/ff;->a:[B

    :cond_2
    iget-object v10, v10, Lr4/ff;->a:[B

    invoke-virtual {v0, v3, v4, v10, v5}, Lr4/gj;->o(J[BI)V

    int-to-long v10, v5

    add-long/2addr v3, v10

    if-eqz v9, :cond_3

    iget-object v5, v0, Lr4/gj;->c:Lr4/dl;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lr4/dl;->a(I)V

    iget-object v5, v0, Lr4/gj;->c:Lr4/dl;

    iget-object v5, v5, Lr4/dl;->a:[B

    invoke-virtual {v0, v3, v4, v5, v6}, Lr4/gj;->o(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iget-object v5, v0, Lr4/gj;->c:Lr4/dl;

    invoke-virtual {v5}, Lr4/dl;->m()I

    move-result v6

    move v11, v6

    goto :goto_0

    :cond_3
    const/4 v11, 0x1

    :goto_0
    iget-object v5, v8, Lr4/hf;->b:Lr4/ff;

    iget-object v6, v5, Lr4/ff;->d:[I

    if-eqz v6, :cond_4

    array-length v10, v6

    if-ge v10, v11, :cond_5

    :cond_4
    new-array v6, v11, [I

    :cond_5
    move-object v12, v6

    iget-object v5, v5, Lr4/ff;->e:[I

    if-eqz v5, :cond_6

    array-length v6, v5

    if-ge v6, v11, :cond_7

    :cond_6
    new-array v5, v11, [I

    :cond_7
    move-object v13, v5

    if-eqz v9, :cond_8

    mul-int/lit8 v5, v11, 0x6

    iget-object v6, v0, Lr4/gj;->c:Lr4/dl;

    invoke-virtual {v6, v5}, Lr4/dl;->a(I)V

    iget-object v6, v0, Lr4/gj;->c:Lr4/dl;

    iget-object v6, v6, Lr4/dl;->a:[B

    invoke-virtual {v0, v3, v4, v6, v5}, Lr4/gj;->o(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, v0, Lr4/gj;->c:Lr4/dl;

    invoke-virtual {v5, v7}, Lr4/dl;->i(I)V

    :goto_1
    if-ge v7, v11, :cond_9

    iget-object v5, v0, Lr4/gj;->c:Lr4/dl;

    invoke-virtual {v5}, Lr4/dl;->m()I

    move-result v5

    aput v5, v12, v7

    iget-object v5, v0, Lr4/gj;->c:Lr4/dl;

    invoke-virtual {v5}, Lr4/dl;->u()I

    move-result v5

    aput v5, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    aput v7, v12, v7

    iget v5, v1, Lr4/bj;->a:I

    iget-wide v9, v1, Lr4/bj;->b:J

    sub-long v9, v3, v9

    long-to-int v6, v9

    sub-int/2addr v5, v6

    aput v5, v13, v7

    :cond_9
    iget-object v5, v1, Lr4/bj;->d:Lr4/xf;

    iget-object v10, v8, Lr4/hf;->b:Lr4/ff;

    iget-object v14, v5, Lr4/xf;->b:[B

    iget-object v15, v10, Lr4/ff;->a:[B

    const/16 v16, 0x1

    invoke-virtual/range {v10 .. v16}, Lr4/ff;->a(I[I[I[B[BI)V

    iget-wide v5, v1, Lr4/bj;->b:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    int-to-long v9, v4

    add-long/2addr v5, v9

    iput-wide v5, v1, Lr4/bj;->b:J

    iget v3, v1, Lr4/bj;->a:I

    sub-int/2addr v3, v4

    iput v3, v1, Lr4/bj;->a:I

    :cond_a
    iget-object v1, v0, Lr4/gj;->b:Lr4/bj;

    iget v1, v1, Lr4/bj;->a:I

    invoke-virtual {v8, v1}, Lr4/hf;->h(I)V

    iget-object v1, v0, Lr4/gj;->b:Lr4/bj;

    iget-wide v3, v1, Lr4/bj;->b:J

    iget-object v5, v8, Lr4/hf;->c:Ljava/nio/ByteBuffer;

    iget v1, v1, Lr4/bj;->a:I

    invoke-virtual {v0, v3, v4}, Lr4/gj;->p(J)V

    :cond_b
    :goto_2
    if-lez v1, :cond_c

    iget-object v6, v0, Lr4/gj;->e:Lr4/dj;

    iget-wide v6, v6, Lr4/dj;->a:J

    sub-long v6, v3, v6

    long-to-int v7, v6

    const/high16 v6, 0x10000

    sub-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v8, v0, Lr4/gj;->e:Lr4/dj;

    iget-object v8, v8, Lr4/dj;->d:Lr4/ck;

    iget-object v9, v8, Lr4/ck;->a:[B

    invoke-virtual {v5, v9, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v9, v6

    add-long/2addr v3, v9

    sub-int/2addr v1, v6

    iget-object v6, v0, Lr4/gj;->e:Lr4/dj;

    iget-wide v6, v6, Lr4/dj;->b:J

    cmp-long v9, v3, v6

    if-nez v9, :cond_b

    iget-object v6, v0, Lr4/gj;->l:Lr4/jk;

    invoke-virtual {v6, v8}, Lr4/jk;->d(Lr4/ck;)V

    iget-object v6, v0, Lr4/gj;->e:Lr4/dj;

    const/4 v7, 0x0

    iput-object v7, v6, Lr4/dj;->d:Lr4/ck;

    iget-object v6, v6, Lr4/dj;->e:Lr4/dj;

    iput-object v6, v0, Lr4/gj;->e:Lr4/dj;

    goto :goto_2

    :cond_c
    iget-object v1, v0, Lr4/gj;->b:Lr4/bj;

    iget-wide v3, v1, Lr4/bj;->c:J

    invoke-virtual {v0, v3, v4}, Lr4/gj;->p(J)V

    :cond_d
    return v2

    :cond_e
    move-object/from16 v1, p1

    iget-object v1, v1, Lr4/jd;->a:Lr4/id;

    iput-object v1, v0, Lr4/gj;->g:Lr4/id;

    return v2
.end method

.method public final n(Lr4/ej;)V
    .locals 0

    iput-object p1, p0, Lr4/gj;->k:Lr4/ej;

    return-void
.end method

.method public final o(J[BI)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lr4/gj;->p(J)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p4, :cond_1

    iget-object v1, p0, Lr4/gj;->e:Lr4/dj;

    iget-wide v1, v1, Lr4/dj;->a:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    sub-int v1, p4, v0

    const/high16 v3, 0x10000

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lr4/gj;->e:Lr4/dj;

    iget-object v3, v3, Lr4/dj;->d:Lr4/ck;

    iget-object v4, v3, Lr4/ck;->a:[B

    invoke-static {v4, v2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v1

    add-long/2addr p1, v4

    add-int/2addr v0, v1

    iget-object v1, p0, Lr4/gj;->e:Lr4/dj;

    iget-wide v1, v1, Lr4/dj;->b:J

    cmp-long v4, p1, v1

    if-nez v4, :cond_0

    iget-object v1, p0, Lr4/gj;->l:Lr4/jk;

    invoke-virtual {v1, v3}, Lr4/jk;->d(Lr4/ck;)V

    iget-object v1, p0, Lr4/gj;->e:Lr4/dj;

    const/4 v2, 0x0

    iput-object v2, v1, Lr4/dj;->d:Lr4/ck;

    iget-object v1, v1, Lr4/dj;->e:Lr4/dj;

    iput-object v1, p0, Lr4/gj;->e:Lr4/dj;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final p(J)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lr4/gj;->e:Lr4/dj;

    iget-wide v1, v0, Lr4/dj;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    iget-object v1, p0, Lr4/gj;->l:Lr4/jk;

    iget-object v0, v0, Lr4/dj;->d:Lr4/ck;

    invoke-virtual {v1, v0}, Lr4/jk;->d(Lr4/ck;)V

    iget-object v0, p0, Lr4/gj;->e:Lr4/dj;

    const/4 v1, 0x0

    iput-object v1, v0, Lr4/dj;->d:Lr4/ck;

    iget-object v0, v0, Lr4/dj;->e:Lr4/dj;

    iput-object v0, p0, Lr4/gj;->e:Lr4/dj;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q()Z
    .locals 3

    iget-object v0, p0, Lr4/gj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lr4/gj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr4/gj;->s()V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 8

    iget-object v0, p0, Lr4/gj;->a:Lr4/cj;

    invoke-virtual {v0}, Lr4/cj;->a()V

    iget-object v0, p0, Lr4/gj;->e:Lr4/dj;

    iget-boolean v1, v0, Lr4/dj;->c:Z

    const/high16 v2, 0x10000

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lr4/gj;->f:Lr4/dj;

    iget-boolean v3, v1, Lr4/dj;->c:Z

    iget-wide v4, v1, Lr4/dj;->a:J

    iget-wide v6, v0, Lr4/dj;->a:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    div-int/2addr v1, v2

    add-int/2addr v3, v1

    new-array v1, v3, [Lr4/ck;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, v0, Lr4/dj;->d:Lr4/ck;

    aput-object v5, v1, v4

    const/4 v5, 0x0

    iput-object v5, v0, Lr4/dj;->d:Lr4/ck;

    iget-object v0, v0, Lr4/dj;->e:Lr4/dj;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr4/gj;->l:Lr4/jk;

    invoke-virtual {v0, v1}, Lr4/jk;->e([Lr4/ck;)V

    :goto_1
    new-instance v0, Lr4/dj;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v2}, Lr4/dj;-><init>(JI)V

    iput-object v0, p0, Lr4/gj;->e:Lr4/dj;

    iput-object v0, p0, Lr4/gj;->f:Lr4/dj;

    iput-wide v3, p0, Lr4/gj;->i:J

    iput v2, p0, Lr4/gj;->j:I

    iget-object v0, p0, Lr4/gj;->l:Lr4/jk;

    invoke-virtual {v0}, Lr4/jk;->f()V

    return-void
.end method

.method public final t(I)I
    .locals 6

    iget v0, p0, Lr4/gj;->j:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lr4/gj;->j:I

    iget-object v0, p0, Lr4/gj;->f:Lr4/dj;

    iget-boolean v2, v0, Lr4/dj;->c:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lr4/dj;->e:Lr4/dj;

    iput-object v0, p0, Lr4/gj;->f:Lr4/dj;

    :cond_0
    iget-object v0, p0, Lr4/gj;->f:Lr4/dj;

    iget-object v2, p0, Lr4/gj;->l:Lr4/jk;

    invoke-virtual {v2}, Lr4/jk;->c()Lr4/ck;

    move-result-object v2

    new-instance v3, Lr4/dj;

    iget-object v4, p0, Lr4/gj;->f:Lr4/dj;

    iget-wide v4, v4, Lr4/dj;->b:J

    invoke-direct {v3, v4, v5, v1}, Lr4/dj;-><init>(JI)V

    iput-object v2, v0, Lr4/dj;->d:Lr4/ck;

    iput-object v3, v0, Lr4/dj;->e:Lr4/dj;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lr4/dj;->c:Z

    :cond_1
    iget v0, p0, Lr4/gj;->j:I

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
