.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaledNumericValue"
.end annotation


# instance fields
.field public e:[F

.field public f:[F

.field public g:F

.field public h:F

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v3

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    return-void
.end method


# virtual methods
.method public getHighMax()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    return v0
.end method

.method public getHighMin()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    return v0
.end method

.method public getScale(F)F
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    cmpl-float v5, v5, p1

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-ne v3, v4, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    sub-int/2addr v1, v2

    aget p1, p1, v1

    return p1

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    add-int/lit8 v2, v3, -0x1

    aget v4, v1, v2

    aget v2, v0, v2

    aget v1, v1, v3

    sub-float/2addr v1, v4

    sub-float/2addr p1, v2

    aget v0, v0, v3

    sub-float/2addr v0, v2

    div-float/2addr p1, v0

    mul-float v1, v1, p1

    add-float/2addr v4, v1

    return v4
.end method

.method public getScaling()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    return-object v0
.end method

.method public getTimeline()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    return-object v0
.end method

.method public isRelative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->i:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->i:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->i:Z

    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "highMin"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    const-string v0, "highMax"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    const-string v0, "relative"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->i:Z

    const-string v0, "scalingCount"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scaling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "timelineCount"

    invoke-static {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v2, v1

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public newHighValue()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    sub-float/2addr v1, v0

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public save(Ljava/io/Writer;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "highMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "highMax: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relative: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->i:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scalingCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    array-length v3, v3

    const-string v4, ": "

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scaling"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timelineCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v2, v2

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public scale(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->scale(F)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    :goto_0
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    array-length v1, v0

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    array-length v3, v2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    array-length v0, v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    goto :goto_0

    :cond_0
    array-length v1, v0

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v1, v0

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v3, v2

    if-eq v1, v3, :cond_1

    array-length v0, v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    goto :goto_1

    :cond_1
    array-length v1, v0

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget-boolean p1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->i:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->i:Z

    return-void
.end method

.method public setHigh(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    return-void
.end method

.method public setHigh(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    return-void
.end method

.method public setHighMax(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->h:F

    return-void
.end method

.method public setHighMin(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->g:F

    return-void
.end method

.method public setRelative(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->i:Z

    return-void
.end method

.method public setScaling([F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->e:[F

    return-void
.end method

.method public setTimeline([F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    return-void
.end method
