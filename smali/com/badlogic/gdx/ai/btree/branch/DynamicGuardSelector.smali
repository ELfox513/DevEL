.class public Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;
.super Lcom/badlogic/gdx/ai/btree/BranchTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/BranchTask<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public q:Lcom/badlogic/gdx/ai/btree/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/BranchTask;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/btree/BranchTask;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/BranchTask;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method


# virtual methods
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

    check-cast v0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-super {p0, p1}, Lcom/badlogic/gdx/ai/btree/BranchTask;->c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object p1

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

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

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

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

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

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->success()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/BranchTask;->reset()V

    return-void
.end method

.method public resetTask()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Task;->resetTask()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/ai/btree/Task;->checkGuard(Lcom/badlogic/gdx/ai/btree/Task;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->cancel()V

    iput-object v2, p0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->fail()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

    if-nez v0, :cond_4

    iput-object v3, p0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/ai/btree/Task;->setControl(Lcom/badlogic/gdx/ai/btree/Task;)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->start()V

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/branch/DynamicGuardSelector;->q:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->run()V

    :goto_2
    return-void
.end method
