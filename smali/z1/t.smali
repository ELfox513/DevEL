.class public Lz1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lw1/u;IZ)Lz1/v;
    .locals 0

    invoke-static {p0, p1, p2}, Lz1/v;->D(Lw1/u;IZ)Lz1/v;

    move-result-object p0

    invoke-static {p0}, Lz1/t;->b(Lz1/v;)V

    invoke-static {p0}, Lz1/i;->b(Lz1/v;)Lz1/j;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lz1/t;->h(Lz1/v;Lz1/j;I)V

    new-instance p1, Lz1/w;

    invoke-direct {p1, p0}, Lz1/w;-><init>(Lz1/v;)V

    invoke-virtual {p1}, Lz1/w;->run()V

    invoke-virtual {p0}, Lz1/v;->z()V

    return-object p0
.end method

.method public static b(Lz1/v;)V
    .locals 0

    invoke-static {p0}, Lz1/t;->d(Lz1/v;)V

    invoke-static {p0}, Lz1/t;->c(Lz1/v;)V

    invoke-static {p0}, Lz1/t;->e(Lz1/v;)V

    return-void
.end method

.method public static c(Lz1/v;)V
    .locals 8

    invoke-virtual {p0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/s;

    invoke-virtual {v2}, Lz1/s;->F()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-virtual {v2}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/u;

    invoke-virtual {v3}, Lz1/u;->z()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    :goto_1
    if-ltz v5, :cond_0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz1/s;

    invoke-virtual {v6, v2}, Lz1/s;->E(Lz1/s;)Lz1/s;

    move-result-object v6

    invoke-virtual {v6}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz1/u;

    invoke-virtual {v7}, Lz1/u;->h()Lz1/u;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static d(Lz1/v;)V
    .locals 3

    invoke-virtual {p0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    invoke-static {v1}, Lz1/t;->g(Lz1/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lz1/s;->D()Lz1/s;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e(Lz1/v;)V
    .locals 6

    invoke-virtual {p0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    invoke-virtual {v1}, Lz1/s;->C()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    :goto_1
    if-ltz v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz1/s;

    invoke-static {v1, v4}, Lz1/t;->f(Lz1/s;Lz1/s;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Lz1/s;->E(Lz1/s;)Lz1/s;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static f(Lz1/s;Lz1/s;)Z
    .locals 3

    invoke-virtual {p0}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/u;

    invoke-virtual {p0}, Lz1/s;->C()Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-le p0, v2, :cond_0

    invoke-virtual {p1}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-le p0, v2, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lz1/u;->t()Lw1/q;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lz1/u;->u()Lw1/r;

    move-result-object p0

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-le p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static g(Lz1/s;)Z
    .locals 2

    invoke-virtual {p0}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p0}, Lz1/s;->C()Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static h(Lz1/v;Lz1/j;I)V
    .locals 11

    invoke-virtual {p0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lz1/v;->u()I

    move-result v2

    sub-int/2addr v2, p2

    new-instance v3, Lz1/d;

    invoke-direct {v3, p0}, Lz1/d;-><init>(Lz1/v;)V

    invoke-virtual {v3}, Lz1/d;->c()[Lz1/d$a;

    move-result-object p0

    new-array v3, v2, [Ljava/util/BitSet;

    new-array v4, v2, [Ljava/util/BitSet;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v7, v3, v6

    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz1/s;

    invoke-virtual {v7}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz1/u;

    invoke-virtual {v8}, Lz1/u;->t()Lw1/q;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lw1/q;->B()I

    move-result v9

    sub-int/2addr v9, p2

    if-ltz v9, :cond_1

    invoke-virtual {v8}, Lw1/q;->B()I

    move-result v8

    sub-int/2addr v8, p2

    aget-object v8, v3, v8

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_8

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    :cond_4
    invoke-virtual {v6, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v7

    if-ltz v7, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->clear(I)V

    aget-object v7, p0, v7

    iget-object v7, v7, Lz1/d$a;->a:Lb2/k;

    invoke-interface {v7}, Lb2/k;->iterator()Lb2/i;

    move-result-object v7

    :cond_5
    :goto_4
    invoke-interface {v7}, Lb2/i;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Lb2/i;->next()I

    move-result v8

    aget-object v9, v4, v1

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_5

    aget-object v9, v4, v1

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    add-int v9, v1, p2

    invoke-virtual {p1, v8}, Lz1/j;->z(I)Lw1/s;

    move-result-object v10

    invoke-virtual {v10, v9}, Lw1/s;->z(I)Lw1/q;

    move-result-object v10

    if-nez v10, :cond_6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lz1/s;

    invoke-virtual {v10, v9}, Lz1/s;->h(I)V

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz1/s;

    invoke-virtual {v9, v10}, Lz1/s;->i(Lw1/q;)V

    :goto_5
    aget-object v9, v3, v1

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public static i(Lz1/v;I)V
    .locals 1

    invoke-static {p0}, Lz1/i;->b(Lz1/v;)Lz1/j;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lz1/t;->h(Lz1/v;Lz1/j;I)V

    new-instance v0, Lz1/w;

    invoke-direct {v0, p0, p1}, Lz1/w;-><init>(Lz1/v;I)V

    invoke-virtual {v0}, Lz1/w;->run()V

    return-void
.end method
