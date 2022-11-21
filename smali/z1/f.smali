.class public Lz1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/f$d;,
        Lz1/f$c;
    }
.end annotation


# instance fields
.field public final a:Lz1/v;

.field public final b:I

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/f$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {p1}, Lz1/v;->u()I

    move-result p1

    iput p1, p0, Lz1/f;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz1/f;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lz1/f;)Lz1/v;
    .locals 0

    iget-object p0, p0, Lz1/f;->a:Lz1/v;

    return-object p0
.end method

.method public static synthetic b(Lz1/f;Lz1/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz1/f;->l(Lz1/u;)V

    return-void
.end method

.method public static k(Lz1/v;)V
    .locals 1

    new-instance v0, Lz1/f;

    invoke-direct {v0, p0}, Lz1/f;-><init>(Lz1/v;)V

    invoke-virtual {v0}, Lz1/f;->t()V

    return-void
.end method


# virtual methods
.method public final c(Lz1/f$c;Lz1/f$c;)V
    .locals 1

    iget-object v0, p2, Lz1/f$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lz1/f$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lz1/f$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lz1/f$c;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final d(Lw1/q;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/f$c;

    iget-object v1, v1, Lz1/f$c;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final e(Lz1/u;)Lz1/u;
    .locals 1

    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object p1

    invoke-virtual {p1}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    iget-object v0, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/s;

    invoke-virtual {p1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/u;

    return-object p1
.end method

.method public final f(Lz1/u;)Lz1/u;
    .locals 2

    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object p1

    invoke-virtual {p1}, Lz1/s;->C()Ljava/util/BitSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    iget-object v1, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {v1}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/s;

    invoke-virtual {p1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/u;

    return-object p1
.end method

.method public final g(Lz1/u;Lw1/q;Ljava/util/HashSet;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/u;",
            "Lw1/q;",
            "Ljava/util/HashSet<",
            "Lz1/u;",
            ">;)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p3

    new-instance v8, Lx1/e0;

    sget-object v0, Lw1/f;->b:Ly1/c;

    invoke-direct {v8, v0}, Lx1/e0;-><init>(Ly1/c;)V

    sget-object v9, Lw1/r;->a:Lw1/r;

    const/4 v3, 0x0

    const/16 v4, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lz1/f;->i(Lz1/u;Lw1/r;Lw1/q;ILx1/a;)V

    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object v0

    invoke-virtual {v0}, Lz1/s;->v()Lz1/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz1/s;->E(Lz1/s;)Lz1/s;

    move-result-object v10

    invoke-virtual {v10}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lz1/u;

    iget-object v0, v6, Lz1/f;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->B()I

    move-result v0

    invoke-static {v0, v8}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v12

    const/16 v4, 0x38

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v12

    invoke-virtual/range {v0 .. v5}, Lz1/f;->h(Lz1/u;Lw1/r;Lw1/q;ILx1/a;)V

    invoke-virtual {v10}, Lz1/s;->v()Lz1/s;

    move-result-object v0

    invoke-virtual {v10, v0}, Lz1/s;->E(Lz1/s;)Lz1/s;

    move-result-object v9

    invoke-virtual {v9}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lz1/u;

    new-instance v0, Lx1/a0;

    new-instance v1, Lx1/d0;

    const-string v2, "<init>"

    invoke-direct {v1, v2}, Lx1/d0;-><init>(Ljava/lang/String;)V

    new-instance v2, Lx1/d0;

    const-string v3, "(I)V"

    invoke-direct {v2, v3}, Lx1/d0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lx1/a0;-><init>(Lx1/d0;Lx1/d0;)V

    new-instance v5, Lx1/z;

    invoke-direct {v5, v8, v0}, Lx1/z;-><init>(Lx1/e0;Lx1/a0;)V

    move-object v0, p2

    invoke-static {v12, p2}, Lw1/r;->E(Lw1/q;Lw1/q;)Lw1/r;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x34

    move-object v0, p0

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lz1/f;->i(Lz1/u;Lw1/r;Lw1/q;ILx1/a;)V

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lz1/s;->v()Lz1/s;

    move-result-object v0

    invoke-virtual {v9, v0}, Lz1/s;->E(Lz1/s;)Lz1/s;

    move-result-object v8

    invoke-virtual {v8}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lz1/u;

    invoke-static {v12}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v2

    const/16 v4, 0x23

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v5}, Lz1/f;->i(Lz1/u;Lw1/r;Lw1/q;ILx1/a;)V

    invoke-virtual {v8}, Lz1/s;->w()I

    move-result v0

    iget-object v1, v6, Lz1/f;->a:Lz1/v;

    invoke-virtual {v1}, Lz1/v;->q()Lz1/s;

    move-result-object v1

    invoke-virtual {v1}, Lz1/s;->p()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lz1/s;->K(II)V

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h(Lz1/u;Lw1/r;Lw1/q;ILx1/a;)V
    .locals 7

    invoke-virtual {p1}, Lz1/u;->o()Lw1/h;

    move-result-object v0

    const/16 v1, 0x38

    if-ne p4, v1, :cond_0

    invoke-virtual {p3}, Lw1/q;->getType()Ly1/c;

    move-result-object p4

    invoke-static {p4}, Lw1/v;->E(Ly1/d;)Lw1/t;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-static {p4, p3, p2, p5}, Lw1/v;->V(ILy1/d;Ly1/e;Lx1/a;)Lw1/t;

    move-result-object p4

    :goto_0
    move-object v2, p4

    if-nez p5, :cond_1

    new-instance p4, Lw1/o;

    invoke-virtual {v0}, Lw1/h;->j()Lw1/w;

    move-result-object p5

    invoke-direct {p4, v2, p5, p3, p2}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    goto :goto_1

    :cond_1
    new-instance p4, Lw1/n;

    invoke-virtual {v0}, Lw1/h;->j()Lw1/w;

    move-result-object v3

    move-object v1, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lw1/n;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V

    :goto_1
    new-instance p2, Lz1/l;

    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Lz1/l;-><init>(Lw1/h;Lz1/s;)V

    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object p3

    invoke-virtual {p3}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {p1, p2}, Lz1/v;->E(Lz1/u;)V

    return-void
.end method

.method public final i(Lz1/u;Lw1/r;Lw1/q;ILx1/a;)V
    .locals 7

    invoke-virtual {p1}, Lz1/u;->o()Lw1/h;

    move-result-object v0

    invoke-static {p4, p3, p2, p5}, Lw1/v;->V(ILy1/d;Ly1/e;Lx1/a;)Lw1/t;

    move-result-object v2

    if-nez p5, :cond_0

    new-instance p3, Lw1/z;

    invoke-virtual {v0}, Lw1/h;->j()Lw1/w;

    move-result-object p4

    sget-object p5, Ly1/b;->a:Ly1/b;

    invoke-direct {p3, v2, p4, p2, p5}, Lw1/z;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lw1/y;

    invoke-virtual {v0}, Lw1/h;->j()Lw1/w;

    move-result-object v3

    sget-object v5, Ly1/b;->a:Ly1/b;

    move-object v1, p3

    move-object v4, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lw1/y;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)V

    :goto_0
    new-instance p2, Lz1/l;

    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lz1/l;-><init>(Lw1/h;Lz1/s;)V

    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object p3

    invoke-virtual {p3}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {p1, p2}, Lz1/v;->E(Lz1/u;)V

    return-void
.end method

.method public final j()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->u()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {v2, v1}, Lz1/v;->n(I)Lz1/u;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lz1/u;->n()Lw1/t;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lz1/u;->n()Lw1/t;

    move-result-object v3

    invoke-virtual {v3}, Lw1/t;->d()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {v3}, Lz1/v;->v()[Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lz1/u;->u()Lw1/r;

    move-result-object v4

    invoke-virtual {v4, v0}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v2}, Lz1/u;->t()Lw1/q;

    move-result-object v2

    invoke-virtual {v4}, Lw1/q;->B()I

    move-result v5

    iget v6, p0, Lz1/f;->b:I

    if-ge v5, v6, :cond_1

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v5

    iget v6, p0, Lz1/f;->b:I

    if-ge v5, v6, :cond_1

    goto :goto_2

    :cond_1
    new-instance v5, Lz1/f$a;

    invoke-direct {v5, p0, v2, v4}, Lz1/f$a;-><init>(Lz1/f;Lw1/q;Lw1/q;)V

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/u;

    invoke-virtual {v3, v5}, Lz1/u;->F(Lz1/p;)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final l(Lz1/u;)V
    .locals 4

    invoke-virtual {p1}, Lz1/u;->n()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0x38

    if-ne v0, v3, :cond_0

    invoke-virtual {v1}, Lw1/q;->C()Ly1/d;

    move-result-object v3

    invoke-interface {v3}, Ly1/d;->f()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, p1}, Lz1/f;->m(Lz1/u;)Lz1/f$c;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lz1/f;->o(Lw1/q;Lz1/f$c;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne v0, p1, :cond_1

    invoke-virtual {v1}, Lw1/q;->C()Ly1/d;

    move-result-object p1

    invoke-interface {p1}, Ly1/d;->f()I

    move-result p1

    if-ne p1, v2, :cond_1

    new-instance p1, Lz1/f$c;

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v0

    iget v2, p0, Lz1/f;->b:I

    sget-object v3, Lz1/f$d;->b:Lz1/f$d;

    invoke-direct {p1, v0, v2, v3}, Lz1/f$c;-><init>(IILz1/f$d;)V

    iget-object v0, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, p1}, Lz1/f;->o(Lw1/q;Lz1/f$c;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x37

    if-ne v0, p1, :cond_2

    invoke-virtual {v1}, Lw1/q;->C()Ly1/d;

    move-result-object p1

    invoke-interface {p1}, Ly1/d;->f()I

    move-result p1

    if-ne p1, v2, :cond_2

    new-instance p1, Lz1/f$c;

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v0

    iget v2, p0, Lz1/f;->b:I

    sget-object v3, Lz1/f$d;->b:Lz1/f$d;

    invoke-direct {p1, v0, v2, v3}, Lz1/f$c;-><init>(IILz1/f$d;)V

    iget-object v0, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, p1}, Lz1/f;->o(Lw1/q;Lz1/f$c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final m(Lz1/u;)Lz1/f$c;
    .locals 4

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    invoke-virtual {p0, p1}, Lz1/f;->e(Lz1/u;)Lz1/u;

    move-result-object p1

    invoke-virtual {p1}, Lz1/u;->n()Lw1/t;

    move-result-object v1

    invoke-virtual {v1}, Lw1/t;->d()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    const/16 v2, 0x26

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object p1

    invoke-virtual {p1, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->C()Ly1/d;

    move-result-object p1

    invoke-interface {p1}, Ly1/d;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lz1/f$c;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    iget v1, p0, Lz1/f;->b:I

    sget-object v2, Lz1/f$d;->b:Lz1/f$d;

    invoke-direct {p1, v0, v1, v2}, Lz1/f$c;-><init>(IILz1/f$d;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lz1/f$c;->e:Z

    goto/16 :goto_0

    :cond_0
    new-instance p1, Lz1/f$c;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    iget v1, p0, Lz1/f;->b:I

    sget-object v2, Lz1/f$d;->p:Lz1/f$d;

    invoke-direct {p1, v0, v1, v2}, Lz1/f$c;-><init>(IILz1/f$d;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lz1/f$c;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    iget v1, p0, Lz1/f;->b:I

    sget-object v2, Lz1/f$d;->p:Lz1/f$d;

    invoke-direct {p1, v0, v1, v2}, Lz1/f$c;-><init>(IILz1/f$d;)V

    goto :goto_0

    :cond_2
    :pswitch_1
    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object p1

    invoke-virtual {p1, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz1/f;->d(Lw1/q;)I

    move-result v1

    iget-object v2, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object p1, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/f$c;

    iget-object v1, p1, Lz1/f$c;->a:Ljava/util/BitSet;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lw1/q;->getType()Ly1/c;

    move-result-object p1

    sget-object v1, Ly1/c;->C:Ly1/c;

    if-ne p1, v1, :cond_4

    new-instance p1, Lz1/f$c;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    iget v1, p0, Lz1/f;->b:I

    sget-object v2, Lz1/f$d;->b:Lz1/f$d;

    invoke-direct {p1, v0, v1, v2}, Lz1/f$c;-><init>(IILz1/f$d;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lz1/f$c;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    iget v1, p0, Lz1/f;->b:I

    sget-object v2, Lz1/f$d;->p:Lz1/f$d;

    invoke-direct {p1, v0, v1, v2}, Lz1/f$c;-><init>(IILz1/f$d;)V

    goto :goto_0

    :cond_5
    :pswitch_2
    new-instance p1, Lz1/f$c;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    iget v1, p0, Lz1/f;->b:I

    sget-object v2, Lz1/f$d;->b:Lz1/f$d;

    invoke-direct {p1, v0, v1, v2}, Lz1/f$c;-><init>(IILz1/f$d;)V

    :goto_0
    iget-object v0, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final n(Lz1/u;Lz1/f$c;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/u;",
            "Lz1/f$c;",
            "Ljava/util/ArrayList<",
            "Lw1/q;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz1/f;->d(Lw1/q;)I

    move-result v0

    iget-object v1, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object p1, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/f$c;

    if-eq p1, p2, :cond_2

    const/4 p3, 0x0

    iput-boolean p3, p2, Lz1/f$c;->e:Z

    iget-object p3, p2, Lz1/f$c;->a:Ljava/util/BitSet;

    iget-object v1, p1, Lz1/f$c;->a:Ljava/util/BitSet;

    invoke-virtual {p3, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    iget-object p3, p2, Lz1/f$c;->b:Lz1/f$d;

    iget-object v1, p1, Lz1/f$c;->b:Lz1/f$d;

    invoke-virtual {p3, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p3

    if-gez p3, :cond_0

    iget-object p3, p1, Lz1/f$c;->b:Lz1/f$d;

    iput-object p3, p2, Lz1/f$c;->b:Lz1/f$d;

    :cond_0
    invoke-virtual {p0, p2, p1}, Lz1/f;->r(Lz1/f$c;Lz1/f$c;)V

    iget-object p1, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lz1/f$c;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final o(Lw1/q;Lz1/f$c;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/q;

    iget-object v1, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v2

    invoke-virtual {v1, v2}, Lz1/v;->w(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/u;

    invoke-virtual {v2}, Lz1/u;->n()Lw1/t;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2, p2, v0}, Lz1/f;->n(Lz1/u;Lz1/f$c;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2, p2, v0}, Lz1/f;->p(Lw1/q;Lz1/u;Lz1/f$c;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final p(Lw1/q;Lz1/u;Lz1/f$c;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw1/q;",
            "Lz1/u;",
            "Lz1/f$c;",
            "Ljava/util/ArrayList<",
            "Lw1/q;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lz1/u;->n()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/16 p4, 0x21

    if-eq v0, p4, :cond_6

    const/16 p4, 0x23

    if-eq v0, p4, :cond_6

    const/16 p4, 0x2b

    if-eq v0, p4, :cond_5

    const/4 p4, 0x7

    if-eq v0, p4, :cond_5

    const/16 p4, 0x8

    if-eq v0, p4, :cond_5

    const/16 p4, 0x26

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, p4, :cond_4

    const/16 p4, 0x27

    if-eq v0, p4, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object p1, Lz1/f$d;->p:Lz1/f$d;

    iput-object p1, p3, Lz1/f$c;->b:Lz1/f$d;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Lz1/u;->u()Lw1/r;

    move-result-object p4

    invoke-virtual {p4, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object p4

    invoke-virtual {p4}, Lw1/q;->C()Ly1/d;

    move-result-object p4

    invoke-interface {p4}, Ly1/d;->l()Z

    move-result p4

    if-nez p4, :cond_1

    iput-boolean v3, p3, Lz1/f$c;->e:Z

    :cond_1
    :pswitch_1
    invoke-virtual {p2}, Lz1/u;->u()Lw1/r;

    move-result-object p4

    invoke-virtual {p4, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object p4

    invoke-virtual {p4}, Lw1/q;->C()Ly1/d;

    move-result-object p4

    invoke-interface {p4}, Ly1/d;->f()I

    move-result p4

    const/16 v0, 0x9

    if-eq p4, v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iput-boolean v3, p3, Lz1/f$c;->e:Z

    invoke-virtual {p2}, Lz1/u;->u()Lw1/r;

    move-result-object p2

    invoke-virtual {p2, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object p4

    invoke-virtual {p4}, Lw1/q;->B()I

    move-result p4

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    if-ne p4, p1, :cond_3

    invoke-virtual {p2, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz1/f;->d(Lw1/q;)I

    move-result p1

    iget-object p2, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_8

    iget-object p2, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/f$c;

    invoke-virtual {p0, p1, p3}, Lz1/f;->c(Lz1/f$c;Lz1/f$c;)V

    iget-object p2, p3, Lz1/f$c;->b:Lz1/f$d;

    iget-object p4, p1, Lz1/f$c;->b:Lz1/f$d;

    invoke-virtual {p2, p4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_8

    iget-object p1, p1, Lz1/f$c;->b:Lz1/f$d;

    iput-object p1, p3, Lz1/f$c;->b:Lz1/f$d;

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz1/f;->d(Lw1/q;)I

    move-result p1

    iget-object p2, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_8

    iget-object p2, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/f$c;

    invoke-virtual {p0, p3, p1}, Lz1/f;->c(Lz1/f$c;Lz1/f$c;)V

    iget-object p2, p1, Lz1/f$c;->b:Lz1/f$d;

    iget-object p4, p3, Lz1/f$c;->b:Lz1/f$d;

    invoke-virtual {p2, p4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_8

    iget-object p2, p3, Lz1/f$c;->b:Lz1/f$d;

    iput-object p2, p1, Lz1/f$c;->b:Lz1/f$d;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lz1/u;->u()Lw1/r;

    move-result-object p1

    invoke-virtual {p1, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->C()Ly1/d;

    move-result-object p1

    invoke-interface {p1}, Ly1/d;->l()Z

    move-result p1

    if-nez p1, :cond_8

    iput-boolean v3, p3, Lz1/f$c;->e:Z

    goto :goto_0

    :cond_5
    iget-object p1, p3, Lz1/f$c;->b:Lz1/f$d;

    sget-object p2, Lz1/f$d;->d:Lz1/f$d;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gez p1, :cond_8

    iput-object p2, p3, Lz1/f$c;->b:Lz1/f$d;

    goto :goto_0

    :cond_6
    :pswitch_2
    sget-object p1, Lz1/f$d;->k:Lz1/f$d;

    iput-object p1, p3, Lz1/f$c;->b:Lz1/f$d;

    goto :goto_0

    :cond_7
    iget-object p1, p3, Lz1/f$c;->a:Ljava/util/BitSet;

    invoke-virtual {p2}, Lz1/u;->t()Lw1/q;

    move-result-object p3

    invoke-virtual {p3}, Lw1/q;->B()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p2}, Lz1/u;->t()Lw1/q;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final q(Lz1/u;Lz1/u;ILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/u;",
            "Lz1/u;",
            "I",
            "Ljava/util/ArrayList<",
            "Lw1/q;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object p2

    invoke-virtual {p2}, Lw1/q;->getType()Ly1/c;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p2}, Ly1/c;->x()Ly1/c;

    move-result-object v1

    invoke-static {v1}, Lx1/h0;->a(Ly1/c;)Lx1/a;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Lx1/g0;

    iget-object v2, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->B()I

    move-result v2

    invoke-static {v2, v1}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lw1/r;->a:Lw1/r;

    const/4 v6, 0x5

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lz1/f;->h(Lz1/u;Lw1/r;Lw1/q;ILx1/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Lz1/f$c;Lz1/f$c;)V
    .locals 3

    iget-object v0, p2, Lz1/f$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/f$c;

    iget-object v2, v1, Lz1/f$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lz1/f$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Lz1/f$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lz1/f$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/f$c;

    iget-object v2, v1, Lz1/f$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lz1/f$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Lz1/f$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final s(Lz1/u;Lz1/u;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/u;",
            "Lz1/u;",
            "Ljava/util/ArrayList<",
            "Lw1/q;",
            ">;",
            "Ljava/util/HashSet<",
            "Lz1/u;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lz1/u;->n()Lw1/t;

    move-result-object v1

    invoke-virtual {v1}, Lw1/t;->d()I

    move-result v1

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/16 p2, 0x39

    if-eq v1, p2, :cond_4

    const/16 p2, 0x26

    const/4 v2, 0x2

    if-eq v1, p2, :cond_2

    const/16 p2, 0x27

    if-eq v1, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object p2

    invoke-virtual {p2, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->C()Ly1/d;

    move-result-object v1

    check-cast v1, Lx1/v;

    invoke-virtual {v1}, Lx1/v;->z()I

    move-result v1

    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lw1/q;

    invoke-virtual {p4}, Lw1/q;->B()I

    move-result p4

    invoke-virtual {p2, p4}, Lw1/q;->S(I)Lw1/q;

    move-result-object p4

    invoke-static {p2}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Lz1/f;->h(Lz1/u;Lw1/r;Lw1/q;ILx1/a;)V

    invoke-virtual {p4}, Lw1/q;->T()Lw1/q;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lz1/f;->g(Lz1/u;Lw1/q;Ljava/util/HashSet;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lz1/f;->f(Lz1/u;)Lz1/u;

    move-result-object p2

    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->C()Ly1/d;

    move-result-object v3

    check-cast v3, Lx1/v;

    invoke-virtual {v3}, Lx1/v;->z()I

    move-result v3

    if-ge v3, v0, :cond_3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/q;

    invoke-virtual {p2}, Lz1/u;->t()Lw1/q;

    move-result-object p3

    invoke-virtual {p3}, Lw1/q;->B()I

    move-result p3

    invoke-virtual {p1, p3}, Lw1/q;->S(I)Lw1/q;

    move-result-object v3

    invoke-static {p1}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lz1/f;->h(Lz1/u;Lw1/r;Lw1/q;ILx1/a;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p4}, Lz1/f;->g(Lz1/u;Lw1/q;Ljava/util/HashSet;)V

    invoke-virtual {p2}, Lz1/u;->i()Lz1/s;

    move-result-object p1

    invoke-virtual {p1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lz1/u;->o()Lw1/h;

    move-result-object p2

    check-cast p2, Lw1/g;

    invoke-virtual {p2}, Lw1/g;->u()Ljava/util/ArrayList;

    move-result-object p2

    :goto_1
    if-ge v3, v0, :cond_6

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lw1/q;

    invoke-virtual {p4}, Lw1/q;->B()I

    move-result p4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/d;

    invoke-static {p4, v1}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object p4

    sget-object v6, Lw1/r;->a:Lw1/r;

    const/4 v8, 0x5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lx1/a;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p4

    invoke-virtual/range {v4 .. v9}, Lz1/f;->h(Lz1/u;Lw1/r;Lw1/q;ILx1/a;)V

    invoke-virtual {p3, v3, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lz1/u;->u()Lw1/r;

    move-result-object p2

    invoke-virtual {p2, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object p2

    invoke-virtual {p2}, Lw1/q;->C()Ly1/d;

    move-result-object p2

    invoke-virtual {p0, p1}, Lz1/f;->f(Lz1/u;)Lz1/u;

    move-result-object p1

    sget-object v2, Lw1/r;->a:Lw1/r;

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v3

    const/4 v4, 0x5

    move-object v5, p2

    check-cast v5, Lx1/a;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lz1/f;->h(Lz1/u;Lw1/r;Lw1/q;ILx1/a;)V

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public final t()V
    .locals 6

    iget-object v0, p0, Lz1/f;->a:Lz1/v;

    new-instance v1, Lz1/f$b;

    invoke-direct {v1, p0}, Lz1/f$b;-><init>(Lz1/f;)V

    invoke-virtual {v0, v1}, Lz1/v;->k(Lz1/s$b;)V

    iget-object v0, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/f$c;

    iget-object v2, v1, Lz1/f$c;->b:Lz1/f$d;

    sget-object v3, Lz1/f$d;->b:Lz1/f$d;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lz1/f$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/f$c;

    iget-object v4, v1, Lz1/f$c;->b:Lz1/f$d;

    iget-object v5, v3, Lz1/f$c;->b:Lz1/f$d;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v1, Lz1/f$c;->b:Lz1/f$d;

    iput-object v4, v3, Lz1/f$c;->b:Lz1/f$d;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lz1/f;->u()V

    return-void
.end method

.method public final u()V
    .locals 7

    iget-object v0, p0, Lz1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/f$c;

    iget-boolean v2, v1, Lz1/f$c;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lz1/f$c;->b:Lz1/f$d;

    sget-object v3, Lz1/f$d;->b:Lz1/f$d;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lz1/f$c;->a:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    iget-object v3, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {v3, v1}, Lz1/v;->n(I)Lz1/u;

    move-result-object v3

    invoke-virtual {p0, v3}, Lz1/f;->e(Lz1/u;)Lz1/u;

    move-result-object v4

    invoke-virtual {v4}, Lz1/u;->u()Lw1/r;

    move-result-object v5

    invoke-virtual {v5, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->C()Ly1/d;

    move-result-object v2

    check-cast v2, Lx1/v;

    invoke-virtual {v2}, Lx1/v;->z()I

    move-result v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v3, v4, v2, v5}, Lz1/f;->q(Lz1/u;Lz1/u;ILjava/util/ArrayList;)V

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {v2, v1}, Lz1/v;->w(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/u;

    invoke-virtual {p0, v2, v4, v5, v6}, Lz1/f;->s(Lz1/u;Lz1/u;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {v1, v6}, Lz1/v;->i(Ljava/util/Set;)V

    iget-object v1, p0, Lz1/f;->a:Lz1/v;

    invoke-virtual {v1}, Lz1/v;->G()V

    iget-object v1, p0, Lz1/f;->a:Lz1/v;

    iget v2, p0, Lz1/f;->b:I

    invoke-static {v1, v2}, Lz1/t;->i(Lz1/v;I)V

    invoke-virtual {p0}, Lz1/f;->j()V

    goto :goto_0

    :cond_3
    return-void
.end method
