.class public Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
.super Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/steer/SteeringBehavior<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/ai/utils/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:F

.field public f:F

.field public g:F


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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/utils/Location;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/utils/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->g:F

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->d:Lcom/badlogic/gdx/ai/utils/Location;

    return-void
.end method


# virtual methods
.method public c(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;F)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;F)",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getOrientation()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Lcom/badlogic/gdx/ai/utils/ArithmeticUtils;->wrapAngleAroundZero(F)F

    move-result p2

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    neg-float v1, p2

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->e:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->setZero()Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxAngularSpeed()F

    move-result v3

    iget v4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->f:F

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_2

    div-float v4, v1, v4

    mul-float v3, v3, v4

    :cond_2
    div-float/2addr p2, v1

    mul-float v3, v3, p2

    iget-object p2, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {p2}, Lcom/badlogic/gdx/ai/steer/Steerable;->getAngularVelocity()F

    move-result p2

    sub-float/2addr v3, p2

    iget p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->g:F

    div-float/2addr v3, p2

    iput v3, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    cmpg-float p2, v3, v0

    if-gez p2, :cond_3

    neg-float v3, v3

    :cond_3
    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxAngularAcceleration()F

    move-result p2

    cmpl-float p2, v3, p2

    if-lez p2, :cond_4

    iget p2, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxAngularAcceleration()F

    move-result v0

    div-float/2addr v0, v3

    mul-float p2, p2, v0

    iput p2, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    :cond_4
    iget-object p2, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p2}, Lcom/badlogic/gdx/math/Vector;->setZero()Lcom/badlogic/gdx/math/Vector;

    return-object p1
.end method

.method public calculateRealSteering(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->d:Lcom/badlogic/gdx/ai/utils/Location;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getOrientation()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->c(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;F)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1
.end method

.method public getAlignTolerance()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->e:F

    return v0
.end method

.method public getDecelerationRadius()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->f:F

    return v0
.end method

.method public getTarget()Lcom/badlogic/gdx/ai/utils/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->d:Lcom/badlogic/gdx/ai/utils/Location;

    return-object v0
.end method

.method public getTimeToTarget()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->g:F

    return v0
.end method

.method public setAlignTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->e:F

    return-object p0
.end method

.method public setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->f:F

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->d:Lcom/badlogic/gdx/ai/utils/Location;

    return-object p0
.end method

.method public setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->g:F

    return-object p0
.end method
