.class public final Lt1/r;
.super Lt1/f;
.source "SourceFile"


# instance fields
.field public final g:[I

.field public final h:[I


# direct methods
.method public constructor <init>(Lt1/j;I[I[I)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lt1/f;-><init>(Lt1/j;IILs1/b;IJ)V

    array-length p1, p3

    array-length p2, p4

    if-ne p1, p2, :cond_0

    iput-object p3, p0, Lt1/r;->g:[I

    iput-object p4, p0, Lt1/r;->h:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keys/targets length mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public C(I)Lt1/f;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no index in instruction"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E()[I
    .locals 1

    iget-object v0, p0, Lt1/r;->g:[I

    return-object v0
.end method

.method public F()[I
    .locals 1

    iget-object v0, p0, Lt1/r;->h:[I

    return-object v0
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
