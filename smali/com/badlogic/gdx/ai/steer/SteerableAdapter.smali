.class public Lcom/badlogic/gdx/ai/steer/SteerableAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/steer/Steerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/steer/Steerable<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public angleToVector(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAngularVelocity()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundingRadius()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLinearVelocity()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxAngularAcceleration()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxAngularSpeed()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxLinearAcceleration()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxLinearSpeed()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getZeroLinearSpeedThreshold()F
    .locals 1

    const v0, 0x3a83126f    # 0.001f

    return v0
.end method

.method public isTagged()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newLocation()Lcom/badlogic/gdx/ai/utils/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setMaxAngularAcceleration(F)V
    .locals 0

    return-void
.end method

.method public setMaxAngularSpeed(F)V
    .locals 0

    return-void
.end method

.method public setMaxLinearAcceleration(F)V
    .locals 0

    return-void
.end method

.method public setMaxLinearSpeed(F)V
    .locals 0

    return-void
.end method

.method public setOrientation(F)V
    .locals 0

    return-void
.end method

.method public setTagged(Z)V
    .locals 0

    return-void
.end method

.method public setZeroLinearSpeedThreshold(F)V
    .locals 0

    return-void
.end method

.method public vectorToAngle(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
