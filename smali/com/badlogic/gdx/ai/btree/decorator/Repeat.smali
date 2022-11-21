.class public Lcom/badlogic/gdx/ai/btree/decorator/Repeat;
.super Lcom/badlogic/gdx/ai/btree/LoopDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/LoopDecorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public r:I

.field public times:Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;
    .annotation runtime Lcom/badlogic/gdx/ai/btree/annotation/TaskAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;-><init>(Lcom/badlogic/gdx/ai/btree/Task;)V

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

    sget-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;->NEGATIVE_ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;-><init>(Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;Lcom/badlogic/gdx/ai/btree/Task;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/ai/btree/LoopDecorator;-><init>(Lcom/badlogic/gdx/ai/btree/Task;)V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->times:Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;

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

    check-cast v0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->times:Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;

    iput-object v1, v0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->times:Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;

    invoke-super {p0, p1}, Lcom/badlogic/gdx/ai/btree/Decorator;->c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->childSuccess(Lcom/badlogic/gdx/ai/btree/Task;)V

    return-void
.end method

.method public childSuccess(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->r:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->r:I

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->r:I

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/ai/btree/Decorator;->childSuccess(Lcom/badlogic/gdx/ai/btree/Task;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/btree/LoopDecorator;->q:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/ai/btree/LoopDecorator;->q:Z

    :goto_0
    return-void
.end method

.method public condition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/LoopDecorator;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->r:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->r:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->times:Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/LoopDecorator;->reset()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->times:Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Repeat;->r:I

    return-void
.end method
