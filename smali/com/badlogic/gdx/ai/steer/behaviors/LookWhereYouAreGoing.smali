.class public Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;
.super Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    return-void
.end method


# virtual methods
.method public calculateRealSteering(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Limiter;->getZeroLinearSpeedThreshold()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->setZero()Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/utils/Location;->vectorToAngle(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->c(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;F)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1
.end method

.method public setAlignTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->e:F

    return-object p0
.end method

.method public bridge synthetic setAlignTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;->setAlignTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;

    move-result-object p1

    return-object p1
.end method

.method public setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->f:F

    return-object p0
.end method

.method public bridge synthetic setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;->setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;

    move-result-object p1

    return-object p1
.end method

.method public setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->d:Lcom/badlogic/gdx/ai/utils/Location;

    return-object p0
.end method

.method public bridge synthetic setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;->setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;

    move-result-object p1

    return-object p1
.end method

.method public setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;->g:F

    return-object p0
.end method

.method public bridge synthetic setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/ReachOrientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;->setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/LookWhereYouAreGoing;

    move-result-object p1

    return-object p1
.end method
