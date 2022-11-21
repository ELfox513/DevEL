.class public Lt1/k;
.super Lt1/f;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:[I


# direct methods
.method public constructor <init>(Lt1/j;IILs1/b;I[I)V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lt1/f;-><init>(Lt1/j;IILs1/b;IJ)V

    int-to-short p1, p5

    if-ne p5, p1, :cond_0

    iput p5, p0, Lt1/k;->g:I

    iput-object p6, p0, Lt1/k;->h:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "protoIndex doesn\'t fit in a short: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public C(I)Lt1/f;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "use withProtoIndex to update both the method and proto indices for invoke-polymorphic"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(II)Lt1/f;
    .locals 8

    new-instance v7, Lt1/k;

    invoke-virtual {p0}, Lt1/f;->l()Lt1/j;

    move-result-object v1

    invoke-virtual {p0}, Lt1/f;->u()I

    move-result v2

    invoke-virtual {p0}, Lt1/f;->n()Ls1/b;

    move-result-object v4

    iget-object v6, p0, Lt1/k;->h:[I

    move-object v0, v7

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lt1/k;-><init>(Lt1/j;IILs1/b;I[I)V

    return-object v7
.end method

.method public E()I
    .locals 3

    iget-object v0, p0, Lt1/k;->h:[I

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    aget v0, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()I
    .locals 3

    iget-object v0, p0, Lt1/k;->h:[I

    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    aget v0, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()I
    .locals 3

    iget-object v0, p0, Lt1/k;->h:[I

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget v2, v0, v2

    :cond_0
    return v2
.end method

.method public j()I
    .locals 3

    iget-object v0, p0, Lt1/k;->h:[I

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget v0, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()I
    .locals 3

    iget-object v0, p0, Lt1/k;->h:[I

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    aget v0, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()S
    .locals 1

    iget v0, p0, Lt1/k;->g:I

    int-to-short v0, v0

    return v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lt1/k;->h:[I

    array-length v0, v0

    return v0
.end method
