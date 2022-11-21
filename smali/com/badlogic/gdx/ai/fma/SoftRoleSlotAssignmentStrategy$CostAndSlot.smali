.class Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CostAndSlot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public a:F

.field public b:I


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;->a:F

    iput p2, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;->b:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot<",
            "TT;>;)I"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;->a:F

    iget p1, p1, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;->a:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;->compareTo(Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;)I

    move-result p1

    return p1
.end method
