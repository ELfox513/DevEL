.class public final enum Lt1/j$a0;
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
    .locals 6

    invoke-interface {p2}, Lt1/c;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2}, Lt1/d;->read()I

    move-result v1

    invoke-interface {p2}, Lt1/d;->readInt()I

    move-result v2

    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-interface {p2}, Lt1/d;->readInt()I

    move-result v5

    add-int/2addr v5, v0

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lt1/n;

    invoke-direct {p2, p0, p1, v2, v3}, Lt1/n;-><init>(Lt1/j;II[I)V

    return-object p2
.end method

.method public R(Lt1/f;Lt1/e;)V
    .locals 4

    check-cast p1, Lt1/n;

    invoke-virtual {p1}, Lt1/n;->F()[I

    move-result-object v0

    invoke-interface {p2}, Lt1/c;->b()I

    move-result v1

    invoke-virtual {p1}, Lt1/f;->v()S

    move-result v2

    invoke-interface {p2, v2}, Lt1/e;->i(S)V

    array-length v2, v0

    invoke-static {v2}, Lt1/j;->A(I)S

    move-result v2

    invoke-interface {p2, v2}, Lt1/e;->i(S)V

    invoke-virtual {p1}, Lt1/n;->E()I

    move-result p1

    invoke-interface {p2, p1}, Lt1/e;->writeInt(I)V

    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, v0, v2

    sub-int/2addr v3, v1

    invoke-interface {p2, v3}, Lt1/e;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
