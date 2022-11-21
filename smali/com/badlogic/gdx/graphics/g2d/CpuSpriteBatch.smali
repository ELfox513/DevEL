.class public Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;
.super Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
.source "SourceFile"


# instance fields
.field public final F:Lcom/badlogic/gdx/math/Matrix4;

.field public final G:Lcom/badlogic/gdx/math/Affine2;

.field public H:Z

.field public I:Z

.field public final J:Lcom/badlogic/gdx/math/Affine2;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    new-instance p1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->F:Lcom/badlogic/gdx/math/Matrix4;

    new-instance p1, Lcom/badlogic/gdx/math/Affine2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Affine2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->G:Lcom/badlogic/gdx/math/Affine2;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->I:Z

    new-instance p1, Lcom/badlogic/gdx/math/Affine2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Affine2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->J:Lcom/badlogic/gdx/math/Affine2;

    return-void
.end method

.method public static c(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Affine2;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getValues()[F

    move-result-object p0

    const/4 v0, 0x0

    aget v1, p0, v0

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    const/4 v3, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    aget v1, p0, v3

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x4

    aget v1, p0, v1

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x5

    aget v1, p0, v1

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/16 v1, 0xc

    aget v1, p0, v1

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/16 v1, 0xd

    aget p0, p0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static d(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, p0, v1

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, p1, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    aget v2, p0, v0

    aget v3, p1, v0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/4 v2, 0x4

    aget v3, p0, v2

    aget v2, p1, v2

    cmpl-float v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x5

    aget v3, p0, v2

    aget v2, p1, v2

    cmpl-float v2, v3, v2

    if-nez v2, :cond_1

    const/16 v2, 0xc

    aget v3, p0, v2

    aget v2, p1, v2

    cmpl-float v2, v3, v2

    if-nez v2, :cond_1

    const/16 v2, 0xd

    aget p0, p0, v2

    aget p1, p1, v2

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e(Lcom/badlogic/gdx/math/Matrix4;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getValues()[F

    move-result-object p0

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    aget v1, p0, v2

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    const/4 v1, 0x4

    aget v1, p0, v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    const/4 v1, 0x5

    aget v1, p0, v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0xc

    aget v1, p0, v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    const/16 v1, 0xd

    aget p0, p0, v1

    cmpl-float p0, p0, v4

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 17

    move-object/from16 v3, p0

    iget-boolean v0, v3, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->f(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 17

    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->f(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 17

    move-object/from16 v14, p0

    iget-boolean v0, v14, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->k(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 2

    move-object v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p16}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->f(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 17

    move-object/from16 v15, p0

    iget-boolean v0, v15, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->f(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 17

    move-object/from16 v14, p0

    iget-boolean v0, v14, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v13, p6

    int-to-float v6, v13

    move/from16 v12, p7

    int-to-float v7, v12

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v14, p7

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->f(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 1

    rem-int/lit8 v0, p4, 0x14

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->g(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "invalid vertex count"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 12

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v8, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->h(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 12

    move-object v11, p0

    iget-boolean v0, v11, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->h(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->h(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->i(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->j(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V

    :goto_0
    return-void
.end method

.method public final f(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 19

    move/from16 v0, p11

    move/from16 v1, p12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v17, p15

    move/from16 v18, p16

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    div-float v15, v14, v13

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v16, v14, v13

    int-to-float v13, v0

    mul-float v13, v13, v15

    add-int v14, v1, p14

    int-to-float v14, v14

    mul-float v14, v14, v16

    add-int v0, v0, p13

    int-to-float v0, v0

    mul-float v15, v15, v0

    int-to-float v0, v1

    mul-float v16, v16, v0

    invoke-virtual/range {v2 .. v18}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->k(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V

    return-void
.end method

.method public flushAndSyncTransformMatrix()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->F:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->e(Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->I:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->F:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->det()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Transform matrix is singular, can\'t sync"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->F:Lcom/badlogic/gdx/math/Matrix4;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    :cond_2
    return-void
.end method

.method public final g(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->r:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->k:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b(Lcom/badlogic/gdx/graphics/Texture;)V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->G:Lcom/badlogic/gdx/math/Affine2;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b:[F

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    sub-int/2addr v0, v1

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    sub-int/2addr p4, v0

    :goto_0
    if-lez v0, :cond_2

    aget v1, p2, p3

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    iget v5, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v5, v5, v1

    iget v6, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v6, v6, v2

    add-float/2addr v5, v6

    iget v6, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    iget v6, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v6, v6, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v1, v1, v2

    add-float/2addr v6, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v6, v1

    aput v6, v3, v5

    add-int/lit8 v1, v4, 0x2

    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    aput v2, v3, v1

    add-int/lit8 v1, v4, 0x3

    add-int/lit8 v2, p3, 0x3

    aget v2, p2, v2

    aput v2, v3, v1

    add-int/lit8 v1, v4, 0x4

    add-int/lit8 v2, p3, 0x4

    aget v2, p2, v2

    aput v2, v3, v1

    add-int/lit8 v4, v4, 0x5

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    add-int/lit8 p3, p3, 0x5

    add-int/lit8 v0, v0, -0x5

    goto :goto_0

    :cond_2
    if-lez p4, :cond_3

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b:[F

    array-length v0, v0

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    if-gtz p4, :cond_1

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->F:Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final h(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->k(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V

    return-void
.end method

.method public final i(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->r:Z

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->k:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b:[F

    array-length v5, v5

    if-ne v4, v5, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    :goto_0
    add-float v4, p2, v2

    add-float v5, p3, v3

    neg-float v6, v2

    neg-float v7, v3

    sub-float v2, p6, v2

    sub-float v3, p7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, p8, v8

    if-nez v9, :cond_2

    cmpl-float v8, p9, v8

    if-eqz v8, :cond_3

    :cond_2
    mul-float v6, v6, p8

    mul-float v7, v7, p9

    mul-float v2, v2, p8

    mul-float v3, v3, p9

    :cond_3
    const/4 v8, 0x0

    cmpl-float v8, p10, v8

    if-eqz v8, :cond_4

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v8

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v9

    mul-float v10, v8, v6

    mul-float v11, v9, v7

    sub-float v11, v10, v11

    mul-float v6, v6, v9

    mul-float v7, v7, v8

    add-float/2addr v7, v6

    mul-float v12, v9, v3

    sub-float/2addr v10, v12

    mul-float v3, v3, v8

    add-float/2addr v6, v3

    mul-float v8, v8, v2

    sub-float/2addr v8, v12

    mul-float v9, v9, v2

    add-float/2addr v3, v9

    sub-float v2, v8, v10

    add-float/2addr v2, v11

    sub-float v9, v6, v7

    sub-float v9, v3, v9

    move/from16 v20, v3

    move v3, v2

    move v2, v8

    move v8, v7

    move/from16 v7, v20

    goto :goto_1

    :cond_4
    move v10, v6

    move v11, v10

    move v8, v7

    move v9, v8

    move v6, v3

    move v7, v6

    move v3, v2

    :goto_1
    add-float/2addr v11, v4

    add-float/2addr v8, v5

    add-float/2addr v10, v4

    add-float/2addr v6, v5

    add-float/2addr v2, v4

    add-float/2addr v7, v5

    add-float/2addr v3, v4

    add-float/2addr v9, v5

    if-eqz p11, :cond_5

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    goto :goto_2

    :cond_5
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    :goto_2
    move/from16 p1, v1

    move v13, v5

    move v14, v13

    move v15, v12

    move/from16 v16, v15

    move v5, v4

    move v12, v5

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->G:Lcom/badlogic/gdx/math/Affine2;

    move/from16 p2, v12

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b:[F

    move/from16 p3, v9

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    add-int/lit8 v17, v9, 0x0

    move/from16 p4, v3

    iget v3, v4, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v18, v3, v11

    move/from16 p5, v1

    iget v1, v4, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v19, v1, v8

    add-float v18, v18, v19

    move/from16 p6, v7

    iget v7, v4, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float v18, v18, v7

    aput v18, v12, v17

    add-int/lit8 v17, v9, 0x1

    move/from16 p7, v2

    iget v2, v4, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v11, v11, v2

    move/from16 p8, v14

    iget v14, v4, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v8, v8, v14

    add-float/2addr v11, v8

    iget v4, v4, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v11, v4

    aput v11, v12, v17

    add-int/lit8 v8, v9, 0x2

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->E:F

    aput v11, v12, v8

    add-int/lit8 v8, v9, 0x3

    aput v5, v12, v8

    add-int/lit8 v5, v9, 0x4

    aput v13, v12, v5

    add-int/lit8 v5, v9, 0x5

    mul-float v8, v3, v10

    mul-float v13, v1, v6

    add-float/2addr v8, v13

    add-float/2addr v8, v7

    aput v8, v12, v5

    add-int/lit8 v5, v9, 0x6

    mul-float v10, v10, v2

    mul-float v6, v6, v14

    add-float/2addr v10, v6

    add-float/2addr v10, v4

    aput v10, v12, v5

    add-int/lit8 v5, v9, 0x7

    aput v11, v12, v5

    add-int/lit8 v5, v9, 0x8

    aput v15, v12, v5

    add-int/lit8 v5, v9, 0x9

    aput p8, v12, v5

    add-int/lit8 v5, v9, 0xa

    mul-float v6, v3, p7

    mul-float v8, v1, p6

    add-float/2addr v6, v8

    add-float/2addr v6, v7

    aput v6, v12, v5

    add-int/lit8 v5, v9, 0xb

    mul-float v6, v2, p7

    mul-float v8, v14, p6

    add-float/2addr v6, v8

    add-float/2addr v6, v4

    aput v6, v12, v5

    add-int/lit8 v5, v9, 0xc

    aput v11, v12, v5

    add-int/lit8 v5, v9, 0xd

    aput v16, v12, v5

    add-int/lit8 v5, v9, 0xe

    aput p5, v12, v5

    add-int/lit8 v5, v9, 0xf

    mul-float v3, v3, p4

    mul-float v1, v1, p3

    add-float/2addr v3, v1

    add-float/2addr v3, v7

    aput v3, v12, v5

    add-int/lit8 v1, v9, 0x10

    mul-float v2, v2, p4

    mul-float v14, v14, p3

    add-float/2addr v2, v14

    add-float/2addr v2, v4

    aput v2, v12, v1

    add-int/lit8 v1, v9, 0x11

    aput v11, v12, v1

    add-int/lit8 v1, v9, 0x12

    aput p2, v12, v1

    add-int/lit8 v1, v9, 0x13

    aput p1, v12, v1

    add-int/lit8 v9, v9, 0x14

    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    return-void

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final j(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->r:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->k:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b:[F

    array-length v4, v4

    if-ne v3, v4, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    :goto_0
    iget v3, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    iget v4, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    iget v5, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v6, v5, p3

    add-float/2addr v6, v3

    iget v7, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v8, v7, p3

    add-float/2addr v8, v4

    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v10, v9, p2

    mul-float v5, v5, p3

    add-float/2addr v10, v5

    add-float/2addr v10, v3

    iget v2, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v5, v2, p2

    mul-float v7, v7, p3

    add-float/2addr v5, v7

    add-float/2addr v5, v4

    mul-float v9, v9, p2

    add-float/2addr v9, v3

    mul-float v2, v2, p2

    add-float/2addr v2, v4

    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->G:Lcom/badlogic/gdx/math/Affine2;

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b:[F

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    add-int/lit8 v16, v15, 0x0

    move/from16 p2, v2

    iget v2, v13, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v17, v2, v3

    move/from16 p3, v9

    iget v9, v13, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v18, v9, v4

    add-float v17, v17, v18

    move/from16 v18, v12

    iget v12, v13, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float v17, v17, v12

    aput v17, v14, v16

    add-int/lit8 v16, v15, 0x1

    move/from16 p4, v5

    iget v5, v13, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v3, v3, v5

    move/from16 v17, v10

    iget v10, v13, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v4, v4, v10

    add-float/2addr v3, v4

    iget v4, v13, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v3, v4

    aput v3, v14, v16

    add-int/lit8 v3, v15, 0x2

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->E:F

    aput v13, v14, v3

    add-int/lit8 v3, v15, 0x3

    aput v7, v14, v3

    add-int/lit8 v3, v15, 0x4

    aput v11, v14, v3

    add-int/lit8 v3, v15, 0x5

    mul-float v16, v2, v6

    mul-float v19, v9, v8

    add-float v16, v16, v19

    add-float v16, v16, v12

    aput v16, v14, v3

    add-int/lit8 v3, v15, 0x6

    mul-float v6, v6, v5

    mul-float v8, v8, v10

    add-float/2addr v6, v8

    add-float/2addr v6, v4

    aput v6, v14, v3

    add-int/lit8 v3, v15, 0x7

    aput v13, v14, v3

    add-int/lit8 v3, v15, 0x8

    aput v7, v14, v3

    add-int/lit8 v3, v15, 0x9

    aput v1, v14, v3

    add-int/lit8 v3, v15, 0xa

    mul-float v6, v2, v17

    mul-float v7, v9, p4

    add-float/2addr v6, v7

    add-float/2addr v6, v12

    aput v6, v14, v3

    add-int/lit8 v3, v15, 0xb

    mul-float v6, v5, v17

    mul-float v7, v10, p4

    add-float/2addr v6, v7

    add-float/2addr v6, v4

    aput v6, v14, v3

    add-int/lit8 v3, v15, 0xc

    aput v13, v14, v3

    add-int/lit8 v3, v15, 0xd

    aput v18, v14, v3

    add-int/lit8 v3, v15, 0xe

    aput v1, v14, v3

    add-int/lit8 v1, v15, 0xf

    mul-float v2, v2, p3

    mul-float v9, v9, p2

    add-float/2addr v2, v9

    add-float/2addr v2, v12

    aput v2, v14, v1

    add-int/lit8 v1, v15, 0x10

    mul-float v5, v5, p3

    mul-float v10, v10, p2

    add-float/2addr v5, v10

    add-float/2addr v5, v4

    aput v5, v14, v1

    add-int/lit8 v1, v15, 0x11

    aput v13, v14, v1

    add-int/lit8 v1, v15, 0x12

    aput v18, v14, v1

    add-int/lit8 v1, v15, 0x13

    aput v11, v14, v1

    add-int/lit8 v15, v15, 0x14

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final k(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->r:Z

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->k:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v4, p1

    if-eq v4, v3, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b:[F

    array-length v4, v4

    if-ne v3, v4, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_1
    :goto_0
    add-float v3, p2, v1

    add-float v4, p3, v2

    neg-float v5, v1

    neg-float v6, v2

    sub-float v1, p6, v1

    sub-float v2, p7, v2

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, p8, v7

    if-nez v8, :cond_2

    cmpl-float v7, p9, v7

    if-eqz v7, :cond_3

    :cond_2
    mul-float v5, v5, p8

    mul-float v6, v6, p9

    mul-float v1, v1, p8

    mul-float v2, v2, p9

    :cond_3
    const/4 v7, 0x0

    cmpl-float v7, p10, v7

    if-eqz v7, :cond_4

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v7

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v8

    mul-float v9, v7, v5

    mul-float v10, v8, v6

    sub-float v10, v9, v10

    mul-float v5, v5, v8

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    mul-float v11, v8, v2

    sub-float/2addr v9, v11

    mul-float v2, v2, v7

    add-float/2addr v5, v2

    mul-float v7, v7, v1

    sub-float/2addr v7, v11

    mul-float v8, v8, v1

    add-float/2addr v2, v8

    sub-float v1, v7, v9

    add-float/2addr v1, v10

    sub-float v8, v5, v6

    sub-float v8, v2, v8

    move/from16 v19, v2

    move v2, v1

    move v1, v7

    move v7, v6

    move/from16 v6, v19

    goto :goto_1

    :cond_4
    move v9, v5

    move v10, v9

    move v7, v6

    move v8, v7

    move v5, v2

    move v6, v5

    move v2, v1

    :goto_1
    add-float/2addr v10, v3

    add-float/2addr v7, v4

    add-float/2addr v9, v3

    add-float/2addr v5, v4

    add-float/2addr v1, v3

    add-float/2addr v6, v4

    add-float/2addr v2, v3

    add-float/2addr v8, v4

    if-eqz p15, :cond_5

    move/from16 v4, p11

    move/from16 v3, p13

    goto :goto_2

    :cond_5
    move/from16 v3, p11

    move/from16 v4, p13

    :goto_2
    if-eqz p16, :cond_6

    move/from16 v12, p12

    move/from16 v11, p14

    goto :goto_3

    :cond_6
    move/from16 v11, p12

    move/from16 v12, p14

    :goto_3
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->G:Lcom/badlogic/gdx/math/Affine2;

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->b:[F

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    add-int/lit8 v16, v15, 0x0

    move/from16 p1, v8

    iget v8, v13, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v17, v8, v10

    move/from16 p2, v2

    iget v2, v13, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v18, v2, v7

    add-float v17, v17, v18

    move/from16 p3, v4

    iget v4, v13, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float v17, v17, v4

    aput v17, v14, v16

    add-int/lit8 v16, v15, 0x1

    move/from16 p4, v6

    iget v6, v13, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v10, v10, v6

    move/from16 p5, v1

    iget v1, v13, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v7, v7, v1

    add-float/2addr v10, v7

    iget v7, v13, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v10, v7

    aput v10, v14, v16

    add-int/lit8 v10, v15, 0x2

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->E:F

    aput v13, v14, v10

    add-int/lit8 v10, v15, 0x3

    aput v3, v14, v10

    add-int/lit8 v10, v15, 0x4

    aput v11, v14, v10

    add-int/lit8 v10, v15, 0x5

    mul-float v16, v8, v9

    mul-float v17, v2, v5

    add-float v16, v16, v17

    add-float v16, v16, v4

    aput v16, v14, v10

    add-int/lit8 v10, v15, 0x6

    mul-float v9, v9, v6

    mul-float v5, v5, v1

    add-float/2addr v9, v5

    add-float/2addr v9, v7

    aput v9, v14, v10

    add-int/lit8 v5, v15, 0x7

    aput v13, v14, v5

    add-int/lit8 v5, v15, 0x8

    aput v3, v14, v5

    add-int/lit8 v3, v15, 0x9

    aput v12, v14, v3

    add-int/lit8 v3, v15, 0xa

    mul-float v5, v8, p5

    mul-float v9, v2, p4

    add-float/2addr v5, v9

    add-float/2addr v5, v4

    aput v5, v14, v3

    add-int/lit8 v3, v15, 0xb

    mul-float v5, v6, p5

    mul-float v9, v1, p4

    add-float/2addr v5, v9

    add-float/2addr v5, v7

    aput v5, v14, v3

    add-int/lit8 v3, v15, 0xc

    aput v13, v14, v3

    add-int/lit8 v3, v15, 0xd

    aput p3, v14, v3

    add-int/lit8 v3, v15, 0xe

    aput v12, v14, v3

    add-int/lit8 v3, v15, 0xf

    mul-float v8, v8, p2

    mul-float v2, v2, p1

    add-float/2addr v8, v2

    add-float/2addr v8, v4

    aput v8, v14, v3

    add-int/lit8 v2, v15, 0x10

    mul-float v6, v6, p2

    mul-float v1, v1, p1

    add-float/2addr v6, v1

    add-float/2addr v6, v7

    aput v6, v14, v2

    add-int/lit8 v1, v15, 0x11

    aput v13, v14, v1

    add-int/lit8 v1, v15, 0x12

    aput p3, v14, v1

    add-int/lit8 v1, v15, 0x13

    aput v11, v14, v1

    add-int/lit8 v15, v15, 0x14

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->d:I

    return-void

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Affine2;)V
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->c(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Affine2;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->F:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->isDrawing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->I:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->G:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->G:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Affine2;->inv()Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Affine2;->mul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->e(Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->I:Z

    :goto_0
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->d(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->isDrawing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->F:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->H:Z

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->I:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->G:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->J:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->G:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Affine2;->inv()Lcom/badlogic/gdx/math/Affine2;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->J:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Affine2;->mul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->e(Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->I:Z

    :goto_0
    return-void
.end method
