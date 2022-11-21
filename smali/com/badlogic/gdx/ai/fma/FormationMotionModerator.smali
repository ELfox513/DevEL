.class public abstract Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;
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
.field public a:Lcom/badlogic/gdx/ai/utils/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateDriftOffset(Lcom/badlogic/gdx/ai/utils/Location;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/ai/fma/FormationPattern;)Lcom/badlogic/gdx/ai/utils/Location;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/fma/SlotAssignment<",
            "TT;>;>;",
            "Lcom/badlogic/gdx/ai/fma/FormationPattern<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->setZero()Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;->a:Lcom/badlogic/gdx/ai/utils/Location;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->newLocation()Lcom/badlogic/gdx/ai/utils/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;->a:Lcom/badlogic/gdx/ai/utils/Location;

    :cond_0
    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;->a:Lcom/badlogic/gdx/ai/utils/Location;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget v2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    int-to-float v5, v3

    cmpg-float v5, v5, v2

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;->a:Lcom/badlogic/gdx/ai/utils/Location;

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/ai/fma/SlotAssignment;

    iget v6, v6, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->slotNumber:I

    invoke-interface {p3, v5, v6}, Lcom/badlogic/gdx/ai/fma/FormationPattern;->calculateSlotLocation(Lcom/badlogic/gdx/ai/utils/Location;I)Lcom/badlogic/gdx/ai/utils/Location;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v5, p0, Lcom/badlogic/gdx/ai/fma/FormationMotionModerator;->a:Lcom/badlogic/gdx/ai/utils/Location;

    invoke-interface {v5}, Lcom/badlogic/gdx/ai/utils/Location;->getOrientation()F

    move-result v5

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, v2

    invoke-interface {v0, p2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    div-float/2addr v4, v2

    invoke-interface {p1, v4}, Lcom/badlogic/gdx/ai/utils/Location;->setOrientation(F)V

    return-object p1
.end method

.method public abstract updateAnchorPoint(Lcom/badlogic/gdx/ai/utils/Location;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;)V"
        }
    .end annotation
.end method
