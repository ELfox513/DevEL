.class public Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
.super Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpCallback;,
        Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;,
        Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;,
        Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static DEBUG_ENABLED:Z = false


# instance fields
.field public f:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public h:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpCallback;

.field public j:F

.field public k:F

.field public l:F

.field public m:Z

.field public n:F

.field public o:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget<",
            "TT;>;"
        }
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor<",
            "TT;>;TT;",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->n:F

    iput-object p3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->g:Lcom/badlogic/gdx/math/Vector;

    iput-object p4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->h:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->setJumpDescriptor(Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;

    iput-object p5, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->i:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpCallback;

    new-instance p2, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->o:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b(Lcom/badlogic/gdx/ai/utils/Location;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->p:Lcom/badlogic/gdx/math/Vector;

    return-void
.end method


# virtual methods
.method public final c()Lcom/badlogic/gdx/ai/steer/Steerable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->o:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->f:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;

    iget-object v2, v1, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;->takeoffPosition:Lcom/badlogic/gdx/math/Vector;

    iput-object v2, v0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;->a:Lcom/badlogic/gdx/math/Vector;

    iget-object v0, v0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;->b:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a()Lcom/badlogic/gdx/ai/steer/Limiter;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Limiter;->getMaxLinearSpeed()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->calculateAirborneTimeAndVelocity(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;F)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->m:Z

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->o:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;

    return-object v0
.end method

.method public calculateAirborneTimeAndVelocity(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;F)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor<",
            "TT;>;F)F"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->h:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->g:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;->getComponent(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->h:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;

    iget-object v3, p2, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;->delta:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;->getComponent(Lcom/badlogic/gdx/math/Vector;)F

    move-result v2

    mul-float v1, v1, v2

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->l:F

    mul-float v2, v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->l:F

    neg-float v2, v2

    add-float/2addr v2, v1

    div-float/2addr v2, v0

    sget-boolean v3, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->DEBUG_ENABLED:Z

    const-string v4, "Jump"

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1st jump time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->d(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;F)Z

    move-result v3

    if-nez v3, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->l:F

    neg-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    sget-boolean v0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2nd jump time = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->d(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;F)Z

    move-result p1

    if-nez p1, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    return v2
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

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->d:Lcom/badlogic/gdx/ai/steer/Steerable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->c()Lcom/badlogic/gdx/ai/steer/Steerable;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->d:Lcom/badlogic/gdx/ai/steer/Steerable;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->i:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpCallback;

    iget-boolean v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->m:Z

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpCallback;->reportAchievability(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->setZero()Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->d:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->j:F

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector;->epsilonEquals(Lcom/badlogic/gdx/math/Vector;F)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->DEBUG_ENABLED:Z

    const-string v1, "Jump"

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    const-string v2, "Good position!!!"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->d:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->k:F

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector;->epsilonEquals(Lcom/badlogic/gdx/math/Vector;F)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    const-string v2, "Good Velocity!!!"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->m:Z

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->i:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpCallback;

    iget v1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->l:F

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->n:F

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpCallback;->takeoff(FF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->setZero()Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1

    :cond_4
    sget-boolean v0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Velocity: Speed diff. = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->p:Lcom/badlogic/gdx/math/Vector;

    iget-object v4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->d:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v4}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v4}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {v3}, Lcom/badlogic/gdx/math/Vector;->len()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", diff = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->p:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-super {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->calculateRealSteering(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;F)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor<",
            "TT;>;F)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->p:Lcom/badlogic/gdx/math/Vector;

    iget-object p3, p3, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;->delta:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, p3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    invoke-interface {p3, v0}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    iget-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->h:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;

    iget-object p3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->p:Lcom/badlogic/gdx/math/Vector;

    const/4 v0, 0x0

    invoke-interface {p2, p3, v0}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;->setComponent(Lcom/badlogic/gdx/math/Vector;F)V

    iget-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->p:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p2}, Lcom/badlogic/gdx/math/Vector;->len2()F

    move-result p2

    mul-float p4, p4, p4

    cmpg-float p2, p2, p4

    if-gez p2, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->h:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;

    invoke-interface {p2, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;->getComponent(Lcom/badlogic/gdx/math/Vector;)F

    move-result p2

    iget-object p3, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->h:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;

    iget-object p4, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->p:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, p4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$GravityComponentHandler;->setComponent(Lcom/badlogic/gdx/math/Vector;F)V

    sget-boolean p2, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->DEBUG_ENABLED:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "targetLinearVelocity = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "; targetLinearSpeed = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/badlogic/gdx/math/Vector;->len()F

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Jump"

    invoke-interface {p2, p3, p1}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getGravity()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->g:Lcom/badlogic/gdx/math/Vector;

    return-object v0
.end method

.method public getJumpDescriptor()Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->f:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;

    return-object v0
.end method

.method public getMaxVerticalVelocity()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->l:F

    return v0
.end method

.method public getTakeoffPositionTolerance()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->j:F

    return v0
.end method

.method public getTakeoffVelocityTolerance()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->k:F

    return v0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->c:Z

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->setEnabled(Z)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;

    move-result-object p1

    return-object p1
.end method

.method public setGravity(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->g:Lcom/badlogic/gdx/math/Vector;

    return-object p0
.end method

.method public setJumpDescriptor(Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->f:Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->d:Lcom/badlogic/gdx/ai/steer/Steerable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->m:Z

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;

    move-result-object p1

    return-object p1
.end method

.method public setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Limiter;",
            ")",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->b:Lcom/badlogic/gdx/ai/steer/Limiter;

    return-object p0
.end method

.method public bridge synthetic setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->setLimiter(Lcom/badlogic/gdx/ai/steer/Limiter;)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVerticalVelocity(F)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->l:F

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;

    move-result-object p1

    return-object p1
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public bridge synthetic setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;

    move-result-object p1

    return-object p1
.end method

.method public setTakeoffPositionTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->j:F

    return-object p0
.end method

.method public setTakeoffTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->setTakeoffPositionTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->setTakeoffVelocityTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;

    return-object p0
.end method

.method public setTakeoffVelocityTolerance(F)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->k:F

    return-object p0
.end method

.method public setTarget(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->d:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object p0
.end method

.method public bridge synthetic setTarget(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->setTarget(Lcom/badlogic/gdx/ai/steer/Steerable;)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;

    move-result-object p1

    return-object p1
.end method

.method public setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/behaviors/Jump<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;->e:F

    return-object p0
.end method

.method public bridge synthetic setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/MatchVelocity;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump;->setTimeToTarget(F)Lcom/badlogic/gdx/ai/steer/behaviors/Jump;

    move-result-object p1

    return-object p1
.end method
