.class public abstract Lu1/b$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu1/b$j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lk1/f$g;

.field public final synthetic b:Lu1/b;


# direct methods
.method public constructor <init>(Lu1/b;Lk1/f$g;)V
    .locals 0

    iput-object p1, p0, Lu1/b$j;->b:Lu1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu1/b$j;->a:Lk1/f$g;

    return-void
.end method


# virtual methods
.method public abstract a(Lk1/s;)Lk1/s$a;
.end method

.method public final b()V
    .locals 17

    move-object/from16 v7, p0

    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->a(Lu1/b;)[Lk1/f;

    move-result-object v0

    array-length v0, v0

    new-array v8, v0, [Lk1/s$a;

    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->a(Lu1/b;)[Lk1/f;

    move-result-object v0

    array-length v0, v0

    new-array v9, v0, [Lk1/f$g;

    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->a(Lu1/b;)[Lk1/f;

    move-result-object v0

    array-length v0, v0

    new-array v10, v0, [I

    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->a(Lu1/b;)[Lk1/f;

    move-result-object v0

    array-length v0, v0

    new-array v11, v0, [I

    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->a(Lu1/b;)[Lk1/f;

    move-result-object v0

    array-length v0, v0

    if-ge v14, v0, :cond_1

    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->a(Lu1/b;)[Lk1/f;

    move-result-object v0

    aget-object v0, v0, v14

    invoke-virtual {v0}, Lk1/f;->n()Lk1/s;

    move-result-object v0

    invoke-virtual {v7, v0}, Lu1/b$j;->a(Lk1/s;)Lk1/s$a;

    move-result-object v0

    aput-object v0, v8, v14

    invoke-virtual {v0}, Lk1/s$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->a(Lu1/b;)[Lk1/f;

    move-result-object v0

    aget-object v0, v0, v14

    aget-object v1, v8, v14

    iget v1, v1, Lk1/s$a;->d:I

    invoke-virtual {v0, v1}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move-object v1, v0

    aput-object v1, v9, v14

    aget-object v2, v8, v14

    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->b(Lu1/b;)[Lu1/c;

    move-result-object v0

    aget-object v3, v0, v14

    aget v4, v11, v14

    move-object/from16 v0, p0

    move-object v5, v12

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lu1/b$j;->e(Lk1/f$g;Lk1/s$a;Lu1/c;ILjava/util/TreeMap;I)I

    move-result v0

    aput v0, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->c(Lu1/b;)Lk1/s;

    move-result-object v0

    invoke-virtual {v7, v0}, Lu1/b$j;->a(Lk1/s;)Lk1/s$a;

    move-result-object v0

    iput v13, v0, Lk1/s$a;->d:I

    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->c(Lu1/b;)Lk1/s;

    move-result-object v0

    invoke-virtual {v7, v0}, Lu1/b$j;->a(Lk1/s;)Lk1/s$a;

    move-result-object v0

    iput v13, v0, Lk1/s$a;->b:I

    return-void

    :cond_2
    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->c(Lu1/b;)Lk1/s;

    move-result-object v0

    invoke-virtual {v7, v0}, Lu1/b$j;->a(Lk1/s;)Lk1/s$a;

    move-result-object v0

    iget-object v1, v7, Lu1/b$j;->a:Lk1/f$g;

    invoke-virtual {v1}, Lk1/f$g;->t()I

    move-result v1

    iput v1, v0, Lk1/s$a;->d:I

    :goto_2
    invoke-virtual {v12}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v12}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v10, v1

    iget-object v2, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v2}, Lu1/b;->b(Lu1/b;)[Lu1/c;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v4, v11, v3

    add-int/lit8 v5, v4, 0x1

    aput v5, v11, v3

    invoke-virtual {v7, v1, v2, v4, v13}, Lu1/b$j;->g(ILu1/c;II)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v9, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v8, v2

    iget-object v3, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v3}, Lu1/b;->b(Lu1/b;)[Lu1/c;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v4, v11, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object v5, v12

    invoke-virtual/range {v0 .. v6}, Lu1/b$j;->e(Lk1/f$g;Lk1/s$a;Lu1/c;ILjava/util/TreeMap;I)I

    move-result v0

    aput v0, v10, v16

    goto :goto_3

    :cond_3
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {v7, v0}, Lu1/b$j;->h(Ljava/lang/Comparable;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, v7, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->c(Lu1/b;)Lk1/s;

    move-result-object v0

    invoke-virtual {v7, v0}, Lu1/b$j;->a(Lk1/s;)Lk1/s$a;

    move-result-object v0

    iput v13, v0, Lk1/s$a;->b:I

    return-void
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->c(Lu1/b;)Lk1/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu1/b$j;->a(Lk1/s;)Lk1/s$a;

    move-result-object v0

    iget-object v1, p0, Lu1/b$j;->a:Lk1/f$g;

    invoke-virtual {v1}, Lk1/f$g;->t()I

    move-result v1

    iput v1, v0, Lk1/s$a;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lu1/b$j;->b:Lu1/b;

    invoke-static {v3}, Lu1/b;->a(Lu1/b;)[Lk1/f;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lu1/b$j;->b:Lu1/b;

    invoke-static {v3}, Lu1/b;->a(Lu1/b;)[Lk1/f;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lu1/b$j;->b:Lu1/b;

    invoke-static {v4}, Lu1/b;->b(Lu1/b;)[Lu1/c;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {p0, v3, v4}, Lu1/b$j;->f(Lk1/f;Lu1/c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->c(Lu1/b;)Lk1/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu1/b$j;->a(Lk1/s;)Lk1/s$a;

    move-result-object v0

    iput v1, v0, Lk1/s$a;->d:I

    iget-object v0, p0, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->c(Lu1/b;)Lk1/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu1/b$j;->a(Lk1/s;)Lk1/s$a;

    move-result-object v0

    iput v1, v0, Lk1/s$a;->b:I

    return-void

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu1/b$j$a;

    iget v4, v1, Lu1/b$j$a;->p:I

    iget-object v5, v1, Lu1/b$j$a;->b:Lu1/c;

    iget v6, v1, Lu1/b$j$a;->k:I

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lu1/b$j;->g(ILu1/c;II)V

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu1/b$j$a;

    invoke-virtual {v1, v4}, Lu1/b$j$a;->c(Lu1/b$j$a;)I

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu1/b$j$a;

    iget v5, v3, Lu1/b$j$a;->p:I

    iget-object v6, v3, Lu1/b$j$a;->b:Lu1/c;

    iget v3, v3, Lu1/b$j$a;->k:I

    invoke-virtual {p0, v5, v6, v3, v7}, Lu1/b$j;->g(ILu1/c;II)V

    move v3, v4

    goto :goto_2

    :cond_2
    iget-object v1, v1, Lu1/b$j$a;->d:Ljava/lang/Comparable;

    invoke-virtual {p0, v1}, Lu1/b$j;->h(Ljava/lang/Comparable;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lu1/b$j;->b:Lu1/b;

    invoke-static {v0}, Lu1/b;->c(Lu1/b;)Lk1/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu1/b$j;->a(Lk1/s;)Lk1/s$a;

    move-result-object v0

    iput v2, v0, Lk1/s$a;->b:I

    return-void
.end method

.method public abstract d(Lk1/f$g;Lu1/c;I)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk1/f$g;",
            "Lu1/c;",
            "I)TT;"
        }
    .end annotation
.end method

.method public final e(Lk1/f$g;Lk1/s$a;Lu1/c;ILjava/util/TreeMap;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk1/f$g;",
            "Lk1/s$a;",
            "Lu1/c;",
            "I",
            "Ljava/util/TreeMap<",
            "TT;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;I)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk1/f$g;->t()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget p2, p2, Lk1/s$a;->b:I

    if-ge p4, p2, :cond_2

    invoke-virtual {p0, p1, p3, p4}, Lu1/b$j;->d(Lk1/f$g;Lu1/c;I)Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return v0
.end method

.method public final f(Lk1/f;Lu1/c;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk1/f;",
            "Lu1/c;",
            ")",
            "Ljava/util/List<",
            "Lu1/b$j<",
            "TT;>.a;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lk1/f;->n()Lk1/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu1/b$j;->a(Lk1/s;)Lk1/s$a;

    move-result-object v0

    invoke-virtual {v0}, Lk1/s$a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lk1/s$a;->d:I

    invoke-virtual {p1, v2}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_0
    iget v4, v0, Lk1/s$a;->b:I

    if-ge v11, v4, :cond_1

    invoke-virtual {v2}, Lk1/f$g;->t()I

    move-result v10

    invoke-virtual {p0, v2, p2, v3}, Lu1/b$j;->d(Lk1/f$g;Lu1/c;I)Ljava/lang/Comparable;

    move-result-object v8

    new-instance v12, Lu1/b$j$a;

    move-object v4, v12

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v9, v11

    invoke-direct/range {v4 .. v10}, Lu1/b$j$a;-><init>(Lu1/b$j;Lk1/f;Lu1/c;Ljava/lang/Comparable;II)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public abstract g(ILu1/c;II)V
.end method

.method public abstract h(Ljava/lang/Comparable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
