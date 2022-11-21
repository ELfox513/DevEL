.class public final Lz1/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:I

.field public final i:Z

.field public j:[Lz1/u;

.field public k:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lz1/u;",
            ">;"
        }
    .end annotation
.end field

.field public l:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lz1/u;",
            ">;"
        }
    .end annotation
.end field

.field public m:Z


# direct methods
.method public constructor <init>(Lw1/u;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lz1/v;->h:I

    iput-boolean p3, p0, Lz1/v;->i:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lz1/v;->m:Z

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object p2

    invoke-virtual {p2}, Lb2/m;->z()I

    move-result p2

    iput p2, p0, Lz1/v;->g:I

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object p1

    invoke-virtual {p1}, Lw1/c;->K()I

    move-result p1

    iput p1, p0, Lz1/v;->d:I

    iput p1, p0, Lz1/v;->e:I

    return-void
.end method

.method public static D(Lw1/u;IZ)Lz1/v;
    .locals 1

    new-instance v0, Lz1/v;

    invoke-direct {v0, p0, p1, p2}, Lz1/v;-><init>(Lw1/u;IZ)V

    invoke-virtual {v0, p0}, Lz1/v;->h(Lw1/u;)V

    return-object v0
.end method

.method public static synthetic a(Lz1/v;)[Lz1/u;
    .locals 0

    iget-object p0, p0, Lz1/v;->j:[Lz1/u;

    return-object p0
.end method

.method public static synthetic b(Lz1/v;)[Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    return-object p0
.end method

.method public static c(Lw1/c;Lb2/j;)Ljava/util/BitSet;
    .locals 4

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p1}, Lb2/j;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Lb2/j;->B(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lb2/m;->A(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static s(Lz1/s;)Lz1/u;
    .locals 6

    new-instance v0, Lz1/l;

    new-instance v1, Lw1/o;

    sget-object v2, Lw1/v;->s:Lw1/t;

    sget-object v3, Lw1/w;->d:Lw1/w;

    sget-object v4, Lw1/r;->a:Lw1/r;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-direct {v0, v1, p0}, Lz1/l;-><init>(Lw1/h;Lz1/s;)V

    return-object v0
.end method

.method public static x(Lw1/c;Lb2/j;)Lb2/j;
    .locals 4

    new-instance v0, Lb2/j;

    invoke-virtual {p1}, Lb2/j;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lb2/j;-><init>(I)V

    invoke-virtual {p1}, Lb2/j;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Lb2/j;->B(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lb2/m;->A(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lb2/j;->x(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public A()Lz1/s;
    .locals 4

    iget-object v0, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lz1/s;

    iget v2, p0, Lz1/v;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lz1/v;->g:I

    invoke-direct {v1, v0, v2, p0}, Lz1/s;-><init>(IILz1/v;)V

    invoke-virtual {v1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1}, Lz1/v;->s(Lz1/s;)Lz1/u;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public B()I
    .locals 2

    iget v0, p0, Lz1/v;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lz1/v;->d:I

    iput v1, p0, Lz1/v;->e:I

    invoke-virtual {p0}, Lz1/v;->G()V

    return v0
.end method

.method public C(Lz1/p;)V
    .locals 3

    invoke-virtual {p0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    invoke-virtual {v1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/u;

    invoke-virtual {v2, p1}, Lz1/u;->E(Lz1/p;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lz1/p;->a()I

    move-result p1

    iput p1, p0, Lz1/v;->d:I

    iput p1, p0, Lz1/v;->e:I

    return-void
.end method

.method public E(Lz1/u;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz1/v;->I(Lz1/u;Lw1/r;)V

    invoke-virtual {p0, p1, v0}, Lz1/v;->N(Lz1/u;Lw1/q;)V

    return-void
.end method

.method public F(Lz1/u;)V
    .locals 2

    iget-object v0, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lz1/v;->J(Lz1/u;Lw1/r;)V

    :cond_0
    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object p1

    iget-object v0, p0, Lz1/v;->j:[Lz1/u;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_1
    return-void
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lz1/v;->j:[Lz1/u;

    iput-object v0, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    iput-object v0, p0, Lz1/v;->l:[Ljava/util/List;

    return-void
.end method

.method public H(Lz1/u;Lw1/q;Lw1/q;)V
    .locals 1

    iget-object v0, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result p2

    iget-object v0, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p3}, Lw1/q;->B()I

    move-result p2

    iget-object p3, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    array-length v0, p3

    if-gt v0, p2, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    return-void

    :cond_2
    aget-object p2, p3, p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public I(Lz1/u;Lw1/r;)V
    .locals 4

    iget-object v0, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lz1/v;->J(Lz1/u;Lw1/r;)V

    :cond_1
    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object p2

    invoke-virtual {p2}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v2

    iget-object v3, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    aget-object v2, v3, v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final J(Lz1/u;Lw1/r;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "use not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public K()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz1/v;->f:I

    return-void
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz1/v;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    iput-object v0, p0, Lz1/v;->j:[Lz1/u;

    return-void
.end method

.method public M(I)V
    .locals 0

    iput p1, p0, Lz1/v;->d:I

    iput p1, p0, Lz1/v;->e:I

    invoke-virtual {p0}, Lz1/v;->G()V

    return-void
.end method

.method public N(Lz1/u;Lw1/q;)V
    .locals 2

    iget-object v0, p0, Lz1/v;->j:[Lz1/u;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result p2

    iget-object v0, p0, Lz1/v;->j:[Lz1/u;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    :cond_1
    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result v0

    iget-object v1, p0, Lz1/v;->j:[Lz1/u;

    aget-object v0, v1, v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result p2

    aput-object p1, v1, p2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Duplicate add of insn"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public d(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/s;

    invoke-virtual {p1}, Lz1/s;->y()I

    move-result p1

    return p1
.end method

.method public e(I)I
    .locals 2

    iget v0, p0, Lz1/v;->e:I

    iget v1, p0, Lz1/v;->f:I

    add-int/2addr v0, v1

    add-int/2addr v1, p1

    iput v1, p0, Lz1/v;->f:I

    iget v1, p0, Lz1/v;->d:I

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lz1/v;->d:I

    return v0
.end method

.method public final f()V
    .locals 4

    iget-boolean v0, p0, Lz1/v;->m:Z

    if-nez v0, :cond_2

    iget v0, p0, Lz1/v;->d:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lz1/v;->d:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lz1/v$b;

    invoke-direct {v1, p0}, Lz1/v$b;-><init>(Lz1/v;)V

    invoke-virtual {p0, v1}, Lz1/v;->l(Lz1/u$a;)V

    iget v1, p0, Lz1/v;->d:I

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lz1/v;->l:[Ljava/util/List;

    :goto_1
    iget v1, p0, Lz1/v;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lz1/v;->l:[Ljava/util/List;

    iget-object v2, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No use list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public g()Ljava/util/BitSet;
    .locals 4

    iget-object v0, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v0}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p0}, Lz1/v;->o()Lz1/s;

    move-result-object v0

    invoke-virtual {v0}, Lz1/s;->p()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    iget-object v3, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/s;

    invoke-virtual {v0}, Lz1/s;->C()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final h(Lw1/u;)V
    .locals 4

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lz1/v;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p1, v1, p0}, Lz1/s;->G(Lw1/u;ILz1/v;)Lz1/s;

    move-result-object v2

    iget-object v3, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    invoke-virtual {p1}, Lw1/u;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lb2/m;->A(I)I

    move-result p1

    iget-object v0, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/s;

    invoke-virtual {p1}, Lz1/s;->D()Lz1/s;

    move-result-object p1

    invoke-virtual {p1}, Lz1/s;->p()I

    move-result p1

    iput p1, p0, Lz1/v;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lz1/v;->c:I

    return-void
.end method

.method public i(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lz1/u;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/u;

    invoke-virtual {v0}, Lz1/u;->i()Lz1/s;

    move-result-object v1

    invoke-virtual {v1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/u;

    if-ne v0, v5, :cond_1

    invoke-virtual {p0, v5}, Lz1/v;->F(Lz1/u;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    move-object v5, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/u;

    :goto_2
    invoke-virtual {p0}, Lz1/v;->q()Lz1/s;

    move-result-object v6

    if-eq v1, v6, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lz1/u;->o()Lw1/h;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lz1/u;->o()Lw1/h;

    move-result-object v0

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->b()I

    move-result v0

    if-ne v0, v4, :cond_0

    :cond_4
    new-instance v0, Lw1/o;

    sget-object v4, Lw1/v;->s:Lw1/t;

    sget-object v5, Lw1/w;->d:Lw1/w;

    sget-object v6, Lw1/r;->a:Lw1/r;

    invoke-direct {v0, v4, v5, v3, v6}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-static {v0, v1}, Lz1/u;->D(Lw1/h;Lz1/s;)Lz1/u;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lz1/s;->C()Ljava/util/BitSet;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    :goto_3
    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lz1/s;->w()I

    move-result v3

    if-eq v2, v3, :cond_5

    invoke-virtual {v1, v2}, Lz1/s;->I(I)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_3

    :cond_6
    return-void
.end method

.method public j(ZLz1/s$b;)V
    .locals 7

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lz1/v;->q()Lz1/s;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lz1/v;->o()Lz1/s;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/s;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/s;

    invoke-virtual {v2}, Lz1/s;->p()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lz1/s;->C()Ljava/util/BitSet;

    move-result-object v4

    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    :goto_3
    if-ltz v5, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lz1/s;->p()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    invoke-interface {p2, v2, v3}, Lz1/s$b;->a(Lz1/s;Lz1/s;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public k(Lz1/s$b;)V
    .locals 6

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p0}, Lz1/v;->o()Lz1/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/s;

    invoke-virtual {v2}, Lz1/s;->o()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lz1/s;->p()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/s;

    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lz1/s;->p()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lz1/s$b;->a(Lz1/s;Lz1/s;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l(Lz1/u$a;)V
    .locals 2

    iget-object v0, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    invoke-virtual {v1, p1}, Lz1/s;->l(Lz1/u$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz1/v;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n(I)Lz1/u;
    .locals 1

    iget-boolean v0, p0, Lz1/v;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lz1/v;->j:[Lz1/u;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lz1/v;->u()I

    move-result v0

    new-array v0, v0, [Lz1/u;

    iput-object v0, p0, Lz1/v;->j:[Lz1/u;

    new-instance v0, Lz1/v$a;

    invoke-direct {v0, p0}, Lz1/v$a;-><init>(Lz1/v;)V

    invoke-virtual {p0, v0}, Lz1/v;->l(Lz1/u$a;)V

    iget-object v0, p0, Lz1/v;->j:[Lz1/u;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No def list in back mode"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o()Lz1/s;
    .locals 2

    iget-object v0, p0, Lz1/v;->a:Ljava/util/ArrayList;

    iget v1, p0, Lz1/v;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/s;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lz1/v;->b:I

    return v0
.end method

.method public q()Lz1/s;
    .locals 2

    iget v0, p0, Lz1/v;->c:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/s;

    :goto_0
    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lz1/v;->c:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lz1/v;->h:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lz1/v;->d:I

    return v0
.end method

.method public v()[Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList<",
            "Lz1/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz1/v;->f()V

    :cond_0
    iget v0, p0, Lz1/v;->d:I

    new-array v0, v0, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lz1/v;->d:I

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lz1/v;->k:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public w(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lz1/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz1/v;->l:[Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz1/v;->f()V

    :cond_0
    iget-object v0, p0, Lz1/v;->l:[Ljava/util/List;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public y(Lw1/q;)Z
    .locals 4

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/v;->n(I)Lz1/u;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lz1/u;->j()Lw1/q;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    invoke-virtual {p0, p1}, Lz1/v;->w(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/u;

    invoke-virtual {v0}, Lz1/u;->o()Lw1/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/16 v3, 0x36

    if-ne v0, v3, :cond_2

    return v2

    :cond_3
    return v1
.end method

.method public z()V
    .locals 4

    iget v0, p0, Lz1/v;->c:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lz1/v;->c:I

    new-instance v0, Lz1/s;

    iget v1, p0, Lz1/v;->c:I

    iget v2, p0, Lz1/v;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lz1/v;->g:I

    invoke-direct {v0, v1, v2, p0}, Lz1/s;-><init>(IILz1/v;)V

    iget-object v1, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lz1/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/s;

    invoke-virtual {v2, v0}, Lz1/s;->k(Lz1/s;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz1/v;->a:Ljava/util/ArrayList;

    iget v1, p0, Lz1/v;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lz1/v;->c:I

    iget v0, p0, Lz1/v;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lz1/v;->g:I

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must be called at most once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
