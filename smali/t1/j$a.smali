.class public final enum Lt1/j$a;
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

    move-result v9

    invoke-interface {p2}, Lt1/d;->read()I

    move-result p1

    int-to-short p1, p1

    new-instance p2, Lt1/m;

    add-int v6, v0, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lt1/m;-><init>(Lt1/j;IILs1/b;IJI)V

    return-object p2
.end method

.method public R(Lt1/f;Lt1/e;)V
    .locals 2

    invoke-interface {p2}, Lt1/c;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lt1/f;->B(I)S

    move-result v0

    invoke-virtual {p1}, Lt1/f;->u()I

    move-result v1

    invoke-virtual {p1}, Lt1/f;->d()I

    move-result p1

    invoke-static {v1, p1}, Lt1/j;->E(II)S

    move-result p1

    invoke-interface {p2, p1, v0}, Lt1/e;->e(SS)V

    return-void
.end method
