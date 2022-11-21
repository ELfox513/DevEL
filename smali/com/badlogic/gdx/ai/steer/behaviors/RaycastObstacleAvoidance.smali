.class public Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;
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
.field public d:Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:F

.field public g:Lcom/badlogic/gdx/ai/utils/Collision;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/utils/Collision<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:Lcom/badlogic/gdx/ai/utils/Collision;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/utils/Collision<",
            "TT;>;"
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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector<",
            "TT;>;F)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->d:Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;

    iput-object p3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->e:Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;

    iput p4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->f:F

    new-instance p2, Lcom/badlogic/gdx/ai/utils/Collision;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/badlogic/gdx/ai/utils/Collision;-><init>(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)V

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->g:Lcom/badlogic/gdx/ai/utils/Collision;

    new-instance p2, Lcom/badlogic/gdx/ai/utils/Collision;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/badlogic/gdx/ai/utils/Collision;-><init>(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)V

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->h:Lcom/badlogic/gdx/ai/utils/Collision;

    return-void
.end method


# virtual methods
.method public calculateRealSteering(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 8
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

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->d:Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;->updateRays()[Lcom/badlogic/gdx/ai/utils/Ray;

    move-result-object v1

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->e:Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;

    iget-object v6, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->g:Lcom/badlogic/gdx/ai/utils/Collision;

    aget-object v7, v1, v3

    invoke-interface {v5, v6, v7}, Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;->findCollision(Lcom/badlogic/gdx/ai/utils/Collision;Lcom/badlogic/gdx/ai/utils/Ray;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->g:Lcom/badlogic/gdx/ai/utils/Collision;

    iget-object v5, v5, Lcom/badlogic/gdx/ai/utils/Collision;->point:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v5

    cmpg-float v6, v5, v4

    if-gez v6, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->g:Lcom/badlogic/gdx/ai/utils/Collision;

    iget-object v6, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->h:Lcom/badlogic/gdx/ai/utils/Collision;

    iput-object v6, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->g:Lcom/badlogic/gdx/ai/utils/Collision;

    iput-object v4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->h:Lcom/badlogic/gdx/ai/utils/Collision;

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmpl-float v0, v4, v2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->setZero()Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->h:Lcom/badlogic/gdx/ai/utils/Collision;

    iget-object v1, v1, Lcom/badlogic/gdx/ai/utils/Collision;->point:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->h:Lcom/badlogic/gdx/ai/utils/Collision;

    iget-object v1, v1, Lcom/badlogic/gdx/ai/utils/Collision;->normal:Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Steerable;->getBoundingRadius()F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->f:F

    add-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector;->mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->nor()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearAcceleration()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    const/4 v0, 0x0

    iput v0, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    return-object p1
.end method

.method public getDistanceFromBoundary()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->f:F

    return v0
.end method

.method public getRayConfiguration()Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->d:Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;

    return-object v0
.end method

.method public getRaycastCollisionDetector()Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->e:Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;

    return-object v0
.end method

.method public setDistanceFromBoundary(F)Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->f:F

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public setRayConfiguration(Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;)Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->d:Lcom/badlogic/gdx/ai/steer/utils/RayConfiguration;

    return-object p0
.end method

.method public setRaycastCollisionDetector(Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;)Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/RaycastObstacleAvoidance;->e:Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;

    return-object p0
.end method
