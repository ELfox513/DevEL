.class public final Lr4/vz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/b04;


# instance fields
.field public final a:[B

.field public final b:Lr4/k6;

.field public final c:J

.field public d:J

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lr4/k6;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vz3;->b:Lr4/k6;

    iput-wide p2, p0, Lr4/vz3;->d:J

    iput-wide p4, p0, Lr4/vz3;->c:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    iput-object p1, p0, Lr4/vz3;->e:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lr4/vz3;->a:[B

    return-void
.end method


# virtual methods
.method public final D(I)I
    .locals 7

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr4/vz3;->s(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lr4/vz3;->a:[B

    const/4 v3, 0x0

    const/16 v0, 0x1000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lr4/vz3;->v([BIIIZ)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lr4/vz3;->w(I)V

    return v0
.end method

.method public final S(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr4/vz3;->n(IZ)Z

    return-void
.end method

.method public final T(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr4/vz3;->o(IZ)Z

    return-void
.end method

.method public final a([BII)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lr4/vz3;->f([BIIZ)Z

    return-void
.end method

.method public final b([BII)I
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lr4/vz3;->t([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lr4/vz3;->v([BIIIZ)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lr4/vz3;->w(I)V

    return v0
.end method

.method public final e([BII)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lr4/vz3;->i([BIIZ)Z

    return-void
.end method

.method public final f([BIIZ)Z
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lr4/vz3;->t([BII)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p3, :cond_0

    if-eq v5, v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lr4/vz3;->v([BIIIZ)I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Lr4/vz3;->w(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final i([BIIZ)Z
    .locals 1

    invoke-virtual {p0, p3, p4}, Lr4/vz3;->o(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p4, p0, Lr4/vz3;->e:[B

    iget v0, p0, Lr4/vz3;->f:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/vz3;->f:I

    return-void
.end method

.method public final l()J
    .locals 4

    iget-wide v0, p0, Lr4/vz3;->d:J

    iget v2, p0, Lr4/vz3;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final m([BII)I
    .locals 7

    invoke-virtual {p0, p3}, Lr4/vz3;->r(I)V

    iget v0, p0, Lr4/vz3;->g:I

    iget v3, p0, Lr4/vz3;->f:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1

    iget-object v2, p0, Lr4/vz3;->e:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lr4/vz3;->v([BIIIZ)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lr4/vz3;->g:I

    add-int/2addr v0, p3

    iput v0, p0, Lr4/vz3;->g:I

    goto :goto_0

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    iget-object v0, p0, Lr4/vz3;->e:[B

    iget v1, p0, Lr4/vz3;->f:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lr4/vz3;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lr4/vz3;->f:I

    return p3
.end method

.method public final n(IZ)Z
    .locals 6

    invoke-virtual {p0, p1}, Lr4/vz3;->s(I)I

    move-result p2

    move v4, p2

    :goto_0
    const/4 p2, -0x1

    if-ge v4, p1, :cond_0

    if-eq v4, p2, :cond_0

    add-int/lit16 p2, v4, 0x1000

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v1, p0, Lr4/vz3;->a:[B

    neg-int v2, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lr4/vz3;->v([BIIIZ)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lr4/vz3;->w(I)V

    if-eq v4, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final o(IZ)Z
    .locals 7

    invoke-virtual {p0, p1}, Lr4/vz3;->r(I)V

    iget v0, p0, Lr4/vz3;->g:I

    iget v1, p0, Lr4/vz3;->f:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_1

    iget-object v2, p0, Lr4/vz3;->e:[B

    iget v3, p0, Lr4/vz3;->f:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lr4/vz3;->v([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lr4/vz3;->f:I

    add-int/2addr v0, v5

    iput v0, p0, Lr4/vz3;->g:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lr4/vz3;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lr4/vz3;->f:I

    const/4 p1, 0x1

    return p1
.end method

.method public final p()J
    .locals 2

    iget-wide v0, p0, Lr4/vz3;->d:J

    return-wide v0
.end method

.method public final q()J
    .locals 2

    iget-wide v0, p0, Lr4/vz3;->c:J

    return-wide v0
.end method

.method public final r(I)V
    .locals 3

    iget v0, p0, Lr4/vz3;->f:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lr4/vz3;->e:[B

    array-length p1, p1

    if-le v0, p1, :cond_0

    add-int/2addr p1, p1

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lr4/lc;->c0(III)I

    move-result p1

    iget-object v0, p0, Lr4/vz3;->e:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lr4/vz3;->e:[B

    :cond_0
    return-void
.end method

.method public final s(I)I
    .locals 1

    iget v0, p0, Lr4/vz3;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lr4/vz3;->u(I)V

    return p1
.end method

.method public final t([BII)I
    .locals 2

    iget v0, p0, Lr4/vz3;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lr4/vz3;->e:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Lr4/vz3;->u(I)V

    return p3
.end method

.method public final u(I)V
    .locals 5

    iget v0, p0, Lr4/vz3;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lr4/vz3;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lr4/vz3;->f:I

    iget-object v2, p0, Lr4/vz3;->e:[B

    array-length v3, v2

    const/high16 v4, -0x80000

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    new-array v3, v3, [B

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lr4/vz3;->e:[B

    return-void
.end method

.method public final v([BIIIZ)I
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/vz3;->b:Lr4/k6;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lr4/k6;->b([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    add-int/2addr p4, p1

    return p4

    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
.end method

.method public final w(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-wide v0, p0, Lr4/vz3;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lr4/vz3;->d:J

    :cond_0
    return-void
.end method
