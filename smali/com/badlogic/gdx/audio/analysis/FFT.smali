.class public Lcom/badlogic/gdx/audio/analysis/FFT;
.super Lcom/badlogic/gdx/audio/analysis/FourierTransform;
.source "SourceFile"


# instance fields
.field public l:[I

.field public m:[F

.field public n:[F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;-><init>(IF)V

    add-int/lit8 p2, p1, -0x1

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->h()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->i()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FFT: timeSize must be a power of two."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    array-length v0, v0

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    array-length v1, v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    array-length v4, v3

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->l:[I

    aget v4, v4, v2

    aget v3, v3, v4

    aput v3, v0, v2

    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    iput-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    return-void
.end method

.method public forward([F)V
    .locals 2

    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->b([F)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/audio/analysis/FFT;->g([F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->k()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->c()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FFT.forward: The length of the passed sample buffer must be equal to timeSize()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forward([F[F)V
    .locals 2

    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    if-ne v0, v1, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e([F[F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->f()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->k()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->c()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FFT.forward: The length of the passed buffers must be equal to timeSize()."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g([F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->l:[I

    aget v2, v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->l:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    div-int/lit8 v1, v0, 0x2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    iget-object v5, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->l:[I

    add-int v6, v4, v3

    aget v7, v5, v4

    add-int/2addr v7, v1

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    shl-int/lit8 v3, v3, 0x1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->m:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->n:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->m:[F

    const v3, -0x3fb6f025

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v2, v1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->n:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public inverse([F)V
    .locals 5

    array-length v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    array-length v1, v1

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    aget v3, v2, v1

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->f()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/audio/analysis/FFT;->k()V

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    aget v2, v1, v0

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FFT.inverse: the passed array\'s length must equal FFT.timeSize()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final j(I)F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->n:[F

    aget p1, v0, p1

    return p1
.end method

.method public final k()V
    .locals 14

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/audio/analysis/FFT;->j(I)F

    move-result v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/audio/analysis/FFT;->l(I)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    move v6, v5

    :goto_2
    iget-object v7, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    array-length v8, v7

    if-ge v6, v8, :cond_0

    add-int v8, v6, v0

    aget v9, v7, v8

    mul-float v10, v3, v9

    iget-object v11, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    aget v12, v11, v8

    mul-float v13, v4, v12

    sub-float/2addr v10, v13

    mul-float v12, v12, v3

    mul-float v9, v9, v4

    add-float/2addr v12, v9

    aget v9, v7, v6

    sub-float/2addr v9, v10

    aput v9, v7, v8

    aget v9, v11, v6

    sub-float/2addr v9, v12

    aput v9, v11, v8

    aget v8, v7, v6

    add-float/2addr v8, v10

    aput v8, v7, v6

    aget v7, v11, v6

    add-float/2addr v7, v12

    aput v7, v11, v6

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    goto :goto_2

    :cond_0
    mul-float v6, v3, v1

    mul-float v7, v4, v2

    sub-float/2addr v6, v7

    mul-float v3, v3, v2

    mul-float v4, v4, v1

    add-float/2addr v4, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l(I)F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FFT;->m:[F

    aget p1, v0, p1

    return p1
.end method

.method public scaleBand(IF)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    aget v2, v1, p1

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    aget v3, v0, p1

    div-float/2addr v3, v2

    aput v3, v0, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    aget v3, v2, p1

    aget v4, v1, p1

    div-float/2addr v3, v4

    aput v3, v2, p1

    aget v3, v1, p1

    mul-float v3, v3, p2

    aput v3, v1, p1

    aget p2, v0, p1

    mul-float p2, p2, v3

    aput p2, v0, p1

    aget p2, v2, p1

    aget v0, v1, p1

    mul-float p2, p2, v0

    aput p2, v2, p1

    :cond_0
    if-eqz p1, :cond_1

    iget p2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    div-int/lit8 v0, p2, 0x2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    sub-int v1, p2, p1

    aget v2, v0, p1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    sub-int/2addr p2, p1

    aget p1, v0, p1

    neg-float p1, p1

    aput p1, v0, p2

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t scale a frequency band by a negative value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBand(IF)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->e:[F

    aget v2, v1, p1

    cmpl-float v3, v2, v0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    aget v3, v3, p1

    cmpl-float v0, v3, v0

    if-nez v0, :cond_0

    aput p2, v1, p1

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    aput p2, v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->g:[F

    aget v3, v0, p1

    div-float/2addr v2, v3

    aput v2, v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    aget v3, v2, p1

    aget v4, v0, p1

    div-float/2addr v3, v4

    aput v3, v2, p1

    aput p2, v0, p1

    aget v3, v1, p1

    mul-float v3, v3, p2

    aput v3, v1, p1

    aget p2, v2, p1

    aget v0, v0, p1

    mul-float p2, p2, v0

    aput p2, v2, p1

    :goto_0
    if-eqz p1, :cond_1

    iget p2, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->a:I

    div-int/lit8 v0, p2, 0x2

    if-eq p1, v0, :cond_1

    sub-int v0, p2, p1

    aget v2, v1, p1

    aput v2, v1, v0

    iget-object v0, p0, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->f:[F

    sub-int/2addr p2, p1

    aget p1, v0, p1

    neg-float p1, p1

    aput p1, v0, p2

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t set a frequency band to a negative value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
