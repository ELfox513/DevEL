.class public final enum Lt1/j$b0;
.super Lt1/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lt1/j;-><init>(Ljava/lang/String;ILt1/j$k;)V

    return-void
.end method


# virtual methods
.method public O(ILt1/d;)Lt1/f;
    .locals 7

    invoke-interface {p2}, Lt1/c;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2}, Lt1/d;->read()I

    move-result v1

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-interface {p2}, Lt1/d;->readInt()I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v4, v1, :cond_1

    invoke-interface {p2}, Lt1/d;->readInt()I

    move-result v5

    add-int/2addr v5, v0

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, Lt1/r;

    invoke-direct {p2, p0, p1, v2, v3}, Lt1/r;-><init>(Lt1/j;I[I[I)V

    return-object p2
.end method

.method public R(Lt1/f;Lt1/e;)V
    .locals 6

    check-cast p1, Lt1/r;

    invoke-virtual {p1}, Lt1/r;->E()[I

    move-result-object v0

    invoke-virtual {p1}, Lt1/r;->F()[I

    move-result-object v1

    invoke-interface {p2}, Lt1/c;->b()I

    move-result v2

    invoke-virtual {p1}, Lt1/f;->v()S

    move-result p1

    invoke-interface {p2, p1}, Lt1/e;->i(S)V

    array-length p1, v1

    invoke-static {p1}, Lt1/j;->A(I)S

    move-result p1

    invoke-interface {p2, p1}, Lt1/e;->i(S)V

    array-length p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_0

    aget v5, v0, v4

    invoke-interface {p2, v5}, Lt1/e;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length p1, v1

    :goto_1
    if-ge v3, p1, :cond_1

    aget v0, v1, v3

    sub-int/2addr v0, v2

    invoke-interface {p2, v0}, Lt1/e;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
