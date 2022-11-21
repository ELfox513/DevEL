.class final enum Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy$1;
.super Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/ai/btree/branch/Parallel$1;)V

    return-void
.end method


# virtual methods
.method public onChildFail(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public onChildSuccess(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$1;->b:[I

    iget-object v1, p1, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->orchestrator:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->d(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->l(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)I

    move-result v0

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->h(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr p1, v2

    if-ne v0, p1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->d(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->g(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->f(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/btree/Task;->getStatus()Lcom/badlogic/gdx/ai/btree/Task$Status;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/ai/btree/Task$Status;->SUCCEEDED:Lcom/badlogic/gdx/ai/btree/Task$Status;

    if-ne p1, v0, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_2
    return-object v1
.end method
