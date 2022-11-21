.class public final enum Lt1/j$h0;
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
    .locals 10

    invoke-interface {p2}, Lt1/c;->k()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lt1/j;->c(I)I

    move-result v3

    invoke-static {p1}, Lt1/j;->z(I)I

    move-result p1

    invoke-interface {p2}, Lt1/d;->read()I

    move-result p2

    int-to-short p2, p2

    new-instance v9, Lt1/u;

    add-int v6, v0, p2

    int-to-long v7, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lt1/u;-><init>(Lt1/j;IILs1/b;IJ)V

    return-object v9
.end method

.method public R(Lt1/f;Lt1/e;)V
    .locals 1

    invoke-interface {p2}, Lt1/c;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lt1/f;->B(I)S

    move-result v0

    invoke-virtual {p1}, Lt1/f;->v()S

    move-result p1

    invoke-interface {p2, p1, v0}, Lt1/e;->e(SS)V

    return-void
.end method
