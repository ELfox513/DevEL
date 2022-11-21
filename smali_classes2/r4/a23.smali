.class public Lr4/a23;
.super Lr4/t13;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field public p:Ljava/util/SortedSet;

.field public final synthetic q:Lr4/h23;


# direct methods
.method public constructor <init>(Lr4/h23;Ljava/util/SortedMap;)V
    .locals 0

    iput-object p1, p0, Lr4/a23;->q:Lr4/h23;

    invoke-direct {p0, p1, p2}, Lr4/t13;-><init>(Lr4/h23;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet;"
        }
    .end annotation

    new-instance v0, Lr4/b23;

    iget-object v1, p0, Lr4/a23;->q:Lr4/h23;

    invoke-virtual {p0}, Lr4/a23;->e()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lr4/b23;-><init>(Lr4/h23;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/a23;->e()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet;"
        }
    .end annotation

    iget-object v0, p0, Lr4/a23;->p:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr4/a23;->c()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lr4/a23;->p:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public e()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap;"
        }
    .end annotation

    iget-object v0, p0, Lr4/t13;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/a23;->e()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedMap;"
        }
    .end annotation

    new-instance v0, Lr4/a23;

    iget-object v1, p0, Lr4/a23;->q:Lr4/h23;

    invoke-virtual {p0}, Lr4/a23;->e()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lr4/a23;-><init>(Lr4/h23;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lr4/a23;->d()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/a23;->e()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedMap;"
        }
    .end annotation

    new-instance v0, Lr4/a23;

    iget-object v1, p0, Lr4/a23;->q:Lr4/h23;

    invoke-virtual {p0}, Lr4/a23;->e()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lr4/a23;-><init>(Lr4/h23;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedMap;"
        }
    .end annotation

    new-instance v0, Lr4/a23;

    iget-object v1, p0, Lr4/a23;->q:Lr4/h23;

    invoke-virtual {p0}, Lr4/a23;->e()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lr4/a23;-><init>(Lr4/h23;Ljava/util/SortedMap;)V

    return-object v0
.end method
