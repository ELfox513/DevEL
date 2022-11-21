.class public Lcom/prineside/tdi2/utils/DrawUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:[F

.field public static c:[F

.field public static final d:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    sput v0, Lcom/prineside/tdi2/utils/DrawUtils;->a:F

    const/16 v0, 0x14

    new-array v0, v0, [F

    sput-object v0, Lcom/prineside/tdi2/utils/DrawUtils;->b:[F

    const/4 v0, 0x0

    new-array v0, v0, [F

    sput-object v0, Lcom/prineside/tdi2/utils/DrawUtils;->c:[F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/utils/DrawUtils;->d:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/utils/DrawUtils;->c:[F

    array-length v0, v0

    if-ge v0, p0, :cond_0

    invoke-static {p0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p0

    new-array p0, p0, [F

    sget-object v0, Lcom/prineside/tdi2/utils/DrawUtils;->c:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object p0, Lcom/prineside/tdi2/utils/DrawUtils;->c:[F

    :cond_0
    return-void
.end method

.method public static bakeVertices([FLcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 15

    move/from16 v0, p4

    move/from16 v1, p5

    add-float v2, p2, v0

    add-float v3, p3, v1

    neg-float v4, v0

    neg-float v5, v1

    sub-float v0, p6, v0

    sub-float v1, p7, v1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, p8, v6

    if-nez v7, :cond_0

    cmpl-float v6, p9, v6

    if-eqz v6, :cond_1

    :cond_0
    mul-float v4, v4, p8

    mul-float v5, v5, p9

    mul-float v0, v0, p8

    mul-float v1, v1, p9

    :cond_1
    const/4 v6, 0x0

    cmpl-float v6, p10, v6

    if-eqz v6, :cond_2

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v6

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v7

    mul-float v8, v6, v4

    mul-float v9, v7, v5

    sub-float v9, v8, v9

    mul-float v4, v4, v7

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    mul-float v10, v7, v1

    sub-float/2addr v8, v10

    mul-float v1, v1, v6

    add-float/2addr v4, v1

    mul-float v6, v6, v0

    sub-float/2addr v6, v10

    mul-float v7, v7, v0

    add-float/2addr v1, v7

    sub-float v0, v6, v8

    add-float/2addr v0, v9

    sub-float v7, v4, v5

    sub-float v7, v1, v7

    move v14, v1

    move v1, v0

    move v0, v6

    move v6, v5

    move v5, v14

    goto :goto_0

    :cond_2
    move v8, v4

    move v9, v8

    move v6, v5

    move v7, v6

    move v4, v1

    move v5, v4

    move v1, v0

    :goto_0
    add-float/2addr v9, v2

    add-float/2addr v6, v3

    add-float/2addr v8, v2

    add-float/2addr v4, v3

    add-float/2addr v0, v2

    add-float/2addr v5, v3

    add-float/2addr v1, v2

    add-float/2addr v7, v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v11

    sget v12, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    const/4 v13, 0x0

    aput v9, p0, v13

    const/4 v9, 0x1

    aput v6, p0, v9

    const/4 v6, 0x2

    aput v12, p0, v6

    const/4 v6, 0x3

    aput v2, p0, v6

    const/4 v6, 0x4

    aput v3, p0, v6

    const/4 v6, 0x5

    aput v8, p0, v6

    const/4 v6, 0x6

    aput v4, p0, v6

    const/4 v4, 0x7

    aput v12, p0, v4

    const/16 v4, 0x8

    aput v2, p0, v4

    const/16 v2, 0x9

    aput v11, p0, v2

    const/16 v2, 0xa

    aput v0, p0, v2

    const/16 v0, 0xb

    aput v5, p0, v0

    const/16 v0, 0xc

    aput v12, p0, v0

    const/16 v0, 0xd

    aput v10, p0, v0

    const/16 v0, 0xe

    aput v11, p0, v0

    const/16 v0, 0xf

    aput v1, p0, v0

    const/16 v0, 0x10

    aput v7, p0, v0

    const/16 v0, 0x11

    aput v12, p0, v0

    const/16 v0, 0x12

    aput v10, p0, v0

    const/16 v0, 0x13

    aput v3, p0, v0

    return-void
.end method

.method public static copyMesh(Lcom/badlogic/gdx/graphics/Mesh;ZZ[I)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v4

    mul-int v5, v4, v3

    new-array v6, v5, [F

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5, v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[F)[F

    if-eqz v2, :cond_5

    array-length v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v11, v10, :cond_1

    aget v14, v2, v11

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v14

    iget v14, v14, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    add-int/2addr v12, v14

    add-int/lit8 v13, v13, 0x1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    if-lez v12, :cond_5

    new-array v10, v13, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-array v11, v12, [S

    array-length v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    :goto_1
    if-ge v13, v12, :cond_4

    aget v8, v2, v13

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    if-nez v8, :cond_2

    move/from16 v18, v4

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    :goto_2
    iget v7, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    if-ge v9, v7, :cond_3

    add-int/lit8 v15, v15, 0x1

    iget v7, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, v11, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v16, v16, 0x1

    new-instance v9, Lcom/badlogic/gdx/graphics/VertexAttribute;

    iget v2, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    move/from16 v18, v4

    iget-object v4, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-direct {v9, v2, v7, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v9, v10, v16

    iget v2, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    add-int/2addr v14, v2

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p3

    move/from16 v4, v18

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    move/from16 v18, v4

    goto :goto_4

    :cond_5
    move/from16 v18, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_4
    if-nez v11, :cond_7

    new-array v11, v3, [S

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_6

    aput-short v2, v11, v2

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_5

    :cond_6
    move v14, v3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    if-lez v2, :cond_12

    new-array v9, v2, [S

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([S)V

    if-nez p2, :cond_9

    if-eq v14, v3, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v4, v18

    goto/16 :goto_d

    :cond_9
    :goto_6
    new-array v4, v5, [F

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v2, :cond_11

    aget-short v8, v9, v7

    mul-int v8, v8, v3

    if-eqz p2, :cond_e

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_8
    if-ge v12, v5, :cond_d

    if-gez v13, :cond_d

    mul-int v15, v12, v14

    const/16 v16, 0x1

    move/from16 p3, v2

    const/4 v0, 0x0

    :goto_9
    array-length v2, v11

    if-ge v0, v2, :cond_b

    if-eqz v16, :cond_b

    add-int v2, v15, v0

    aget v2, v4, v2

    aget-short v17, v11, v0

    add-int v17, v8, v17

    aget v17, v6, v17

    cmpl-float v2, v2, v17

    if-eqz v2, :cond_a

    const/16 v16, 0x0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_b
    if-eqz v16, :cond_c

    move v13, v12

    :cond_c
    add-int/lit8 v12, v12, 0x1

    int-to-short v12, v12

    move-object/from16 v0, p0

    move/from16 v2, p3

    goto :goto_8

    :cond_d
    move/from16 p3, v2

    goto :goto_a

    :cond_e
    move/from16 p3, v2

    const/4 v13, -0x1

    :goto_a
    if-lez v13, :cond_f

    aput-short v13, v9, v7

    goto :goto_c

    :cond_f
    mul-int v0, v5, v14

    const/4 v2, 0x0

    :goto_b
    array-length v12, v11

    if-ge v2, v12, :cond_10

    add-int v12, v0, v2

    aget-short v13, v11, v2

    add-int/2addr v13, v8

    aget v13, v6, v13

    aput v13, v4, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_10
    int-to-short v0, v5

    aput-short v0, v9, v7

    add-int/lit8 v5, v5, 0x1

    :goto_c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p3

    goto :goto_7

    :cond_11
    move-object v6, v4

    move v4, v5

    goto :goto_d

    :cond_12
    move/from16 v4, v18

    const/4 v9, 0x0

    :goto_d
    if-nez v10, :cond_14

    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    if-nez v9, :cond_13

    const/4 v2, 0x0

    goto :goto_e

    :cond_13
    array-length v2, v9

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    goto :goto_10

    :cond_14
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    if-nez v9, :cond_15

    const/4 v2, 0x0

    goto :goto_f

    :cond_15
    array-length v2, v9

    :goto_f
    invoke-direct {v0, v1, v4, v2, v10}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    :goto_10
    mul-int v4, v4, v14

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, v4}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    if-eqz v9, :cond_16

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    :cond_16
    return-object v0
.end method

.method public static drawFontToCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFFFIZ)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/prineside/tdi2/utils/DrawUtils;->drawFontToCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFFFIZF)V

    return-void
.end method

.method public static drawFontToCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFFFIZF)V
    .locals 17

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getVertexCount(I)I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getVertices(I)[F

    move-result-object v4

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getVertexCount(I)I

    move-result v5

    int-to-float v6, v5

    const v8, 0x3fc147ae    # 1.51f

    mul-float v6, v6, v8

    float-to-int v6, v6

    invoke-static {v6}, Lcom/prineside/tdi2/utils/DrawUtils;->a(I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget v9, v4, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v4, v10

    add-int/lit8 v11, v6, 0xa

    aget v11, v4, v11

    add-int/lit8 v12, v6, 0x6

    aget v12, v4, v12

    add-int/lit8 v13, v6, 0x3

    aget v13, v4, v13

    add-int/lit8 v14, v6, 0x4

    aget v14, v4, v14

    add-int/lit8 v15, v6, 0xd

    aget v15, v4, v15

    add-int/lit8 v16, v6, 0xe

    aget v16, v4, v16

    sget-object v2, Lcom/prineside/tdi2/utils/DrawUtils;->c:[F

    move/from16 p2, v1

    const/16 v1, 0xf

    invoke-static {v4, v6, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0xf

    sget-object v1, Lcom/prineside/tdi2/utils/DrawUtils;->c:[F

    add-int/lit8 v2, v8, 0x1

    aput v11, v1, v8

    add-int/lit8 v8, v2, 0x1

    aput v12, v1, v2

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v8, 0x1

    aput v15, v1, v8

    add-int/lit8 v8, v2, 0x1

    aput v16, v1, v2

    add-int/lit8 v2, v8, 0x1

    aput v11, v1, v8

    add-int/lit8 v8, v2, 0x1

    aput v10, v1, v2

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v8, 0x1

    aput v15, v1, v8

    add-int/lit8 v8, v2, 0x1

    aput v14, v1, v2

    add-int/lit8 v2, v8, 0x1

    aput v9, v1, v8

    add-int/lit8 v8, v2, 0x1

    aput v10, v1, v2

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v8, 0x1

    aput v13, v1, v8

    add-int/lit8 v8, v2, 0x1

    aput v14, v1, v2

    add-int/lit8 v6, v6, 0x14

    move/from16 v1, p2

    goto :goto_1

    :cond_0
    move/from16 p2, v1

    const/4 v1, 0x2

    :goto_2
    if-ge v1, v8, :cond_1

    sget-object v2, Lcom/prineside/tdi2/utils/DrawUtils;->c:[F

    aput p3, v2, v1

    add-int/lit8 v1, v1, 0x5

    goto :goto_2

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p9, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_2

    sget-object v2, Lcom/prineside/tdi2/utils/DrawUtils;->c:[F

    aget v4, v2, v1

    sub-float v4, v4, p4

    mul-float v4, v4, p9

    add-float v4, p4, v4

    aput v4, v2, v1

    add-int/lit8 v4, v1, 0x1

    aget v5, v2, v4

    sub-float v5, v5, p5

    mul-float v5, v5, p9

    add-float v5, p5, v5

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x5

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/utils/DrawUtils;->c:[F

    const/4 v5, 0x0

    move-object/from16 v4, p0

    invoke-virtual {v4, v1, v2, v5, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 p2, v1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p2

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static mergeMeshes(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;)",
            "Lcom/badlogic/gdx/graphics/Mesh;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    iget v7, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v8, 0x1

    if-ge v4, v7, :cond_3

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v9

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v10

    if-eq v9, v10, :cond_2

    invoke-static {v7, v8, v1, v3}, Lcom/prineside/tdi2/utils/DrawUtils;->copyMesh(Lcom/badlogic/gdx/graphics/Mesh;ZZ[I)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v8

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v9

    mul-int v8, v8, v9

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v5, v8

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-array v2, v5, [F

    new-array v3, v6, [S

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_2
    iget v9, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v9, :cond_5

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v10

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v16

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v11

    div-int/lit8 v11, v11, 0x4

    mul-int v14, v16, v11

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v12

    iget v13, v12, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v13, v13, 0x4

    iget v12, v12, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    invoke-virtual {v9, v3, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([SI)V

    move v8, v7

    :goto_3
    add-int v1, v7, v10

    if-ge v8, v1, :cond_4

    aget-short v1, v3, v8

    add-int/2addr v1, v5

    int-to-short v1, v1

    aput-short v1, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v9, v8, v14, v2, v15}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[FI)[F

    move-object/from16 v7, p1

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/badlogic/gdx/math/Matrix4;

    move-object v10, v2

    move v8, v12

    move v12, v13

    move v13, v8

    move v8, v14

    move v14, v5

    move/from16 v17, v15

    move/from16 v15, v16

    invoke-static/range {v9 .. v15}, Lcom/badlogic/gdx/graphics/Mesh;->transform(Lcom/badlogic/gdx/math/Matrix4;[FIIIII)V

    add-int v5, v5, v16

    add-int v15, v17, v8

    add-int/lit8 v4, v4, 0x1

    move v7, v1

    const/4 v1, 0x0

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    return-object v1
.end method

.method public static texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFF)V
    .locals 8

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p10, v0

    div-float v0, p11, v0

    sget-object v2, Lcom/prineside/tdi2/utils/DrawUtils;->b:[F

    const v3, 0x3fc90fdb

    sub-float v4, p12, v3

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v5

    neg-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v5, p6

    const/4 v6, 0x0

    aput v5, v2, v6

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v4

    mul-float v4, v4, v1

    add-float/2addr v4, p7

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x2

    aput p14, v2, v4

    const/4 v4, 0x3

    aput p4, v2, v4

    const/4 v4, 0x4

    aput p5, v2, v4

    sub-float v4, p13, v3

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v5

    neg-float v5, v5

    mul-float v5, v5, v0

    add-float v5, p8, v5

    const/16 v7, 0xf

    aput v5, v2, v7

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v4

    mul-float v4, v4, v0

    add-float v4, p9, v4

    const/16 v5, 0x10

    aput v4, v2, v5

    const/16 v4, 0x11

    aput p15, v2, v4

    const/16 v4, 0x12

    aput p4, v2, v4

    const/16 v4, 0x13

    aput p3, v2, v4

    add-float v4, p12, v3

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v5

    neg-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v5, p6

    const/4 v7, 0x5

    aput v5, v2, v7

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v4

    mul-float v4, v4, v1

    add-float v1, p7, v4

    const/4 v4, 0x6

    aput v1, v2, v4

    const/4 v1, 0x7

    aput p14, v2, v1

    const/16 v1, 0x8

    aput p2, v2, v1

    const/16 v1, 0x9

    aput p5, v2, v1

    add-float v1, p13, v3

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v3

    neg-float v3, v3

    mul-float v3, v3, v0

    add-float v3, p8, v3

    const/16 v4, 0xa

    aput v3, v2, v4

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v1

    mul-float v1, v1, v0

    add-float v0, p9, v1

    const/16 v1, 0xb

    aput v0, v2, v1

    const/16 v0, 0xc

    aput p15, v2, v0

    const/16 v0, 0xd

    aput p2, v2, v0

    const/16 v0, 0xe

    aput p3, v2, v0

    const/16 v0, 0x14

    move-object v1, p0

    move-object v3, p1

    invoke-virtual {p0, p1, v2, v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public static texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFF)V
    .locals 9

    sget v8, Lcom/prineside/tdi2/utils/DrawUtils;->a:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, v8

    invoke-static/range {v0 .. v8}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    return-void
.end method

.method public static texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V
    .locals 13

    sget-object v0, Lcom/prineside/tdi2/utils/DrawUtils;->d:Lcom/badlogic/gdx/math/Vector2;

    sub-float v1, p4, p2

    sub-float v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->angleRad()F

    move-result v0

    const v1, 0x3fc90fdb

    sub-float v10, v0, v1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p6

    move v9, v10

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFF)V

    return-void
.end method

.method public static texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFF)V
    .locals 12

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, p6, v4

    div-float v4, p7, v4

    sget-object v6, Lcom/prineside/tdi2/utils/DrawUtils;->b:[F

    const v7, 0x3fc90fdb

    sub-float v8, p8, v7

    invoke-static {v8}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v9

    neg-float v9, v9

    mul-float v9, v9, v5

    add-float/2addr v9, p2

    const/4 v10, 0x0

    aput v9, v6, v10

    invoke-static {v8}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v8

    mul-float v8, v8, v5

    add-float/2addr v8, p3

    const/4 v9, 0x1

    aput v8, v6, v9

    const/4 v8, 0x2

    aput p10, v6, v8

    const/4 v8, 0x3

    aput v1, v6, v8

    const/4 v8, 0x4

    aput v3, v6, v8

    add-float v8, p8, v7

    invoke-static {v8}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v9

    neg-float v9, v9

    mul-float v9, v9, v5

    add-float/2addr v9, p2

    const/4 v11, 0x5

    aput v9, v6, v11

    invoke-static {v8}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v8

    mul-float v8, v8, v5

    add-float v5, p3, v8

    const/4 v8, 0x6

    aput v5, v6, v8

    const/4 v5, 0x7

    aput p10, v6, v5

    const/16 v5, 0x8

    aput v0, v6, v5

    const/16 v5, 0x9

    aput v3, v6, v5

    add-float v3, p9, v7

    invoke-static {v3}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v5

    neg-float v5, v5

    mul-float v5, v5, v4

    add-float v5, p4, v5

    const/16 v8, 0xa

    aput v5, v6, v8

    invoke-static {v3}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v3

    mul-float v3, v3, v4

    add-float v3, p5, v3

    const/16 v5, 0xb

    aput v3, v6, v5

    const/16 v3, 0xc

    aput p11, v6, v3

    const/16 v3, 0xd

    aput v0, v6, v3

    const/16 v0, 0xe

    aput v2, v6, v0

    sub-float v0, p9, v7

    invoke-static {v0}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v3

    neg-float v3, v3

    mul-float v3, v3, v4

    add-float v3, p4, v3

    const/16 v5, 0xf

    aput v3, v6, v5

    invoke-static {v0}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v0

    mul-float v0, v0, v4

    add-float v0, p5, v0

    const/16 v3, 0x10

    aput v0, v6, v3

    const/16 v0, 0x11

    aput p11, v6, v0

    const/16 v0, 0x12

    aput v1, v6, v0

    const/16 v0, 0x13

    aput v2, v6, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/16 v1, 0x14

    move-object v2, p0

    invoke-virtual {p0, v0, v6, v10, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public static texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 12

    invoke-virtual/range {p10 .. p10}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    invoke-virtual/range {p11 .. p11}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v11}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFF)V

    return-void
.end method

.method public static texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 12

    sub-float v0, p5, p3

    sub-float v1, p4, p2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v0

    const v1, 0x3fc90fdb

    sub-float v9, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v9

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V
    .locals 13

    sget-object v0, Lcom/prineside/tdi2/utils/DrawUtils;->d:Lcom/badlogic/gdx/math/Vector2;

    sub-float v1, p4, p2

    sub-float v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->angleRad()F

    move-result v0

    const v1, 0x3fc90fdb

    sub-float v10, v0, v1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p6

    move v9, v10

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFF)V

    return-void
.end method

.method public static texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFF)V
    .locals 12

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, p6, v4

    div-float v4, p7, v4

    sget-object v6, Lcom/prineside/tdi2/utils/DrawUtils;->b:[F

    const v7, 0x3fc90fdb

    sub-float v8, p8, v7

    invoke-static {v8}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v9

    neg-float v9, v9

    mul-float v9, v9, v5

    add-float/2addr v9, p2

    const/4 v10, 0x0

    aput v9, v6, v10

    invoke-static {v8}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v8

    mul-float v8, v8, v5

    add-float/2addr v8, p3

    const/4 v9, 0x1

    aput v8, v6, v9

    const/4 v8, 0x2

    aput p10, v6, v8

    const/4 v8, 0x3

    aput v1, v6, v8

    const/4 v8, 0x4

    aput v3, v6, v8

    add-float v8, p8, v7

    invoke-static {v8}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v9

    neg-float v9, v9

    mul-float v9, v9, v5

    add-float/2addr v9, p2

    const/4 v11, 0x5

    aput v9, v6, v11

    invoke-static {v8}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v8

    mul-float v8, v8, v5

    add-float v5, p3, v8

    const/4 v8, 0x6

    aput v5, v6, v8

    const/4 v5, 0x7

    aput p10, v6, v5

    const/16 v5, 0x8

    aput v0, v6, v5

    const/16 v5, 0x9

    aput v3, v6, v5

    add-float v3, p9, v7

    invoke-static {v3}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v5

    neg-float v5, v5

    mul-float v5, v5, v4

    add-float v5, p4, v5

    const/16 v8, 0xa

    aput v5, v6, v8

    invoke-static {v3}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v3

    mul-float v3, v3, v4

    add-float v3, p5, v3

    const/16 v5, 0xb

    aput v3, v6, v5

    const/16 v3, 0xc

    aput p11, v6, v3

    const/16 v3, 0xd

    aput v0, v6, v3

    const/16 v0, 0xe

    aput v2, v6, v0

    sub-float v0, p9, v7

    invoke-static {v0}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v3

    neg-float v3, v3

    mul-float v3, v3, v4

    add-float v3, p4, v3

    const/16 v5, 0xf

    aput v3, v6, v5

    invoke-static {v0}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result v0

    mul-float v0, v0, v4

    add-float v0, p5, v0

    const/16 v3, 0x10

    aput v0, v6, v3

    const/16 v0, 0x11

    aput p11, v6, v0

    const/16 v0, 0x12

    aput v1, v6, v0

    const/16 v0, 0x13

    aput v2, v6, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/16 v1, 0x14

    move-object v2, p0

    invoke-virtual {p0, v0, v6, v10, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public static texturedMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/badlogic/gdx/graphics/g2d/TextureRegion;[F)V
    .locals 14

    move-object/from16 v0, p3

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v4, v3, -0x1

    mul-int/lit8 v4, v4, 0x3

    aget v7, v0, v4

    add-int/lit8 v5, v4, 0x1

    aget v8, v0, v5

    mul-int/lit8 v5, v3, 0x3

    aget v9, v0, v5

    add-int/lit8 v6, v5, 0x1

    aget v10, v0, v6

    add-int/2addr v4, v2

    aget v12, v0, v4

    add-int/2addr v5, v2

    aget v13, v0, v5

    move-object v5, p0

    move-object/from16 v6, p2

    move v11, p1

    invoke-static/range {v5 .. v13}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data array must contain at least 2 points (6 floats), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " given"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
