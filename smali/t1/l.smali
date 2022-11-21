.class public Lt1/l;
.super Lt1/f;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lt1/j;IILs1/b;III)V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lt1/f;-><init>(Lt1/j;IILs1/b;IJ)V

    int-to-short p1, p7

    if-ne p7, p1, :cond_0

    iput p5, p0, Lt1/l;->g:I

    iput p6, p0, Lt1/l;->h:I

    iput p7, p0, Lt1/l;->i:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "protoIndex doesn\'t fit in a short: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public C(I)Lt1/f;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "use withProtoIndex to update both the method and proto indices for invoke-polymorphic/range"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(II)Lt1/f;
    .locals 9

    new-instance v8, Lt1/l;

    invoke-virtual {p0}, Lt1/f;->l()Lt1/j;

    move-result-object v1

    invoke-virtual {p0}, Lt1/f;->u()I

    move-result v2

    invoke-virtual {p0}, Lt1/f;->n()Ls1/b;

    move-result-object v4

    iget v5, p0, Lt1/l;->g:I

    iget v6, p0, Lt1/l;->h:I

    move-object v0, v8

    move v3, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lt1/l;-><init>(Lt1/j;IILs1/b;III)V

    return-object v8
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lt1/l;->g:I

    return v0
.end method

.method public w()S
    .locals 1

    iget v0, p0, Lt1/l;->i:I

    int-to-short v0, v0

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lt1/l;->h:I

    return v0
.end method
