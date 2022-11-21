.class public Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method


# virtual methods
.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->d:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/MapLayer;->getOpacity()F

    move-result v5

    mul-float v1, v1, v5

    invoke-static {v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v4, v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/MapLayer;->getRenderOffsetX()F

    move-result v6

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v6, v6, v7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/MapLayer;->getRenderOffsetY()F

    move-result v7

    neg-float v7, v7

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v7, v7, v8

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v8, v6

    div-float/2addr v8, v4

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v11, v10

    add-float/2addr v11, v4

    sub-float/2addr v11, v6

    div-float/2addr v11, v4

    float-to-int v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v10, v7

    div-float/2addr v10, v5

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v11, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v12, v11

    add-float/2addr v12, v5

    sub-float/2addr v12, v7

    div-float/2addr v12, v5

    float-to-int v11, v12

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v11, v3

    mul-float v11, v11, v5

    add-float/2addr v11, v7

    int-to-float v7, v8

    mul-float v7, v7, v4

    add-float/2addr v7, v6

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->r:[F

    :goto_0
    if-lt v3, v10, :cond_9

    move v13, v7

    move v12, v8

    :goto_1
    if-ge v12, v2, :cond_8

    move-object/from16 v14, p1

    invoke-virtual {v14, v12, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v15

    if-nez v15, :cond_0

    add-float/2addr v13, v4

    move/from16 v16, v2

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v27, v10

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v16

    if-eqz v16, :cond_7

    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v17

    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v18

    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v15

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v19

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v20

    iget v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v20, v20, v9

    add-float v20, v13, v20

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v9

    move/from16 v16, v2

    iget v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v9, v9, v2

    add-float/2addr v9, v11

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    move/from16 v22, v7

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v2, v2, v7

    add-float v2, v20, v2

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    int-to-float v7, v7

    move/from16 v23, v8

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v7, v7, v8

    add-float/2addr v7, v9

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v8

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v24

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v25

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v26

    const/16 v21, 0x0

    aput v20, v6, v21

    move/from16 v27, v10

    const/4 v10, 0x1

    aput v9, v6, v10

    const/4 v10, 0x2

    aput v1, v6, v10

    const/4 v10, 0x3

    aput v8, v6, v10

    const/16 v28, 0x4

    aput v24, v6, v28

    const/16 v29, 0x5

    aput v20, v6, v29

    const/16 v20, 0x6

    aput v7, v6, v20

    const/16 v20, 0x7

    aput v1, v6, v20

    const/16 v20, 0x8

    aput v8, v6, v20

    const/16 v29, 0x9

    aput v26, v6, v29

    const/16 v30, 0xa

    aput v2, v6, v30

    const/16 v30, 0xb

    aput v7, v6, v30

    const/16 v7, 0xc

    aput v1, v6, v7

    const/16 v7, 0xd

    aput v25, v6, v7

    const/16 v30, 0xe

    aput v26, v6, v30

    const/16 v31, 0xf

    aput v2, v6, v31

    const/16 v2, 0x10

    aput v9, v6, v2

    const/16 v2, 0x11

    aput v1, v6, v2

    const/16 v2, 0x12

    aput v25, v6, v2

    const/16 v9, 0x13

    aput v24, v6, v9

    if-eqz v17, :cond_1

    aput v25, v6, v10

    aput v8, v6, v7

    aput v25, v6, v20

    aput v8, v6, v2

    :cond_1
    if-eqz v18, :cond_2

    aput v26, v6, v28

    aput v24, v6, v30

    aput v24, v6, v29

    aput v26, v6, v9

    :cond_2
    if-eqz v15, :cond_6

    const/4 v8, 0x1

    if-eq v15, v8, :cond_5

    const/4 v8, 0x2

    if-eq v15, v8, :cond_4

    if-eq v15, v10, :cond_3

    goto :goto_2

    :cond_3
    aget v8, v6, v28

    aget v15, v6, v9

    aput v15, v6, v28

    aget v15, v6, v30

    aput v15, v6, v9

    aget v9, v6, v29

    aput v9, v6, v30

    aput v8, v6, v29

    aget v8, v6, v10

    aget v9, v6, v2

    aput v9, v6, v10

    aget v9, v6, v7

    aput v9, v6, v2

    aget v2, v6, v20

    aput v2, v6, v7

    aput v8, v6, v20

    goto :goto_2

    :cond_4
    aget v8, v6, v10

    aget v15, v6, v7

    aput v15, v6, v10

    aput v8, v6, v7

    aget v7, v6, v20

    aget v8, v6, v2

    aput v8, v6, v20

    aput v7, v6, v2

    aget v2, v6, v28

    aget v7, v6, v30

    aput v7, v6, v28

    aput v2, v6, v30

    aget v2, v6, v29

    aget v7, v6, v9

    aput v7, v6, v29

    aput v2, v6, v9

    goto :goto_2

    :cond_5
    aget v8, v6, v28

    aget v15, v6, v29

    aput v15, v6, v28

    aget v15, v6, v30

    aput v15, v6, v29

    aget v15, v6, v9

    aput v15, v6, v30

    aput v8, v6, v9

    aget v8, v6, v10

    aget v9, v6, v20

    aput v9, v6, v10

    aget v9, v6, v7

    aput v9, v6, v20

    aget v9, v6, v2

    aput v9, v6, v7

    aput v8, v6, v2

    :cond_6
    :goto_2
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->d:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-interface {v2, v7, v6, v9, v8}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_3

    :cond_7
    move/from16 v16, v2

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v27, v10

    :goto_3
    add-float/2addr v13, v4

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v10, v27

    goto/16 :goto_1

    :cond_8
    move-object/from16 v14, p1

    move/from16 v16, v2

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v27, v10

    sub-float/2addr v11, v5

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
