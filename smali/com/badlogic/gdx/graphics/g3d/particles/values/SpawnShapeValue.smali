.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;


# instance fields
.field public xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field public yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field public zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 0

    return-void
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    const-string v1, "xOffsetValue"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const-string v1, "yOffsetValue"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const-string v1, "zOffsetValue"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 0

    return-void
.end method

.method public final spawn(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v0, p2, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result p2

    add-float/2addr v0, p2

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v0, p2, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result p2

    add-float/2addr v0, p2

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    :cond_1
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v0, p2, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result p2

    add-float/2addr v0, p2

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    :cond_2
    return-object p1
.end method

.method public abstract spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const-string v1, "xOffsetValue"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const-string v1, "yOffsetValue"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const-string v1, "zOffsetValue"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
