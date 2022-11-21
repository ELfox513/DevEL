.class final enum Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator$2;
.super Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/ai/btree/branch/Parallel$1;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->e(Lcom/badlogic/gdx/ai/btree/branch/Parallel;Z)Z

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->k(Lcom/badlogic/gdx/ai/btree/branch/Parallel;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->m(Lcom/badlogic/gdx/ai/btree/branch/Parallel;I)I

    :goto_0
    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->l(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)I

    move-result v2

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->r(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_6

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->s(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->l(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/ai/btree/Task;

    sget-object v3, Lcom/badlogic/gdx/ai/btree/branch/Parallel$1;->a:[I

    invoke-virtual {v2}, Lcom/badlogic/gdx/ai/btree/Task;->getStatus()Lcom/badlogic/gdx/ai/btree/Task$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/ai/btree/Task;->setControl(Lcom/badlogic/gdx/ai/btree/Task;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/ai/btree/Task;->start()V

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/ai/btree/Task;->checkGuard(Lcom/badlogic/gdx/ai/btree/Task;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/badlogic/gdx/ai/btree/Task;->run()V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/ai/btree/Task;->fail()V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/ai/btree/Task;->run()V

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->j(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->d(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->l(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)I

    move-result v1

    add-int/2addr v1, v0

    :cond_3
    invoke-static {p1, v1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->t(Lcom/badlogic/gdx/ai/btree/branch/Parallel;I)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->resetAllChildren()V

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->j(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/btree/Task;->success()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/btree/Task;->fail()V

    :goto_2
    return-void

    :cond_5
    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->n(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/btree/Task;->running()V

    return-void
.end method
