.class public Lcom/badlogic/gdx/ai/fma/patterns/OffensiveCircleFormationPattern;
.super Lcom/badlogic/gdx/ai/fma/patterns/DefensiveCircleFormationPattern;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/fma/patterns/DefensiveCircleFormationPattern<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/fma/patterns/DefensiveCircleFormationPattern;-><init>(F)V

    return-void
.end method


# virtual methods
.method public calculateSlotLocation(Lcom/badlogic/gdx/ai/utils/Location;I)Lcom/badlogic/gdx/ai/utils/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;I)",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/ai/fma/patterns/DefensiveCircleFormationPattern;->calculateSlotLocation(Lcom/badlogic/gdx/ai/utils/Location;I)Lcom/badlogic/gdx/ai/utils/Location;

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->getOrientation()F

    move-result p2

    const v0, 0x40490fdb    # (float)Math.PI

    add-float/2addr p2, v0

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/ai/utils/Location;->setOrientation(F)V

    return-object p1
.end method
