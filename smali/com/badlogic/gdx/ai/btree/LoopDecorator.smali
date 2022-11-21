.class public abstract Lcom/badlogic/gdx/ai/btree/LoopDecorator;
.super Lcom/badlogic/gdx/ai/btree/Decorator;
.source "SourceFile"


# annotations
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
.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>(Lcom/badlogic/gdx/ai/btree/Task;)V

    return-void
.end method


# virtual methods
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

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/ai/btree/Decorator;->childRunning(Lcom/badlogic/gdx/ai/btree/Task;Lcom/badlogic/gdx/ai/btree/Task;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/btree/LoopDecorator;->q:Z

    return-void
.end method

.method public condition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/LoopDecorator;->q:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/LoopDecorator;->q:Z

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;->reset()V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/LoopDecorator;->q:Z

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/LoopDecorator;->condition()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Decorator;->p:Lcom/badlogic/gdx/ai/btree/Task;

    iget-object v1, v0, Lcom/badlogic/gdx/ai/btree/Task;->a:Lcom/badlogic/gdx/ai/btree/Task$Status;

    sget-object v2, Lcom/badlogic/gdx/ai/btree/Task$Status;->RUNNING:Lcom/badlogic/gdx/ai/btree/Task$Status;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/ai/btree/Task;->setControl(Lcom/badlogic/gdx/ai/btree/Task;)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Decorator;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->start()V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Decorator;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/ai/btree/Task;->checkGuard(Lcom/badlogic/gdx/ai/btree/Task;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Decorator;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Decorator;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->fail()V

    goto :goto_0

    :cond_2
    return-void
.end method
