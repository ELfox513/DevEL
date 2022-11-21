.class public Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/BasicLevelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapPreview"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public b:Lcom/badlogic/gdx/graphics/Texture;

.field public c:Lcom/prineside/tdi2/Map;

.field public final synthetic d:Lcom/prineside/tdi2/managers/BasicLevelManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/BasicLevelManager;Lcom/prineside/tdi2/Map;)V
    .locals 1

    iput-object p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "map-preview-placeholder"

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/BasicLevelManager;Lcom/prineside/tdi2/Map;Lcom/prineside/tdi2/managers/BasicLevelManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;-><init>(Lcom/prineside/tdi2/managers/BasicLevelManager;Lcom/prineside/tdi2/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->b:Lcom/badlogic/gdx/graphics/Texture;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->b:Lcom/badlogic/gdx/graphics/Texture;

    return-object p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method


# virtual methods
.method public generate()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v0

    const/16 v2, 0xe6

    const/16 v3, 0x136

    const/4 v4, 0x0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/16 v6, 0x7fff

    invoke-direct {v5, v6, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(IZ)V

    invoke-static {v0, v5}, Lcom/prineside/tdi2/managers/BasicLevelManager;->d(Lcom/prineside/tdi2/managers/BasicLevelManager;Lcom/badlogic/gdx/graphics/g2d/SpriteCache;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    new-instance v5, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v6, v3, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    invoke-static {v0, v5}, Lcom/prineside/tdi2/managers/BasicLevelManager;->f(Lcom/prineside/tdi2/managers/BasicLevelManager;Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;)Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    :cond_1
    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->getTrimBounds()Lcom/prineside/tdi2/utils/IntRectangle;

    move-result-object v5

    iget v0, v5, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    iget v6, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x1

    iget v0, v5, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    iget v7, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v0, :cond_3

    iget-object v9, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    iget-object v9, v9, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/Tile;

    aget-object v9, v9, v8

    iget-object v10, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v10}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v11

    invoke-virtual {v9}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v10

    iget v12, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int/2addr v10, v12

    mul-int/lit16 v10, v10, 0x80

    int-to-float v12, v10

    invoke-virtual {v9}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v10

    iget v13, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int/2addr v10, v13

    mul-int/lit16 v10, v10, 0x80

    int-to-float v13, v10

    const/high16 v14, 0x43000000    # 128.0f

    const/high16 v15, 0x43000000    # 128.0f

    sget-object v17, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-object v10, v9

    move-object/from16 v16, v17

    invoke-virtual/range {v10 .. v16}, Lcom/prineside/tdi2/Tile;->drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    iget-object v10, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v10}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v11

    invoke-virtual {v9}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v10

    iget v12, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int/2addr v10, v12

    mul-int/lit16 v10, v10, 0x80

    int-to-float v12, v10

    invoke-virtual {v9}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v10

    iget v13, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int/2addr v10, v13

    mul-int/lit16 v10, v10, 0x80

    int-to-float v13, v10

    move-object v10, v9

    invoke-virtual/range {v10 .. v16}, Lcom/prineside/tdi2/Tile;->drawExtras(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    iget-object v10, v9, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v11, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v10, v11, :cond_2

    move-object v10, v9

    check-cast v10, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v10, v10, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v10, :cond_2

    iget-object v11, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v11}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v11

    invoke-virtual {v9}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v12

    iget v13, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int/2addr v12, v13

    mul-int/lit16 v12, v12, 0x80

    invoke-virtual {v9}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v9

    iget v13, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int/2addr v9, v13

    mul-int/lit16 v9, v9, 0x80

    sget-object v13, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DEFAULT:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    invoke-virtual {v10, v11, v12, v9, v13}, Lcom/prineside/tdi2/Building;->drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v8, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    iget v8, v8, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt v0, v8, :cond_7

    const/4 v8, 0x0

    :goto_2
    iget-object v9, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    iget v9, v9, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt v8, v9, :cond_6

    sget-object v9, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_5

    aget-object v12, v9, v11

    iget-object v13, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    iget-object v13, v13, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object v13, v13, v0

    aget-object v13, v13, v8

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget-object v12, v13, v12

    if-nez v12, :cond_4

    goto :goto_4

    :cond_4
    :try_start_0
    iget-object v13, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v13}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v13

    iget v14, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int v14, v8, v14

    iget v15, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int v15, v0, v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/prineside/tdi2/Gate;->drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v8, "BasicLevelManager"

    const-string v9, "stopped preview generation"

    invoke-static {v8, v9, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_5
    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    move-result v0

    iget-object v8, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v8}, Lcom/prineside/tdi2/managers/BasicLevelManager;->e(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->begin()V

    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v9, 0x302

    const/16 v10, 0x303

    invoke-interface {v8, v9, v10}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v9, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v11, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v12, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v8, v10, v11, v12, v9}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v9, 0x4000

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v9, 0xbe2

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    iget-object v8, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v8}, Lcom/prineside/tdi2/managers/BasicLevelManager;->g(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/prineside/tdi2/CameraController;

    move-result-object v8

    invoke-virtual {v8, v3, v2}, Lcom/prineside/tdi2/CameraController;->setScreenSize(II)V

    iget-object v8, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v8}, Lcom/prineside/tdi2/managers/BasicLevelManager;->g(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/prineside/tdi2/CameraController;

    move-result-object v8

    mul-int/lit16 v6, v6, 0x80

    mul-int/lit16 v7, v7, 0x80

    invoke-virtual {v8, v6, v7}, Lcom/prineside/tdi2/CameraController;->setMapSize(II)V

    iget-object v6, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v6}, Lcom/prineside/tdi2/managers/BasicLevelManager;->g(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/prineside/tdi2/CameraController;

    move-result-object v6

    const v7, 0x3a83126f    # 0.001f

    const/high16 v8, 0x447a0000    # 1000.0f

    invoke-virtual {v6, v7, v8}, Lcom/prineside/tdi2/CameraController;->setZoomBoundaries(FF)V

    iget-object v6, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v6}, Lcom/prineside/tdi2/managers/BasicLevelManager;->g(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/prineside/tdi2/CameraController;

    move-result-object v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/CameraController;->fitMapToScreen(F)V

    iget-object v6, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v6}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v6

    iget-object v7, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v7}, Lcom/prineside/tdi2/managers/BasicLevelManager;->h(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/OrthographicCamera;

    move-result-object v7

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v6, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v6}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    iget-object v6, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v6}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->c(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v6, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v6}, Lcom/prineside/tdi2/managers/BasicLevelManager;->h(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/OrthographicCamera;

    move-result-object v6

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x0

    :goto_6
    const/4 v7, 0x0

    if-ge v6, v0, :cond_a

    iget-object v8, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    iget-object v8, v8, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/Tile;

    aget-object v8, v8, v6

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v10

    iget v11, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x80

    invoke-virtual {v8}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v11

    iget v12, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int/2addr v11, v12

    mul-int/lit16 v11, v11, 0x80

    invoke-virtual {v8, v9, v7, v10, v11}, Lcom/prineside/tdi2/Tile;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v10

    iget v11, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x80

    invoke-virtual {v8}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v11

    iget v12, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int/2addr v11, v12

    mul-int/lit16 v11, v11, 0x80

    invoke-virtual {v8, v9, v7, v10, v11}, Lcom/prineside/tdi2/Tile;->postDrawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V

    iget-object v7, v8, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v9, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v7, v9, :cond_8

    move-object v7, v8

    check-cast v7, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v7, v7, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v7, :cond_9

    iget-object v9, v7, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v10, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v9, v10, :cond_9

    move-object v11, v7

    check-cast v11, Lcom/prineside/tdi2/Tower;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v12, v7, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v7

    iget v9, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x80

    int-to-float v13, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v7

    iget v8, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int/2addr v7, v8

    mul-int/lit16 v7, v7, 0x80

    int-to-float v14, v7

    const/high16 v15, 0x43000000    # 128.0f

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/prineside/tdi2/Tower;->drawWeapon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_7

    :cond_8
    sget-object v9, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v7, v9, :cond_9

    move-object v7, v8

    check-cast v7, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v9, v7, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v9, :cond_9

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v10, v7, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v7

    iget v11, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int/2addr v7, v11

    mul-int/lit16 v7, v7, 0x80

    int-to-float v11, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v7

    iget v8, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int/2addr v7, v8

    mul-int/lit16 v7, v7, 0x80

    int-to-float v12, v7

    const/high16 v13, 0x43000000    # 128.0f

    const/4 v14, 0x0

    sget-object v15, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DEFAULT:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    invoke-virtual/range {v9 .. v15}, Lcom/prineside/tdi2/Miner;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    :cond_9
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_8
    iget-object v6, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    iget v6, v6, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt v0, v6, :cond_e

    const/4 v6, 0x0

    :goto_9
    iget-object v8, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    iget v8, v8, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt v6, v8, :cond_d

    sget-object v8, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v9, :cond_c

    aget-object v11, v8, v10

    iget-object v12, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    invoke-virtual {v12, v6, v0, v11}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v11

    if-nez v11, :cond_b

    goto :goto_b

    :cond_b
    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget v13, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int v13, v6, v13

    iget v14, v5, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int v14, v0, v14

    invoke-virtual {v11, v12, v7, v13, v14}, Lcom/prineside/tdi2/Gate;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V

    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c:Lcom/prineside/tdi2/Map;

    :try_start_1
    invoke-static {v4, v4, v3, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->createFromFrameBuffer(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    nop

    :goto_c
    iget-object v2, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->d:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->e(Lcom/prineside/tdi2/managers/BasicLevelManager;)Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->end()V

    if-eqz v0, :cond_f

    new-instance v2, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;

    invoke-direct {v2, v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;-><init>(Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;Lcom/badlogic/gdx/graphics/Pixmap;)V

    iput-object v2, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->b:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v2, v0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const v2, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const v3, 0x3f7f7cee    # 0.998f

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v2, v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->b:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    :cond_f
    return-void
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method
