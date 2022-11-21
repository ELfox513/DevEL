.class public Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subtree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/badlogic/gdx/ai/btree/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;->b:Lcom/badlogic/gdx/ai/btree/Task;

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;->c:I

    return-void
.end method


# virtual methods
.method public init(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;->b:Lcom/badlogic/gdx/ai/btree/Task;

    return-void
.end method

.method public inited()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;->b:Lcom/badlogic/gdx/ai/btree/Task;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRootTree()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public rootTaskInstance()Lcom/badlogic/gdx/ai/btree/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;->b:Lcom/badlogic/gdx/ai/btree/Task;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Subtree;->b:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/btree/Task;->cloneTask()Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v0

    return-object v0
.end method
