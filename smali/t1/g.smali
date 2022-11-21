.class public final Lt1/g;
.super Lt1/f;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/Object;

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lt1/j;ILjava/lang/Object;II)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lt1/f;-><init>(Lt1/j;IILs1/b;IJ)V

    iput-object p3, p0, Lt1/g;->g:Ljava/lang/Object;

    iput p4, p0, Lt1/g;->h:I

    iput p5, p0, Lt1/g;->i:I

    return-void
.end method

.method public constructor <init>(Lt1/j;I[B)V
    .locals 6

    array-length v4, p3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lt1/g;-><init>(Lt1/j;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lt1/j;I[I)V
    .locals 6

    array-length v4, p3

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lt1/g;-><init>(Lt1/j;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lt1/j;I[J)V
    .locals 6

    array-length v4, p3

    const/16 v5, 0x8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lt1/g;-><init>(Lt1/j;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lt1/j;I[S)V
    .locals 6

    array-length v4, p3

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lt1/g;-><init>(Lt1/j;ILjava/lang/Object;II)V

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

.method public E()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lt1/g;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public F()S
    .locals 1

    iget v0, p0, Lt1/g;->i:I

    int-to-short v0, v0

    return v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, Lt1/g;->h:I

    return v0
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
