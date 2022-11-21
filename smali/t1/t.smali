.class public final Lt1/t;
.super Lt1/f;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lt1/j;IILs1/b;IJII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lt1/f;-><init>(Lt1/j;IILs1/b;IJ)V

    iput p8, p0, Lt1/t;->g:I

    iput p9, p0, Lt1/t;->h:I

    return-void
.end method


# virtual methods
.method public C(I)Lt1/f;
    .locals 11

    new-instance v10, Lt1/t;

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

    iget v8, p0, Lt1/t;->g:I

    iget v9, p0, Lt1/t;->h:I

    move-object v0, v10

    move v3, p1

    invoke-direct/range {v0 .. v9}, Lt1/t;-><init>(Lt1/j;IILs1/b;IJII)V

    return-object v10
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lt1/t;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lt1/t;->h:I

    return v0
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
