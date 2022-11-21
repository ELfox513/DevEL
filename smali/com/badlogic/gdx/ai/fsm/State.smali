.class public interface abstract Lcom/badlogic/gdx/ai/fsm/State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract enter(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract exit(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract onMessage(Ljava/lang/Object;Lcom/badlogic/gdx/ai/msg/Telegram;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/badlogic/gdx/ai/msg/Telegram;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method
