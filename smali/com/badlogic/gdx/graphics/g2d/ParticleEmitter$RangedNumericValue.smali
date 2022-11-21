.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangedNumericValue"
.end annotation


# instance fields
.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getLowMax()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    return v0
.end method

.method public getLowMin()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Ljava/io/BufferedReader;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "lowMin"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    const-string v0, "lowMax"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    return-void
.end method

.method public newLowValue()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    sub-float/2addr v1, v0

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public save(Ljava/io/Writer;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->save(Ljava/io/Writer;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lowMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lowMax: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public scale(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    return-void
.end method

.method public setLow(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    return-void
.end method

.method public setLow(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    return-void
.end method

.method public setLowMax(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->d:F

    return-void
.end method

.method public setLowMin(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->c:F

    return-void
.end method
