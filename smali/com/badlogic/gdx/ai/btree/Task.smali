.class public abstract Lcom/badlogic/gdx/ai/btree/Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation runtime Lcom/badlogic/gdx/ai/btree/annotation/TaskConstraint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/btree/Task$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Pool$Poolable;"
    }
.end annotation


# static fields
.field public static TASK_CLONER:Lcom/badlogic/gdx/ai/btree/TaskCloner;


# instance fields
.field public a:Lcom/badlogic/gdx/ai/btree/Task$Status;

.field public b:Lcom/badlogic/gdx/ai/btree/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "TE;>;"
        }
    .end annotation
.end field

.field public k:Lcom/badlogic/gdx/ai/btree/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/ai/btree/Task$Status;->FRESH:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/badlogic/gdx/ai/btree/Task;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)I"
        }
    .end annotation
.end method

.method public final addChild(Lcom/badlogic/gdx/ai/btree/Task;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/Task;->a(Lcom/badlogic/gdx/ai/btree/Task;)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->notifyChildAdded(Lcom/badlogic/gdx/ai/btree/Task;I)V

    :cond_0
    return p1
.end method

.method public b(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->getChildCount()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/Task;->getChild(I)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v1

    iget-object v2, v1, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    sget-object v3, Lcom/badlogic/gdx/ai/btree/Task$Status;->RUNNING:Lcom/badlogic/gdx/ai/btree/Task$Status;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/ai/btree/Task;->cancel()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final cancel()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/btree/Task;->b(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    sget-object v1, Lcom/badlogic/gdx/ai/btree/Task$Status;->CANCELLED:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iput-object v1, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    iget-object v2, v1, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_0

    invoke-virtual {v1, p0, v0}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->notifyStatusUpdated(Lcom/badlogic/gdx/ai/btree/Task;Lcom/badlogic/gdx/ai/btree/Task$Status;)V

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->end()V

    return-void
.end method

.method public checkGuard(Lcom/badlogic/gdx/ai/btree/Task;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->k:Lcom/badlogic/gdx/ai/btree/Task;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/ai/btree/Task;->checkGuard(Lcom/badlogic/gdx/ai/btree/Task;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->k:Lcom/badlogic/gdx/ai/btree/Task;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->r:Lcom/badlogic/gdx/ai/btree/BehaviorTree$GuardEvaluator;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/ai/btree/Task;->setControl(Lcom/badlogic/gdx/ai/btree/Task;)V

    iget-object p1, p0, Lcom/badlogic/gdx/ai/btree/Task;->k:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/btree/Task;->start()V

    iget-object p1, p0, Lcom/badlogic/gdx/ai/btree/Task;->k:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/btree/Task;->run()V

    sget-object p1, Lcom/badlogic/gdx/ai/btree/Task$1;->a:[I

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->k:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->getStatus()Lcom/badlogic/gdx/ai/btree/Task$Status;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal guard status \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/Task;->k:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v1}, Lcom/badlogic/gdx/ai/btree/Task;->getStatus()Lcom/badlogic/gdx/ai/btree/Task$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'. Guards must either succeed or fail in one step."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return v1
.end method

.method public abstract childFail(Lcom/badlogic/gdx/ai/btree/Task;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation
.end method

.method public abstract childRunning(Lcom/badlogic/gdx/ai/btree/Task;Lcom/badlogic/gdx/ai/btree/Task;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation
.end method

.method public abstract childSuccess(Lcom/badlogic/gdx/ai/btree/Task;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation
.end method

.method public cloneTask()Lcom/badlogic/gdx/ai/btree/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/ai/btree/Task;->TASK_CLONER:Lcom/badlogic/gdx/ai/btree/TaskCloner;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0}, Lcom/badlogic/gdx/ai/btree/TaskCloner;->cloneTask(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/ai/btree/TaskCloneException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/ai/btree/TaskCloneException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/btree/Task;->c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/Task;->k:Lcom/badlogic/gdx/ai/btree/Task;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/ai/btree/Task;->cloneTask()Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/badlogic/gdx/ai/btree/Task;->k:Lcom/badlogic/gdx/ai/btree/Task;
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/ai/btree/TaskCloneException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/ai/btree/TaskCloneException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public final fail()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    sget-object v1, Lcom/badlogic/gdx/ai/btree/Task$Status;->FAILED:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iput-object v1, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    iget-object v2, v1, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_0

    invoke-virtual {v1, p0, v0}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->notifyStatusUpdated(Lcom/badlogic/gdx/ai/btree/Task;Lcom/badlogic/gdx/ai/btree/Task$Status;)V

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->b:Lcom/badlogic/gdx/ai/btree/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/ai/btree/Task;->childFail(Lcom/badlogic/gdx/ai/btree/Task;)V

    :cond_1
    return-void
.end method

.method public abstract getChild(I)Lcom/badlogic/gdx/ai/btree/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract getChildCount()I
.end method

.method public getGuard()Lcom/badlogic/gdx/ai/btree/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->k:Lcom/badlogic/gdx/ai/btree/Task;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This task has never run"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getStatus()Lcom/badlogic/gdx/ai/btree/Task$Status;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->b:Lcom/badlogic/gdx/ai/btree/Task;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->k:Lcom/badlogic/gdx/ai/btree/Task;

    sget-object v1, Lcom/badlogic/gdx/ai/btree/Task$Status;->FRESH:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iput-object v1, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    return-void
.end method

.method public resetTask()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    sget-object v1, Lcom/badlogic/gdx/ai/btree/Task$Status;->RUNNING:Lcom/badlogic/gdx/ai/btree/Task$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/btree/Task;->getChild(I)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/ai/btree/Task;->resetTask()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/ai/btree/Task$Status;->FRESH:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->b:Lcom/badlogic/gdx/ai/btree/Task;

    return-void
.end method

.method public abstract run()V
.end method

.method public final running()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    sget-object v1, Lcom/badlogic/gdx/ai/btree/Task$Status;->RUNNING:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iput-object v1, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    iget-object v2, v1, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_0

    invoke-virtual {v1, p0, v0}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->notifyStatusUpdated(Lcom/badlogic/gdx/ai/btree/Task;Lcom/badlogic/gdx/ai/btree/Task$Status;)V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->b:Lcom/badlogic/gdx/ai/btree/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p0}, Lcom/badlogic/gdx/ai/btree/Task;->childRunning(Lcom/badlogic/gdx/ai/btree/Task;Lcom/badlogic/gdx/ai/btree/Task;)V

    :cond_1
    return-void
.end method

.method public final setControl(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/Task;->b:Lcom/badlogic/gdx/ai/btree/Task;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    return-void
.end method

.method public setGuard(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/Task;->k:Lcom/badlogic/gdx/ai/btree/Task;

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public final success()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    sget-object v1, Lcom/badlogic/gdx/ai/btree/Task$Status;->SUCCEEDED:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iput-object v1, p0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    iget-object v2, v1, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v2, :cond_0

    invoke-virtual {v1, p0, v0}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->notifyStatusUpdated(Lcom/badlogic/gdx/ai/btree/Task;Lcom/badlogic/gdx/ai/btree/Task$Status;)V

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Task;->b:Lcom/badlogic/gdx/ai/btree/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/ai/btree/Task;->childSuccess(Lcom/badlogic/gdx/ai/btree/Task;)V

    :cond_1
    return-void
.end method
