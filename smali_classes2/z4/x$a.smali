.class public final Lz4/x$a;
.super Lz4/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final d:[B

.field public final e:I

.field public final f:I

.field public g:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lz4/x;-><init>(Lz4/y;)V

    if-eqz p1, :cond_1

    or-int/lit8 p2, p3, 0x0

    array-length v0, p1

    add-int/lit8 v1, p3, 0x0

    sub-int/2addr v0, v1

    or-int/2addr p2, v0

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    iput-object p1, p0, Lz4/x$a;->d:[B

    iput v0, p0, Lz4/x$a;->e:I

    iput v0, p0, Lz4/x$a;->g:I

    iput v1, p0, Lz4/x$a;->f:I

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final C0(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lz4/x;->D0(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lz4/x;->r0(J)V

    return-void
.end method

.method public final D0(I)V
    .locals 4

    invoke-static {}, Lz4/x;->Z()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lz4/g;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lz4/x;->X()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lz4/d3;->i([BJB)V

    return-void

    :cond_0
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lz4/d3;->i([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lz4/d3;->i([BJB)V

    return-void

    :cond_1
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lz4/d3;->i([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lz4/d3;->i([BJB)V

    return-void

    :cond_2
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lz4/d3;->i([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_3

    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lz4/d3;->i([BJB)V

    return-void

    :cond_3
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lz4/d3;->i([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lz4/d3;->i([BJB)V

    return-void

    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_5
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lz4/x$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lz4/x$a;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lz4/x$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lz4/x$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final F0([BII)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lz4/x$a;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lz4/x$a;->g:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lz4/x$b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lz4/x$a;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lz4/x$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lz4/x$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final J(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lz4/x;->D0(I)V

    return-void
.end method

.method public final L(ILz4/i;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lz4/x;->J(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lz4/x;->e0(II)V

    invoke-virtual {p0, v1, p2}, Lz4/x;->k(ILz4/i;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lz4/x;->J(II)V

    return-void
.end method

.method public final M(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz4/x;->J(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lz4/x;->T(B)V

    return-void
.end method

.method public final N(Lz4/r1;)V
    .locals 1

    invoke-interface {p1}, Lz4/r1;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lz4/x;->D0(I)V

    invoke-interface {p1, p0}, Lz4/r1;->b(Lz4/x;)V

    return-void
.end method

.method public final T(B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lz4/x$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lz4/x$a;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lz4/x$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lz4/x$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final U(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz4/x;->J(II)V

    invoke-virtual {p0, p2}, Lz4/x;->C0(I)V

    return-void
.end method

.method public final V(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lz4/x;->J(II)V

    invoke-virtual {p0, p2, p3}, Lz4/x;->v0(J)V

    return-void
.end method

.method public final X()I
    .locals 2

    iget v0, p0, Lz4/x$a;->f:I

    iget v1, p0, Lz4/x$a;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lz4/x$a;->F0([BII)V

    return-void
.end method

.method public final e0(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz4/x;->J(II)V

    invoke-virtual {p0, p2}, Lz4/x;->D0(I)V

    return-void
.end method

.method public final i(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz4/x;->J(II)V

    invoke-virtual {p0, p2, p3}, Lz4/x;->r0(J)V

    return-void
.end method

.method public final i0(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lz4/x;->J(II)V

    invoke-virtual {p0, p2}, Lz4/x;->p(I)V

    return-void
.end method

.method public final j(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lz4/x;->J(II)V

    invoke-virtual {p0, p2}, Lz4/x;->s0(Ljava/lang/String;)V

    return-void
.end method

.method public final k(ILz4/i;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lz4/x;->J(II)V

    invoke-virtual {p0, p2}, Lz4/x;->o(Lz4/i;)V

    return-void
.end method

.method public final l(ILz4/r1;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lz4/x;->J(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lz4/x;->e0(II)V

    invoke-virtual {p0, v1, v2}, Lz4/x;->J(II)V

    invoke-virtual {p0, p2}, Lz4/x;->N(Lz4/r1;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lz4/x;->J(II)V

    return-void
.end method

.method public final m(ILz4/r1;Lz4/f2;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lz4/x;->J(II)V

    move-object p1, p2

    check-cast p1, Lz4/c;

    invoke-virtual {p1}, Lz4/c;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p3, p1}, Lz4/f2;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lz4/c;->j(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lz4/x;->D0(I)V

    iget-object p1, p0, Lz4/x;->a:Lz4/z;

    invoke-interface {p3, p2, p1}, Lz4/f2;->d(Ljava/lang/Object;Lz4/r3;)V

    return-void
.end method

.method public final o(Lz4/i;)V
    .locals 1

    invoke-virtual {p1}, Lz4/i;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lz4/x;->D0(I)V

    invoke-virtual {p1, p0}, Lz4/i;->k(Lz4/h;)V

    return-void
.end method

.method public final p(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lz4/x$a;->g:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lz4/x$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lz4/x$a;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lz4/x$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lz4/x$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final r0(J)V
    .locals 9

    invoke-static {}, Lz4/x;->Z()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lz4/x;->X()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lz4/d3;->i([BJB)V

    return-void

    :cond_0
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v6, p0, Lz4/x$a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lz4/x$a;->g:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lz4/d3;->i([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/x$a;->g:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    :cond_2
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v6, p0, Lz4/x$a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lz4/x$a;->g:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lz4/x$b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lz4/x$a;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lz4/x$a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lz4/x$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public final s0(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lz4/x$a;->g:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lz4/x;->s(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lz4/x;->s(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Lz4/x$a;->g:I

    iget-object v3, p0, Lz4/x$a;->d:[B

    invoke-virtual {p0}, Lz4/x;->X()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lz4/f3;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lz4/x$a;->g:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lz4/x;->D0(I)V

    iput v1, p0, Lz4/x$a;->g:I

    return-void

    :cond_0
    invoke-static {p1}, Lz4/f3;->a(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lz4/x;->D0(I)V

    iget-object v1, p0, Lz4/x$a;->d:[B

    iget v2, p0, Lz4/x$a;->g:I

    invoke-virtual {p0}, Lz4/x;->X()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lz4/f3;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lz4/x$a;->g:I
    :try_end_0
    .catch Lz4/i3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lz4/x$b;

    invoke-direct {v0, p1}, Lz4/x$b;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    iput v0, p0, Lz4/x$a;->g:I

    invoke-virtual {p0, p1, v1}, Lz4/x;->n(Ljava/lang/String;Lz4/i3;)V

    return-void
.end method

.method public final v0(J)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lz4/x$a;->d:[B

    iget v1, p0, Lz4/x$a;->g:I

    add-int/lit8 v2, v1, 0x1

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lz4/x$a;->g:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lz4/x$b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lz4/x$a;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lz4/x$a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lz4/x$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
