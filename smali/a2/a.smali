.class public La2/a;
.super La2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/a$c;,
        La2/a$b;
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lw1/k;",
            "Ljava/util/ArrayList<",
            "Lw1/q;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/l;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/l;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/n;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/BitSet;

.field public final h:Lz1/g;

.field public final i:I

.field public final j:Ljava/util/BitSet;

.field public final k:Ljava/util/BitSet;

.field public final l:Z


# direct methods
.method public constructor <init>(Lz1/v;La2/c;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, La2/e;-><init>(Lz1/v;La2/c;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lz1/v;->u()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, La2/a;->g:Ljava/util/BitSet;

    new-instance v0, Lz1/g;

    invoke-virtual {p1}, Lz1/v;->u()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lz1/g;-><init>(La2/c;I)V

    iput-object v0, p0, La2/a;->h:Lz1/g;

    iput-boolean p3, p0, La2/a;->l:Z

    invoke-virtual {p1}, Lz1/v;->t()I

    move-result p1

    iput p1, p0, La2/a;->i:I

    new-instance p2, Ljava/util/BitSet;

    mul-int/lit8 p3, p1, 0x2

    invoke-direct {p2, p3}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, La2/a;->j:Ljava/util/BitSet;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/util/BitSet;->set(II)V

    new-instance p2, Ljava/util/BitSet;

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p2, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, La2/a;->k:Ljava/util/BitSet;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, La2/a;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La2/a;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La2/a;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La2/a;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static E(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic e(I)Z
    .locals 0

    invoke-static {p0}, La2/a;->E(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(La2/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, La2/a;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic g(La2/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, La2/a;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic h(La2/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, La2/a;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic i(La2/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, La2/a;->f:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 7

    iget-object v0, p0, La2/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/q;

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v6

    invoke-virtual {p0, v6}, La2/a;->w(I)I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {v3}, Lw1/q;->x()I

    move-result v4

    invoke-virtual {p0, v3, v6}, La2/a;->j(Lw1/q;I)V

    move v3, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v4, v2}, La2/a;->L(Ljava/util/ArrayList;IIZ)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final B()V
    .locals 6

    iget-object v0, p0, La2/e;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->u()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v1}, La2/e;->b(I)Lw1/q;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lw1/q;->x()I

    move-result v3

    iget v4, p0, La2/a;->i:I

    invoke-virtual {p0, v4, v3}, La2/a;->p(II)I

    move-result v4

    :goto_1
    invoke-virtual {p0, v2, v4}, La2/a;->m(Lw1/q;I)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v3}, La2/a;->p(II)I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, v4}, La2/a;->j(Lw1/q;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final C()V
    .locals 2

    iget-object v0, p0, La2/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/n;

    invoke-virtual {p0, v1}, La2/a;->G(Lz1/n;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final D()V
    .locals 4

    iget-object v0, p0, La2/e;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->u()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, La2/a;->w(I)I

    move-result v2

    invoke-virtual {p0, v1}, La2/e;->b(I)Lw1/q;

    move-result-object v3

    if-ltz v2, :cond_1

    invoke-virtual {p0, v3, v2}, La2/a;->j(Lw1/q;I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final F(II)V
    .locals 2

    iget-object v0, p0, La2/a;->j:Ljava/util/BitSet;

    add-int/2addr p2, p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/BitSet;->set(IIZ)V

    return-void
.end method

.method public final G(Lz1/n;)V
    .locals 9

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v1

    invoke-virtual {v0}, Lw1/q;->x()I

    move-result v2

    invoke-virtual {p1}, Lz1/n;->u()Lw1/r;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, La2/a$c;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v5, v6}, La2/a$c;-><init>(I)V

    iget-object v6, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v0, p0, La2/a;->h:Lz1/g;

    invoke-virtual {v0, v1}, Lz1/a;->f(I)I

    move-result v0

    invoke-virtual {v5, v0}, La2/a$c;->a(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v6

    iget-object v7, p0, La2/e;->a:Lz1/v;

    invoke-virtual {v6}, Lw1/q;->B()I

    move-result v6

    invoke-virtual {v7, v6}, Lz1/v;->n(I)Lz1/u;

    move-result-object v6

    invoke-virtual {v6}, Lz1/u;->t()Lw1/q;

    move-result-object v6

    invoke-virtual {v6}, Lw1/q;->B()I

    move-result v7

    iget-object v8, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v6, p0, La2/a;->h:Lz1/g;

    invoke-virtual {v6, v7}, Lz1/a;->f(I)I

    move-result v6

    invoke-virtual {v5, v6}, La2/a$c;->a(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v5}, La2/a$c;->c()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-virtual {v5}, La2/a$c;->b()I

    move-result v1

    invoke-virtual {p0, v4, v1, v2, v0}, La2/a;->L(Ljava/util/ArrayList;IIZ)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget p1, p0, La2/a;->i:I

    invoke-virtual {p0, p1, v2}, La2/a;->p(II)I

    move-result p1

    :goto_4
    invoke-virtual {p0, v4, p1, v2, v0}, La2/a;->L(Ljava/util/ArrayList;IIZ)Z

    move-result v1

    if-nez v1, :cond_4

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v2}, La2/a;->p(II)I

    move-result p1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final H(II)Z
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, La2/a;->j:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final I(II)Z
    .locals 1

    iget v0, p0, La2/a;->i:I

    if-ge p1, v0, :cond_0

    add-int/2addr p1, p2

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public J(Lb2/k;)Lw1/r;
    .locals 4

    new-instance v0, Lw1/r;

    invoke-interface {p1}, Lb2/k;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lw1/r;-><init>(I)V

    invoke-interface {p1}, Lb2/k;->iterator()Lb2/i;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lb2/i;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, Lb2/i;->next()I

    move-result v3

    invoke-virtual {p0, v3}, La2/e;->b(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lw1/r;->F(ILw1/q;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final K(Lw1/q;II)Z
    .locals 1

    invoke-virtual {p1}, Lw1/q;->x()I

    move-result v0

    if-gt v0, p3, :cond_0

    iget-object p3, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, La2/a;->m(Lw1/q;I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, La2/a;->j(Lw1/q;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final L(Ljava/util/ArrayList;IIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lw1/q;",
            ">;IIZ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/q;

    iget-object v4, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, p2, p3}, La2/a;->K(Lw1/q;II)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v4, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {v2}, Lw1/q;->x()I

    move-result v2

    invoke-virtual {p0, p2, v2}, La2/a;->F(II)V

    goto :goto_0

    :cond_4
    xor-int/lit8 p1, v1, 0x1

    return p1
.end method

.method public a()Lz1/p;
    .locals 1

    invoke-virtual {p0}, La2/a;->l()V

    invoke-virtual {p0}, La2/a;->A()V

    invoke-virtual {p0}, La2/a;->D()V

    invoke-virtual {p0}, La2/a;->y()V

    invoke-virtual {p0}, La2/a;->z()V

    invoke-virtual {p0}, La2/a;->x()V

    invoke-virtual {p0}, La2/a;->C()V

    invoke-virtual {p0}, La2/a;->B()V

    iget-object v0, p0, La2/a;->h:Lz1/g;

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(Lw1/q;I)V
    .locals 3

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    iget-object v1, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, La2/a;->m(Lw1/q;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lw1/q;->x()I

    move-result v1

    iget-object v2, p0, La2/a;->h:Lz1/g;

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    invoke-virtual {v2, p1, p2, v1}, Lz1/g;->e(III)V

    iget-object p1, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    iget-object p1, p0, La2/a;->k:Ljava/util/BitSet;

    add-int/2addr v1, p2

    invoke-virtual {p1, p2, v1}, Ljava/util/BitSet;->set(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "attempt to add invalid register mapping"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Lz1/l;)V
    .locals 12

    invoke-virtual {p0, p1}, La2/a;->r(Lz1/l;)I

    move-result v0

    invoke-virtual {p1}, Lz1/l;->u()Lw1/r;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v4}, Lw1/q;->B()I

    move-result v5

    invoke-virtual {v4}, Lw1/q;->x()I

    move-result v6

    add-int v7, v0, v6

    iget-object v8, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v8, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, v5}, La2/a;->v(I)Lw1/k;

    move-result-object v5

    invoke-virtual {p0, v4, v0}, La2/a;->j(Lw1/q;I)V

    if-eqz v5, :cond_2

    invoke-virtual {p0, v0, v6}, La2/a;->F(II)V

    iget-object v4, p0, La2/a;->c:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw1/q;

    invoke-virtual {v9}, Lw1/q;->B()I

    move-result v10

    const/4 v11, -0x1

    invoke-virtual {p1, v10}, Lw1/r;->C(I)I

    move-result v10

    if-eq v11, v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v9, v0, v6}, La2/a;->K(Lw1/q;II)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v0, v7

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, La2/e;->a:Lz1/v;

    new-instance v1, La2/a$a;

    invoke-direct {v1, p0}, La2/a$a;-><init>(La2/a;)V

    invoke-virtual {v0, v1}, Lz1/v;->l(Lz1/u$a;)V

    return-void
.end method

.method public final m(Lw1/q;I)Z
    .locals 1

    invoke-virtual {p1}, Lw1/q;->x()I

    move-result v0

    invoke-virtual {p0, p2, v0}, La2/a;->I(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La2/a;->h:Lz1/g;

    invoke-virtual {v0, p1, p2}, Lz1/g;->j(Lw1/q;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final n(Ljava/util/ArrayList;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lw1/q;",
            ">;I)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/q;

    iget-object v1, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p2}, La2/a;->m(Lw1/q;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final o(Lz1/l;I[ILjava/util/BitSet;)I
    .locals 8

    sget-object v0, La2/a$b;->d:La2/a$b;

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v6, p3, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    invoke-static {v5}, La2/a;->E(I)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-le v3, v4, :cond_4

    iget v0, p0, La2/a;->i:I

    invoke-static {v0}, La2/a;->E(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, La2/a$b;->b:La2/a$b;

    goto :goto_3

    :cond_3
    sget-object v0, La2/a$b;->a:La2/a$b;

    goto :goto_3

    :cond_4
    if-lez v4, :cond_6

    iget v0, p0, La2/a;->i:I

    invoke-static {v0}, La2/a;->E(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, La2/a$b;->a:La2/a$b;

    goto :goto_3

    :cond_5
    sget-object v0, La2/a$b;->b:La2/a$b;

    :cond_6
    :goto_3
    iget v1, p0, La2/a;->i:I

    :goto_4
    invoke-virtual {p0, v1, p2, v0}, La2/a;->q(IILa2/a$b;)I

    move-result v1

    invoke-virtual {p0, v1, p1, p3, p4}, La2/a;->t(ILz1/l;[ILjava/util/BitSet;)I

    move-result v2

    if-ltz v2, :cond_7

    return v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p4}, Ljava/util/BitSet;->clear()V

    goto :goto_4
.end method

.method public final p(II)I
    .locals 1

    invoke-virtual {p0, p2}, La2/a;->u(I)La2/a$b;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, La2/a;->q(IILa2/a$b;)I

    move-result p1

    return p1
.end method

.method public final q(IILa2/a$b;)I
    .locals 3

    iget-object v0, p0, La2/a;->j:Ljava/util/BitSet;

    invoke-virtual {p3, v0, p1}, La2/a$b;->c(Ljava/util/BitSet;I)I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-ge v0, p2, :cond_0

    iget-object v1, p0, La2/a;->j:Ljava/util/BitSet;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-ne v0, p2, :cond_1

    return p1

    :cond_1
    iget-object v1, p0, La2/a;->j:Ljava/util/BitSet;

    add-int/2addr p1, v0

    invoke-virtual {p3, v1, p1}, La2/a$b;->c(Ljava/util/BitSet;I)I

    move-result p1

    goto :goto_0
.end method

.method public final r(Lz1/l;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lz1/l;->u()Lw1/r;

    move-result-object v2

    invoke-virtual {v2}, Lb2/f;->size()I

    move-result v3

    new-array v4, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    invoke-virtual {v2, v6}, Lw1/r;->A(I)Lw1/q;

    move-result-object v8

    invoke-virtual {v8}, Lw1/q;->x()I

    move-result v8

    aput v8, v4, v6

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/high16 v6, -0x80000000

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_1
    if-ge v10, v3, :cond_7

    invoke-virtual {v2, v10}, Lw1/r;->A(I)Lw1/q;

    move-result-object v13

    invoke-virtual {v13}, Lw1/q;->B()I

    move-result v13

    if-eqz v10, :cond_1

    add-int/lit8 v14, v10, -0x1

    aget v14, v4, v14

    sub-int/2addr v11, v14

    :cond_1
    iget-object v14, v0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v14, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    iget-object v14, v0, La2/a;->h:Lz1/g;

    invoke-virtual {v14, v13}, Lz1/a;->f(I)I

    move-result v13

    add-int/2addr v13, v11

    if-ltz v13, :cond_6

    invoke-virtual {v0, v13, v7}, La2/a;->I(II)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_2

    :cond_3
    new-instance v14, Ljava/util/BitSet;

    invoke-direct {v14, v3}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, v13, v1, v4, v14}, La2/a;->t(ILz1/l;[ILjava/util/BitSet;)I

    move-result v15

    if-gez v15, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v14}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    sub-int v5, v15, v16

    if-le v5, v6, :cond_5

    move v6, v5

    move v12, v13

    move-object v8, v14

    :cond_5
    if-ne v15, v7, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    if-ne v12, v9, :cond_8

    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8, v3}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, v1, v7, v4, v8}, La2/a;->o(Lz1/l;I[ILjava/util/BitSet;)I

    move-result v12

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    :goto_4
    if-ltz v3, :cond_9

    invoke-virtual {v2, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, La2/e;->c(Lz1/u;Lw1/q;)Lw1/q;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lz1/l;->K(ILw1/q;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    goto :goto_4

    :cond_9
    return v12
.end method

.method public final s(II)I
    .locals 4

    invoke-virtual {p0, p2}, La2/a;->u(I)La2/a$b;

    move-result-object v0

    iget-object v1, p0, La2/a;->k:Ljava/util/BitSet;

    invoke-virtual {v0, v1, p1}, La2/a$b;->c(Ljava/util/BitSet;I)I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-ge v1, p2, :cond_0

    iget-object v2, p0, La2/a;->k:Ljava/util/BitSet;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    if-ne v1, p2, :cond_1

    return p1

    :cond_1
    iget-object v2, p0, La2/a;->k:Ljava/util/BitSet;

    add-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, La2/a$b;->c(Ljava/util/BitSet;I)I

    move-result p1

    goto :goto_0
.end method

.method public final t(ILz1/l;[ILjava/util/BitSet;)I
    .locals 10

    invoke-virtual {p2}, Lz1/l;->u()Lw1/r;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v1

    invoke-virtual {p2}, Lz1/u;->i()Lz1/s;

    move-result-object p2

    invoke-virtual {p2}, Lz1/s;->r()Lb2/k;

    move-result-object p2

    invoke-virtual {p0, p2}, La2/a;->J(Lb2/k;)Lw1/r;

    move-result-object p2

    new-instance v2, Ljava/util/BitSet;

    iget-object v3, p0, La2/e;->a:Lz1/v;

    invoke-virtual {v3}, Lz1/v;->u()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v6

    invoke-virtual {v6}, Lw1/q;->B()I

    move-result v7

    aget v8, p3, v3

    if-eqz v3, :cond_0

    add-int/lit8 v9, v3, -0x1

    aget v9, p3, v9

    add-int/2addr p1, v9

    :cond_0
    iget-object v9, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v9, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, La2/a;->h:Lz1/g;

    invoke-virtual {v9, v7}, Lz1/a;->f(I)I

    move-result v9

    if-ne v9, p1, :cond_1

    :goto_1
    add-int/2addr v4, v8

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1, v8}, La2/a;->H(II)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const/4 v4, -0x1

    goto :goto_3

    :cond_3
    iget-object v9, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v9, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0, v6, p1}, La2/a;->m(Lw1/q;I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, La2/a;->h:Lz1/g;

    invoke-virtual {v6, p2, p1, v8}, Lz1/g;->h(Lw1/r;II)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, La2/a;->h:Lz1/g;

    invoke-virtual {v6, v0, p1, v8}, Lz1/g;->h(Lw1/r;II)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p4, v3}, Ljava/util/BitSet;->set(I)V

    :goto_2
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v4
.end method

.method public final u(I)La2/a$b;
    .locals 2

    sget-object v0, La2/a$b;->d:La2/a$b;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget p1, p0, La2/a;->i:I

    invoke-static {p1}, La2/a;->E(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object v0, La2/a$b;->a:La2/a$b;

    goto :goto_0

    :cond_0
    sget-object v0, La2/a$b;->b:La2/a$b;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final v(I)Lw1/k;
    .locals 4

    iget-object v0, p0, La2/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/q;

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/k;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final w(I)I
    .locals 3

    iget-object v0, p0, La2/e;->a:Lz1/v;

    invoke-virtual {v0, p1}, Lz1/v;->n(I)Lz1/u;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lz1/u;->n()Lw1/t;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lw1/t;->d()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lz1/u;->o()Lw1/h;

    move-result-object p1

    check-cast p1, Lw1/d;

    invoke-virtual {p1}, Lw1/d;->t()Lx1/a;

    move-result-object p1

    check-cast p1, Lx1/p;

    invoke-virtual {p1}, Lx1/p;->B()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final x()V
    .locals 12

    iget-object v0, p0, La2/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/l;

    invoke-virtual {v1}, Lz1/u;->t()Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v3

    invoke-virtual {v1}, Lz1/u;->i()Lz1/s;

    move-result-object v1

    invoke-virtual {v1}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, La2/e;->a:Lz1/v;

    invoke-virtual {v4}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    invoke-virtual {v1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/u;

    invoke-virtual {v1}, Lz1/u;->n()Lw1/t;

    move-result-object v4

    invoke-virtual {v4}, Lw1/t;->d()I

    move-result v4

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lz1/u;->u()Lw1/r;

    move-result-object v4

    invoke-virtual {v4, v6}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v4}, Lw1/q;->B()I

    move-result v7

    invoke-virtual {v4}, Lw1/q;->x()I

    move-result v8

    iget-object v9, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v9, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    iget-object v10, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    xor-int/lit8 v11, v10, 0x1

    and-int/2addr v11, v9

    if-eqz v11, :cond_3

    iget-object v10, p0, La2/a;->h:Lz1/g;

    invoke-virtual {v10, v3}, Lz1/a;->f(I)I

    move-result v10

    invoke-virtual {p0, v4, v10, v8}, La2/a;->K(Lw1/q;II)Z

    move-result v10

    :cond_3
    xor-int/lit8 v11, v9, 0x1

    and-int/2addr v11, v10

    if-eqz v11, :cond_4

    iget-object v9, p0, La2/a;->h:Lz1/g;

    invoke-virtual {v9, v7}, Lz1/a;->f(I)I

    move-result v9

    invoke-virtual {p0, v2, v9, v8}, La2/a;->K(Lw1/q;II)Z

    move-result v9

    :cond_4
    if-eqz v9, :cond_5

    if-nez v10, :cond_6

    :cond_5
    iget v9, p0, La2/a;->i:I

    invoke-virtual {p0, v9, v8}, La2/a;->p(II)I

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0, v10, v9, v8, v6}, La2/a;->L(Ljava/util/ArrayList;IIZ)Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9, v8}, La2/a;->p(II)I

    move-result v9

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lz1/u;->o()Lw1/h;

    move-result-object v2

    invoke-virtual {v2}, Lw1/h;->e()Ly1/e;

    move-result-object v2

    invoke-interface {v2}, Ly1/e;->size()I

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    iget-object v2, p0, La2/a;->h:Lz1/g;

    invoke-virtual {v2, v3}, Lz1/a;->f(I)I

    move-result v2

    iget-object v3, p0, La2/a;->h:Lz1/g;

    invoke-virtual {v3, v7}, Lz1/a;->f(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    if-nez v5, :cond_0

    move-object v3, v1

    check-cast v3, Lz1/l;

    invoke-virtual {p0, v1, v4}, La2/e;->c(Lz1/u;Lw1/q;)Lw1/q;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lz1/l;->K(ILw1/q;)V

    invoke-virtual {v1}, Lz1/u;->u()Lw1/r;

    move-result-object v1

    invoke-virtual {v1, v6}, Lw1/r;->A(I)Lw1/q;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, La2/a;->j(Lw1/q;I)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, La2/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/l;

    invoke-virtual {p0, v1}, La2/a;->k(Lz1/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 12

    iget-object v0, p0, La2/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, La2/a;->i:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_1
    if-ge v7, v5, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw1/q;

    invoke-virtual {v9}, Lw1/q;->x()I

    move-result v10

    iget-object v11, p0, La2/a;->g:Ljava/util/BitSet;

    invoke-virtual {v9}, Lw1/q;->B()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_1

    if-le v10, v8, :cond_1

    move v8, v10

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, v8}, La2/a;->s(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, La2/a;->n(Ljava/util/ArrayList;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v1, v2, v8, v6}, La2/a;->L(Ljava/util/ArrayList;IIZ)Z

    move-result v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_4
    return-void
.end method
