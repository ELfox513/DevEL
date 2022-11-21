.class public Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
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

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/utils/Location;)V

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

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->g:F

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->d:Lcom/badlogic/gdx/ai/utils/Location;

    return-void
.end method


# virtual methods
.method public c(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;TT;)",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, p2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    invoke-interface {p2}, Lcom/badlogic/gdx/math/Vector;->len()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->e:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->setZero()Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearSpeed()F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->f:F

    cmpg-float v4, v0, v3

    if-gtz v4, :cond_1

    div-float v3, v0, v3

    mul-float v2, v2, v3

    :cond_1
    div-float/2addr v2, v0

    invoke-interface {p2, v2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->g:F

    div-float/2addr v0, v2

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearAcceleration()F

    move-result v0

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/math/Vector;->limit(F)Lcom/badlogic/gdx/math/Vector;

    const/4 p2, 0x0

    iput p2, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

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

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->d:Lcom/badlogic/gdx/ai/utils/Location;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->c(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1
.end method

.method public getArrivalTolerance()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->e:F

    return v0
.end method

.method public getDecelerationRadius()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->f:F

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

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->d:Lcom/badlogic/gdx/ai/utils/Location;

    return-object v0
.end method

.method public getTimeToTarget()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->g:F

    return v0
.end method

.method public setArrivalTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Arrive<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->e:F

    return-object p0
.end method

.method public setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Arrive<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->f:F

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Arrive<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Arrive<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Arrive<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Arrive<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->d:Lcom/badlogic/gdx/ai/utils/Location;

    return-object p0
.end method

.method public setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Arrive<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->g:F

    return-object p0
.end method
