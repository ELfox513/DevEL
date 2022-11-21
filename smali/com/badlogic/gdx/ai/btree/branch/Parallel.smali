.class public Lcom/badlogic/gdx/ai/btree/branch/Parallel;
.super Lcom/badlogic/gdx/ai/btree/BranchTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;,
        Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;
    }
.end annotation

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
.field public orchestrator:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;
    .annotation runtime Lcom/badlogic/gdx/ai/btree/annotation/TaskAttribute;
    .end annotation
.end field

.field public policy:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;
    .annotation runtime Lcom/badlogic/gdx/ai/btree/annotation/TaskAttribute;
    .end annotation
.end field

.field public q:Z

.field public r:Ljava/lang/Boolean;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;->Sequence:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    invoke-direct {p0, v0, p1, p2}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;-><init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;[Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;",
            "[",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;->Sequence:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;-><init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;-><init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/badlogic/gdx/ai/btree/BranchTask;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->policy:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->orchestrator:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->q:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;->Resume:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;-><init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;[Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;",
            "[",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;-><init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;->Sequence:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;-><init>(Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;Lcom/badlogic/gdx/utils/Array;)V

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

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/branch/Parallel;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public static synthetic d(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->q:Z

    return p0
.end method

.method public static synthetic e(Lcom/badlogic/gdx/ai/btree/branch/Parallel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->q:Z

    return p1
.end method

.method public static synthetic f(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic g(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic h(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic i(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic j(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->r:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic k(Lcom/badlogic/gdx/ai/btree/branch/Parallel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->r:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static synthetic l(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)I
    .locals 0

    iget p0, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->s:I

    return p0
.end method

.method public static synthetic m(Lcom/badlogic/gdx/ai/btree/branch/Parallel;I)I
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->s:I

    return p1
.end method

.method public static synthetic n(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)I
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->s:I

    return v0
.end method

.method public static synthetic o(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic p(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic q(Lcom/badlogic/gdx/ai/btree/branch/Parallel;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/Task;->b(I)V

    return-void
.end method

.method public static synthetic r(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic s(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/ai/btree/BranchTask;->p:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic t(Lcom/badlogic/gdx/ai/btree/branch/Parallel;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/btree/Task;->b(I)V

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

    check-cast v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->policy:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    iput-object v1, v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->policy:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->orchestrator:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;

    iput-object v1, v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->orchestrator:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;

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

    iget-object p1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->policy:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;->onChildFail(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->r:Ljava/lang/Boolean;

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

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->q:Z

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

    iget-object p1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->policy:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;->onChildSuccess(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public reset()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;->Sequence:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->policy:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Policy;

    sget-object v0, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;->Resume:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->orchestrator:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->r:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->s:I

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/BranchTask;->reset()V

    return-void
.end method

.method public resetAllChildren()V
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/BranchTask;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/ai/btree/BranchTask;->getChild(I)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/ai/btree/Task;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetTask()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Task;->resetTask()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->q:Z

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/branch/Parallel;->orchestrator:Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/ai/btree/branch/Parallel$Orchestrator;->execute(Lcom/badlogic/gdx/ai/btree/branch/Parallel;)V

    return-void
.end method
