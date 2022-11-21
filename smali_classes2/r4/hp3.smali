.class public abstract Lr4/hp3;
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
.method public abstract a(Lr4/lo3;)Z
.end method

.method public abstract b(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/Object;ILr4/ll3;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lr4/ll3;",
            ")V"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method public abstract g()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method public abstract i(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract j(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract k(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract l(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method public abstract m(Ljava/lang/Object;)V
.end method

.method public final n(Ljava/lang/Object;Lr4/lo3;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lr4/lo3;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lr4/lo3;->b()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    invoke-interface {p2}, Lr4/lo3;->i()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lr4/hp3;->c(Ljava/lang/Object;II)V

    return v2

    :cond_0
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Lr4/hp3;->g()Ljava/lang/Object;

    move-result-object v0

    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    :cond_3
    invoke-interface {p2}, Lr4/lo3;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    invoke-virtual {p0, v0, p2}, Lr4/hp3;->n(Ljava/lang/Object;Lr4/lo3;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_4
    invoke-interface {p2}, Lr4/lo3;->b()I

    move-result p2

    if-ne v3, p2, :cond_5

    invoke-virtual {p0, v0}, Lr4/hp3;->h(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Lr4/hp3;->f(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    :cond_5
    invoke-static {}, Lr4/bn3;->h()Lr4/bn3;

    move-result-object p1

    throw p1

    :cond_6
    invoke-interface {p2}, Lr4/lo3;->m()Lr4/ll3;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lr4/hp3;->e(Ljava/lang/Object;ILr4/ll3;)V

    return v2

    :cond_7
    invoke-interface {p2}, Lr4/lo3;->h()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lr4/hp3;->d(Ljava/lang/Object;IJ)V

    return v2

    :cond_8
    invoke-interface {p2}, Lr4/lo3;->f()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lr4/hp3;->b(Ljava/lang/Object;IJ)V

    return v2
.end method

.method public abstract o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract p(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract q(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract r(Ljava/lang/Object;Lr4/xl3;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr4/xl3;",
            ")V"
        }
    .end annotation
.end method
