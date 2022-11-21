.class public Lz1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/c$a;
    }
.end annotation


# instance fields
.field public final a:Lz1/v;

.field public final b:I

.field public final c:Ljava/util/BitSet;

.field public final d:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lz1/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/c;->a:Lz1/v;

    invoke-virtual {p1}, Lz1/v;->u()I

    move-result v0

    iput v0, p0, Lz1/c;->b:I

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lz1/c;->c:Ljava/util/BitSet;

    invoke-virtual {p1}, Lz1/v;->v()[Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lz1/c;->d:[Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lz1/u;)Z
    .locals 0

    invoke-static {p0}, Lz1/c;->b(Lz1/u;)Z

    move-result p0

    return p0
.end method

.method public static b(Lz1/u;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lz1/u;->x()Z

    move-result p0

    return p0
.end method

.method public static d(Lz1/v;)V
    .locals 1

    new-instance v0, Lz1/c;

    invoke-direct {v0, p0}, Lz1/c;-><init>(Lz1/v;)V

    invoke-virtual {v0}, Lz1/c;->f()V

    return-void
.end method


# virtual methods
.method public final c(ILjava/util/BitSet;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lz1/c;->d:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/u;

    invoke-static {v2}, Lz1/c;->b(Lz1/u;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Ljava/util/BitSet;

    iget v1, p0, Lz1/c;->b:I

    invoke-direct {p2, v1}, Ljava/util/BitSet;-><init>(I)V

    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lz1/c;->d:[Ljava/util/ArrayList;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/u;

    invoke-virtual {v1}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lz1/c;->c(ILjava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_5
    return v3

    :cond_6
    return v0
.end method

.method public final e()V
    .locals 13

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lz1/c;->a:Lz1/v;

    invoke-virtual {v1}, Lz1/v;->g()Ljava/util/BitSet;

    move-result-object v1

    iget-object v2, p0, Lz1/c;->a:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/s;

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v5}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz1/u;

    invoke-virtual {v7}, Lz1/u;->u()Lw1/r;

    move-result-object v8

    invoke-virtual {v8}, Lb2/f;->size()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    invoke-virtual {v8, v10}, Lw1/r;->A(I)Lw1/q;

    move-result-object v11

    iget-object v12, p0, Lz1/c;->d:[Ljava/util/ArrayList;

    invoke-virtual {v11}, Lw1/q;->B()I

    move-result v11

    aget-object v11, v12, v11

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lz1/u;->t()Lw1/q;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lz1/c;->d:[Ljava/util/ArrayList;

    invoke-virtual {v7}, Lw1/q;->B()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz1/u;

    instance-of v10, v9, Lz1/n;

    if-eqz v10, :cond_4

    check-cast v9, Lz1/n;

    invoke-virtual {v9, v7}, Lz1/n;->U(Lw1/q;)V

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lz1/c;->a:Lz1/v;

    invoke-virtual {v1, v0}, Lz1/v;->i(Ljava/util/Set;)V

    return-void
.end method

.method public final f()V
    .locals 8

    invoke-virtual {p0}, Lz1/c;->e()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lz1/c;->a:Lz1/v;

    new-instance v2, Lz1/c$a;

    iget-object v3, p0, Lz1/c;->c:Ljava/util/BitSet;

    invoke-direct {v2, v3}, Lz1/c$a;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {v1, v2}, Lz1/v;->l(Lz1/u$a;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lz1/c;->c:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_5

    iget-object v3, p0, Lz1/c;->c:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->clear(I)V

    iget-object v3, p0, Lz1/c;->d:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lz1/c;->c(ILjava/util/BitSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v3, p0, Lz1/c;->a:Lz1/v;

    invoke-virtual {v3, v1}, Lz1/v;->n(I)Lz1/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lz1/u;->u()Lw1/r;

    move-result-object v3

    invoke-virtual {v3}, Lb2/f;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_4

    invoke-virtual {v3, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v5

    iget-object v6, p0, Lz1/c;->d:[Ljava/util/ArrayList;

    invoke-virtual {v5}, Lw1/q;->B()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lz1/c;->a:Lz1/v;

    invoke-virtual {v5}, Lw1/q;->B()I

    move-result v7

    invoke-virtual {v6, v7}, Lz1/v;->n(I)Lz1/u;

    move-result-object v6

    invoke-static {v6}, Lz1/c;->b(Lz1/u;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lz1/c;->c:Ljava/util/BitSet;

    invoke-virtual {v5}, Lw1/q;->B()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lz1/c;->a:Lz1/v;

    invoke-virtual {v1, v0}, Lz1/v;->i(Ljava/util/Set;)V

    return-void
.end method
