.class public Lcom/badlogic/gdx/ai/fma/Formation;
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


# instance fields
.field public a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignment<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/ai/utils/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Lcom/badlogic/gdx/ai/fma/FormationPattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/fma/FormationPattern<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/fma/FormationMotionModerator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final g:Lcom/badlogic/gdx/math/Matrix3;

.field public final h:Lcom/badlogic/gdx/ai/utils/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/utils/Location;Lcom/badlogic/gdx/ai/fma/FormationPattern;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/fma/FormationPattern<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/ai/fma/FreeSlotAssignmentStrategy;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/fma/FreeSlotAssignmentStrategy;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/ai/fma/Formation;-><init>(Lcom/badlogic/gdx/ai/utils/Location;Lcom/badlogic/gdx/ai/fma/FormationPattern;Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/utils/Location;Lcom/badlogic/gdx/ai/fma/FormationPattern;Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/fma/FormationPattern<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/ai/fma/Formation;-><init>(Lcom/badlogic/gdx/ai/utils/Location;Lcom/badlogic/gdx/ai/fma/FormationPattern;Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/utils/Location;Lcom/badlogic/gdx/ai/fma/FormationPattern;Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/fma/FormationPattern<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/fma/FormationMotionModerator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->g:Lcom/badlogic/gdx/math/Matrix3;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->b:Lcom/badlogic/gdx/ai/utils/Location;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/fma/Formation;->c:Lcom/badlogic/gdx/ai/fma/FormationPattern;

    iput-object p3, p0, Lcom/badlogic/gdx/ai/fma/Formation;->d:Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;

    iput-object p4, p0, Lcom/badlogic/gdx/ai/fma/Formation;->e:Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;

    new-instance p2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object p2, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->newLocation()Lcom/badlogic/gdx/ai/utils/Location;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/ai/fma/Formation;->h:Lcom/badlogic/gdx/ai/utils/Location;

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->f:Lcom/badlogic/gdx/math/Vector;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The anchor point cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/ai/fma/FormationMember;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/FormationMember<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/ai/fma/SlotAssignment;

    iget-object v1, v1, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->member:Lcom/badlogic/gdx/ai/fma/FormationMember;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public addMember(Lcom/badlogic/gdx/ai/fma/FormationMember;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/FormationMember<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->c:Lcom/badlogic/gdx/ai/fma/FormationPattern;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/ai/fma/FormationPattern;->supportsSlots(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/ai/fma/SlotAssignment;

    invoke-direct {v2, p1, v0}, Lcom/badlogic/gdx/ai/fma/SlotAssignment;-><init>(Lcom/badlogic/gdx/ai/fma/FormationMember;I)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/fma/Formation;->updateSlotAssignments()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public changePattern(Lcom/badlogic/gdx/ai/fma/FormationPattern;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/FormationPattern<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/ai/fma/FormationPattern;->supportsSlots(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/fma/Formation;->setPattern(Lcom/badlogic/gdx/ai/fma/FormationPattern;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/fma/Formation;->updateSlotAssignments()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAnchorPoint()Lcom/badlogic/gdx/ai/utils/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->b:Lcom/badlogic/gdx/ai/utils/Location;

    return-object v0
.end method

.method public getMotionModerator()Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/fma/FormationMotionModerator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->e:Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;

    return-object v0
.end method

.method public getPattern()Lcom/badlogic/gdx/ai/fma/FormationPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/fma/FormationPattern<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->c:Lcom/badlogic/gdx/ai/fma/FormationPattern;

    return-object v0
.end method

.method public getSlotAssignmentAt(I)Lcom/badlogic/gdx/ai/fma/SlotAssignment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignment<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/ai/fma/SlotAssignment;

    return-object p1
.end method

.method public getSlotAssignmentCount()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public getSlotAssignmentStrategy()Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->d:Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;

    return-object v0
.end method

.method public removeMember(Lcom/badlogic/gdx/ai/fma/FormationMember;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/FormationMember<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/fma/Formation;->a(Lcom/badlogic/gdx/ai/fma/FormationMember;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->d:Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;->removeSlotAssignment(Lcom/badlogic/gdx/utils/Array;I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/fma/Formation;->updateSlotAssignments()V

    :cond_0
    return-void
.end method

.method public setAnchorPoint(Lcom/badlogic/gdx/ai/utils/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->b:Lcom/badlogic/gdx/ai/utils/Location;

    return-void
.end method

.method public setMotionModerator(Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/FormationMotionModerator<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->e:Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;

    return-void
.end method

.method public setPattern(Lcom/badlogic/gdx/ai/fma/FormationPattern;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/FormationPattern<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->c:Lcom/badlogic/gdx/ai/fma/FormationPattern;

    return-void
.end method

.method public setSlotAssignmentStrategy(Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->d:Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;

    return-void
.end method

.method public updateSlotAssignments()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->d:Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;->updateSlotAssignments(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->c:Lcom/badlogic/gdx/ai/fma/FormationPattern;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->d:Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/ai/fma/SlotAssignmentStrategy;->calculateNumberOfSlots(Lcom/badlogic/gdx/utils/Array;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/fma/FormationPattern;->setNumberOfSlots(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/Formation;->e:Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->h:Lcom/badlogic/gdx/ai/utils/Location;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/fma/Formation;->c:Lcom/badlogic/gdx/ai/fma/FormationPattern;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;->calculateDriftOffset(Lcom/badlogic/gdx/ai/utils/Location;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/ai/fma/FormationPattern;)Lcom/badlogic/gdx/ai/utils/Location;

    :cond_0
    return-void
.end method

.method public updateSlots()V
    .locals 7

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/fma/Formation;->getAnchorPoint()Lcom/badlogic/gdx/ai/utils/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->f:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getOrientation()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/ai/fma/Formation;->e:Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/ai/fma/Formation;->f:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/fma/Formation;->h:Lcom/badlogic/gdx/ai/utils/Location;

    invoke-interface {v3}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/fma/Formation;->h:Lcom/badlogic/gdx/ai/utils/Location;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/utils/Location;->getOrientation()F

    move-result v2

    sub-float/2addr v1, v2

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/ai/fma/Formation;->g:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v2

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getOrientation()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix3;->rotateRad(F)Lcom/badlogic/gdx/math/Matrix3;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/ai/fma/Formation;->a:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/ai/fma/SlotAssignment;

    iget-object v4, v3, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->member:Lcom/badlogic/gdx/ai/fma/FormationMember;

    invoke-interface {v4}, Lcom/badlogic/gdx/ai/fma/FormationMember;->getTargetLocation()Lcom/badlogic/gdx/ai/utils/Location;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/ai/fma/Formation;->c:Lcom/badlogic/gdx/ai/fma/FormationPattern;

    iget v3, v3, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->slotNumber:I

    invoke-interface {v5, v4, v3}, Lcom/badlogic/gdx/ai/fma/FormationPattern;->calculateSlotLocation(Lcom/badlogic/gdx/ai/utils/Location;I)Lcom/badlogic/gdx/ai/utils/Location;

    invoke-interface {v4}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    instance-of v5, v3, Lcom/badlogic/gdx/math/Vector2;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/ai/fma/Formation;->g:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    :cond_1
    instance-of v5, v3, Lcom/badlogic/gdx/math/Vector3;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/ai/fma/Formation;->g:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/badlogic/gdx/ai/fma/Formation;->f:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v4}, Lcom/badlogic/gdx/ai/utils/Location;->getOrientation()F

    move-result v3

    add-float/2addr v3, v1

    invoke-interface {v4, v3}, Lcom/badlogic/gdx/ai/utils/Location;->setOrientation(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/ai/fma/Formation;->e:Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;->updateAnchorPoint(Lcom/badlogic/gdx/ai/utils/Location;)V

    :cond_4
    return-void
.end method
