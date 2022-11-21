.class public Lo7/q1;
.super Lo7/o1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/o1<",
        "Lo7/p1;",
        "Lo7/p1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo7/o1;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)Lo7/p1;
    .locals 0

    check-cast p1, Lo7/y;

    iget-object p1, p1, Lo7/y;->unknownFields:Lo7/p1;

    return-object p1
.end method

.method public B(Lo7/p1;)I
    .locals 0

    invoke-virtual {p1}, Lo7/p1;->d()I

    move-result p1

    return p1
.end method

.method public C(Lo7/p1;)I
    .locals 0

    invoke-virtual {p1}, Lo7/p1;->e()I

    move-result p1

    return p1
.end method

.method public D(Lo7/p1;Lo7/p1;)Lo7/p1;
    .locals 1

    invoke-static {}, Lo7/p1;->c()Lo7/p1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo7/p1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lo7/p1;->i(Lo7/p1;Lo7/p1;)Lo7/p1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public E()Lo7/p1;
    .locals 1

    invoke-static {}, Lo7/p1;->j()Lo7/p1;

    move-result-object v0

    return-object v0
.end method

.method public F(Ljava/lang/Object;Lo7/p1;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo7/q1;->G(Ljava/lang/Object;Lo7/p1;)V

    return-void
.end method

.method public G(Ljava/lang/Object;Lo7/p1;)V
    .locals 0

    check-cast p1, Lo7/y;

    iput-object p2, p1, Lo7/y;->unknownFields:Lo7/p1;

    return-void
.end method

.method public H(Lo7/p1;)Lo7/p1;
    .locals 0

    invoke-virtual {p1}, Lo7/p1;->h()V

    return-object p1
.end method

.method public I(Lo7/p1;Lo7/v1;)V
    .locals 0

    invoke-virtual {p1, p2}, Lo7/p1;->o(Lo7/v1;)V

    return-void
.end method

.method public J(Lo7/p1;Lo7/v1;)V
    .locals 0

    invoke-virtual {p1, p2}, Lo7/p1;->q(Lo7/v1;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Lo7/p1;

    invoke-virtual {p0, p1, p2, p3}, Lo7/q1;->u(Lo7/p1;II)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lo7/p1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo7/q1;->v(Lo7/p1;IJ)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lo7/p1;

    check-cast p3, Lo7/p1;

    invoke-virtual {p0, p1, p2, p3}, Lo7/q1;->w(Lo7/p1;ILo7/p1;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;ILo7/h;)V
    .locals 0

    check-cast p1, Lo7/p1;

    invoke-virtual {p0, p1, p2, p3}, Lo7/q1;->x(Lo7/p1;ILo7/h;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lo7/p1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo7/q1;->y(Lo7/p1;IJ)V

    return-void
.end method

.method public bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo7/q1;->z(Ljava/lang/Object;)Lo7/p1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo7/q1;->A(Ljava/lang/Object;)Lo7/p1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo7/p1;

    invoke-virtual {p0, p1}, Lo7/q1;->B(Lo7/p1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo7/p1;

    invoke-virtual {p0, p1}, Lo7/q1;->C(Lo7/p1;)I

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo7/q1;->A(Ljava/lang/Object;)Lo7/p1;

    move-result-object p1

    invoke-virtual {p1}, Lo7/p1;->h()V

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lo7/p1;

    check-cast p2, Lo7/p1;

    invoke-virtual {p0, p1, p2}, Lo7/q1;->D(Lo7/p1;Lo7/p1;)Lo7/p1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic n()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo7/q1;->E()Lo7/p1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lo7/p1;

    invoke-virtual {p0, p1, p2}, Lo7/q1;->F(Ljava/lang/Object;Lo7/p1;)V

    return-void
.end method

.method public bridge synthetic p(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lo7/p1;

    invoke-virtual {p0, p1, p2}, Lo7/q1;->G(Ljava/lang/Object;Lo7/p1;)V

    return-void
.end method

.method public q(Lo7/g1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lo7/p1;

    invoke-virtual {p0, p1}, Lo7/q1;->H(Lo7/p1;)Lo7/p1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic s(Ljava/lang/Object;Lo7/v1;)V
    .locals 0

    check-cast p1, Lo7/p1;

    invoke-virtual {p0, p1, p2}, Lo7/q1;->I(Lo7/p1;Lo7/v1;)V

    return-void
.end method

.method public bridge synthetic t(Ljava/lang/Object;Lo7/v1;)V
    .locals 0

    check-cast p1, Lo7/p1;

    invoke-virtual {p0, p1, p2}, Lo7/q1;->J(Lo7/p1;Lo7/v1;)V

    return-void
.end method

.method public u(Lo7/p1;II)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lo7/u1;->c(II)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo7/p1;->m(ILjava/lang/Object;)V

    return-void
.end method

.method public v(Lo7/p1;IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lo7/u1;->c(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo7/p1;->m(ILjava/lang/Object;)V

    return-void
.end method

.method public w(Lo7/p1;ILo7/p1;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lo7/u1;->c(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lo7/p1;->m(ILjava/lang/Object;)V

    return-void
.end method

.method public x(Lo7/p1;ILo7/h;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lo7/u1;->c(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lo7/p1;->m(ILjava/lang/Object;)V

    return-void
.end method

.method public y(Lo7/p1;IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lo7/u1;->c(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo7/p1;->m(ILjava/lang/Object;)V

    return-void
.end method

.method public z(Ljava/lang/Object;)Lo7/p1;
    .locals 2

    invoke-virtual {p0, p1}, Lo7/q1;->A(Ljava/lang/Object;)Lo7/p1;

    move-result-object v0

    invoke-static {}, Lo7/p1;->c()Lo7/p1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo7/p1;->j()Lo7/p1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo7/q1;->G(Ljava/lang/Object;Lo7/p1;)V

    :cond_0
    return-object v0
.end method
