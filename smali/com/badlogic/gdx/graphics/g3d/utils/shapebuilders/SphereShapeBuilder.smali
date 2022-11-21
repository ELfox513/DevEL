.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "SourceFile"


# static fields
.field public static final A:Lcom/badlogic/gdx/math/Matrix3;

.field public static final z:Lcom/badlogic/gdx/utils/ShortArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->z:Lcom/badlogic/gdx/utils/ShortArray;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->A:Lcom/badlogic/gdx/math/Matrix3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFII)V
    .locals 10

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    const/high16 v9, 0x43340000    # 180.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIIFFFF)V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIIFFFF)V
    .locals 12

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->w:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFII)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    const/high16 v10, 0x43340000    # 180.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V
    .locals 25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p9

    move/from16 v5, p10

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v6

    const/high16 v7, 0x43340000    # 180.0f

    invoke-static {v5, v7}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v9, p2, v8

    mul-float v10, p3, v8

    mul-float v11, p4, v8

    const v12, 0x3c8efa35

    mul-float v13, p7, v12

    sub-float v14, p8, p7

    mul-float v14, v14, v12

    int-to-float v15, v2

    div-float/2addr v14, v15

    mul-float v16, v4, v12

    sub-float v4, v5, v4

    mul-float v4, v4, v12

    int-to-float v5, v3

    div-float/2addr v4, v5

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v15, v12, v15

    div-float v5, v12, v5

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v8, 0x0

    invoke-virtual {v12, v8, v8, v8, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v12, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v12, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->A:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;

    add-int/lit8 v12, v2, 0x3

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->z:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    move/from16 p4, v11

    mul-int/lit8 v11, v2, 0x2

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    iput v12, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v11, v2, 0x1

    mul-int v1, v1, v11

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureVertices(I)V

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureRectangleIndices(I)V

    const/4 v1, 0x0

    const/16 v18, 0x0

    :goto_0
    if-gt v1, v3, :cond_7

    move/from16 p8, v11

    int-to-float v11, v1

    mul-float v19, v4, v11

    add-float v19, v16, v19

    mul-float v11, v11, v5

    invoke-static/range {v19 .. v19}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v20

    invoke-static/range {v19 .. v19}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v19

    move/from16 p9, v4

    mul-float v4, v19, v10

    move/from16 p10, v5

    move/from16 v5, v18

    move/from16 v18, v10

    const/4 v10, 0x0

    :goto_1
    if-gt v10, v2, :cond_6

    int-to-float v2, v10

    mul-float v19, v14, v2

    add-float v19, v13, v19

    if-nez v1, :cond_1

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    const/high16 v17, 0x3f000000    # 0.5f

    goto :goto_4

    :cond_1
    :goto_3
    if-ne v1, v3, :cond_2

    if-eqz v7, :cond_2

    goto :goto_2

    :goto_4
    sub-float v2, v2, v17

    mul-float v2, v2, v15

    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_2
    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v2, v2, v15

    :goto_5
    sub-float v2, v21, v2

    move/from16 p2, v13

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-static/range {v19 .. v19}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v22

    mul-float v22, v22, v9

    move/from16 v23, v9

    mul-float v9, v22, v20

    invoke-static/range {v19 .. v19}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v19

    mul-float v19, v19, p4

    move/from16 v22, v14

    mul-float v14, v19, v20

    invoke-virtual {v13, v9, v4, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v13}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->A:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v9, v13}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v13, p1

    invoke-virtual {v9, v13}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v8, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v9, v2, v11}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->z:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-interface {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v9

    invoke-virtual {v2, v5, v9}, Lcom/badlogic/gdx/utils/ShortArray;->set(IS)V

    add-int v9, v5, v12

    if-lez v1, :cond_5

    if-lez v10, :cond_5

    const/4 v14, 0x1

    if-ne v1, v14, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v14

    add-int/lit8 v19, v9, -0x1

    move/from16 v24, v4

    rem-int v4, v19, v12

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v4

    sub-int v9, v9, p8

    rem-int/2addr v9, v12

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v9

    invoke-interface {v0, v14, v4, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->triangle(SSS)V

    goto :goto_6

    :cond_3
    move/from16 v24, v4

    if-ne v1, v3, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v4

    add-int/lit8 v14, p5, 0x2

    sub-int v14, v9, v14

    rem-int/2addr v14, v12

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v14

    sub-int v9, v9, p8

    rem-int/2addr v9, v12

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v9

    invoke-interface {v0, v4, v14, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->triangle(SSS)V

    goto :goto_6

    :cond_4
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v4

    add-int/lit8 v14, v9, -0x1

    rem-int/2addr v14, v12

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v14

    add-int/lit8 v19, p5, 0x2

    sub-int v19, v9, v19

    rem-int v3, v19, v12

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v3

    sub-int v9, v9, p8

    rem-int/2addr v9, v12

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v9

    invoke-interface {v0, v4, v14, v3, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    goto :goto_6

    :cond_5
    move/from16 v24, v4

    :goto_6
    add-int/lit8 v5, v5, 0x1

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    rem-int/2addr v5, v2

    add-int/lit8 v10, v10, 0x1

    move/from16 v13, p2

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v14, v22

    move/from16 v9, v23

    move/from16 v4, v24

    goto/16 :goto_1

    :cond_6
    move/from16 v23, v9

    move/from16 p2, v13

    move/from16 v22, v14

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v13, p1

    add-int/lit8 v1, v1, 0x1

    move/from16 v13, p2

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v11, p8

    move/from16 v4, p9

    move/from16 v10, v18

    move/from16 v18, v5

    move/from16 v5, p10

    goto/16 :goto_0

    :cond_7
    return-void
.end method
