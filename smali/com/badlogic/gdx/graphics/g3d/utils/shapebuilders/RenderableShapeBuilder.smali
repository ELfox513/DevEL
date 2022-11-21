.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;
    }
.end annotation


# static fields
.field public static A:[F

.field public static final B:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

.field public static final C:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field public static z:[S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->B:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->C:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/Renderable;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v5, v5, 0x4

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_1
    const/16 v7, 0x80

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v7, v7, 0x4

    goto :goto_2

    :cond_2
    const/4 v7, -0x1

    :goto_2
    const/16 v8, 0x100

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v8, v8, 0x4

    goto :goto_3

    :cond_3
    const/4 v8, -0x1

    :goto_3
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v9

    div-int/lit8 v9, v9, 0x4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v10

    const/4 v11, 0x0

    if-lez v10, :cond_4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v10

    invoke-static {v10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->d(I)V

    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v12, v10, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->z:[S

    invoke-virtual {v3, v12, v10, v13, v11}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->g()S

    move-result v10

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->f()S

    move-result v12

    sub-int/2addr v12, v10

    goto :goto_4

    :cond_4
    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v12, v10, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    move/from16 v18, v12

    move v12, v10

    move/from16 v10, v18

    :goto_4
    mul-int v13, v12, v9

    invoke-static {v13}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->e(I)V

    mul-int v14, v10, v9

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->A:[F

    invoke-virtual {v3, v14, v13, v15, v11}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[FI)[F

    :goto_5
    if-ge v10, v12, :cond_b

    mul-int v3, v10, v9

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->f:Lcom/badlogic/gdx/math/Vector3;

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->A:[F

    add-int v14, v3, v4

    aget v15, v13, v14

    add-int/lit8 v16, v14, 0x1

    aget v6, v13, v16

    add-int/lit8 v14, v14, 0x2

    aget v13, v13, v14

    invoke-virtual {v11, v15, v6, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->g:Lcom/badlogic/gdx/math/Vector3;

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->A:[F

    add-int v14, v3, v5

    aget v15, v13, v14

    add-int/lit8 v16, v14, 0x1

    move/from16 v17, v4

    aget v4, v13, v16

    add-int/lit8 v14, v14, 0x2

    aget v13, v13, v14

    invoke-virtual {v6, v15, v4, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->h:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_6

    :cond_5
    move/from16 v17, v4

    :goto_6
    const/4 v4, -0x1

    if-eq v7, v4, :cond_6

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->i:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->A:[F

    add-int v13, v3, v7

    aget v14, v6, v13

    add-int/lit8 v15, v13, 0x1

    aget v15, v6, v15

    add-int/lit8 v13, v13, 0x2

    aget v6, v6, v13

    invoke-virtual {v4, v14, v15, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->j:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v4, -0x1

    :cond_6
    if-eq v8, v4, :cond_7

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->k:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->A:[F

    add-int/2addr v3, v8

    aget v13, v6, v3

    add-int/lit8 v14, v3, 0x1

    aget v14, v6, v14

    add-int/lit8 v3, v3, 0x2

    aget v3, v6, v3

    invoke-virtual {v4, v13, v14, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->l:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_7
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->h:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->j:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->l:Lcom/badlogic/gdx/math/Vector3;

    iget-object v13, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v13, -0x1

    move-object/from16 v14, p3

    if-eq v5, v13, :cond_8

    invoke-interface {v0, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v11, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    :cond_8
    move-object/from16 v3, p4

    if-eq v7, v13, :cond_9

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v11, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    :cond_9
    move-object/from16 v4, p5

    if-eq v8, v13, :cond_a

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v11, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    :cond_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v17

    goto/16 :goto_5

    :cond_b
    return-void
.end method

.method public static buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;F)V
    .locals 9

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->a:Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v2, v2}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->C:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->B:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/Renderable;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->B:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/FlushablePool;->flush()V

    sget-object p0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->C:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public static d(I)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->z:[S

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p0, :cond_1

    :cond_0
    new-array p0, p0, [S

    sput-object p0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->z:[S

    :cond_1
    return-void
.end method

.method public static e(I)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->A:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p0, :cond_1

    :cond_0
    new-array p0, p0, [F

    sput-object p0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->A:[F

    :cond_1
    return-void
.end method

.method public static f()S
    .locals 4

    const/16 v0, -0x8000

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->z:[S

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-short v2, v2, v1

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static g()S
    .locals 4

    const/16 v0, 0x7fff

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->z:[S

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-short v2, v2, v1

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
