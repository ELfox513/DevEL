.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Triangle"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F


# direct methods
.method public constructor <init>(FFFFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->a:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->b:F

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->c:F

    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->d:F

    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->e:F

    iput p6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->f:F

    iput p7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->g:F

    iput p8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->h:F

    iput p9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->i:F

    return-void
.end method

.method public static pick(FFFFFFFFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v1

    sub-float/2addr p3, p0

    mul-float p3, p3, v0

    add-float/2addr p3, p0

    sub-float/2addr p6, p0

    mul-float p6, p6, v1

    add-float/2addr p3, p6

    sub-float/2addr p4, p1

    mul-float p4, p4, v0

    add-float/2addr p4, p1

    sub-float/2addr p7, p1

    mul-float p7, p7, v1

    add-float/2addr p4, p7

    sub-float/2addr p5, p2

    mul-float v0, v0, p5

    add-float/2addr v0, p2

    sub-float/2addr p8, p2

    mul-float v1, v1, p8

    add-float/2addr v0, v1

    invoke-virtual {p9, p3, p4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public pick(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->a:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->d:F

    sub-float/2addr v3, v2

    mul-float v3, v3, v0

    add-float/2addr v3, v2

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->g:F

    sub-float/2addr v4, v2

    mul-float v4, v4, v1

    add-float/2addr v3, v4

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->b:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->e:F

    sub-float/2addr v4, v2

    mul-float v4, v4, v0

    add-float/2addr v4, v2

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->h:F

    sub-float/2addr v5, v2

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->c:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->f:F

    sub-float/2addr v5, v2

    mul-float v0, v0, v5

    add-float/2addr v0, v2

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->i:F

    sub-float/2addr v5, v2

    mul-float v1, v1, v5

    add-float/2addr v0, v1

    invoke-virtual {p1, v3, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method
