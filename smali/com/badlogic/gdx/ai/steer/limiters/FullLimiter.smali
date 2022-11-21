.class public Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/steer/Limiter;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->a:F

    iput p2, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->b:F

    iput p3, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->c:F

    iput p4, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->d:F

    return-void
.end method


# virtual methods
.method public getMaxAngularAcceleration()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->c:F

    return v0
.end method

.method public getMaxAngularSpeed()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->d:F

    return v0
.end method

.method public getMaxLinearAcceleration()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->a:F

    return v0
.end method

.method public getMaxLinearSpeed()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->b:F

    return v0
.end method

.method public getZeroLinearSpeedThreshold()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->e:F

    return v0
.end method

.method public setMaxAngularAcceleration(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->c:F

    return-void
.end method

.method public setMaxAngularSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->d:F

    return-void
.end method

.method public setMaxLinearAcceleration(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->a:F

    return-void
.end method

.method public setMaxLinearSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->b:F

    return-void
.end method

.method public setZeroLinearSpeedThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/FullLimiter;->e:F

    return-void
.end method
