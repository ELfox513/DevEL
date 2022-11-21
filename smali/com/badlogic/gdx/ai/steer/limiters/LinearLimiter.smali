.class public Lcom/badlogic/gdx/ai/steer/limiters/LinearLimiter;
.super Lcom/badlogic/gdx/ai/steer/limiters/NullLimiter;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/steer/limiters/NullLimiter;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/LinearLimiter;->a:F

    iput p2, p0, Lcom/badlogic/gdx/ai/steer/limiters/LinearLimiter;->b:F

    return-void
.end method


# virtual methods
.method public getMaxLinearAcceleration()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/limiters/LinearLimiter;->a:F

    return v0
.end method

.method public getMaxLinearSpeed()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/limiters/LinearLimiter;->b:F

    return v0
.end method

.method public setMaxLinearAcceleration(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/LinearLimiter;->a:F

    return-void
.end method

.method public setMaxLinearSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/LinearLimiter;->b:F

    return-void
.end method
