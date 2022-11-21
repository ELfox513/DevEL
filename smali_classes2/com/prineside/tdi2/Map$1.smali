.class Lcom/prineside/tdi2/Map$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph<",
        "Lcom/prineside/tdi2/PathNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/Map;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/Map$1;->a:Lcom/prineside/tdi2/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnections(Lcom/prineside/tdi2/PathNode;)Lcom/badlogic/gdx/utils/Array;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/PathNode;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/pfa/Connection<",
            "Lcom/prineside/tdi2/PathNode;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/prineside/tdi2/Map;->a()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/prineside/tdi2/Map;->b()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-static {}, Lcom/prineside/tdi2/Map;->b()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget-object p1, p1, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    invoke-static {}, Lcom/prineside/tdi2/Map;->b()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Map;->b()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_8

    iget-object v2, p1, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/Path$Connection;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/prineside/tdi2/Path$Connection;->isTeleport:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/Map;->b()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v3, p1, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Path$Connection;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    check-cast v2, [Lcom/prineside/tdi2/Path$Connection;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/pfa/Connection;->getToNode()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/PathNode;

    const/4 v4, 0x0

    iget v5, p1, Lcom/prineside/tdi2/PathNode;->y:I

    iget v6, v3, Lcom/prineside/tdi2/PathNode;->y:I

    if-ne v5, v6, :cond_3

    iget v7, p1, Lcom/prineside/tdi2/PathNode;->x:I

    add-int/lit8 v8, v7, 0x1

    iget v3, v3, Lcom/prineside/tdi2/PathNode;->x:I

    if-ne v8, v3, :cond_2

    iget-object v4, p0, Lcom/prineside/tdi2/Map$1;->a:Lcom/prineside/tdi2/Map;

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v4, v3, v6, v5}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v4

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v7, :cond_5

    iget-object v3, p0, Lcom/prineside/tdi2/Map$1;->a:Lcom/prineside/tdi2/Map;

    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v3, v7, v5, v4}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget v7, p1, Lcom/prineside/tdi2/PathNode;->x:I

    iget v3, v3, Lcom/prineside/tdi2/PathNode;->x:I

    if-ne v7, v3, :cond_5

    add-int/lit8 v8, v5, 0x1

    if-ne v8, v6, :cond_4

    iget-object v4, p0, Lcom/prineside/tdi2/Map$1;->a:Lcom/prineside/tdi2/Map;

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->BOTTOM:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v4, v3, v6, v5}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v4

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_5

    iget-object v3, p0, Lcom/prineside/tdi2/Map$1;->a:Lcom/prineside/tdi2/Map;

    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->BOTTOM:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v3, v7, v5, v4}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v4

    :cond_5
    :goto_1
    instance-of v3, v4, Lcom/prineside/tdi2/GateBarrier;

    if-eqz v3, :cond_6

    check-cast v4, Lcom/prineside/tdi2/GateBarrier;

    invoke-static {}, Lcom/prineside/tdi2/Map;->a()Lcom/prineside/tdi2/Enemy;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/GateBarrier;->canEnemyPass(Lcom/prineside/tdi2/Enemy;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-static {}, Lcom/prineside/tdi2/Map;->b()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/prineside/tdi2/Map;->b()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getConnections(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/PathNode;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Map$1;->getConnections(Lcom/prineside/tdi2/PathNode;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getIndex(Lcom/prineside/tdi2/PathNode;)I
    .locals 0

    iget p1, p1, Lcom/prineside/tdi2/PathNode;->index:I

    return p1
.end method

.method public bridge synthetic getIndex(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/PathNode;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Map$1;->getIndex(Lcom/prineside/tdi2/PathNode;)I

    move-result p1

    return p1
.end method

.method public getNodeCount()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Map$1;->a:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->pathfindingNodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method
