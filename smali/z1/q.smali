.class public Lz1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz1/v;

.field public final b:I

.field public final c:[I

.field public final d:[Lx1/a;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/BitSet;

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/u;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/u;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/q;->a:Lz1/v;

    invoke-virtual {p1}, Lz1/v;->u()I

    move-result v0

    iput v0, p0, Lz1/q;->b:I

    new-array v1, v0, [I

    iput-object v1, p0, Lz1/q;->c:[I

    new-array v0, v0, [Lx1/a;

    iput-object v0, p0, Lz1/q;->d:[Lx1/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz1/q;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz1/q;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lz1/q;->g:Ljava/util/BitSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz1/q;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz1/q;->i:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz1/q;->j:Ljava/util/ArrayList;

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lz1/q;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lz1/q;->c:[I

    aput p1, v1, v0

    iget-object v1, p0, Lz1/q;->d:[Lx1/a;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Lz1/v;)V
    .locals 1

    new-instance v0, Lz1/q;

    invoke-direct {v0, p0}, Lz1/q;-><init>(Lz1/v;)V

    invoke-virtual {v0}, Lz1/q;->f()V

    return-void
.end method


# virtual methods
.method public final a(Lz1/s;)V
    .locals 2

    iget-object v0, p0, Lz1/q;->g:Ljava/util/BitSet;

    invoke-virtual {p1}, Lz1/s;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz1/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lz1/q;->g:Ljava/util/BitSet;

    invoke-virtual {p1}, Lz1/s;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz1/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final b(II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lz1/q;->a:Lz1/v;

    invoke-virtual {p2, p1}, Lz1/v;->w(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz1/u;

    iget-object v0, p0, Lz1/q;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lz1/q;->a:Lz1/v;

    invoke-virtual {p2, p1}, Lz1/v;->w(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz1/u;

    iget-object v0, p0, Lz1/q;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 9

    iget-object v0, p0, Lz1/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/u;

    invoke-virtual {v1}, Lz1/u;->i()Lz1/s;

    move-result-object v2

    invoke-virtual {v2}, Lz1/s;->B()Lb2/j;

    move-result-object v3

    invoke-virtual {v3}, Lb2/j;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v2}, Lz1/s;->B()Lb2/j;

    move-result-object v7

    invoke-virtual {v7, v4}, Lb2/j;->B(I)I

    move-result v7

    iget-object v8, p0, Lz1/q;->g:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-ne v6, v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lz1/u;->o()Lw1/h;

    move-result-object v1

    new-instance v3, Lw1/o;

    sget-object v4, Lw1/v;->s:Lw1/t;

    invoke-virtual {v1}, Lw1/h;->j()Lw1/w;

    move-result-object v1

    const/4 v5, 0x0

    sget-object v7, Lw1/r;->a:Lw1/r;

    invoke-direct {v3, v4, v1, v5, v7}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {v2, v3}, Lz1/s;->J(Lw1/h;)V

    invoke-virtual {v2, v6}, Lz1/s;->I(I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final e()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lz1/q;->b:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lz1/q;->c:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lz1/q;->d:[Lx1/a;

    aget-object v1, v1, v0

    instance-of v1, v1, Lx1/g0;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lz1/q;->a:Lz1/v;

    invoke-virtual {v1, v0}, Lz1/v;->n(I)Lz1/u;

    move-result-object v1

    invoke-virtual {v1}, Lz1/u;->t()Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->C()Ly1/d;

    move-result-object v2

    invoke-interface {v2}, Ly1/d;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lz1/u;->t()Lw1/q;

    move-result-object v2

    iget-object v3, p0, Lz1/q;->d:[Lx1/a;

    aget-object v3, v3, v0

    check-cast v3, Lx1/g0;

    invoke-virtual {v2, v3}, Lw1/q;->U(Ly1/d;)Lw1/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz1/u;->G(Lw1/q;)V

    iget-object v1, p0, Lz1/q;->a:Lz1/v;

    invoke-virtual {v1, v0}, Lz1/v;->w(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/u;

    invoke-virtual {v2}, Lz1/u;->B()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v2

    check-cast v3, Lz1/l;

    invoke-virtual {v2}, Lz1/u;->u()Lw1/r;

    move-result-object v2

    invoke-virtual {v2, v0}, Lw1/r;->C(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    iget-object v5, p0, Lz1/q;->d:[Lx1/a;

    aget-object v5, v5, v0

    check-cast v5, Lx1/g0;

    invoke-virtual {v2, v5}, Lw1/q;->U(Ly1/d;)Lw1/q;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lz1/l;->K(ILw1/q;)V

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lz1/q;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->o()Lz1/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz1/q;->a(Lz1/s;)V

    :cond_0
    iget-object v0, p0, Lz1/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz1/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz1/q;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz1/q;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lz1/q;->e()V

    invoke-virtual {p0}, Lz1/q;->d()V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lz1/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lz1/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lz1/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/s;

    invoke-virtual {p0, v0}, Lz1/q;->h(Lz1/s;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lz1/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lz1/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lz1/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/s;

    invoke-virtual {p0, v0}, Lz1/q;->l(Lz1/s;)V

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lz1/q;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lz1/q;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lz1/q;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/u;

    iget-object v1, p0, Lz1/q;->g:Ljava/util/BitSet;

    invoke-virtual {v0}, Lz1/u;->i()Lz1/s;

    move-result-object v2

    invoke-virtual {v2}, Lz1/s;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    instance-of v1, v0, Lz1/n;

    if-eqz v1, :cond_6

    check-cast v0, Lz1/n;

    invoke-virtual {p0, v0}, Lz1/q;->k(Lz1/n;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Lz1/q;->m(Lz1/u;)V

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v0, p0, Lz1/q;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz1/q;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lz1/q;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/u;

    iget-object v1, p0, Lz1/q;->g:Ljava/util/BitSet;

    invoke-virtual {v0}, Lz1/u;->i()Lz1/s;

    move-result-object v2

    invoke-virtual {v2}, Lz1/s;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    instance-of v1, v0, Lz1/n;

    if-eqz v1, :cond_9

    check-cast v0, Lz1/n;

    invoke-virtual {p0, v0}, Lz1/q;->k(Lz1/n;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v0}, Lz1/q;->m(Lz1/u;)V

    goto :goto_3
.end method

.method public final g(IILx1/a;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    iget-object p3, p0, Lz1/q;->c:[I

    aget v2, p3, p1

    if-eq v2, p2, :cond_0

    aput p2, p3, p1

    return v1

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lz1/q;->c:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_3

    iget-object v2, p0, Lz1/q;->d:[Lx1/a;

    aget-object v2, v2, p1

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lz1/q;->c:[I

    aput p2, v0, p1

    iget-object p2, p0, Lz1/q;->d:[Lx1/a;

    aput-object p3, p2, p1

    return v1
.end method

.method public final h(Lz1/s;)V
    .locals 2

    invoke-virtual {p1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/u;

    instance-of v1, v0, Lz1/n;

    if-eqz v1, :cond_0

    check-cast v0, Lz1/n;

    invoke-virtual {p0, v0}, Lz1/q;->k(Lz1/n;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lz1/q;->m(Lz1/u;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Lz1/u;)V
    .locals 9

    invoke-virtual {p1}, Lz1/u;->n()Lw1/t;

    move-result-object v0

    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object v1

    invoke-virtual {v0}, Lw1/t;->b()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_6

    invoke-virtual {v1, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v5

    iget-object v6, p0, Lz1/q;->a:Lz1/v;

    invoke-virtual {v6, v2}, Lz1/v;->y(Lw1/q;)Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lz1/q;->c:[I

    aget v2, v2, v5

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lz1/q;->d:[Lx1/a;

    aget-object v2, v2, v5

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    invoke-virtual {v1, v4}, Lw1/r;->A(I)Lw1/q;

    move-result-object v5

    invoke-virtual {v5}, Lw1/q;->B()I

    move-result v7

    iget-object v8, p0, Lz1/q;->a:Lz1/v;

    invoke-virtual {v8, v5}, Lz1/v;->y(Lw1/q;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lz1/q;->c:[I

    aget v5, v5, v7

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Lz1/q;->d:[Lx1/a;

    aget-object v6, v5, v7

    :cond_1
    const-string v5, "Unexpected op"

    const/4 v7, 0x6

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v1

    if-ne v1, v4, :cond_4

    move-object v1, v2

    check-cast v1, Lx1/g0;

    invoke-virtual {v1}, Lx1/g0;->f()I

    move-result v1

    if-eq v1, v7, :cond_2

    goto/16 :goto_3

    :cond_2
    check-cast v2, Lx1/p;

    invoke-virtual {v2}, Lx1/p;->B()I

    move-result v1

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-lez v1, :cond_3

    goto :goto_1

    :pswitch_1
    if-gtz v1, :cond_3

    goto :goto_1

    :pswitch_2
    if-ltz v1, :cond_3

    goto :goto_1

    :pswitch_3
    if-gez v1, :cond_3

    goto :goto_1

    :pswitch_4
    if-eqz v1, :cond_3

    goto :goto_1

    :pswitch_5
    if-nez v1, :cond_3

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    move-object v1, v2

    check-cast v1, Lx1/g0;

    invoke-virtual {v1}, Lx1/g0;->f()I

    move-result v1

    if-eq v1, v7, :cond_5

    goto :goto_3

    :cond_5
    check-cast v2, Lx1/p;

    invoke-virtual {v2}, Lx1/p;->B()I

    move-result v1

    check-cast v6, Lx1/p;

    invoke-virtual {v6}, Lx1/p;->B()I

    move-result v2

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    if-le v1, v2, :cond_3

    goto :goto_1

    :pswitch_7
    if-gt v1, v2, :cond_3

    goto :goto_1

    :pswitch_8
    if-lt v1, v2, :cond_3

    goto :goto_1

    :pswitch_9
    if-ge v1, v2, :cond_3

    goto :goto_1

    :pswitch_a
    if-eq v1, v2, :cond_3

    goto :goto_1

    :pswitch_b
    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object v2

    if-eqz v1, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lz1/s;->B()Lb2/j;

    move-result-object v0

    invoke-virtual {v0, v4}, Lb2/j;->B(I)I

    move-result v0

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Lz1/s;->B()Lb2/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lb2/j;->B(I)I

    move-result v0

    :goto_5
    iget-object v1, p0, Lz1/q;->a:Lz1/v;

    invoke-virtual {v1}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/s;

    invoke-virtual {p0, v0}, Lz1/q;->a(Lz1/s;)V

    iget-object v0, p0, Lz1/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    :goto_6
    invoke-virtual {v2}, Lz1/s;->B()Lb2/j;

    move-result-object p1

    invoke-virtual {p1}, Lb2/j;->size()I

    move-result p1

    if-ge v3, p1, :cond_9

    invoke-virtual {v2}, Lz1/s;->B()Lb2/j;

    move-result-object p1

    invoke-virtual {p1, v3}, Lb2/j;->B(I)I

    move-result p1

    iget-object v0, p0, Lz1/q;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/s;

    invoke-virtual {p0, p1}, Lz1/q;->a(Lz1/s;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final j(Lz1/u;I)Lx1/a;
    .locals 7

    invoke-virtual {p1}, Lz1/u;->o()Lw1/h;

    move-result-object v0

    invoke-virtual {p1}, Lz1/u;->n()Lw1/t;

    move-result-object v1

    invoke-virtual {v1}, Lw1/t;->d()I

    move-result v1

    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v3

    iget-object v4, p0, Lz1/q;->c:[I

    aget v4, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lz1/q;->d:[Lx1/a;

    aget-object v3, v4, v3

    :goto_0
    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v4

    if-ne v4, v6, :cond_1

    check-cast v0, Lw1/d;

    invoke-virtual {v0}, Lw1/d;->t()Lx1/a;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v6}, Lw1/r;->A(I)Lw1/q;

    move-result-object v0

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    iget-object v4, p0, Lz1/q;->c:[I

    aget v4, v4, v0

    if-eq v4, v6, :cond_2

    move-object v0, v5

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lz1/q;->d:[Lx1/a;

    aget-object v0, v4, v0

    :goto_1
    if-eqz v3, :cond_9

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    const/4 v4, 0x6

    if-eq p2, v4, :cond_4

    return-object v5

    :cond_4
    check-cast v3, Lx1/p;

    invoke-virtual {v3}, Lx1/p;->B()I

    move-result p2

    check-cast v0, Lx1/p;

    invoke-virtual {v0}, Lx1/p;->B()I

    move-result v0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected op"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    ushr-int p1, p2, v0

    goto :goto_4

    :pswitch_2
    shr-int p1, p2, v0

    goto :goto_4

    :pswitch_3
    shl-int p1, p2, v0

    goto :goto_4

    :pswitch_4
    xor-int p1, p2, v0

    goto :goto_4

    :pswitch_5
    or-int p1, p2, v0

    goto :goto_4

    :pswitch_6
    and-int p1, p2, v0

    goto :goto_4

    :pswitch_7
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    rem-int/2addr p2, v0

    goto :goto_3

    :pswitch_8
    if-nez v0, :cond_6

    :goto_2
    const/4 p1, 0x0

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    div-int/2addr p2, v0

    goto :goto_3

    :pswitch_9
    mul-int p2, p2, v0

    goto :goto_3

    :pswitch_a
    invoke-virtual {p1}, Lb2/f;->size()I

    move-result p1

    if-ne p1, v6, :cond_7

    sub-int/2addr v0, p2

    move p1, v0

    goto :goto_4

    :cond_7
    sub-int/2addr p2, v0

    goto :goto_3

    :pswitch_b
    add-int/2addr p2, v0

    :goto_3
    move p1, p2

    :goto_4
    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {p1}, Lx1/p;->C(I)Lx1/p;

    move-result-object v5

    :cond_9
    :goto_5
    return-object v5

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final k(Lz1/n;)V
    .locals 11

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    iget-object v1, p0, Lz1/q;->c:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lz1/n;->u()Lw1/r;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    invoke-virtual {p1, v5}, Lz1/n;->S(I)I

    move-result v7

    invoke-virtual {v1, v5}, Lw1/r;->A(I)Lw1/q;

    move-result-object v8

    invoke-virtual {v8}, Lw1/q;->B()I

    move-result v8

    iget-object v9, p0, Lz1/q;->c:[I

    aget v9, v9, v8

    iget-object v10, p0, Lz1/q;->g:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    const/4 v10, 0x1

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    if-ne v9, v10, :cond_4

    if-nez v3, :cond_2

    iget-object v3, p0, Lz1/q;->d:[Lx1/a;

    aget-object v3, v3, v8

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lz1/q;->d:[Lx1/a;

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v2, v9

    goto :goto_2

    :cond_5
    move v2, v6

    :goto_2
    invoke-virtual {p0, v0, v2, v3}, Lz1/q;->g(IILx1/a;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0, v2}, Lz1/q;->b(II)V

    :cond_6
    return-void
.end method

.method public final l(Lz1/s;)V
    .locals 2

    invoke-virtual {p1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/u;

    instance-of v1, v0, Lz1/n;

    if-eqz v1, :cond_0

    check-cast v0, Lz1/n;

    invoke-virtual {p0, v0}, Lz1/q;->k(Lz1/n;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Lz1/u;)V
    .locals 8

    invoke-virtual {p1}, Lz1/u;->o()Lw1/h;

    move-result-object v0

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {v1}, Lw1/t;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {v1}, Lw1/t;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lz1/q;->i(Lz1/u;)V

    :cond_1
    invoke-virtual {p1}, Lz1/u;->n()Lw1/t;

    move-result-object v1

    invoke-virtual {v1}, Lw1/t;->d()I

    move-result v1

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    const/16 v3, 0x11

    if-eq v1, v3, :cond_3

    const/16 v3, 0x12

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object v3

    invoke-virtual {v3}, Lz1/s;->v()Lz1/s;

    move-result-object v3

    invoke-virtual {v3}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/u;

    invoke-virtual {v3}, Lz1/u;->t()Lw1/q;

    move-result-object v3

    :cond_4
    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v1, v7, :cond_7

    const/4 v4, 0x5

    if-eq v1, v4, :cond_6

    const/16 v0, 0x38

    if-eq v1, v0, :cond_5

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v3}, Lw1/q;->f()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lz1/q;->j(Lz1/u;I)Lx1/a;

    move-result-object v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lz1/q;->c:[I

    aget p1, p1, v5

    if-ne p1, v2, :cond_8

    iget-object v0, p0, Lz1/q;->d:[Lx1/a;

    aget-object v6, v0, v5

    move v2, p1

    goto :goto_2

    :cond_6
    check-cast v0, Lw1/d;

    invoke-virtual {v0}, Lw1/d;->t()Lx1/a;

    move-result-object v6

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v0

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object p1

    invoke-virtual {p1, v4}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    iget-object v0, p0, Lz1/q;->c:[I

    aget v2, v0, p1

    iget-object v0, p0, Lz1/q;->d:[Lx1/a;

    aget-object v6, v0, p1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v2, 0x2

    :goto_2
    invoke-virtual {p0, v5, v2, v6}, Lz1/q;->g(IILx1/a;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v5, v2}, Lz1/q;->b(II)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
