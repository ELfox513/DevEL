.class public Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
.super Lcom/badlogic/gdx/ai/steer/behaviors/Face;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/steer/behaviors/Face<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Z

.field public n:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public o:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Face;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->n:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->o:Lcom/badlogic/gdx/math/Vector;

    return-void
.end method


# virtual methods
.method public calculateRealSteering(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getTimepiece()Lcom/badlogic/gdx/ai/Timepiece;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/Timepiece;->getTime()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->k:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    sub-float v1, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->l:F

    iget v4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->j:F

    mul-float v4, v4, v1

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->randomTriangular(F)F

    move-result v1

    add-float/2addr v3, v1

    iput v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->l:F

    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->k:F

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->l:F

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/utils/Location;->getOrientation()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->o:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v3}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    iget-object v4, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v3}, Lcom/badlogic/gdx/ai/utils/Location;->getOrientation()F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/ai/utils/Location;->angleToVector(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->h:F

    invoke-interface {v1, v3, v4}, Lcom/badlogic/gdx/math/Vector;->mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->n:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->o:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    iget-object v4, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v3, v4, v0}, Lcom/badlogic/gdx/ai/utils/Location;->angleToVector(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->i:F

    invoke-interface {v1, v0, v3}, Lcom/badlogic/gdx/math/Vector;->mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearAcceleration()F

    move-result v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->n:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/ai/steer/behaviors/Face;->d(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    iget-object v2, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/utils/Location;->getOrientation()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/ai/utils/Location;->angleToVector(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->n:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v3}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/math/Vector;->nor()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    iput v2, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    :goto_0
    return-object p1
.end method

.method public getInternalTargetPosition()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->n:Lcom/badlogic/gdx/math/Vector;

    return-object v0
.end method

.method public getWanderCenter()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->o:Lcom/badlogic/gdx/math/Vector;

    return-object v0
.end method

.method public getWanderOffset()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->h:F

    return v0
.end method

.method public getWanderOrientation()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->l:F

    return v0
.end method

.method public getWanderRadius()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->i:F

    return v0
.end method

.method public getWanderRate()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->j:F

    return v0
.end method

.method public isFaceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->m:Z

    return v0
.end method

.method public bridge synthetic setAlignTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Face;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setAlignTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAlignTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setAlignTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public setAlignTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->e:F

    return-object p0
.end method

.method public bridge synthetic setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/Face;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->f:F

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Face;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public setFaceEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->m:Z

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Face;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Face;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public bridge synthetic setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/Face;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->d:Lcom/badlogic/gdx/ai/utils/Location;

    return-object p0
.end method

.method public bridge synthetic setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/Face;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;

    move-result-object p1

    return-object p1
.end method

.method public setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->g:F

    return-object p0
.end method

.method public setWanderOffset(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->h:F

    return-object p0
.end method

.method public setWanderOrientation(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->l:F

    return-object p0
.end method

.method public setWanderRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->i:F

    return-object p0
.end method

.method public setWanderRate(F)Lcom/badlogic/gdx/ai/steer/behaviors/Wander;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Wander<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Wander;->j:F

    return-object p0
.end method
