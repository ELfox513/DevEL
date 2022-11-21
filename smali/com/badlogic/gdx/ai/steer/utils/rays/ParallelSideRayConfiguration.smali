.class public Lcom/badlogic/gdx/ai/steer/utils/rays/ParallelSideRayConfiguration;
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


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;FF)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;I)V

    iput p2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/ParallelSideRayConfiguration;->c:F

    iput p3, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/ParallelSideRayConfiguration;->d:F

    return-void
.end method


# virtual methods
.method public getLength()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/ParallelSideRayConfiguration;->c:F

    return v0
.end method

.method public getSideOffset()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/ParallelSideRayConfiguration;->d:F

    return v0
.end method

.method public setLength(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/ParallelSideRayConfiguration;->c:F

    return-void
.end method

.method public setSideOffset(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/ParallelSideRayConfiguration;->d:F

    return-void
.end method

.method public updateRays()[Lcom/badlogic/gdx/ai/utils/Ray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/badlogic/gdx/ai/utils/Ray<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/utils/Location;->vectorToAngle(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/badlogic/gdx/ai/utils/Ray;->start:Lcom/badlogic/gdx/math/Vector;

    const v4, 0x3fc90fdb

    sub-float v5, v0, v4

    invoke-interface {v1, v2, v5}, Lcom/badlogic/gdx/ai/utils/Location;->angleToVector(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/ParallelSideRayConfiguration;->d:F

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/badlogic/gdx/ai/utils/Ray;->end:Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/math/Vector;->nor()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/ParallelSideRayConfiguration;->c:F

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/badlogic/gdx/ai/utils/Ray;->start:Lcom/badlogic/gdx/math/Vector;

    add-float/2addr v0, v4

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/ai/utils/Location;->angleToVector(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/ParallelSideRayConfiguration;->d:F

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    aget-object v1, v0, v5

    iget-object v1, v1, Lcom/badlogic/gdx/ai/utils/Ray;->end:Lcom/badlogic/gdx/math/Vector;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/badlogic/gdx/ai/utils/Ray;->end:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/badlogic/gdx/ai/utils/Ray;->start:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    aget-object v0, v0, v3

    iget-object v1, v0, Lcom/badlogic/gdx/ai/utils/Ray;->end:Lcom/badlogic/gdx/math/Vector;

    iget-object v0, v0, Lcom/badlogic/gdx/ai/utils/Ray;->start:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    return-object v0
.end method
