.class public Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;
.super Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;
.source "SourceFile"


# instance fields
.field public d:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Pool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Pool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary$1;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary$1;-><init>(Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->createBehaviorTree(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Pool;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    :cond_0
    return-void
.end method

.method public createBehaviorTree(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;->b(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->setObject(Ljava/lang/Object;)V

    return-object p1
.end method

.method public disposeBehaviorTree(Ljava/lang/String;Lcom/badlogic/gdx/ai/btree/BehaviorTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/PooledBehaviorTreeLibrary;->b(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method
