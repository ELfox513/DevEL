.class public Lcom/badlogic/gdx/ai/btree/branch/RandomSelector;
.super Lcom/badlogic/gdx/ai/btree/branch/Selector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/branch/Selector<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/branch/Selector;-><init>()V

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

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/btree/branch/Selector;-><init>(Lcom/badlogic/gdx/utils/Array;)V

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

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/branch/Selector;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->start()V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->s:[Lcom/badlogic/gdx/ai/btree/Task;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->d()[Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/SingleRunningChildBranch;->s:[Lcom/badlogic/gdx/ai/btree/Task;

    :cond_0
    return-void
.end method
