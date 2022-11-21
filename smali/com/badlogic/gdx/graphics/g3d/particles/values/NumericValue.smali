.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.source "SourceFile"


# instance fields
.field public a:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->a:F

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->a:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->a:F

    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v1, "value"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->a:F

    return-void
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->a:F

    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
