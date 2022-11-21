.class public Lcom/badlogic/gdx/ai/btree/BehaviorTree;
.super Lcom/badlogic/gdx/ai/btree/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/btree/BehaviorTree$Listener;,
        Lcom/badlogic/gdx/ai/btree/BehaviorTree$GuardEvaluator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/Task<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public listeners:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree$Listener<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/ai/btree/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation
.end field

.field public q:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public r:Lcom/badlogic/gdx/ai/btree/BehaviorTree$GuardEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree$GuardEvaluator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;-><init>(Lcom/badlogic/gdx/ai/btree/Task;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;-><init>(Lcom/badlogic/gdx/ai/btree/Task;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/Task;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/Task;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->q:Ljava/lang/Object;

    iput-object p0, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    new-instance p1, Lcom/badlogic/gdx/ai/btree/BehaviorTree$GuardEvaluator;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/ai/btree/BehaviorTree$GuardEvaluator;-><init>(Lcom/badlogic/gdx/ai/btree/BehaviorTree;)V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->r:Lcom/badlogic/gdx/ai/btree/BehaviorTree$GuardEvaluator;

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/ai/btree/Task;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A behavior tree cannot have more than one root task"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addListener(Lcom/badlogic/gdx/ai/btree/BehaviorTree$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree$Listener<",
            "TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v1}, Lcom/badlogic/gdx/ai/btree/Task;->cloneTask()Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    return-object p1
.end method

.method public childFail(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->fail()V

    return-void
.end method

.method public childRunning(Lcom/badlogic/gdx/ai/btree/Task;Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->running()V

    return-void
.end method

.method public childSuccess(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->success()V

    return-void
.end method

.method public getChild(I)Lcom/badlogic/gdx/ai/btree/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->getChildCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public notifyChildAdded(Lcom/badlogic/gdx/ai/btree/Task;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/ai/btree/BehaviorTree$Listener;

    invoke-interface {v1, p1, p2}, Lcom/badlogic/gdx/ai/btree/BehaviorTree$Listener;->childAdded(Lcom/badlogic/gdx/ai/btree/Task;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyStatusUpdated(Lcom/badlogic/gdx/ai/btree/Task;Lcom/badlogic/gdx/ai/btree/Task$Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;",
            "Lcom/badlogic/gdx/ai/btree/Task$Status;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/ai/btree/BehaviorTree$Listener;

    invoke-interface {v1, p1, p2}, Lcom/badlogic/gdx/ai/btree/BehaviorTree$Listener;->statusUpdated(Lcom/badlogic/gdx/ai/btree/Task;Lcom/badlogic/gdx/ai/btree/Task$Status;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/badlogic/gdx/ai/btree/BehaviorTree$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree$Listener<",
            "TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method public removeListeners()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->removeListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->q:Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->listeners:Lcom/badlogic/gdx/utils/Array;

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Task;->reset()V

    return-void
.end method

.method public resetTask()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Task;->resetTask()V

    iput-object p0, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->q:Ljava/lang/Object;

    return-void
.end method

.method public step()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    iget-object v1, v0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    sget-object v2, Lcom/badlogic/gdx/ai/btree/Task$Status;->RUNNING:Lcom/badlogic/gdx/ai/btree/Task$Status;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/ai/btree/Task;->setControl(Lcom/badlogic/gdx/ai/btree/Task;)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->start()V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/ai/btree/Task;->checkGuard(Lcom/badlogic/gdx/ai/btree/Task;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->fail()V

    :goto_0
    return-void
.end method
