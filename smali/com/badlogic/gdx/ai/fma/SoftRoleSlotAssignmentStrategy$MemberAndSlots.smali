.class Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;
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
    name = "MemberAndSlots"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/ai/fma/FormationMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/fma/FormationMember<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:F

.field public d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$CostAndSlot<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/fma/FormationMember;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/FormationMember<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->a:Lcom/badlogic/gdx/ai/fma/FormationMember;

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->b:F

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->d:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots<",
            "TT;>;)I"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->b:F

    iget p1, p1, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->b:F

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

    check-cast p1, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;->compareTo(Lcom/badlogic/gdx/ai/fma/SoftRoleSlotAssignmentStrategy$MemberAndSlots;)I

    move-result p1

    return p1
.end method
