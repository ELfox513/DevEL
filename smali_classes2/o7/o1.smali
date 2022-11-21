.class public abstract Lo7/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/Object;ILo7/h;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lo7/h;",
            ")V"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract g(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract i(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract j(Ljava/lang/Object;)V
.end method

.method public abstract k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public final l(Ljava/lang/Object;Lo7/g1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lo7/g1;",
            ")V"
        }
    .end annotation

    :cond_0
    invoke-interface {p2}, Lo7/g1;->C()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lo7/o1;->m(Ljava/lang/Object;Lo7/g1;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final m(Ljava/lang/Object;Lo7/g1;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lo7/g1;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lo7/g1;->v()I

    move-result v0

    invoke-static {v0}, Lo7/u1;->a(I)I

    move-result v1

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    invoke-interface {p2}, Lo7/g1;->i()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lo7/o1;->a(Ljava/lang/Object;II)V

    return v2

    :cond_0
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Lo7/o1;->n()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v4}, Lo7/u1;->c(II)I

    move-result v3

    invoke-virtual {p0, v0, p2}, Lo7/o1;->l(Ljava/lang/Object;Lo7/g1;)V

    invoke-interface {p2}, Lo7/g1;->v()I

    move-result p2

    if-ne v3, p2, :cond_3

    invoke-virtual {p0, v0}, Lo7/o1;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lo7/o1;->c(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    :cond_3
    invoke-static {}, Lo7/c0;->a()Lo7/c0;

    move-result-object p1

    throw p1

    :cond_4
    invoke-interface {p2}, Lo7/g1;->F()Lo7/h;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lo7/o1;->d(Ljava/lang/Object;ILo7/h;)V

    return v2

    :cond_5
    invoke-interface {p2}, Lo7/g1;->c()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lo7/o1;->b(Ljava/lang/Object;IJ)V

    return v2

    :cond_6
    invoke-interface {p2}, Lo7/g1;->M()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lo7/o1;->e(Ljava/lang/Object;IJ)V

    return v2
.end method

.method public abstract n()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract o(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method public abstract p(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract q(Lo7/g1;)Z
.end method

.method public abstract r(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method public abstract s(Ljava/lang/Object;Lo7/v1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo7/v1;",
            ")V"
        }
    .end annotation
.end method

.method public abstract t(Ljava/lang/Object;Lo7/v1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo7/v1;",
            ")V"
        }
    .end annotation
.end method
