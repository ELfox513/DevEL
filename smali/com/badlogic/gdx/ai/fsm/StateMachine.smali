.class public interface abstract Lcom/badlogic/gdx/ai/fsm/StateMachine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/msg/Telegraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "S::",
        "Lcom/badlogic/gdx/ai/fsm/State<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/msg/Telegraph;"
    }
.end annotation


# virtual methods
.method public abstract changeState(Lcom/badlogic/gdx/ai/fsm/State;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract getCurrentState()Lcom/badlogic/gdx/ai/fsm/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract getGlobalState()Lcom/badlogic/gdx/ai/fsm/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract getPreviousState()Lcom/badlogic/gdx/ai/fsm/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract handleMessage(Lcom/badlogic/gdx/ai/msg/Telegram;)Z
.end method

.method public abstract isInState(Lcom/badlogic/gdx/ai/fsm/State;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public abstract revertToPreviousState()Z
.end method

.method public abstract setGlobalState(Lcom/badlogic/gdx/ai/fsm/State;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract setInitialState(Lcom/badlogic/gdx/ai/fsm/State;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract update()V
.end method
