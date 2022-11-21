.class public Lcom/badlogic/gdx/ai/steer/utils/rays/SingleRayConfiguration;
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


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;F)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;I)V

    iput p2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/SingleRayConfiguration;->c:F

    return-void
.end method


# virtual methods
.method public getLength()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/SingleRayConfiguration;->c:F

    return v0
.end method

.method public setLength(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/SingleRayConfiguration;->c:F

    return-void
.end method

.method public updateRays()[Lcom/badlogic/gdx/ai/utils/Ray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/badlogic/gdx/ai/utils/Ray<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/badlogic/gdx/ai/utils/Ray;->start:Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/badlogic/gdx/ai/utils/Ray;->end:Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/steer/Steerable;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->nor()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/SingleRayConfiguration;->c:F

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/badlogic/gdx/ai/utils/Ray;->start:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/rays/RayConfigurationBase;->b:[Lcom/badlogic/gdx/ai/utils/Ray;

    return-object v0
.end method
