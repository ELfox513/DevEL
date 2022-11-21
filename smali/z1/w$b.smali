.class public Lz1/w$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/w$b$b;
    }
.end annotation


# instance fields
.field public final a:Lz1/s;

.field public final b:[Lw1/q;

.field public final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lz1/u;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lz1/u;",
            "Lz1/u;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lz1/w$b$b;

.field public final synthetic f:Lz1/w;


# direct methods
.method public constructor <init>(Lz1/w;Lz1/s;)V
    .locals 2

    iput-object p1, p0, Lz1/w$b;->f:Lz1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz1/w$b;->a:Lz1/s;

    invoke-static {p1}, Lz1/w;->a(Lz1/w;)[[Lw1/q;

    move-result-object v0

    invoke-virtual {p2}, Lz1/s;->p()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lz1/w$b;->b:[Lw1/q;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lz1/w$b;->c:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz1/w$b;->d:Ljava/util/HashMap;

    new-instance v0, Lz1/w$b$b;

    invoke-direct {v0, p0}, Lz1/w$b$b;-><init>(Lz1/w$b;)V

    iput-object v0, p0, Lz1/w$b;->e:Lz1/w$b$b;

    invoke-static {p1}, Lz1/w;->a(Lz1/w;)[[Lw1/q;

    move-result-object p1

    invoke-virtual {p2}, Lz1/s;->p()I

    move-result p2

    const/4 v0, 0x0

    aput-object v0, p1, p2

    return-void
.end method

.method public static synthetic d(Lz1/w$b;)Lz1/s;
    .locals 0

    iget-object p0, p0, Lz1/w$b;->a:Lz1/s;

    return-object p0
.end method

.method public static synthetic e(Lz1/w$b;)[Lw1/q;
    .locals 0

    iget-object p0, p0, Lz1/w$b;->b:[Lw1/q;

    return-object p0
.end method


# virtual methods
.method public a(Lz1/n;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz1/w$b;->h(Lz1/u;)V

    return-void
.end method

.method public b(Lz1/l;)V
    .locals 1

    iget-object v0, p0, Lz1/w$b;->e:Lz1/w$b$b;

    invoke-virtual {p1, v0}, Lz1/l;->F(Lz1/p;)V

    invoke-virtual {p0, p1}, Lz1/w$b;->h(Lz1/u;)V

    return-void
.end method

.method public c(Lz1/l;)V
    .locals 7

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v1

    invoke-virtual {p1}, Lz1/l;->u()Lw1/r;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v2

    iget-object v4, p0, Lz1/w$b;->e:Lz1/w$b$b;

    invoke-virtual {p1, v4}, Lz1/l;->F(Lz1/p;)V

    invoke-virtual {p1}, Lz1/l;->u()Lw1/r;

    move-result-object v4

    invoke-virtual {v4, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v4}, Lw1/q;->B()I

    move-result v4

    iget-object v5, p0, Lz1/w$b;->b:[Lw1/q;

    aget-object v2, v5, v2

    invoke-virtual {v2}, Lw1/q;->z()Lw1/k;

    move-result-object v2

    invoke-virtual {v0}, Lw1/q;->z()Lw1/k;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v2

    :cond_0
    iget-object v6, p0, Lz1/w$b;->f:Lz1/w;

    invoke-static {v6, v4}, Lz1/w;->g(Lz1/w;I)Lw1/k;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5, v6}, Lw1/k;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v0}, Lw1/q;->getType()Ly1/c;

    move-result-object v0

    invoke-static {v4, v0, v5}, Lw1/q;->L(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object v0

    invoke-static {}, Lz1/m;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_3

    invoke-static {v5, v2}, Lz1/w;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lz1/w$b;->f:Lz1/w;

    invoke-static {v4}, Lz1/w;->i(Lz1/w;)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    iget-object v2, p0, Lz1/w$b;->f:Lz1/w;

    invoke-static {v2}, Lz1/w;->i(Lz1/w;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v2

    invoke-virtual {v0}, Lw1/q;->getType()Ly1/c;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lw1/q;->K(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object v2

    invoke-static {v2}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v2

    new-instance v3, Lw1/o;

    invoke-static {v0}, Lw1/v;->z(Ly1/d;)Lw1/t;

    move-result-object v4

    sget-object v5, Lw1/w;->d:Lw1/w;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v2}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    iget-object v2, p0, Lz1/w$b;->a:Lz1/s;

    invoke-static {v3, v2}, Lz1/u;->D(Lw1/h;Lz1/s;)Lz1/u;

    move-result-object v2

    iget-object v3, p0, Lz1/w$b;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lz1/w$b;->f(ILw1/q;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lz1/w$b;->h(Lz1/u;)V

    iget-object v0, p0, Lz1/w$b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0, v1, v0}, Lz1/w$b;->f(ILw1/q;)V

    :goto_1
    return-void
.end method

.method public final f(ILw1/q;)V
    .locals 4

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p2}, Lw1/q;->z()Lw1/k;

    move-result-object v1

    iget-object v2, p0, Lz1/w$b;->b:[Lw1/q;

    aput-object p2, v2, p1

    array-length p1, v2

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lz1/w$b;->b:[Lw1/q;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lz1/w$b;->b:[Lw1/q;

    aput-object p2, v2, p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lz1/w$b;->f:Lz1/w;

    invoke-static {p1, p2}, Lz1/w;->f(Lz1/w;Lw1/q;)V

    iget-object p1, p0, Lz1/w$b;->b:[Lw1/q;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    iget-object p2, p0, Lz1/w$b;->b:[Lw1/q;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-virtual {p2}, Lw1/q;->z()Lw1/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw1/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lz1/w$b;->b:[Lw1/q;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lw1/q;->Q(Lw1/k;)Lw1/q;

    move-result-object p2

    aput-object p2, v2, p1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public g()V
    .locals 5

    iget-object v0, p0, Lz1/w$b;->a:Lz1/s;

    invoke-virtual {v0, p0}, Lz1/s;->l(Lz1/u$a;)V

    invoke-virtual {p0}, Lz1/w$b;->i()V

    iget-object v0, p0, Lz1/w$b;->a:Lz1/s;

    invoke-virtual {v0}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/u;

    iget-object v4, p0, Lz1/w$b;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz1/u;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lz1/u;->A()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lz1/w$b;->c:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lz1/w$b;->a:Lz1/s;

    invoke-virtual {v0}, Lz1/s;->o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    iget-object v3, p0, Lz1/w$b;->a:Lz1/s;

    if-eq v1, v3, :cond_3

    if-eqz v2, :cond_4

    iget-object v2, p0, Lz1/w$b;->b:[Lw1/q;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lz1/w$b;->b:[Lw1/q;

    invoke-static {v2}, Lz1/w;->e([Lw1/q;)[Lw1/q;

    move-result-object v2

    :goto_3
    iget-object v3, p0, Lz1/w$b;->f:Lz1/w;

    invoke-static {v3}, Lz1/w;->a(Lz1/w;)[[Lw1/q;

    move-result-object v3

    invoke-virtual {v1}, Lz1/s;->p()I

    move-result v1

    aput-object v2, v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    return-void
.end method

.method public h(Lz1/u;)V
    .locals 2

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    iget-object v1, p0, Lz1/w$b;->f:Lz1/w;

    invoke-static {v1, v0}, Lz1/w;->j(Lz1/w;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lz1/w$b;->f:Lz1/w;

    invoke-static {v1}, Lz1/w;->b(Lz1/w;)I

    move-result v1

    invoke-virtual {p1, v1}, Lz1/u;->c(I)V

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lz1/w$b;->f(ILw1/q;)V

    iget-object p1, p0, Lz1/w$b;->f:Lz1/w;

    invoke-static {p1}, Lz1/w;->c(Lz1/w;)I

    return-void
.end method

.method public final i()V
    .locals 4

    new-instance v0, Lz1/w$b$a;

    invoke-direct {v0, p0}, Lz1/w$b$a;-><init>(Lz1/w$b;)V

    iget-object v1, p0, Lz1/w$b;->a:Lz1/s;

    invoke-virtual {v1}, Lz1/s;->C()Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lz1/w$b;->f:Lz1/w;

    invoke-static {v3}, Lz1/w;->d(Lz1/w;)Lz1/v;

    move-result-object v3

    invoke-virtual {v3}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/s;

    invoke-virtual {v3, v0}, Lz1/s;->m(Lz1/n$b;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_0

    :cond_0
    return-void
.end method
