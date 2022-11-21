.class public Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapRenderer;
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public A:Z

.field public final a:Lcom/badlogic/gdx/maps/tiled/TiledMap;

.field public final b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

.field public final d:[F

.field public k:Z

.field public p:F

.field public final q:Lcom/badlogic/gdx/math/Rectangle;

.field public final r:Lcom/badlogic/gdx/math/Rectangle;

.field public s:F

.field public t:F

.field public u:F

.field public v:Z

.field public w:I

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x7d0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 1

    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->d:[F

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->s:F

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->a:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(IZ)V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->dispose()V

    return-void
.end method

.method public getSpriteCache()Lcom/badlogic/gdx/graphics/g2d/SpriteCache;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    return-object v0
.end method

.method public invalidateCache()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->v:Z

    return-void
.end method

.method public isCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->v:Z

    return v0
.end method

.method public render()V
    .locals 8

    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->v:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->v:Z

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->w:I

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->s:F

    mul-float v4, v2, v3

    iget v5, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v3, v3, v5

    iget-object v6, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v7, v4

    iput v7, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v0, v3

    iput v0, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v4, v4, v0

    add-float/2addr v2, v4

    iput v2, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    mul-float v3, v3, v0

    add-float/2addr v5, v3

    iput v5, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->a:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/Map;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/MapLayer;

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    instance-of v3, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->k:Z

    const/16 v2, 0xbe2

    if-eqz v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->a:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/Map;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->getCount()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->k:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    :cond_6
    return-void
.end method

.method public render([I)V
    .locals 8

    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->v:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->v:Z

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->w:I

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->s:F

    mul-float v4, v2, v3

    iget v5, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v3, v3, v5

    iget-object v6, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v7, v4

    iput v7, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v0, v3

    iput v0, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v4, v4, v0

    add-float/2addr v2, v4

    iput v2, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    mul-float v3, v3, v0

    add-float/2addr v5, v3

    iput v5, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->a:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/Map;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/MapLayer;

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    instance-of v3, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->k:Z

    const/16 v2, 0xbe2

    if-eqz v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->a:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/Map;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_5

    aget v4, p1, v1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->k:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    :cond_6
    return-void
.end method

.method public renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V
    .locals 12

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/MapLayer;->getOpacity()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->d:[F

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getY()F

    move-result p1

    iget v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v3, v3, v4

    mul-float p1, p1, v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v4, v4, v5

    add-float/2addr v4, v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v5, v5, v6

    add-float/2addr v5, p1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v6

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v7

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v8

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v9

    const/4 v10, 0x0

    aput v3, v1, v10

    const/4 v11, 0x1

    aput p1, v1, v11

    const/4 v11, 0x2

    aput v0, v1, v11

    const/4 v11, 0x3

    aput v6, v1, v11

    const/4 v11, 0x4

    aput v7, v1, v11

    const/4 v11, 0x5

    aput v3, v1, v11

    const/4 v3, 0x6

    aput v5, v1, v3

    const/4 v3, 0x7

    aput v0, v1, v3

    const/16 v3, 0x8

    aput v6, v1, v3

    const/16 v3, 0x9

    aput v9, v1, v3

    const/16 v3, 0xa

    aput v4, v1, v3

    const/16 v3, 0xb

    aput v5, v1, v3

    const/16 v3, 0xc

    aput v0, v1, v3

    const/16 v3, 0xd

    aput v8, v1, v3

    const/16 v3, 0xe

    aput v9, v1, v3

    const/16 v3, 0xf

    aput v4, v1, v3

    const/16 v3, 0x10

    aput p1, v1, v3

    const/16 p1, 0x11

    aput v0, v1, p1

    const/16 p1, 0x12

    aput v8, v1, p1

    const/16 p1, 0x13

    aput v7, v1, p1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v1, v10, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public renderObject(Lcom/badlogic/gdx/maps/MapObject;)V
    .locals 0

    return-void
.end method

.method public renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/MapLayer;->getObjects()Lcom/badlogic/gdx/maps/MapObjects;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/MapObjects;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/maps/MapObject;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObject(Lcom/badlogic/gdx/maps/MapObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 32

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/MapLayer;->getOpacity()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v4, v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/MapLayer;->getRenderOffsetX()F

    move-result v6

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v6, v6, v7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/MapLayer;->getRenderOffsetY()F

    move-result v7

    neg-float v7, v7

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v7, v7, v8

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v8, v6

    div-float/2addr v8, v4

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v11, v10

    add-float/2addr v11, v4

    sub-float/2addr v11, v6

    div-float/2addr v11, v4

    float-to-int v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v11, v7

    div-float/2addr v11, v5

    float-to-int v11, v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v13, v12

    add-float/2addr v13, v5

    sub-float/2addr v13, v7

    div-float/2addr v13, v5

    float-to-int v12, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->x:Z

    if-ge v10, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->y:Z

    if-lez v8, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->z:Z

    if-lez v11, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->A:Z

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->d:[F

    :goto_4
    if-lt v12, v11, :cond_d

    move v3, v8

    :goto_5
    if-ge v3, v10, :cond_c

    move-object/from16 v14, p1

    invoke-virtual {v14, v3, v12}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v15

    if-nez v15, :cond_4

    :goto_6
    move/from16 v22, v4

    move/from16 v21, v5

    move/from16 v16, v6

    move/from16 v23, v7

    move/from16 v20, v8

    move/from16 v25, v10

    move/from16 v19, v11

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v16

    if-nez v16, :cond_5

    goto :goto_6

    :cond_5
    iget v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->w:I

    add-int/2addr v9, v13

    iput v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->w:I

    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v9

    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v18

    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v15

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v13

    move/from16 v20, v8

    int-to-float v8, v3

    mul-float v8, v8, v4

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v21

    move/from16 v22, v4

    iget v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v21, v21, v4

    add-float v8, v8, v21

    add-float/2addr v8, v6

    int-to-float v4, v12

    mul-float v4, v4, v5

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v16

    move/from16 v21, v5

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v16, v16, v5

    add-float v4, v4, v16

    add-float/2addr v4, v7

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    move/from16 v16, v6

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v5, v5, v6

    add-float/2addr v5, v8

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v23, v7

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v6, v6, v7

    add-float/2addr v6, v4

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v24, 0x3f000000    # 0.5f

    div-float v7, v24, v7

    move/from16 v25, v10

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v24, v24, v10

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v10

    add-float/2addr v10, v7

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v26

    sub-float v26, v26, v24

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v27

    sub-float v27, v27, v7

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v7

    add-float v7, v7, v24

    const/16 v17, 0x0

    aput v8, v2, v17

    const/16 v19, 0x1

    aput v4, v2, v19

    move/from16 v19, v11

    const/4 v11, 0x2

    aput v1, v2, v11

    const/4 v11, 0x3

    aput v10, v2, v11

    const/16 v28, 0x4

    aput v26, v2, v28

    const/16 v29, 0x5

    aput v8, v2, v29

    const/4 v8, 0x6

    aput v6, v2, v8

    const/4 v8, 0x7

    aput v1, v2, v8

    const/16 v8, 0x8

    aput v10, v2, v8

    const/16 v29, 0x9

    aput v7, v2, v29

    const/16 v30, 0xa

    aput v5, v2, v30

    const/16 v30, 0xb

    aput v6, v2, v30

    const/16 v6, 0xc

    aput v1, v2, v6

    const/16 v6, 0xd

    aput v27, v2, v6

    const/16 v30, 0xe

    aput v7, v2, v30

    const/16 v31, 0xf

    aput v5, v2, v31

    const/16 v5, 0x10

    aput v4, v2, v5

    const/16 v4, 0x11

    aput v1, v2, v4

    const/16 v4, 0x12

    aput v27, v2, v4

    const/16 v5, 0x13

    aput v26, v2, v5

    if-eqz v9, :cond_6

    aput v27, v2, v11

    aput v10, v2, v6

    aput v27, v2, v8

    aput v10, v2, v4

    :cond_6
    if-eqz v18, :cond_7

    aput v7, v2, v28

    aput v26, v2, v30

    aput v26, v2, v29

    aput v7, v2, v5

    :cond_7
    const/4 v7, 0x1

    if-eqz v15, :cond_b

    if-eq v15, v7, :cond_a

    const/4 v9, 0x2

    if-eq v15, v9, :cond_9

    if-eq v15, v11, :cond_8

    goto :goto_7

    :cond_8
    aget v9, v2, v28

    aget v10, v2, v5

    aput v10, v2, v28

    aget v10, v2, v30

    aput v10, v2, v5

    aget v5, v2, v29

    aput v5, v2, v30

    aput v9, v2, v29

    aget v5, v2, v11

    aget v9, v2, v4

    aput v9, v2, v11

    aget v9, v2, v6

    aput v9, v2, v4

    aget v4, v2, v8

    aput v4, v2, v6

    aput v5, v2, v8

    goto :goto_7

    :cond_9
    aget v9, v2, v11

    aget v10, v2, v6

    aput v10, v2, v11

    aput v9, v2, v6

    aget v6, v2, v8

    aget v9, v2, v4

    aput v9, v2, v8

    aput v6, v2, v4

    aget v4, v2, v28

    aget v6, v2, v30

    aput v6, v2, v28

    aput v4, v2, v30

    aget v4, v2, v29

    aget v6, v2, v5

    aput v6, v2, v29

    aput v4, v2, v5

    goto :goto_7

    :cond_a
    aget v9, v2, v28

    aget v10, v2, v29

    aput v10, v2, v28

    aget v10, v2, v30

    aput v10, v2, v29

    aget v10, v2, v5

    aput v10, v2, v30

    aput v9, v2, v5

    aget v5, v2, v11

    aget v9, v2, v8

    aput v9, v2, v11

    aget v9, v2, v6

    aput v9, v2, v8

    aget v8, v2, v4

    aput v8, v2, v6

    aput v5, v2, v4

    :cond_b
    :goto_7
    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v4, v13, v2, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :goto_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v16

    move/from16 v11, v19

    move/from16 v8, v20

    move/from16 v5, v21

    move/from16 v4, v22

    move/from16 v7, v23

    move/from16 v10, v25

    const/4 v9, 0x0

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_c
    move-object/from16 v14, p1

    move/from16 v22, v4

    move/from16 v21, v5

    move/from16 v16, v6

    move/from16 v23, v7

    move/from16 v20, v8

    move/from16 v25, v10

    move/from16 v19, v11

    const/4 v6, 0x0

    const/4 v7, 0x1

    add-int/lit8 v12, v12, -0x1

    move/from16 v6, v16

    move/from16 v7, v23

    const/4 v9, 0x0

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_d
    return-void
.end method

.method public setBlending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->k:Z

    return-void
.end method

.method public setMaxTileSize(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->t:F

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->u:F

    return-void
.end method

.method public setOverCache(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->s:F

    return-void
.end method

.method public setView(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float v0, v0, v1

    iget v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->t:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    iget v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v2, v2, v4

    add-float/2addr v0, v2

    iget v2, p1, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    mul-float v2, v2, v1

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->u:F

    mul-float v1, v1, v3

    mul-float v1, v1, v4

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v5, v0, v3

    sub-float/2addr v4, v5

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v3, v2, v3

    sub-float/2addr p1, v3

    invoke-virtual {v1, v4, p1, v0, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->z:Z

    const v0, 0x3727c5ac    # 1.0E-5f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_3

    :cond_0
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->A:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_3

    :cond_1
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->y:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, p1

    add-float/2addr v2, v0

    cmpl-float p1, v1, v2

    if-gtz p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->x:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, p1

    add-float/2addr v2, v0

    cmpl-float p1, v1, v2

    if-lez p1, :cond_4

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->v:Z

    :cond_4
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/math/Matrix4;FFFF)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->b:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->t:F

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->p:F

    mul-float v1, p1, v0

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->u:F

    mul-float v2, v1, v0

    sub-float/2addr p3, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p1, p1, v2

    mul-float p1, p1, v0

    add-float/2addr p4, p1

    mul-float v1, v1, v2

    mul-float v1, v1, v0

    add-float/2addr p5, v1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->z:Z

    const p2, 0x3727c5ac    # 1.0E-5f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget p3, p3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr p3, p2

    cmpg-float p1, p1, p3

    if-ltz p1, :cond_3

    :cond_0
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->A:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget p3, p3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr p3, p2

    cmpg-float p1, p1, p3

    if-ltz p1, :cond_3

    :cond_1
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->y:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    iget p3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr p3, p1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget p4, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr p4, p1

    add-float/2addr p4, p2

    cmpl-float p1, p3, p4

    if-gtz p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->x:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->q:Lcom/badlogic/gdx/math/Rectangle;

    iget p3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p3, p1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->r:Lcom/badlogic/gdx/math/Rectangle;

    iget p4, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p4, p1

    add-float/2addr p4, p2

    cmpl-float p1, p3, p4

    if-lez p1, :cond_4

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->v:Z

    :cond_4
    return-void
.end method
