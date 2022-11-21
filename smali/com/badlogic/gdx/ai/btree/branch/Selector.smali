.class public Lcom/badlogic/gdx/ai/btree/branch/Selector;
.super Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;-><init>()V

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

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;-><init>(Lcom/badlogic/gdx/utils/Array;)V

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

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method


# virtual methods
.method public childFail(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->childFail(Lcom/badlogic/gdx/ai/btree/Task;)V

    iget p1, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->r:I

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->fail()V

    :goto_0
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

    invoke-super {p0, p1}, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->childSuccess(Lcom/badlogic/gdx/ai/btree/Task;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->success()V

    return-void
.end method
