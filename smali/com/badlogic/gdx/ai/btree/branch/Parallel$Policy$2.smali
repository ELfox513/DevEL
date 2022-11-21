.class final enum Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy$2;
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->d(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->l(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)I

    move-result v0

    invoke-static {p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->i(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onChildSuccess(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
