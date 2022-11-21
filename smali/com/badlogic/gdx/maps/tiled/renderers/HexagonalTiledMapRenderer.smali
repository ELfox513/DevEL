.class public Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "SourceFile"


# instance fields
.field public s:Z

.field public t:Z

.field public u:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->s:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->t:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->u:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->d(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->s:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->t:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->u:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->d(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->s:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->t:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->u:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->d(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->s:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->t:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->u:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->d(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 6

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/Map;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    const-string v3, "staggeraxis"

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->s:Z

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->s:Z

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/Map;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    const-string v5, "staggerindex"

    invoke-virtual {v2, v5, v0}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, "even"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->t:Z

    goto :goto_1

    :cond_2
    iput-boolean v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->t:Z

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/Map;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v0

    const-string v2, "hexsidelength"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->u:F

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->s:Z

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/Map;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v0

    const-string v3, "tilewidth"

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v2

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->u:F

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/Map;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v2

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->u:F

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/Map;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v0

    const-string v3, "tileheight"

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v2

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->u:F

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/Map;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v2

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->u:F

    :goto_2
    return-void
.end method

.method public final e(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;FFF)V
    .locals 21

    move-object/from16 v0, p0

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v4

    invoke-interface {v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-interface {v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v6

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v6, v6, v7

    add-float v6, p2, v6

    invoke-interface {v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v1

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v1, v1, v7

    add-float v1, p3, v1

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v7, v7, v8

    add-float/2addr v7, v6

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v8, v8, v9

    add-float/2addr v8, v1

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v9

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v10

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v11

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v12

    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->r:[F

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v15, 0x1

    aput v1, v13, v15

    const/4 v15, 0x2

    aput p4, v13, v15

    const/16 v16, 0x3

    aput v9, v13, v16

    const/16 v17, 0x4

    aput v10, v13, v17

    const/16 v18, 0x5

    aput v6, v13, v18

    const/4 v6, 0x6

    aput v8, v13, v6

    const/4 v6, 0x7

    aput p4, v13, v6

    const/16 v6, 0x8

    aput v9, v13, v6

    const/16 v18, 0x9

    aput v12, v13, v18

    const/16 v19, 0xa

    aput v7, v13, v19

    const/16 v19, 0xb

    aput v8, v13, v19

    const/16 v8, 0xc

    aput p4, v13, v8

    const/16 v8, 0xd

    aput v11, v13, v8

    const/16 v19, 0xe

    aput v12, v13, v19

    const/16 v20, 0xf

    aput v7, v13, v20

    const/16 v7, 0x10

    aput v1, v13, v7

    const/16 v1, 0x11

    aput p4, v13, v1

    const/16 v1, 0x12

    aput v11, v13, v1

    const/16 v7, 0x13

    aput v10, v13, v7

    if-eqz v2, :cond_1

    aput v11, v13, v16

    aput v9, v13, v8

    aput v11, v13, v6

    aput v9, v13, v1

    :cond_1
    if-eqz v3, :cond_2

    aput v12, v13, v17

    aput v10, v13, v19

    aput v10, v13, v18

    aput v12, v13, v7

    :cond_2
    if-ne v4, v15, :cond_3

    aget v2, v13, v16

    aget v3, v13, v8

    aput v3, v13, v16

    aput v2, v13, v8

    aget v2, v13, v6

    aget v3, v13, v1

    aput v3, v13, v6

    aput v2, v13, v1

    aget v1, v13, v17

    aget v2, v13, v19

    aput v2, v13, v17

    aput v1, v13, v19

    aget v1, v13, v18

    aget v2, v13, v7

    aput v2, v13, v18

    aput v1, v13, v7

    :cond_3
    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->d:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->r:[F

    const/16 v4, 0x14

    invoke-interface {v1, v2, v3, v14, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :cond_4
    return-void
.end method

.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->d:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v3, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/MapLayer;->getOpacity()F

    move-result v6

    mul-float v2, v2, v6

    invoke-static {v3, v4, v5, v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v6, v6, v7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/MapLayer;->getRenderOffsetX()F

    move-result v7

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v7, v7, v8

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/MapLayer;->getRenderOffsetY()F

    move-result v8

    neg-float v8, v8

    iget v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v8, v8, v9

    iget v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->u:F

    mul-float v10, v10, v9

    iget-boolean v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->s:Z

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v9, :cond_6

    sub-float v9, v5, v10

    div-float/2addr v9, v12

    add-float/2addr v5, v10

    div-float/2addr v5, v12

    mul-float v11, v11, v6

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v10, v11

    sub-float/2addr v10, v7

    div-float/2addr v10, v6

    float-to-int v10, v10

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v15, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v15, v12

    add-float/2addr v15, v6

    sub-float/2addr v15, v7

    div-float/2addr v15, v6

    float-to-int v12, v15

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v12, v9

    sub-float/2addr v12, v8

    div-float/2addr v12, v5

    float-to-int v9, v12

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v15, v12, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v15, v12

    add-float/2addr v15, v5

    sub-float/2addr v15, v8

    div-float/2addr v15, v5

    float-to-int v12, v15

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-boolean v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->t:Z

    rem-int/lit8 v15, v9, 0x2

    if-nez v15, :cond_0

    const/4 v13, 0x1

    :cond_0
    if-ne v12, v13, :cond_1

    add-int/lit8 v13, v9, 0x1

    goto :goto_0

    :cond_1
    move v13, v9

    :goto_0
    if-nez v15, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    if-ne v12, v15, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    :goto_2
    sub-int/2addr v4, v14

    :goto_3
    if-lt v4, v10, :cond_a

    move v12, v13

    :goto_4
    if-ge v12, v3, :cond_4

    invoke-virtual {v1, v12, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v14

    int-to-float v15, v12

    mul-float v15, v15, v5

    add-float/2addr v15, v7

    move/from16 v16, v9

    int-to-float v9, v4

    mul-float v9, v9, v6

    add-float/2addr v9, v11

    add-float/2addr v9, v8

    invoke-virtual {v0, v14, v15, v9, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->e(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;FFF)V

    add-int/lit8 v12, v12, 0x2

    move/from16 v9, v16

    goto :goto_4

    :cond_4
    move/from16 v16, v9

    :goto_5
    if-ge v9, v3, :cond_5

    invoke-virtual {v1, v9, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v12

    int-to-float v14, v9

    mul-float v14, v14, v5

    add-float/2addr v14, v7

    int-to-float v15, v4

    mul-float v15, v15, v6

    add-float/2addr v15, v8

    invoke-virtual {v0, v12, v14, v15, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->e(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;FFF)V

    add-int/lit8 v9, v9, 0x2

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, -0x1

    move/from16 v9, v16

    goto :goto_3

    :cond_6
    sub-float v9, v6, v10

    div-float/2addr v9, v12

    add-float/2addr v6, v10

    div-float/2addr v6, v12

    mul-float v11, v11, v5

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v10, v9

    sub-float/2addr v10, v7

    div-float/2addr v10, v6

    float-to-int v9, v10

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v12, v10

    add-float/2addr v12, v6

    sub-float/2addr v12, v7

    div-float/2addr v12, v6

    float-to-int v10, v12

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v10, v11

    sub-float/2addr v10, v8

    div-float/2addr v10, v5

    float-to-int v10, v10

    const/4 v12, 0x0

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v15, v13, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v13, v13, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v15, v13

    add-float/2addr v15, v5

    sub-float/2addr v15, v8

    div-float/2addr v15, v5

    float-to-int v13, v15

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v4, v14

    :goto_6
    if-lt v4, v9, :cond_a

    rem-int/lit8 v13, v4, 0x2

    if-nez v13, :cond_7

    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    :goto_7
    iget-boolean v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->t:Z

    if-ne v13, v15, :cond_8

    move v13, v11

    goto :goto_8

    :cond_8
    const/4 v13, 0x0

    :goto_8
    move v15, v10

    :goto_9
    if-ge v15, v3, :cond_9

    invoke-virtual {v1, v15, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v12

    int-to-float v14, v15

    mul-float v14, v14, v5

    add-float/2addr v14, v13

    add-float/2addr v14, v7

    int-to-float v1, v4

    mul-float v1, v1, v6

    add-float/2addr v1, v8

    invoke-virtual {v0, v12, v14, v1, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->e(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;FFF)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v1, p1

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto :goto_6

    :cond_a
    return-void
.end method
