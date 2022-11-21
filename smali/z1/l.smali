.class public final Lz1/l;
.super Lz1/u;
.source "SourceFile"


# instance fields
.field public d:Lw1/h;


# direct methods
.method public constructor <init>(Lw1/h;Lz1/s;)V
    .locals 1

    invoke-virtual {p1}, Lw1/h;->k()Lw1/q;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lz1/u;-><init>(Lw1/q;Lz1/s;)V

    iput-object p1, p0, Lz1/l;->d:Lw1/h;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 1

    invoke-virtual {p0}, Lz1/l;->A()Z

    move-result v0

    return v0
.end method

.method public final F(Lz1/p;)V
    .locals 3

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v0}, Lw1/h;->m()Lw1/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz1/p;->c(Lw1/r;)Lw1/r;

    move-result-object p1

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {p0}, Lz1/u;->t()Lw1/q;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lw1/h;->r(Lw1/q;Lw1/r;)Lw1/h;

    move-result-object p1

    iput-object p1, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {p0}, Lz1/u;->i()Lz1/s;

    move-result-object p1

    invoke-virtual {p1}, Lz1/s;->s()Lz1/v;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lz1/v;->I(Lz1/u;Lw1/r;)V

    :cond_0
    return-void
.end method

.method public J()Lw1/h;
    .locals 3

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {p0}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    iget-object v2, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v2}, Lw1/h;->m()Lw1/r;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lw1/h;->r(Lw1/q;Lw1/r;)Lw1/h;

    move-result-object v0

    return-object v0
.end method

.method public final K(ILw1/q;)V
    .locals 5

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v0}, Lw1/h;->m()Lw1/r;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v1

    new-instance v2, Lw1/r;

    invoke-direct {v2, v1}, Lw1/r;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-ne v3, p1, :cond_0

    move-object v4, p2

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v3, v4}, Lw1/r;->F(ILw1/q;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lb2/o;->setImmutable()V

    invoke-virtual {v0, p1}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lz1/u;->i()Lz1/s;

    move-result-object v0

    invoke-virtual {v0}, Lz1/s;->s()Lz1/v;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lz1/v;->H(Lz1/u;Lw1/q;Lw1/q;)V

    :cond_2
    iget-object p1, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {p0}, Lz1/u;->t()Lw1/q;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lw1/h;->r(Lw1/q;Lw1/r;)Lw1/h;

    move-result-object p1

    iput-object p1, p0, Lz1/l;->d:Lw1/h;

    return-void
.end method

.method public L()Lz1/l;
    .locals 1

    invoke-super {p0}, Lz1/u;->h()Lz1/u;

    move-result-object v0

    check-cast v0, Lz1/l;

    return-object v0
.end method

.method public final P(Lw1/r;)V
    .locals 2

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v0}, Lw1/h;->m()Lw1/r;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v0

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {p0}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lw1/h;->r(Lw1/q;Lw1/r;)Lw1/h;

    move-result-object p1

    iput-object p1, p0, Lz1/l;->d:Lw1/h;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Sources counts don\'t match"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Q()V
    .locals 2

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v0}, Lw1/h;->m()Lw1/r;

    move-result-object v0

    iget-object v1, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v1}, Lw1/h;->s()Lw1/h;

    move-result-object v1

    iput-object v1, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {p0}, Lz1/u;->i()Lz1/s;

    move-result-object v1

    invoke-virtual {v1}, Lz1/s;->s()Lz1/v;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lz1/v;->I(Lz1/u;Lw1/r;)V

    return-void
.end method

.method public a(Lz1/u$a;)V
    .locals 1

    invoke-virtual {p0}, Lz1/l;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lz1/u$a;->c(Lz1/l;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lz1/u$a;->b(Lz1/l;)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v0}, Lw1/h;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz1/l;->L()Lz1/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lz1/u;
    .locals 1

    invoke-virtual {p0}, Lz1/l;->L()Lz1/l;

    move-result-object v0

    return-object v0
.end method

.method public j()Lw1/q;
    .locals 3

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v0}, Lw1/h;->m()Lw1/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lw1/q;->z()Lw1/k;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public n()Lw1/t;
    .locals 1

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    return-object v0
.end method

.method public o()Lw1/h;
    .locals 1

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz1/l;->J()Lw1/h;

    move-result-object v0

    invoke-virtual {v0}, Lw1/h;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lw1/r;
    .locals 1

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v0}, Lw1/h;->m()Lw1/r;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 4

    invoke-virtual {p0}, Lz1/l;->n()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->b()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lz1/m;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lz1/l;->j()Lw1/q;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/16 v3, 0x37

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lz1/l;->d:Lw1/h;

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
