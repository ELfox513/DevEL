.class public final enum Lt1/j$i;
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

    invoke-static {p1}, Lt1/j;->c(I)I

    move-result v2

    invoke-static {p1}, Lt1/j;->B(I)I

    move-result v8

    invoke-static {p1}, Lt1/j;->C(I)I

    move-result v9

    invoke-interface {p2}, Lt1/d;->read()I

    move-result v3

    invoke-static {v2}, Ls1/c;->c(I)Ls1/b;

    move-result-object v4

    new-instance p1, Lt1/t;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lt1/t;-><init>(Lt1/j;IILs1/b;IJII)V

    return-object p1
.end method

.method public R(Lt1/f;Lt1/e;)V
    .locals 3

    invoke-virtual {p1}, Lt1/f;->u()I

    move-result v0

    invoke-virtual {p1}, Lt1/f;->d()I

    move-result v1

    invoke-virtual {p1}, Lt1/f;->f()I

    move-result v2

    invoke-static {v1, v2}, Lt1/j;->D(II)I

    move-result v1

    invoke-static {v0, v1}, Lt1/j;->E(II)S

    move-result v0

    invoke-virtual {p1}, Lt1/f;->o()S

    move-result p1

    invoke-interface {p2, v0, p1}, Lt1/e;->e(SS)V

    return-void
.end method
