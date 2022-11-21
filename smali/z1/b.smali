.class public Lz1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz1/v;


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/b;->a:Lz1/v;

    return-void
.end method

.method public static synthetic a(Lz1/b;)Lz1/v;
    .locals 0

    iget-object p0, p0, Lz1/b;->a:Lz1/v;

    return-object p0
.end method

.method public static c(Lz1/v;)V
    .locals 1

    new-instance v0, Lz1/b;

    invoke-direct {v0, p0}, Lz1/b;-><init>(Lz1/v;)V

    invoke-virtual {v0}, Lz1/b;->d()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lx1/g0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz1/b;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->u()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_7

    iget-object v5, p0, Lz1/b;->a:Lz1/v;

    invoke-virtual {v5, v3}, Lz1/v;->n(I)Lz1/u;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lz1/u;->n()Lw1/t;

    move-result-object v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v5}, Lz1/u;->t()Lw1/q;

    move-result-object v6

    invoke-virtual {v6}, Lw1/q;->C()Ly1/d;

    move-result-object v7

    invoke-interface {v7}, Ly1/d;->l()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    check-cast v7, Lx1/g0;

    invoke-virtual {v5}, Lz1/u;->n()Lw1/t;

    move-result-object v8

    invoke-virtual {v8}, Lw1/t;->d()I

    move-result v8

    const/16 v9, 0x38

    if-ne v8, v9, :cond_2

    invoke-virtual {v5}, Lz1/u;->i()Lz1/s;

    move-result-object v5

    invoke-virtual {v5}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    iget-object v8, p0, Lz1/b;->a:Lz1/v;

    invoke-virtual {v8}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/s;

    invoke-virtual {v5}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/u;

    :cond_2
    invoke-virtual {v5}, Lz1/u;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    instance-of v4, v7, Lx1/d0;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lz1/b;->a:Lz1/v;

    invoke-virtual {v5, v6}, Lz1/v;->y(Lw1/q;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-instance v2, Lz1/b$a;

    invoke-direct {v2, p0, v1}, Lz1/b$a;-><init>(Lz1/b;Ljava/util/HashMap;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final d()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lz1/b;->a:Lz1/v;

    invoke-virtual {v1}, Lz1/v;->u()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lz1/b;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v0, Lz1/b;->a:Lz1/v;

    invoke-virtual {v4}, Lz1/v;->o()Lz1/s;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx1/g0;

    iget-object v8, v0, Lz1/b;->a:Lz1/v;

    invoke-virtual {v8}, Lz1/v;->B()I

    move-result v8

    invoke-static {v8, v7}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v14

    invoke-static {v7}, Lw1/v;->g(Ly1/d;)Lw1/t;

    move-result-object v9

    invoke-virtual {v9}, Lw1/t;->b()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    new-instance v15, Lw1/n;

    invoke-static {v7}, Lw1/v;->g(Ly1/d;)Lw1/t;

    move-result-object v9

    sget-object v10, Lw1/w;->d:Lw1/w;

    sget-object v12, Lw1/r;->a:Lw1/r;

    move-object v8, v15

    move-object v11, v14

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lw1/n;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V

    invoke-virtual {v4, v15}, Lz1/s;->c(Lw1/h;)V

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v16, v4

    goto :goto_1

    :cond_0
    iget-object v8, v0, Lz1/b;->a:Lz1/v;

    invoke-virtual {v8}, Lz1/v;->o()Lz1/s;

    move-result-object v8

    invoke-virtual {v8}, Lz1/s;->v()Lz1/s;

    move-result-object v15

    invoke-virtual {v8, v15}, Lz1/s;->E(Lz1/s;)Lz1/s;

    move-result-object v13

    new-instance v12, Lw1/y;

    sget-object v11, Lw1/w;->d:Lw1/w;

    sget-object v10, Lw1/r;->a:Lw1/r;

    sget-object v16, Ly1/b;->a:Ly1/b;

    move-object v8, v12

    move-object/from16 v17, v10

    move-object v10, v11

    move-object/from16 v18, v2

    move-object v2, v11

    move-object/from16 v11, v17

    move/from16 v19, v3

    move-object v3, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v4

    move-object v4, v13

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lw1/y;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)V

    invoke-virtual {v4, v3}, Lz1/s;->J(Lw1/h;)V

    invoke-virtual {v4, v15}, Lz1/s;->E(Lz1/s;)Lz1/s;

    move-result-object v3

    new-instance v4, Lw1/o;

    invoke-virtual {v14}, Lw1/q;->C()Ly1/d;

    move-result-object v8

    invoke-static {v8}, Lw1/v;->E(Ly1/d;)Lw1/t;

    move-result-object v8

    move-object/from16 v9, v17

    invoke-direct {v4, v8, v2, v14, v9}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {v3, v4}, Lz1/s;->c(Lw1/h;)V

    :goto_1
    invoke-virtual {v5, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v16

    move-object/from16 v2, v18

    move/from16 v3, v19

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0, v5, v1}, Lz1/b;->e(Ljava/util/HashMap;I)V

    return-void
.end method

.method public final e(Ljava/util/HashMap;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lx1/g0;",
            "Lw1/q;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lz1/b;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->v()[Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_6

    iget-object v2, p0, Lz1/b;->a:Lz1/v;

    invoke-virtual {v2, v1}, Lz1/v;->n(I)Lz1/u;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lz1/u;->t()Lw1/q;

    move-result-object v3

    invoke-virtual {v2}, Lz1/u;->t()Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->C()Ly1/d;

    move-result-object v2

    invoke-interface {v2}, Ly1/d;->l()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    check-cast v2, Lx1/g0;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/q;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lz1/b;->a:Lz1/v;

    invoke-virtual {v4, v3}, Lz1/v;->y(Lw1/q;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Lz1/b$b;

    invoke-direct {v4, p0, v3, v2}, Lz1/b$b;-><init>(Lz1/b;Lw1/q;Lw1/q;)V

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/u;

    invoke-virtual {v3}, Lz1/u;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lz1/u;->i()Lz1/s;

    move-result-object v5

    invoke-virtual {v5}, Lz1/s;->C()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v4}, Lz1/u;->F(Lz1/p;)V

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
