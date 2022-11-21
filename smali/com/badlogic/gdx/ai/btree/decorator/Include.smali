.class public Lcom/badlogic/gdx/ai/btree/decorator/Include;
.super Lcom/badlogic/gdx/ai/btree/Decorator;
.source "SourceFile"


# annotations
.annotation runtime Lcom/badlogic/gdx/ai/btree/annotation/TaskConstraint;
    maxChildren = 0x0
    minChildren = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/Decorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public lazy:Z
    .annotation runtime Lcom/badlogic/gdx/ai/btree/annotation/TaskAttribute;
    .end annotation
.end field

.field public subtree:Ljava/lang/String;
    .annotation runtime Lcom/badlogic/gdx/ai/btree/annotation/TaskAttribute;
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/decorator/Include;->subtree:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/decorator/Include;->subtree:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/badlogic/gdx/ai/btree/decorator/Include;->lazy:Z

    return-void
.end method


# virtual methods
.method public c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Include;->lazy:Z

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/ai/btree/decorator/Include;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/btree/decorator/Include;->subtree:Ljava/lang/String;

    iput-object v2, v1, Lcom/badlogic/gdx/ai/btree/decorator/Include;->subtree:Ljava/lang/String;

    iput-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/decorator/Include;->lazy:Z

    return-object p1

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/ai/btree/TaskCloneException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A non-lazy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should never be copied."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/ai/btree/TaskCloneException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cloneTask()Lcom/badlogic/gdx/ai/btree/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Include;->lazy:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Task;->cloneTask()Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/decorator/Include;->d()Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/badlogic/gdx/ai/btree/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;->getInstance()Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/decorator/Include;->subtree:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeLibraryManager;->createRootTask(Ljava/lang/String;)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Include;->lazy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Include;->subtree:Ljava/lang/String;

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;->reset()V

    return-void
.end method

.method public start()V
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Include;->lazy:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Decorator;->p:Lcom/badlogic/gdx/ai/btree/Task;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/decorator/Include;->d()Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/btree/Task;->addChild(Lcom/badlogic/gdx/ai/btree/Task;)I

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A non-lazy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/badlogic/gdx/ai/btree/decorator/Include;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t meant to be run!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
