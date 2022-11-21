.class public Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;
.super Lcom/badlogic/gdx/ai/steer/GroupBehavior;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/steer/GroupBehavior<",
        "TT;>;",
        "Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public e:F

.field public f:Lcom/badlogic/gdx/ai/steer/Steerable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:F

.field public h:F

.field public i:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public j:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public k:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public l:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Proximity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/Proximity<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/ai/steer/GroupBehavior;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Proximity;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->i:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->j:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->l:Lcom/badlogic/gdx/math/Vector;

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

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->e:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->f:Lcom/badlogic/gdx/ai/steer/Steerable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->g:F

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->h:F

    iget-object v1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    iput-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->k:Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/GroupBehavior;->d:Lcom/badlogic/gdx/ai/steer/Proximity;

    invoke-interface {v1, p0}, Lcom/badlogic/gdx/ai/steer/Proximity;->findNeighbors(Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->f:Lcom/badlogic/gdx/ai/steer/Steerable;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->g:F

    cmpg-float v1, v1, v0

    if-lez v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->h:F

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Steerable;->getBoundingRadius()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->f:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v3}, Lcom/badlogic/gdx/ai/steer/Steerable;->getBoundingRadius()F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->k:Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->i:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->j:Lcom/badlogic/gdx/math/Vector;

    iget v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->e:F

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector;->mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->k:Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->f:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->k:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v1}, Lcom/badlogic/gdx/math/Vector;->nor()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearAcceleration()F

    move-result v2

    neg-float v2, v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    iput v0, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    return-object p1

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->setZero()Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1
.end method

.method public reportNeighbor(Lcom/badlogic/gdx/ai/steer/Steerable;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->k:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->l:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->l:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->len2()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->k:Lcom/badlogic/gdx/math/Vector;

    iget-object v4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->l:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->dot(Lcom/badlogic/gdx/math/Vector;)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v0

    cmpg-float v1, v3, v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->e:F

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->k:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v1}, Lcom/badlogic/gdx/math/Vector;->len()F

    move-result v1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v0, v0, v3

    sub-float v0, v1, v0

    iget-object v4, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v4}, Lcom/badlogic/gdx/ai/steer/Steerable;->getBoundingRadius()F

    move-result v4

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/steer/Steerable;->getBoundingRadius()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    return v2

    :cond_2
    iput v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->e:F

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->f:Lcom/badlogic/gdx/ai/steer/Steerable;

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->g:F

    iput v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->h:F

    iget-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->i:Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->k:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->j:Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->l:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v2
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/CollisionAvoidance<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method
