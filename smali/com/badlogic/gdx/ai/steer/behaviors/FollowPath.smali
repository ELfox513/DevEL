.class public Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
.super Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;P::",
        "Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;",
        ">",
        "Lcom/badlogic/gdx/ai/steer/behaviors/Arrive<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public h:Lcom/badlogic/gdx/ai/steer/utils/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/utils/Path<",
            "TT;TP;>;"
        }
    .end annotation
.end field

.field public i:F

.field public j:Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:F

.field public m:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/utils/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/utils/Path<",
            "TT;TP;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/utils/Path;F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/utils/Path;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/utils/Path<",
            "TT;TP;>;F)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/utils/Path;FF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/utils/Path;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/utils/Path<",
            "TT;TP;>;FF)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->h:Lcom/badlogic/gdx/ai/steer/utils/Path;

    invoke-interface {p2}, Lcom/badlogic/gdx/ai/steer/utils/Path;->createParam()Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->j:Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;

    iput p3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->i:F

    iput p4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->l:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->k:Z

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->m:Lcom/badlogic/gdx/math/Vector;

    return-void
.end method


# virtual methods
.method public calculateRealSteering(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->l:F

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector;->mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->h:Lcom/badlogic/gdx/ai/steer/utils/Path;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->j:Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;

    invoke-interface {v2, v0, v3}, Lcom/badlogic/gdx/ai/steer/utils/Path;->calculateDistance(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;)F

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->i:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->h:Lcom/badlogic/gdx/ai/steer/utils/Path;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->m:Lcom/badlogic/gdx/math/Vector;

    iget-object v4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->j:Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;

    invoke-interface {v2, v3, v4, v0}, Lcom/badlogic/gdx/ai/steer/utils/Path;->calculateTargetPosition(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;F)V

    iget-boolean v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->k:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->h:Lcom/badlogic/gdx/ai/steer/utils/Path;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/utils/Path;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->i:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->h:Lcom/badlogic/gdx/ai/steer/utils/Path;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/utils/Path;->getLength()F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->f:F

    sub-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->m:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->c(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->f:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->m:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->c(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->m:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->nor()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearAcceleration()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    iput v1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    return-object p1
.end method

.method public getInternalTargetPosition()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->m:Lcom/badlogic/gdx/math/Vector;

    return-object v0
.end method

.method public getPath()Lcom/badlogic/gdx/ai/steer/utils/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/utils/Path<",
            "TT;TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->h:Lcom/badlogic/gdx/ai/steer/utils/Path;

    return-object v0
.end method

.method public getPathOffset()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->i:F

    return v0
.end method

.method public getPathParam()Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->j:Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;

    return-object v0
.end method

.method public getPredictionTime()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->l:F

    return v0
.end method

.method public isArriveEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->k:Z

    return v0
.end method

.method public bridge synthetic setArrivalTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->setArrivalTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;

    move-result-object p1

    return-object p1
.end method

.method public setArrivalTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath<",
            "TT;TP;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->e:F

    return-object p0
.end method

.method public setArriveEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath<",
            "TT;TP;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->k:Z

    return-object p0
.end method

.method public bridge synthetic setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;

    move-result-object p1

    return-object p1
.end method

.method public setDecelerationRadius(F)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath<",
            "TT;TP;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->f:F

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath<",
            "TT;TP;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath<",
            "TT;TP;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath<",
            "TT;TP;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public setPath(Lcom/badlogic/gdx/ai/steer/utils/Path;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/utils/Path<",
            "TT;TP;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath<",
            "TT;TP;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->h:Lcom/badlogic/gdx/ai/steer/utils/Path;

    return-object p0
.end method

.method public setPathOffset(F)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath<",
            "TT;TP;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->i:F

    return-object p0
.end method

.method public setPredictionTime(F)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath<",
            "TT;TP;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->l:F

    return-object p0
.end method

.method public bridge synthetic setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;

    move-result-object p1

    return-object p1
.end method

.method public setTarget(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath<",
            "TT;TP;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->d:Lcom/badlogic/gdx/ai/utils/Location;

    return-object p0
.end method

.method public bridge synthetic setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;->setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;

    move-result-object p1

    return-object p1
.end method

.method public setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/FollowPath<",
            "TT;TP;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Arrive;->g:F

    return-object p0
.end method
