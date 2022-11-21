.class public Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/pfa/PathFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;,
        Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/pfa/PathFinder<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph<",
            "TN;>;"
        }
    .end annotation
.end field

.field public b:[Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord<",
            "TN;>;"
        }
    .end annotation
.end field

.field public c:Lcom/badlogic/gdx/utils/BinaryHeap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/BinaryHeap<",
            "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord<",
            "TN;>;>;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord<",
            "TN;>;"
        }
    .end annotation
.end field

.field public e:I

.field public metrics:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph<",
            "TN;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;-><init>(Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph<",
            "TN;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;->getNodeCount()I

    move-result p1

    new-array p1, p1, [Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->b:[Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    new-instance p1, Lcom/badlogic/gdx/utils/BinaryHeap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/BinaryHeap;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->c:Lcom/badlogic/gdx/utils/BinaryHeap;

    if-eqz p2, :cond_0

    new-instance p1, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;

    invoke-direct {p1}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->metrics:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord<",
            "TN;>;F)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->c:Lcom/badlogic/gdx/utils/BinaryHeap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/BinaryHeap;->add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;F)Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    const/4 p2, 0x1

    iput p2, p1, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->f:I

    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->metrics:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;->openListAdditions:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;->openListAdditions:I

    iget p2, p1, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;->openListPeak:I

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->c:Lcom/badlogic/gdx/utils/BinaryHeap;

    iget v0, v0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;->openListPeak:I

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/GraphPath;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
            "Lcom/badlogic/gdx/ai/pfa/Connection<",
            "TN;>;>;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    iget-object v1, v0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->c:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->d:Lcom/badlogic/gdx/ai/pfa/Connection;

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->b:[Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    iget-object v2, v2, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->d:Lcom/badlogic/gdx/ai/pfa/Connection;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/pfa/Connection;->getFromNode()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;->getIndex(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->reverse()V

    return-void
.end method

.method public c(Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/GraphPath;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
            "TN;>;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    iget-object v1, v0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->d:Lcom/badlogic/gdx/ai/pfa/Connection;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->c:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->b:[Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    iget-object v2, v2, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->d:Lcom/badlogic/gdx/ai/pfa/Connection;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/pfa/Connection;->getFromNode()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;->getIndex(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->add(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->reverse()V

    return-void
.end method

.method public d(Ljava/lang/Object;)Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;->getIndex(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->b:[Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    iget p1, v2, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->g:I

    iget v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->e:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, v2, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->f:I

    iput v0, v2, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->g:I

    :cond_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    invoke-direct {v2}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;-><init>()V

    aput-object v2, v1, v0

    iput-object p1, v2, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->e:I

    iput p1, v2, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->g:I

    return-object v2
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
            "TN;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->metrics:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;->reset()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->e:I

    if-gez v0, :cond_1

    iput v1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->e:I

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->c:Lcom/badlogic/gdx/utils/BinaryHeap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->clear()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d(Ljava/lang/Object;)Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    move-result-object v0

    iput-object p1, v0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->d:Lcom/badlogic/gdx/ai/pfa/Connection;

    const/4 v2, 0x0

    iput v2, v0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->e:F

    invoke-interface {p3, p1, p2}, Lcom/badlogic/gdx/ai/pfa/Heuristic;->estimate(Ljava/lang/Object;Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->a(Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;F)V

    iput-object v1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    return-void
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->e(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;)V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->c:Lcom/badlogic/gdx/utils/BinaryHeap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/BinaryHeap;->pop()Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    const/4 v0, 0x2

    iput v0, p1, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->f:I

    iget-object p1, p1, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->c:Ljava/lang/Object;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->g(Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;)V

    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->c:Lcom/badlogic/gdx/utils/BinaryHeap;

    iget p1, p1, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
            "TN;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    iget-object v1, v1, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/pfa/Graph;->getConnections(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->metrics:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v4, v2, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;->visitedNodes:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;->visitedNodes:I

    :cond_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/ai/pfa/Connection;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/pfa/Connection;->getToNode()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    iget v5, v5, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->e:F

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/pfa/Connection;->getCost()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d(Ljava/lang/Object;)Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    move-result-object v6

    iget v7, v6, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->f:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    iget v3, v6, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->e:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->getEstimatedTotalCost()F

    move-result v3

    iget v4, v6, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->e:F

    :goto_1
    sub-float/2addr v3, v4

    goto :goto_2

    :cond_2
    if-ne v7, v3, :cond_4

    iget v3, v6, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->e:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->c:Lcom/badlogic/gdx/utils/BinaryHeap;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/BinaryHeap;->remove(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    invoke-virtual {v6}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->getEstimatedTotalCost()F

    move-result v3

    iget v4, v6, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->e:F

    goto :goto_1

    :cond_4
    invoke-interface {p2, v4, p1}, Lcom/badlogic/gdx/ai/pfa/Heuristic;->estimate(Ljava/lang/Object;Ljava/lang/Object;)F

    move-result v3

    :goto_2
    iput v5, v6, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->e:F

    iput-object v2, v6, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->d:Lcom/badlogic/gdx/ai/pfa/Connection;

    add-float/2addr v5, v3

    invoke-virtual {p0, v6, v5}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->a(Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;F)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public search(Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/PathFinderRequest<",
            "TN;>;J)Z"
        }
    .end annotation

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iget-boolean v2, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->statusChanged:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->startNode:Ljava/lang/Object;

    iget-object v4, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    iget-object v5, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->heuristic:Lcom/badlogic/gdx/ai/pfa/Heuristic;

    invoke-virtual {p0, v2, v4, v5}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->e(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;)V

    iput-boolean v3, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->statusChanged:Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x64

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->c:Lcom/badlogic/gdx/utils/BinaryHeap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->pop()Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;

    const/4 v1, 0x2

    iput v1, v0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->f:I

    iget-object v0, v0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;->c:Ljava/lang/Object;

    iget-object v1, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iput-boolean v2, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->pathFound:Z

    iget-object p2, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->startNode:Ljava/lang/Object;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->resultPath:Lcom/badlogic/gdx/ai/pfa/GraphPath;

    invoke-virtual {p0, p2, p1}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->c(Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/GraphPath;)V

    return v2

    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->heuristic:Lcom/badlogic/gdx/ai/pfa/Heuristic;

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->g(Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->c:Lcom/badlogic/gdx/utils/BinaryHeap;

    iget v0, v0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-gtz v0, :cond_3

    iput-boolean v3, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->pathFound:Z

    return v2

    :cond_3
    move-wide v0, v4

    goto :goto_0
.end method

.method public searchConnectionPath(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;Lcom/badlogic/gdx/ai/pfa/GraphPath;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
            "TN;>;",
            "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
            "Lcom/badlogic/gdx/ai/pfa/Connection<",
            "TN;>;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->f(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p4}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->b(Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/GraphPath;)V

    :cond_0
    return p2
.end method

.method public searchNodePath(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;Lcom/badlogic/gdx/ai/pfa/GraphPath;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
            "TN;>;",
            "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->f(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p4}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->c(Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/GraphPath;)V

    :cond_0
    return p2
.end method
