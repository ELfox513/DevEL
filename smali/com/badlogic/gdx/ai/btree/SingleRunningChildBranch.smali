.class public abstract Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;
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

.field public r:I

.field public s:[Lcom/badlogic/gdx/ai/btree/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
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


# virtual methods
.method public b(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/ai/btree/Task;->b(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

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

    check-cast v0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->s:[Lcom/badlogic/gdx/ai/btree/Task;

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

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

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

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

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

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

    return-void
.end method

.method public d()[Lcom/badlogic/gdx/ai/btree/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v2, v1, [Lcom/badlogic/gdx/ai/btree/Task;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->r:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->s:[Lcom/badlogic/gdx/ai/btree/Task;

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/BranchTask;->reset()V

    return-void
.end method

.method public resetTask()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Task;->resetTask()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->r:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->s:[Lcom/badlogic/gdx/ai/btree/Task;

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->run()V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->r:I

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->s:[Lcom/badlogic/gdx/ai/btree/Task;

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->s:[Lcom/badlogic/gdx/ai/btree/Task;

    iget v2, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->r:I

    aget-object v3, v1, v2

    aget-object v4, v1, v0

    aput-object v4, v1, v2

    aput-object v3, v1, v0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->s:[Lcom/badlogic/gdx/ai/btree/Task;

    iget v1, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->r:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/ai/btree/Task;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/ai/btree/Task;->setControl(Lcom/badlogic/gdx/ai/btree/Task;)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->start()V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/ai/btree/Task;->checkGuard(Lcom/badlogic/gdx/ai/btree/Task;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->fail()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->run()V

    :cond_4
    :goto_1
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->r:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->q:Lcom/badlogic/gdx/ai/btree/Task;

    return-void
.end method
