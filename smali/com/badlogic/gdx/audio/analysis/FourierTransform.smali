.class public abstract Lcom/badlogic/gdx/audio/analysis/FourierTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HAMMING:I = 0x1

.field public static final NONE:I


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:I

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:[F

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    float-to-int p2, p2

    iput p2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->b:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float p1, v0, p1

    int-to-float p2, p2

    div-float/2addr p2, v0

    mul-float p1, p1, p2

    iput p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->c:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->noAverages()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->d:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public avgSize()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->h:[F

    array-length v0, v0

    return v0
.end method

.method public b([F)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->d([F)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    aget v3, v3, v1

    mul-float v3, v3, v3

    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    aget v4, v4, v1

    mul-float v4, v4, v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->i:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    array-length v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->h:[F

    array-length v2, v2

    div-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->h:[F

    array-length v4, v4

    if-ge v2, v4, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v1, :cond_1

    mul-int v6, v2, v1

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    array-length v8, v7

    if-ge v6, v8, :cond_1

    aget v6, v7, v6

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float/2addr v5, v4

    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->h:[F

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->j:I

    if-ge v1, v2, :cond_5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    if-nez v1, :cond_3

    const/4 v7, 0x0

    goto :goto_4

    :cond_3
    iget v7, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->b:I

    div-int/2addr v7, v4

    int-to-float v7, v7

    sub-int/2addr v2, v1

    int-to-double v8, v2

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v2, v8

    div-float/2addr v7, v2

    :goto_4
    iget v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->b:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    iget v8, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->j:I

    sub-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    div-float/2addr v2, v5

    sub-float/2addr v2, v7

    iget v5, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->k:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/4 v5, 0x0

    :goto_5
    iget v6, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->k:I

    if-ge v5, v6, :cond_4

    mul-int v6, v6, v1

    add-int/2addr v6, v5

    iget-object v8, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->h:[F

    add-float v9, v7, v2

    invoke-virtual {p0, v7, v9}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->calcAvg(FF)F

    move-result v7

    aput v7, v8, v6

    add-int/lit8 v5, v5, 0x1

    move v7, v9

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public calcAvg(FF)F
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result p2

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-gt v1, p2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    aget v2, v2, v1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    int-to-float p1, p2

    div-float/2addr v0, p1

    return v0
.end method

.method public d([F)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fe147ae20000000L    # 0.5400000214576721

    const-wide v5, 0x3fdd70a3e0000000L    # 0.46000000834465027

    const v7, 0x40c90fdb

    int-to-float v8, v0

    mul-float v8, v8, v7

    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v8, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    sub-double/2addr v3, v7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e([F[F)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    array-length v1, v0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This won\'t work"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    array-length v0, p2

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public abstract forward([F)V
.end method

.method public forward([FI)V
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    if-lt v0, v1, :cond_0

    new-array v0, v1, [F

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->forward([F)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FourierTransform.forward: not enough samples in the buffer between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to perform a transform."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public freqToIndex(F)I
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->getBandWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->b:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->getBandWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->b:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getAverageCenterFrequency(I)F
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    array-length v0, v0

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->h:[F

    array-length v2, v2

    div-int/2addr v0, v2

    mul-int p1, p1, v0

    div-int/2addr v0, v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->indexToFreq(I)F

    move-result p1

    return p1

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->k:I

    div-int v2, p1, v0

    rem-int/2addr p1, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->b:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget v3, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->j:I

    sub-int/2addr v3, v2

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    div-float v3, v0, v3

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->b:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->j:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    sub-float/2addr v0, v3

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr v3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    add-float/2addr v3, v0

    :cond_2
    return v3
.end method

.method public getAvg(I)F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->h:[F

    array-length v1, v0

    if-lez v1, :cond_0

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBand(I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :cond_1
    aget p1, v0, p1

    return p1
.end method

.method public getBandWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->c:F

    return v0
.end method

.method public getFreq(F)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->getBand(I)F

    move-result p1

    return p1
.end method

.method public getImaginaryPart()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    return-object v0
.end method

.method public getRealPart()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    return-object v0
.end method

.method public getSpectrum()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    return-object v0
.end method

.method public getTimeSize()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    return v0
.end method

.method public indexToFreq(I)F
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->getBandWidth()F

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    if-nez p1, :cond_0

    mul-float v0, v0, v1

    return v0

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->b:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    sub-float/2addr p1, v2

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    return p1

    :cond_1
    int-to-float p1, p1

    mul-float p1, p1, v0

    return p1
.end method

.method public abstract inverse([F)V
.end method

.method public inverse([F[F[F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e([F[F)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->inverse([F)V

    return-void
.end method

.method public linAverages(I)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    array-length v0, v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->h:[F

    iput v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->i:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of averages for this transform can be at most "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    array-length v2, v2

    div-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logAverages(II)V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->j:I

    :goto_0
    div-float/2addr v0, v1

    int-to-float v3, p1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->j:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->j:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->k:I

    iget p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->j:I

    mul-int p1, p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->h:[F

    const/4 p1, 0x3

    iput p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->i:I

    return-void
.end method

.method public noAverages()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->h:[F

    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->i:I

    return-void
.end method

.method public abstract scaleBand(IF)V
.end method

.method public scaleFreq(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->scaleBand(IF)V

    return-void
.end method

.method public abstract setBand(IF)V
.end method

.method public setFreq(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->setBand(IF)V

    return-void
.end method

.method public specSize()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    array-length v0, v0

    return v0
.end method

.method public timeSize()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    return v0
.end method

.method public window(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid window type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
