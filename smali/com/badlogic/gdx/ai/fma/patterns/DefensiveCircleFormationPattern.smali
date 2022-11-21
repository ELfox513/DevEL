.class public Lcom/badlogic/gdx/ai/fma/patterns/DefensiveCircleFormationPattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/fma/FormationPattern;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/fma/FormationPattern<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/fma/patterns/DefensiveCircleFormationPattern;->b:F

    return-void
.end method


# virtual methods
.method public calculateSlotLocation(Lcom/badlogic/gdx/ai/utils/Location;I)Lcom/badlogic/gdx/ai/utils/Location;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;I)",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/fma/patterns/DefensiveCircleFormationPattern;->a:I

    const v1, 0x40c90fdb

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    int-to-float p2, p2

    mul-float p2, p2, v1

    int-to-float v1, v0

    div-float/2addr p2, v1

    iget v1, p0, Lcom/badlogic/gdx/ai/fma/patterns/DefensiveCircleFormationPattern;->b:F

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v1, v0

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/ai/utils/Location;->angleToVector(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/ai/utils/Location;->setOrientation(F)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->setZero()Lcom/badlogic/gdx/math/Vector;

    int-to-float p2, p2

    mul-float p2, p2, v1

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/ai/utils/Location;->setOrientation(F)V

    :goto_0
    return-object p1
.end method

.method public setNumberOfSlots(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/fma/patterns/DefensiveCircleFormationPattern;->a:I

    return-void
.end method

.method public supportsSlots(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
