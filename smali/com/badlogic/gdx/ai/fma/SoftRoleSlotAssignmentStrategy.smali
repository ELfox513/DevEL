.class public Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;
.super Lcom/badlogic/gdx/ai/fma/BoundedSlotAssignmentStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$SlotCostProvider;,
        Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;,
        Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/fma/BoundedSlotAssignmentStrategy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$SlotCostProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$SlotCostProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:F

.field public c:Lcom/badlogic/gdx/utils/BooleanArray;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$SlotCostProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$SlotCostProvider<",
            "TT;>;)V"
        }
    .end annotation

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;-><init>(Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$SlotCostProvider;F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$SlotCostProvider;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$SlotCostProvider<",
            "TT;>;F)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/fma/BoundedSlotAssignmentStrategy;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;->a:Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$SlotCostProvider;

    iput p2, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;->b:F

    new-instance p1, Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;->c:Lcom/badlogic/gdx/utils/BooleanArray;

    return-void
.end method


# virtual methods
.method public updateSlotAssignments(Lcom/badlogic/gdx/utils/Array;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignment<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/ai/fma/SlotAssignment;

    new-instance v5, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;

    iget-object v6, v4, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->member:Lcom/badlogic/gdx/ai/fma/FormationMember;

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;-><init>(Lcom/badlogic/gdx/ai/fma/FormationMember;)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_1

    iget-object v7, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;->a:Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$SlotCostProvider;

    iget-object v8, v4, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->member:Lcom/badlogic/gdx/ai/fma/FormationMember;

    invoke-interface {v7, v8, v6}, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$SlotCostProvider;->getCost(Lcom/badlogic/gdx/ai/fma/FormationMember;I)F

    move-result v7

    iget v8, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;->b:F

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/ai/fma/SlotAssignment;

    new-instance v9, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;

    iget v8, v8, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->slotNumber:I

    invoke-direct {v9, v7, v8}, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;-><init>(FI)V

    iget-object v8, v5, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget v8, v5, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->b:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v7, v9

    div-float/2addr v9, v7

    add-float/2addr v8, v9

    iput v8, v5, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->b:F

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;->c:Lcom/badlogic/gdx/utils/BooleanArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-le v1, v4, :cond_3

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/BooleanArray;->ensureCapacity(I)[Z

    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;->c:Lcom/badlogic/gdx/utils/BooleanArray;

    iput v1, v3, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;->c:Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-virtual {v4, v3, v2}, Lcom/badlogic/gdx/utils/BooleanArray;->set(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->sort()V

    const/4 v1, 0x0

    :goto_4
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_7

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;

    iget-object v4, v3, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->sort()V

    iget-object v4, v3, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->d:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_6

    iget-object v6, v3, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;

    iget v6, v6, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot;->b:I

    iget-object v7, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;->c:Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/BooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/ai/fma/SlotAssignment;

    iget-object v3, v3, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->a:Lcom/badlogic/gdx/ai/fma/FormationMember;

    iput-object v3, v4, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->member:Lcom/badlogic/gdx/ai/fma/FormationMember;

    iput v6, v4, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->slotNumber:I

    iget-object v3, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy;->c:Lcom/badlogic/gdx/utils/BooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/utils/BooleanArray;->set(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftRoleSlotAssignmentStrategy cannot find valid slot assignment for member "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->a:Lcom/badlogic/gdx/ai/fma/FormationMember;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method
