.class public abstract Lr4/h23;
.super Lr4/k23;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/k23<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public transient p:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/k23;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lr4/h23;->k:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static synthetic m(Lr4/h23;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lr4/h23;->k:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic o(Lr4/h23;)I
    .locals 0

    iget p0, p0, Lr4/h23;->p:I

    return p0
.end method

.method public static synthetic p(Lr4/h23;I)I
    .locals 0

    iput p1, p0, Lr4/h23;->p:I

    return p1
.end method

.method public static synthetic s(Lr4/h23;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr4/h23;->k:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, p0, Lr4/h23;->p:I

    sub-int/2addr p1, v0

    iput p1, p0, Lr4/h23;->p:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lr4/h23;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr4/h23;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lr4/h23;->p:I

    add-int/2addr p2, v1

    iput p2, p0, Lr4/h23;->p:I

    iget-object p2, p0, Lr4/h23;->k:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "New Collection violated the Collection spec"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lr4/h23;->p:I

    add-int/2addr p1, v1

    iput p1, p0, Lr4/h23;->p:I

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lr4/j23;

    invoke-direct {v0, p0}, Lr4/j23;-><init>(Lr4/k23;)V

    return-object v0
.end method

.method public final d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lr4/q13;

    invoke-direct {v0, p0}, Lr4/q13;-><init>(Lr4/h23;)V

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lr4/h23;->p:I

    return v0
.end method

.method public abstract i(Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lr4/h23;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/h23;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lr4/h23;->p:I

    return-void
.end method

.method public abstract k(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract l()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public final q(Ljava/lang/Object;Ljava/util/List;Lr4/e23;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lr4/e23;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lr4/z13;

    invoke-direct {v0, p0, p1, p2, p3}, Lr4/z13;-><init>(Lr4/h23;Ljava/lang/Object;Ljava/util/List;Lr4/e23;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/g23;

    invoke-direct {v0, p0, p1, p2, p3}, Lr4/g23;-><init>(Lr4/h23;Ljava/lang/Object;Ljava/util/List;Lr4/e23;)V

    :goto_0
    return-object v0
.end method

.method public final r()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/h23;->k:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lr4/y13;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lr4/y13;-><init>(Lr4/h23;Ljava/util/NavigableMap;)V

    return-object v1

    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lr4/b23;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lr4/b23;-><init>(Lr4/h23;Ljava/util/SortedMap;)V

    return-object v1

    :cond_1
    new-instance v1, Lr4/w13;

    invoke-direct {v1, p0, v0}, Lr4/w13;-><init>(Lr4/h23;Ljava/util/Map;)V

    return-object v1
.end method

.method public final u()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/h23;->k:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lr4/x13;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lr4/x13;-><init>(Lr4/h23;Ljava/util/NavigableMap;)V

    return-object v1

    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lr4/a23;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lr4/a23;-><init>(Lr4/h23;Ljava/util/SortedMap;)V

    return-object v1

    :cond_1
    new-instance v1, Lr4/t13;

    invoke-direct {v1, p0, v0}, Lr4/t13;-><init>(Lr4/h23;Ljava/util/Map;)V

    return-object v1
.end method
