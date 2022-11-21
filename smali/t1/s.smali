.class public final Lt1/s;
.super Lt1/f;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lt1/j;IILs1/b;IJIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lt1/f;-><init>(Lt1/j;IILs1/b;IJ)V

    iput p8, p0, Lt1/s;->g:I

    iput p9, p0, Lt1/s;->h:I

    iput p10, p0, Lt1/s;->i:I

    return-void
.end method


# virtual methods
.method public C(I)Lt1/f;
    .locals 12

    new-instance v11, Lt1/s;

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

    iget v8, p0, Lt1/s;->g:I

    iget v9, p0, Lt1/s;->h:I

    iget v10, p0, Lt1/s;->i:I

    move-object v0, v11

    move v3, p1

    invoke-direct/range {v0 .. v10}, Lt1/s;-><init>(Lt1/j;IILs1/b;IJIII)V

    return-object v11
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lt1/s;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lt1/s;->h:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lt1/s;->i:I

    return v0
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
