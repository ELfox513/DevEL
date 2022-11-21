.class public final enum Lt1/j$f0;
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

    new-instance p1, Lt1/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lt1/m;-><init>(Lt1/j;IILs1/b;IJI)V

    return-object p1
.end method

.method public R(Lt1/f;Lt1/e;)V
    .locals 1

    invoke-virtual {p1}, Lt1/f;->u()I

    move-result v0

    invoke-virtual {p1}, Lt1/f;->d()I

    move-result p1

    invoke-static {v0, p1}, Lt1/j;->E(II)S

    move-result p1

    invoke-interface {p2, p1}, Lt1/e;->i(S)V

    return-void
.end method
