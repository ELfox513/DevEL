.class public interface abstract Lcom/badlogic/gdx/ai/btree/BehaviorTree$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/btree/BehaviorTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract childAdded(Lcom/badlogic/gdx/ai/btree/Task;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;I)V"
        }
    .end annotation
.end method

.method public abstract statusUpdated(Lcom/badlogic/gdx/ai/btree/Task;Lcom/badlogic/gdx/ai/btree/Task$Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;",
            "Lcom/badlogic/gdx/ai/btree/Task$Status;",
            ")V"
        }
    .end annotation
.end method
