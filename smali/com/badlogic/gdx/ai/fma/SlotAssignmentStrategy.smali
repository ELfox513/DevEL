.class public interface abstract Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract calculateNumberOfSlots(Lcom/badlogic/gdx/utils/Array;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignment<",
            "TT;>;>;)I"
        }
    .end annotation
.end method

.method public abstract removeSlotAssignment(Lcom/badlogic/gdx/utils/Array;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignment<",
            "TT;>;>;I)V"
        }
    .end annotation
.end method

.method public abstract updateSlotAssignments(Lcom/badlogic/gdx/utils/Array;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignment<",
            "TT;>;>;)V"
        }
    .end annotation
.end method
