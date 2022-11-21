.class public Lcom/badlogic/gdx/ai/steer/proximities/RadiusProximity;
.super Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Ljava/lang/Iterable;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;>;F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Ljava/lang/Iterable;)V

    iput p3, p0, Lcom/badlogic/gdx/ai/steer/proximities/RadiusProximity;->c:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/proximities/RadiusProximity;->d:F

    return-void
.end method


# virtual methods
.method public findNeighbors(Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback<",
            "TT;>;)I"
        }
    .end annotation

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getTimepiece()Lcom/badlogic/gdx/ai/Timepiece;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/Timepiece;->getTime()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/ai/steer/proximities/RadiusProximity;->d:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/proximities/RadiusProximity;->d:F

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/ai/steer/Steerable;

    iget-object v5, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    if-eq v4, v5, :cond_0

    invoke-interface {v4}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v5

    iget v6, p0, Lcom/badlogic/gdx/ai/steer/proximities/RadiusProximity;->c:F

    invoke-interface {v4}, Lcom/badlogic/gdx/ai/steer/Steerable;->getBoundingRadius()F

    move-result v7

    add-float/2addr v6, v7

    mul-float v6, v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    invoke-interface {p1, v4}, Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback;->reportNeighbor(Lcom/badlogic/gdx/ai/steer/Steerable;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/ai/steer/Steerable;->setTagged(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v4, v2}, Lcom/badlogic/gdx/ai/steer/Steerable;->setTagged(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/ai/steer/Steerable;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    if-eq v1, v3, :cond_2

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Steerable;->isTagged()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback;->reportNeighbor(Lcom/badlogic/gdx/ai/steer/Steerable;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v3, v2

    :cond_4
    return v3
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/proximities/RadiusProximity;->c:F

    return v0
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/proximities/RadiusProximity;->c:F

    return-void
.end method
