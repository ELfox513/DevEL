.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
.source "SourceFile"


# instance fields
.field public d:[F

.field public k:F

.field public p:F

.field public q:Z

.field public timeline:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->d:[F

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v3

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->q:Z

    return-void
.end method


# virtual methods
.method public getHighMax()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->p:F

    return v0
.end method

.method public getHighMin()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->k:F

    return v0
.end method

.method public getScale(F)F
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    aget v4, v4, v2

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v3, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->d:[F

    sub-int/2addr v0, v1

    aget p1, p1, v0

    return p1

    :cond_2
    add-int/lit8 v0, v2, -0x1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->d:[F

    aget v3, v1, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    aget v0, v4, v0

    aget v1, v1, v2

    sub-float/2addr v1, v3

    sub-float/2addr p1, v0

    aget v2, v4, v2

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    mul-float v1, v1, p1

    add-float/2addr v3, v1

    return v3
.end method

.method public getScaling()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->d:[F

    return-object v0
.end method

.method public getTimeline()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    return-object v0
.end method

.method public isRelative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->q:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->p:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->p:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->k:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->k:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->d:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->d:[F

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->d:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->q:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->q:Z

    return-void
.end method

.method public newHighValue()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->k:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->p:F

    sub-float/2addr v1, v0

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 3

    const-class v0, [F

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "highMin"

    invoke-virtual {p1, v2, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->k:F

    const-string v2, "highMax"

    invoke-virtual {p1, v2, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->p:F

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "relative"

    invoke-virtual {p1, v2, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->q:Z

    const-string v1, "scaling"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->d:[F

    const-string v1, "timeline"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    return-void
.end method

.method public setHigh(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->k:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->p:F

    return-void
.end method

.method public setHigh(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->k:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->p:F

    return-void
.end method

.method public setHighMax(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->p:F

    return-void
.end method

.method public setHighMin(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->k:F

    return-void
.end method

.method public setRelative(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->q:Z

    return-void
.end method

.method public setScaling([F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->d:[F

    return-void
.end method

.method public setTimeline([F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->k:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "highMin"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->p:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "highMax"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->q:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "relative"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->d:[F

    const-string v1, "scaling"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    const-string v1, "timeline"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
