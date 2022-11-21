.class public Lcom/badlogic/gdx/ai/steer/limiters/AngularLimiter;
.super Lcom/badlogic/gdx/ai/steer/limiters/NullLimiter;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/steer/limiters/NullLimiter;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/AngularLimiter;->a:F

    iput p2, p0, Lcom/badlogic/gdx/ai/steer/limiters/AngularLimiter;->b:F

    return-void
.end method


# virtual methods
.method public getMaxAngularAcceleration()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/limiters/AngularLimiter;->a:F

    return v0
.end method

.method public getMaxAngularSpeed()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/limiters/AngularLimiter;->b:F

    return v0
.end method

.method public setMaxAngularAcceleration(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/AngularLimiter;->a:F

    return-void
.end method

.method public setMaxAngularSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/limiters/AngularLimiter;->b:F

    return-void
.end method
