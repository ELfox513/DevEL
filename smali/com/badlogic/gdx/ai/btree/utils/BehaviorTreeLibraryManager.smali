.class public final Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;


# instance fields
.field public a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;->b:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;->setLibrary(Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;)V

    return-void
.end method

.method public static getInstance()Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;->b:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;

    return-object v0
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->createBehaviorTree(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p1

    return-object p1
.end method

.method public createBehaviorTree(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .locals 1
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

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->createBehaviorTree(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p1

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

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->createRootTask(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object p1

    return-object p1
.end method

.method public disposeBehaviorTree(Ljava/lang/String;Lcom/badlogic/gdx/ai/btree/BehaviorTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;->disposeBehaviorTree(Ljava/lang/String;Lcom/badlogic/gdx/ai/btree/BehaviorTree;)V

    return-void
.end method

.method public getLibrary()Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;

    return-object v0
.end method

.method public setLibrary(Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibrary;

    return-void
.end method
