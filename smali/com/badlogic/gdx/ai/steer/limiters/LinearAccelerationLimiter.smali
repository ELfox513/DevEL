.class public Lcom/badlogic/gdx/ai/steer/limiters/LinearAccelerationLimiter;
.super Lcom/badlogic/gdx/ai/steer/limiters/NullLimiter;
.source "SourceFile"


# instance fields
.field public a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/steer/limiters/NullLimiter;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/LinearAccelerationLimiter;->a:F

    return-void
.end method


# virtual methods
.method public getMaxLinearAcceleration()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/limiters/LinearAccelerationLimiter;->a:F

    return v0
.end method

.method public setMaxLinearAcceleration(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/LinearAccelerationLimiter;->a:F

    return-void
.end method
