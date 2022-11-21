.class public final Lt1/u;
.super Lt1/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lt1/j;IILs1/b;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lt1/f;-><init>(Lt1/j;IILs1/b;IJ)V

    return-void
.end method


# virtual methods
.method public C(I)Lt1/f;
    .locals 9

    new-instance v8, Lt1/u;

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

    move-object v0, v8

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lt1/u;-><init>(Lt1/j;IILs1/b;IJ)V

    return-object v8
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
