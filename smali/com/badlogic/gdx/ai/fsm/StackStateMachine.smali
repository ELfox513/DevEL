.class public Lcom/badlogic/gdx/ai/fsm/StackStateMachine;
.super Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "S::",
        "Lcom/badlogic/gdx/ai/fsm/State<",
        "TE;>;>",
        "Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine<",
        "TE;TS;>;"
    }
.end annotation


# instance fields
.field public e:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/badlogic/gdx/ai/fsm/StackStateMachine;-><init>(Ljava/lang/Object;Lcom/badlogic/gdx/ai/fsm/State;Lcom/badlogic/gdx/ai/fsm/State;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/ai/fsm/StackStateMachine;-><init>(Ljava/lang/Object;Lcom/badlogic/gdx/ai/fsm/State;Lcom/badlogic/gdx/ai/fsm/State;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/badlogic/gdx/ai/fsm/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TS;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/fsm/StackStateMachine;-><init>(Ljava/lang/Object;Lcom/badlogic/gdx/ai/fsm/State;Lcom/badlogic/gdx/ai/fsm/State;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/badlogic/gdx/ai/fsm/State;Lcom/badlogic/gdx/ai/fsm/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TS;TS;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;-><init>(Ljava/lang/Object;Lcom/badlogic/gdx/ai/fsm/State;Lcom/badlogic/gdx/ai/fsm/State;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/ai/fsm/State;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->b:Lcom/badlogic/gdx/ai/fsm/State;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/StackStateMachine;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->b:Lcom/badlogic/gdx/ai/fsm/State;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->a:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/ai/fsm/State;->exit(Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->b:Lcom/badlogic/gdx/ai/fsm/State;

    iget-object p2, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->a:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/ai/fsm/State;->enter(Ljava/lang/Object;)V

    return-void
.end method

.method public changeState(Lcom/badlogic/gdx/ai/fsm/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/ai/fsm/StackStateMachine;->a(Lcom/badlogic/gdx/ai/fsm/State;Z)V

    return-void
.end method

.method public getCurrentState()Lcom/badlogic/gdx/ai/fsm/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->b:Lcom/badlogic/gdx/ai/fsm/State;

    return-object v0
.end method

.method public getPreviousState()Lcom/badlogic/gdx/ai/fsm/State;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/StackStateMachine;->e:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/ai/fsm/State;

    return-object v0
.end method

.method public revertToPreviousState()Z
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/StackStateMachine;->e:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/ai/fsm/State;

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/ai/fsm/StackStateMachine;->a(Lcom/badlogic/gdx/ai/fsm/State;Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public setInitialState(Lcom/badlogic/gdx/ai/fsm/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/StackStateMachine;->e:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/fsm/StackStateMachine;->e:Lcom/badlogic/gdx/utils/Array;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/StackStateMachine;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->b:Lcom/badlogic/gdx/ai/fsm/State;

    return-void
.end method
