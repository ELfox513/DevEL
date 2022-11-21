.class public Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "SourceFile"


# instance fields
.field public s:Lcom/badlogic/gdx/math/Matrix4;

.field public t:Lcom/badlogic/gdx/math/Matrix4;

.field public u:Lcom/badlogic/gdx/math/Vector3;

.field public v:Lcom/badlogic/gdx/math/Vector2;

.field public w:Lcom/badlogic/gdx/math/Vector2;

.field public x:Lcom/badlogic/gdx/math/Vector2;

.field public y:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->u:Lcom/badlogic/gdx/math/Vector3;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->w:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->x:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->y:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->u:Lcom/badlogic/gdx/math/Vector3;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->w:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->x:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->y:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->u:Lcom/badlogic/gdx/math/Vector3;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->w:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->x:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->y:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->u:Lcom/badlogic/gdx/math/Vector3;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->w:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->x:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->y:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->u:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->u:Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->t:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->u:Lcom/badlogic/gdx/math/Vector3;

    return-object p1
.end method

.method public final init()V
    .locals 6

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->s:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->s:Lcom/badlogic/gdx/math/Matrix4;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v1, v4

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->s:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x0

    const/high16 v3, -0x3dcc0000    # -45.0f

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->s:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->t:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 31

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

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v2, v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v3, v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/MapLayer;->getRenderOffsetX()F

    move-result v4

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v4, v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/MapLayer;->getRenderOffsetY()F

    move-result v5

    neg-float v5, v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v5, v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v2, v6

    mul-float v3, v3, v6

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v10, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v9, v10

    sub-float/2addr v9, v4

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v8, v5

    invoke-virtual {v6, v9, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->w:Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v9, v4

    iget v10, v8, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v10, v8

    sub-float/2addr v10, v5

    invoke-virtual {v6, v9, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->x:Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v9, v4

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v8, v5

    invoke-virtual {v6, v9, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->y:Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->k:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v10, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v9, v10

    sub-float/2addr v9, v4

    iget v10, v8, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v10, v8

    sub-float/2addr v10, v5

    invoke-virtual {v6, v9, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->x:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->d(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v6, v2

    float-to-int v6, v6

    const/4 v8, 0x2

    sub-int/2addr v6, v8

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->y:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->d(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v8

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->w:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->d(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v10, v2

    float-to-int v10, v10

    sub-int/2addr v10, v8

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->d(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v11, v2

    float-to-int v2, v11

    add-int/2addr v2, v8

    :goto_0
    if-lt v9, v6, :cond_9

    move v11, v10

    :goto_1
    if-gt v11, v2, :cond_8

    int-to-float v12, v11

    mul-float v13, v12, v7

    int-to-float v14, v9

    mul-float v15, v14, v7

    add-float/2addr v13, v15

    mul-float v14, v14, v3

    mul-float v12, v12, v3

    sub-float/2addr v14, v12

    move-object/from16 v12, p1

    invoke-virtual {v12, v11, v9}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v15

    if-nez v15, :cond_0

    goto/16 :goto_3

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

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v20, v20, v8

    add-float v13, v13, v20

    add-float/2addr v13, v4

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v8

    move/from16 v16, v2

    iget v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v8, v8, v2

    add-float/2addr v14, v8

    add-float/2addr v14, v5

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v2, v2, v8

    add-float/2addr v2, v13

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v8

    int-to-float v8, v8

    move/from16 v20, v3

    iget v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->b:F

    mul-float v8, v8, v3

    add-float/2addr v8, v14

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v22

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v23

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v24

    move/from16 v25, v4

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->r:[F

    move/from16 v26, v5

    const/4 v5, 0x0

    aput v13, v4, v5

    const/4 v5, 0x1

    aput v14, v4, v5

    const/16 v21, 0x2

    aput v1, v4, v21

    const/4 v5, 0x3

    aput v3, v4, v5

    const/16 v27, 0x4

    aput v22, v4, v27

    const/16 v28, 0x5

    aput v13, v4, v28

    const/4 v13, 0x6

    aput v8, v4, v13

    const/4 v13, 0x7

    aput v1, v4, v13

    const/16 v13, 0x8

    aput v3, v4, v13

    const/16 v28, 0x9

    aput v24, v4, v28

    const/16 v29, 0xa

    aput v2, v4, v29

    const/16 v29, 0xb

    aput v8, v4, v29

    const/16 v8, 0xc

    aput v1, v4, v8

    const/16 v8, 0xd

    aput v23, v4, v8

    const/16 v29, 0xe

    aput v24, v4, v29

    const/16 v30, 0xf

    aput v2, v4, v30

    const/16 v2, 0x10

    aput v14, v4, v2

    const/16 v2, 0x11

    aput v1, v4, v2

    const/16 v2, 0x12

    aput v23, v4, v2

    const/16 v14, 0x13

    aput v22, v4, v14

    if-eqz v17, :cond_1

    aput v23, v4, v5

    aput v3, v4, v8

    aput v23, v4, v13

    aput v3, v4, v2

    :cond_1
    if-eqz v18, :cond_2

    aput v24, v4, v27

    aput v22, v4, v29

    aput v22, v4, v28

    aput v24, v4, v14

    :cond_2
    if-eqz v15, :cond_6

    const/4 v3, 0x1

    if-eq v15, v3, :cond_5

    const/4 v3, 0x2

    if-eq v15, v3, :cond_4

    if-eq v15, v5, :cond_3

    goto :goto_2

    :cond_3
    aget v15, v4, v27

    aget v17, v4, v14

    aput v17, v4, v27

    aget v17, v4, v29

    aput v17, v4, v14

    aget v14, v4, v28

    aput v14, v4, v29

    aput v15, v4, v28

    aget v14, v4, v5

    aget v15, v4, v2

    aput v15, v4, v5

    aget v5, v4, v8

    aput v5, v4, v2

    aget v2, v4, v13

    aput v2, v4, v8

    aput v14, v4, v13

    goto :goto_2

    :cond_4
    aget v15, v4, v5

    aget v17, v4, v8

    aput v17, v4, v5

    aput v15, v4, v8

    aget v5, v4, v13

    aget v8, v4, v2

    aput v8, v4, v13

    aput v5, v4, v2

    aget v2, v4, v27

    aget v5, v4, v29

    aput v5, v4, v27

    aput v2, v4, v29

    aget v2, v4, v28

    aget v5, v4, v14

    aput v5, v4, v28

    aput v2, v4, v14

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    aget v15, v4, v27

    aget v17, v4, v28

    aput v17, v4, v27

    aget v17, v4, v29

    aput v17, v4, v28

    aget v17, v4, v14

    aput v17, v4, v29

    aput v15, v4, v14

    aget v14, v4, v5

    aget v15, v4, v13

    aput v15, v4, v5

    aget v5, v4, v8

    aput v5, v4, v13

    aget v5, v4, v2

    aput v5, v4, v8

    aput v14, v4, v2

    goto :goto_2

    :cond_6
    const/4 v3, 0x2

    :goto_2
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->d:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->r:[F

    const/16 v8, 0x14

    const/4 v13, 0x0

    invoke-interface {v2, v4, v5, v13, v8}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_4

    :cond_7
    :goto_3
    move/from16 v16, v2

    move/from16 v20, v3

    move/from16 v25, v4

    move/from16 v26, v5

    const/4 v3, 0x2

    :goto_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    move/from16 v3, v20

    move/from16 v4, v25

    move/from16 v5, v26

    const/4 v8, 0x2

    goto/16 :goto_1

    :cond_8
    move-object/from16 v12, p1

    move/from16 v16, v2

    move/from16 v20, v3

    move/from16 v25, v4

    move/from16 v26, v5

    const/4 v3, 0x2

    add-int/lit8 v9, v9, -0x1

    move/from16 v3, v20

    const/4 v8, 0x2

    goto/16 :goto_0

    :cond_9
    return-void
.end method
