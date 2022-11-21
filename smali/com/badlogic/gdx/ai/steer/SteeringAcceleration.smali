.class public Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public angular:F

.field public linear:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;-><init>(Lcom/badlogic/gdx/math/Vector;F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    iput p2, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Linear acceleration cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;)",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    iget p1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    return-object p0
.end method

.method public calculateMagnitude()F
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->calculateSquareMagnitude()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public calculateSquareMagnitude()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->len2()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mulAdd(Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;F)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;F)",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1, p2}, Lcom/badlogic/gdx/math/Vector;->mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    iget p1, p1, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    return-object p0
.end method

.method public setZero()Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/SteeringAcceleration<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->linear:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->setZero()Lcom/badlogic/gdx/math/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/SteeringAcceleration;->angular:F

    return-object p0
.end method
