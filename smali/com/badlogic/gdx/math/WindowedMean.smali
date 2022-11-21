.class public final Lcom/badlogic/gdx/math/WindowedMean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[F

.field public b:I

.field public c:I

.field public d:F

.field public e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->d:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->e:Z

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    return-void
.end method


# virtual methods
.method public addValue(F)V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->b:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->b:I

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->c:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->c:I

    aput p1, v1, v0

    array-length p1, v1

    sub-int/2addr p1, v3

    if-le v2, p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/math/WindowedMean;->c:I

    :cond_1
    iput-boolean v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->e:Z

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->b:I

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->c:I

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->e:Z

    return-void
.end method

.method public getHighest()F
    .locals 4

    const/high16 v0, 0x800000

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getLatest()F
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    iget v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->c:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    array-length v1, v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLowest()F
    .locals 4

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getMean()F
    .locals 5

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->d:F

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->e:Z

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->d:F

    return v0

    :cond_2
    return v1
.end method

.method public getOldest()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->b:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->c:I

    aget v0, v1, v0

    :goto_0
    return v0
.end method

.method public getValueCount()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->b:I

    return v0
.end method

.method public getWindowSize()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    array-length v0, v0

    return v0
.end method

.method public getWindowValues()[F
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->b:I

    new-array v1, v0, [F

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    iget v4, p0, Lcom/badlogic/gdx/math/WindowedMean;->c:I

    add-int/2addr v4, v3

    array-length v5, v2

    rem-int/2addr v4, v5

    aget v2, v2, v4

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    iget v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v1
.end method

.method public hasEnoughData()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->b:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public standardDeviation()F
    .locals 5

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->a:[F

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    sub-float v4, v3, v0

    sub-float/2addr v3, v0

    mul-float v4, v4, v3

    add-float/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
