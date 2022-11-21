.class public final enum Lt1/j$x;
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
    .locals 9

    invoke-static {p1}, Lt1/j;->c(I)I

    move-result v2

    invoke-static {p1}, Lt1/j;->z(I)I

    move-result v8

    invoke-interface {p2}, Lt1/d;->readLong()J

    move-result-wide v6

    new-instance p1, Lt1/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lt1/m;-><init>(Lt1/j;IILs1/b;IJI)V

    return-object p1
.end method

.method public R(Lt1/f;Lt1/e;)V
    .locals 9

    invoke-virtual {p1}, Lt1/f;->p()J

    move-result-wide v0

    invoke-virtual {p1}, Lt1/f;->u()I

    move-result v2

    invoke-virtual {p1}, Lt1/f;->d()I

    move-result p1

    invoke-static {v2, p1}, Lt1/j;->E(II)S

    move-result v4

    invoke-static {v0, v1}, Lt1/j;->j(J)S

    move-result v5

    invoke-static {v0, v1}, Lt1/j;->l(J)S

    move-result v6

    invoke-static {v0, v1}, Lt1/j;->n(J)S

    move-result v7

    invoke-static {v0, v1}, Lt1/j;->p(J)S

    move-result v8

    move-object v3, p2

    invoke-interface/range {v3 .. v8}, Lt1/e;->j(SSSSS)V

    return-void
.end method
