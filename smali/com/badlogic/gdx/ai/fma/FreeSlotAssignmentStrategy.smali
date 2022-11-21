.class public Lcom/badlogic/gdx/ai/fma/FreeSlotAssignmentStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateNumberOfSlots(Lcom/badlogic/gdx/utils/Array;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignment<",
            "TT;>;>;)I"
        }
    .end annotation

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    return p1
.end method

.method public removeSlotAssignment(Lcom/badlogic/gdx/utils/Array;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignment<",
            "TT;>;>;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    return-void
.end method

.method public updateSlotAssignments(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignment<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/ai/fma/SlotAssignment;

    iput v0, v1, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->slotNumber:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
