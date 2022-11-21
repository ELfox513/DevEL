.class public final Lt1/m;
.super Lt1/f;
.source "SourceFile"


# instance fields
.field public final g:I


# direct methods
.method public constructor <init>(Lt1/j;IILs1/b;IJI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lt1/f;-><init>(Lt1/j;IILs1/b;IJ)V

    iput p8, p0, Lt1/m;->g:I

    return-void
.end method


# virtual methods
.method public C(I)Lt1/f;
    .locals 10

    new-instance v9, Lt1/m;

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

    iget v8, p0, Lt1/m;->g:I

    move-object v0, v9

    move v3, p1

    invoke-direct/range {v0 .. v8}, Lt1/m;-><init>(Lt1/j;IILs1/b;IJI)V

    return-object v9
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lt1/m;->g:I

    return v0
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
