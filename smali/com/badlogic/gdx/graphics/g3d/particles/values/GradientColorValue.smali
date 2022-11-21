.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.source "SourceFile"


# static fields
.field public static b:[F


# instance fields
.field public a:[F

.field public timeline:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->b:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->a:[F

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getColor(F[FI)V
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v2, v1, :cond_1

    aget v5, v0, v2

    cmpl-float v5, v5, p1

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    aget v1, v0, v3

    mul-int/lit8 v3, v3, 0x3

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->a:[F

    aget v6, v5, v3

    add-int/lit8 v7, v3, 0x1

    aget v7, v5, v7

    add-int/lit8 v3, v3, 0x2

    aget v3, v5, v3

    if-ne v2, v4, :cond_2

    aput v6, p2, p3

    add-int/lit8 p1, p3, 0x1

    aput v7, p2, p1

    add-int/lit8 p3, p3, 0x2

    aput v3, p2, p3

    return-void

    :cond_2
    sub-float/2addr p1, v1

    aget v0, v0, v2

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    mul-int/lit8 v2, v2, 0x3

    aget v0, v5, v2

    sub-float/2addr v0, v6

    mul-float v0, v0, p1

    add-float/2addr v6, v0

    aput v6, p2, p3

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, v2, 0x1

    aget v1, v5, v1

    sub-float/2addr v1, v7

    mul-float v1, v1, p1

    add-float/2addr v7, v1

    aput v7, p2, v0

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 v2, v2, 0x2

    aget v0, v5, v2

    sub-float/2addr v0, v3

    mul-float v0, v0, p1

    add-float/2addr v3, v0

    aput v3, p2, p3

    return-void
.end method

.method public getColor(F)[F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->b:[F

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->getColor(F[FI)V

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->b:[F

    return-object p1
.end method

.method public getColors()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->a:[F

    return-object v0
.end method

.method public getTimeline()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->a:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->a:[F

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->a:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    array-length v1, v0

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    const-class v0, [F

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    const-string v1, "colors"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->a:[F

    const-string v1, "timeline"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-void
.end method

.method public setColors([F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->a:[F

    return-void
.end method

.method public setTimeline([F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->a:[F

    const-string v1, "colors"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    const-string v1, "timeline"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
