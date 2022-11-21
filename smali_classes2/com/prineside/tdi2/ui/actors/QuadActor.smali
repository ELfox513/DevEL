.class public Lcom/prineside/tdi2/ui/actors/QuadActor;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"


# instance fields
.field public I:[F

.field public J:[I

.field public K:[F

.field public L:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Color;[F)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->I:[F

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->J:[I

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->K:[F

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexPositions([F)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>([FLcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->I:[F

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->J:[I

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->K:[F

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertices([F)V

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>([FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->I:[F

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->J:[I

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->K:[F

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertices([F)V

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>([F[I)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->I:[F

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->J:[I

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->K:[F

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertices([F)V

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>([Lcom/badlogic/gdx/graphics/Color;[F)V
    .locals 3

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->I:[F

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->J:[I

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->K:[F

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexPositions([F)V

    const/4 p2, 0x0

    aget-object p2, p1, p2

    const/4 v0, 0x1

    aget-object v0, p1, v0

    const/4 v1, 0x2

    aget-object v1, p1, v1

    const/4 v2, 0x3

    aget-object p1, p1, v2

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/actors/QuadActor;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x4

    if-ge v8, v9, :cond_0

    iget-object v9, v0, Lcom/prineside/tdi2/ui/actors/QuadActor;->K:[F

    mul-int/lit8 v10, v8, 0x5

    iget-object v11, v0, Lcom/prineside/tdi2/ui/actors/QuadActor;->I:[F

    mul-int/lit8 v12, v8, 0x2

    aget v13, v11, v12

    mul-float v13, v13, v4

    add-float/2addr v13, v2

    aput v13, v9, v10

    add-int/lit8 v13, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    mul-float v11, v11, v5

    add-float/2addr v11, v3

    aput v11, v9, v13

    add-int/lit8 v10, v10, 0x2

    iget-object v11, v0, Lcom/prineside/tdi2/ui/actors/QuadActor;->J:[I

    mul-int/lit8 v12, v8, 0x4

    aget v13, v11, v12

    int-to-float v13, v13

    iget v14, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v13, v13, v14

    float-to-int v13, v13

    add-int/lit8 v14, v12, 0x1

    aget v14, v11, v14

    int-to-float v14, v14

    iget v15, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v14, v14, v15

    float-to-int v14, v14

    add-int/lit8 v15, v12, 0x2

    aget v15, v11, v15

    int-to-float v15, v15

    iget v7, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v15, v15, v7

    float-to-int v7, v15

    add-int/lit8 v12, v12, 0x3

    aget v11, v11, v12

    int-to-float v11, v11

    mul-float v11, v11, p2

    iget v12, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    invoke-static {v13, v14, v7, v11}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(IIII)F

    move-result v7

    aput v7, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/QuadActor;->K:[F

    const/16 v3, 0x14

    move-object/from16 v4, p1

    const/4 v5, 0x0

    invoke-interface {v4, v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->L:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->L:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getVertexPositions()[F
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->I:[F

    return-object v0
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->L:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->I:[F

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertices([F)V

    return-void
.end method

.method public setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public setVertexColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->J:[I

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    iget p1, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/4 v1, 0x4

    aput p1, v0, v1

    iget p1, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/4 v1, 0x5

    aput p1, v0, v1

    iget p1, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/4 v1, 0x6

    aput p1, v0, v1

    iget p1, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/4 p2, 0x7

    aput p1, v0, p2

    iget p1, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/16 p2, 0x8

    aput p1, v0, p2

    iget p1, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/16 p2, 0x9

    aput p1, v0, p2

    iget p1, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/16 p2, 0xa

    aput p1, v0, p2

    iget p1, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/16 p2, 0xb

    aput p1, v0, p2

    iget p1, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/16 p2, 0xc

    aput p1, v0, p2

    iget p1, p4, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/16 p2, 0xd

    aput p1, v0, p2

    iget p1, p4, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/16 p2, 0xe

    aput p1, v0, p2

    iget p1, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/16 p2, 0xf

    aput p1, v0, p2

    return-void
.end method

.method public setVertexColors([I)V
    .locals 3

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->J:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colors must be an array of 16 ints, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " passed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVertexPositions([F)V
    .locals 7

    const/4 v0, 0x4

    aget v1, p1, v0

    const/4 v2, 0x6

    aget v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/StrictMath;->max(FF)F

    move-result v1

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->max(FF)F

    move-result v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    mul-int/lit8 v5, v4, 0x2

    aget v6, p1, v5

    div-float/2addr v6, v1

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    aget v6, p1, v5

    div-float/2addr v6, v2

    aput v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertices([F)V

    return-void
.end method

.method public setVertices([F)V
    .locals 6

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->I:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/QuadActor;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result p1

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/QuadActor;->K:[F

    const/4 v5, 0x3

    aput v0, v4, v5

    const/4 v5, 0x4

    aput p1, v4, v5

    aput v0, v4, v1

    const/16 v0, 0x9

    aput v2, v4, v0

    const/16 v0, 0xd

    aput v3, v4, v0

    const/16 v0, 0xe

    aput v2, v4, v0

    const/16 v0, 0x12

    aput v3, v4, v0

    const/16 v0, 0x13

    aput p1, v4, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vertices must be an array of 8 floats, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " passed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
