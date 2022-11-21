.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getLowMax()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->b:F

    return v0
.end method

.method public getLowMin()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->a:F

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->b:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->b:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->a:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->a:F

    return-void
.end method

.method public newLowValue()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->a:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->b:F

    sub-float/2addr v1, v0

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v1, "lowMin"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->a:F

    const-string v1, "lowMax"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->b:F

    return-void
.end method

.method public setLow(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->a:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->b:F

    return-void
.end method

.method public setLow(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->a:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->b:F

    return-void
.end method

.method public setLowMax(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->b:F

    return-void
.end method

.method public setLowMin(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->a:F

    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "lowMin"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "lowMax"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
