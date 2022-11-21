.class public final Lt1/n;
.super Lt1/f;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:[I


# direct methods
.method public constructor <init>(Lt1/j;II[I)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lt1/f;-><init>(Lt1/j;IILs1/b;IJ)V

    iput p3, p0, Lt1/n;->g:I

    iput-object p4, p0, Lt1/n;->h:[I

    return-void
.end method


# virtual methods
.method public C(I)Lt1/f;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no index in instruction"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lt1/n;->g:I

    return v0
.end method

.method public F()[I
    .locals 1

    iget-object v0, p0, Lt1/n;->h:[I

    return-object v0
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
