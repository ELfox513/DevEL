.class public Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;
.super Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;FFF)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;I)V

    iput p2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->c:F

    iput p3, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->d:F

    iput p4, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->e:F

    return-void
.end method


# virtual methods
.method public getRayLength()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->c:F

    return v0
.end method

.method public getWhiskerAngle()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->e:F

    return v0
.end method

.method public getWhiskerLength()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->d:F

    return v0
.end method

.method public setRayLength(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->c:F

    return-void
.end method

.method public setWhiskerAngle(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->e:F

    return-void
.end method

.method public setWhiskerLength(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->d:F

    return-void
.end method

.method public updateRays()[Lcom/badlogic/gdx/ai/utils/Ray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/badlogic/gdx/ai/utils/Ray<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/ai/utils/Location;->vectorToAngle(Lcom/badlogic/gdx/math/Vector;)F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/badlogic/gdx/ai/utils/Ray;->start:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/badlogic/gdx/ai/utils/Ray;->end:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/math/Vector;->nor()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget v3, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->c:F

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/badlogic/gdx/ai/utils/Ray;->start:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    iget-object v4, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/badlogic/gdx/ai/utils/Ray;->end:Lcom/badlogic/gdx/math/Vector;

    iget v4, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->e:F

    sub-float v4, v2, v4

    invoke-interface {v1, v3, v4}, Lcom/badlogic/gdx/ai/utils/Location;->angleToVector(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget v3, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->d:F

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/badlogic/gdx/ai/utils/Ray;->start:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    iget-object v4, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/badlogic/gdx/ai/utils/Ray;->end:Lcom/badlogic/gdx/math/Vector;

    iget v4, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->e:F

    add-float/2addr v2, v4

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/ai/utils/Location;->angleToVector(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/CentralRayWithWhiskersConfiguration;->d:F

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    return-object v0
.end method
