.class public Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;
.super Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;
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
.field public d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public e:Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
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

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->d:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;-><init>(Lcom/badlogic/gdx/math/Vector;)V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->e:Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/ai/steer/SteeringBehavior;F)Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringBehavior<",
            "TT;>;F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;-><init>(Lcom/badlogic/gdx/ai/steer/SteeringBehavior;F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->add(Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;)Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;)Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;->a:Lcom/badlogic/gdx/ai/steer/SteeringBehavior;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p0
.end method

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

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->setZero()Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->d:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;

    iget-object v3, v2, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;->a:Lcom/badlogic/gdx/ai/steer/SteeringBehavior;

    iget-object v4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->e:Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->calculateSteering(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->e:Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    iget v2, v2, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;->b:F

    invoke-virtual {p1, v3, v2}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->mulAdd(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;F)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v0

    iget-object v1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearAcceleration()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->limit(F)Lcom/badlogic/gdx/math/Vector;

    iget v1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxAngularAcceleration()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxAngularAcceleration()F

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    :cond_1
    return-object p1
.end method

.method public get(I)Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;

    return-object p1
.end method

.method public remove(Lcom/badlogic/gdx/ai/steer/SteeringBehavior;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringBehavior<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->d:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;

    iget-object v1, v1, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;->a:Lcom/badlogic/gdx/ai/steer/SteeringBehavior;

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->d:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    return-void
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method
