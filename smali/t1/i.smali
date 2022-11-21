.class public final Lt1/i;
.super Lt1/f;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(Lt1/j;IILs1/b;IJIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lt1/f;-><init>(Lt1/j;IILs1/b;IJ)V

    iput p8, p0, Lt1/i;->g:I

    iput p9, p0, Lt1/i;->h:I

    iput p10, p0, Lt1/i;->i:I

    iput p11, p0, Lt1/i;->j:I

    return-void
.end method


# virtual methods
.method public C(I)Lt1/f;
    .locals 13

    new-instance v12, Lt1/i;

    invoke-virtual {p0}, Lt1/f;->l()Lt1/j;

    move-result-object v1

    invoke-virtual {p0}, Lt1/f;->u()I

    move-result v2

    invoke-virtual {p0}, Lt1/f;->n()Ls1/b;

    move-result-object v4

    invoke-virtual {p0}, Lt1/f;->y()I

    move-result v5

    invoke-virtual {p0}, Lt1/f;->p()J

    move-result-wide v6

    iget v8, p0, Lt1/i;->g:I

    iget v9, p0, Lt1/i;->h:I

    iget v10, p0, Lt1/i;->i:I

    iget v11, p0, Lt1/i;->j:I

    move-object v0, v12

    move v3, p1

    invoke-direct/range {v0 .. v11}, Lt1/i;-><init>(Lt1/j;IILs1/b;IJIIII)V

    return-object v12
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lt1/i;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lt1/i;->h:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lt1/i;->i:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lt1/i;->j:I

    return v0
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
