.class public Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;
.super Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;
    }
.end annotation

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
.field public d:Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:F


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

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField<",
            "TT;>;F)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->d:Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;

    iput p3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->e:F

    return-void
.end method


# virtual methods
.method public calculateRealSteering(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->e:F

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector;->mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->d:Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;->lookup(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->setZero()Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->isZero()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v1

    iget-object v2, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearSpeed()F

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/badlogic/gdx/math/Vector;->mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearAcceleration()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->limit(F)Lcom/badlogic/gdx/math/Vector;

    :cond_1
    return-object p1
.end method

.method public getFlowField()Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->d:Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;

    return-object v0
.end method

.method public getPredictionTime()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->e:F

    return v0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public setFlowField(Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->d:Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField$FlowField;

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public setPredictionTime(F)Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowFlowField;->e:F

    return-object p0
.end method
