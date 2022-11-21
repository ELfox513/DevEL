.class final Lcom/badlogic/gdx/ai/btree/BehaviorTree$GuardEvaluator;
.super Lcom/badlogic/gdx/ai/btree/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/btree/BehaviorTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GuardEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/Task<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/Task;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/BehaviorTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/Task;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/Task;->d:Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/ai/btree/Task;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    const/4 p1, 0x0

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

    return-void
.end method

.method public getChild(I)Lcom/badlogic/gdx/ai/btree/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 0

    return-void
.end method
