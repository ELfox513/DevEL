.class public Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
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
.field public d:Lcom/badlogic/gdx/ai/steer/Steerable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
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

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Steerable;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Steerable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)V"
        }
    .end annotation

    const v0, 0x3dcccccd    # 0.1f

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Steerable;F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Steerable;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;F)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->d:Lcom/badlogic/gdx/ai/steer/Steerable;

    iput p3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->e:F

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

    iget-object v0, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->d:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearAcceleration()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->limit(F)Lcom/badlogic/gdx/math/Vector;

    const/4 v0, 0x0

    iput v0, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    return-object p1
.end method

.method public getTarget()Lcom/badlogic/gdx/ai/steer/Steerable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->d:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object v0
.end method

.method public getTimeToTarget()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->e:F

    return v0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public setTarget(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->d:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->e:F

    return-object p0
.end method
