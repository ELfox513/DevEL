.class public Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;
.super Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/steer/behaviors/Arrive<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public h:Lcom/badlogic/gdx/ai/steer/Steerable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:Lcom/badlogic/gdx/ai/steer/Steerable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public j:F

.field public k:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Steerable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)V"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Steerable;F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Steerable;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;F)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->h:Lcom/badlogic/gdx/ai/steer/Steerable;

    iput-object p3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->i:Lcom/badlogic/gdx/ai/steer/Steerable;

    iput p4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->j:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->k:Lcom/badlogic/gdx/math/Vector;

    return-void
.end method


# virtual methods
.method public calculateRealSteering(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->k:Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->i:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->h:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->j:F

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->h:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->k:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->dst(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearSpeed()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->h:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->h:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/math/Vector;->mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->k:Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->i:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->i:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/math/Vector;->mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->k:Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->j:F

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->k:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->c(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1
.end method

.method public getAgentA()Lcom/badlogic/gdx/ai/steer/Steerable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->h:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object v0
.end method

.method public getAgentB()Lcom/badlogic/gdx/ai/steer/Steerable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->i:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object v0
.end method

.method public getInternalTargetPosition()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->k:Lcom/badlogic/gdx/math/Vector;

    return-object v0
.end method

.method public getInterpositionRatio()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->j:F

    return v0
.end method

.method public setAgentA(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Interpose<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->h:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public setAgentB(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Interpose<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->i:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public bridge synthetic setArrivalTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->setArrivalTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;

    move-result-object p1

    return-object p1
.end method

.method public setArrivalTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Interpose<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->e:F

    return-object p0
.end method

.method public bridge synthetic setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;

    move-result-object p1

    return-object p1
.end method

.method public setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Interpose<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->f:F

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Interpose<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public setInterpositionRatio(F)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Interpose<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->j:F

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Interpose<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Interpose<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public bridge synthetic setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;

    move-result-object p1

    return-object p1
.end method

.method public setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Interpose<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->d:Lcom/badlogic/gdx/ai/utils/Location;

    return-object p0
.end method

.method public bridge synthetic setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;->setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;

    move-result-object p1

    return-object p1
.end method

.method public setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/Interpose;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Interpose<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->g:F

    return-object p0
.end method
