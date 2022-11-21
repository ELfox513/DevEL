.class public final enum Lt1/j$y;
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
    .locals 11

    invoke-static {p1}, Lt1/j;->c(I)I

    move-result v2

    const/16 v0, 0xfa

    if-ne v2, v0, :cond_1

    invoke-static {p1}, Lt1/j;->B(I)I

    move-result v0

    invoke-static {p1}, Lt1/j;->C(I)I

    move-result p1

    invoke-interface {p2}, Lt1/d;->read()I

    move-result v3

    invoke-interface {p2}, Lt1/d;->read()I

    move-result v1

    invoke-static {v1}, Lt1/j;->u(I)I

    move-result v4

    invoke-static {v1}, Lt1/j;->v(I)I

    move-result v5

    invoke-static {v1}, Lt1/j;->B(I)I

    move-result v6

    invoke-static {v1}, Lt1/j;->C(I)I

    move-result v1

    invoke-interface {p2}, Lt1/d;->read()I

    move-result p2

    invoke-static {v2}, Ls1/c;->c(I)Ls1/b;

    move-result-object v7

    const/4 v8, 0x1

    if-lt p1, v8, :cond_0

    const/4 v9, 0x5

    if-gt p1, v9, :cond_0

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v4, v9, v10

    aput v5, v9, v8

    const/4 v4, 0x2

    aput v6, v9, v4

    const/4 v4, 0x3

    aput v1, v9, v4

    const/4 v1, 0x4

    aput v0, v9, v1

    invoke-static {v9, v10, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v6

    new-instance p1, Lt1/k;

    move-object v0, p1

    move-object v1, p0

    move-object v4, v7

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lt1/k;-><init>(Lt1/j;IILs1/b;I[I)V

    return-object p1

    :cond_0
    new-instance p2, Lk1/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bogus registerCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->l(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R(Lt1/f;Lt1/e;)V
    .locals 6

    check-cast p1, Lt1/k;

    invoke-virtual {p1}, Lt1/f;->u()I

    move-result v0

    invoke-virtual {p1}, Lt1/k;->F()I

    move-result v1

    invoke-virtual {p1}, Lt1/k;->x()I

    move-result v2

    invoke-static {v1, v2}, Lt1/j;->D(II)I

    move-result v1

    invoke-static {v0, v1}, Lt1/j;->E(II)S

    move-result v0

    invoke-virtual {p1}, Lt1/f;->o()S

    move-result v1

    invoke-virtual {p1}, Lt1/k;->h()I

    move-result v2

    invoke-virtual {p1}, Lt1/k;->j()I

    move-result v3

    invoke-virtual {p1}, Lt1/k;->k()I

    move-result v4

    invoke-virtual {p1}, Lt1/k;->E()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lt1/j;->x(IIII)S

    move-result v2

    invoke-virtual {p1}, Lt1/k;->w()S

    move-result p1

    invoke-interface {p2, v0, v1, v2, p1}, Lt1/e;->h(SSSS)V

    return-void
.end method
