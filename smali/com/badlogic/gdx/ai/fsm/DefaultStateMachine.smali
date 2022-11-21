.class public Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/fsm/StateMachine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "S::",
        "Lcom/badlogic/gdx/ai/fsm/State<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/fsm/StateMachine<",
        "TE;TS;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/ai/fsm/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public c:Lcom/badlogic/gdx/ai/fsm/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/ai/fsm/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;-><init>(Ljava/lang/Object;Lcom/badlogic/gdx/ai/fsm/State;Lcom/badlogic/gdx/ai/fsm/State;)V

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

    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;-><init>(Ljava/lang/Object;Lcom/badlogic/gdx/ai/fsm/State;Lcom/badlogic/gdx/ai/fsm/State;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;-><init>(Ljava/lang/Object;Lcom/badlogic/gdx/ai/fsm/State;Lcom/badlogic/gdx/ai/fsm/State;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/badlogic/gdx/ai/fsm/State;Lcom/badlogic/gdx/ai/fsm/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TS;TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->a:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->setInitialState(Lcom/badlogic/gdx/ai/fsm/State;)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->setGlobalState(Lcom/badlogic/gdx/ai/fsm/State;)V

    return-void
.end method


# virtual methods
.method public changeState(Lcom/badlogic/gdx/ai/fsm/State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->b:Lcom/badlogic/gdx/ai/fsm/State;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->c:Lcom/badlogic/gdx/ai/fsm/State;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/fsm/State;->exit(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->b:Lcom/badlogic/gdx/ai/fsm/State;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/ai/fsm/State;->enter(Ljava/lang/Object;)V

    :cond_1
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

.method public getGlobalState()Lcom/badlogic/gdx/ai/fsm/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->d:Lcom/badlogic/gdx/ai/fsm/State;

    return-object v0
.end method

.method public getOwner()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getPreviousState()Lcom/badlogic/gdx/ai/fsm/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->c:Lcom/badlogic/gdx/ai/fsm/State;

    return-object v0
.end method

.method public handleMessage(Lcom/badlogic/gdx/ai/msg/Telegram;)Z
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->b:Lcom/badlogic/gdx/ai/fsm/State;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->a:Ljava/lang/Object;

    invoke-interface {v0, v2, p1}, Lcom/badlogic/gdx/ai/fsm/State;->onMessage(Ljava/lang/Object;Lcom/badlogic/gdx/ai/msg/Telegram;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->d:Lcom/badlogic/gdx/ai/fsm/State;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->a:Ljava/lang/Object;

    invoke-interface {v0, v2, p1}, Lcom/badlogic/gdx/ai/fsm/State;->onMessage(Ljava/lang/Object;Lcom/badlogic/gdx/ai/msg/Telegram;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isInState(Lcom/badlogic/gdx/ai/fsm/State;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->b:Lcom/badlogic/gdx/ai/fsm/State;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public revertToPreviousState()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->c:Lcom/badlogic/gdx/ai/fsm/State;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->changeState(Lcom/badlogic/gdx/ai/fsm/State;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setGlobalState(Lcom/badlogic/gdx/ai/fsm/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->d:Lcom/badlogic/gdx/ai/fsm/State;

    return-void
.end method

.method public setInitialState(Lcom/badlogic/gdx/ai/fsm/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->c:Lcom/badlogic/gdx/ai/fsm/State;

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->b:Lcom/badlogic/gdx/ai/fsm/State;

    return-void
.end method

.method public setOwner(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->a:Ljava/lang/Object;

    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->d:Lcom/badlogic/gdx/ai/fsm/State;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/fsm/State;->update(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->b:Lcom/badlogic/gdx/ai/fsm/State;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/ai/fsm/DefaultStateMachine;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/fsm/State;->update(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
