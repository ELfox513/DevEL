.class public Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "*>;>;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

.field public c:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getFileSystem()Lcom/badlogic/gdx/ai/FileSystem;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/FileSystem;->newResolver(Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;Lcom/badlogic/gdx/assets/AssetManager;I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;Lcom/badlogic/gdx/assets/AssetManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->b:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance p1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;

    invoke-direct {p1, p3}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->c:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->c:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->b:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->parse(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->registerArchetypeTree(Ljava/lang/String;Lcom/badlogic/gdx/ai/btree/BehaviorTree;)V

    :cond_0
    return-object v0
.end method

.method public createBehaviorTree(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;
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

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->createBehaviorTree(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->a(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/btree/Task;->cloneTask()Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->setObject(Ljava/lang/Object;)V

    return-object p1
.end method

.method public createRootTask(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->a(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->getChild(I)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/btree/Task;->cloneTask()Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object p1

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

    sget-object p1, Lcom/badlogic/gdx/ai/btree/Task;->TASK_CLONER:Lcom/badlogic/gdx/ai/btree/TaskCloner;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/ai/btree/TaskCloner;->freeTask(Lcom/badlogic/gdx/ai/btree/Task;)V

    :cond_0
    return-void
.end method

.method public hasArchetypeTree(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public registerArchetypeTree(Ljava/lang/String;Lcom/badlogic/gdx/ai/btree/BehaviorTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "*>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The registered archetype must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
