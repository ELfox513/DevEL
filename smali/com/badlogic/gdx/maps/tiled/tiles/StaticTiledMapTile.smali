.class public Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapTile;


# instance fields
.field public a:I

.field public b:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

.field public c:Lcom/badlogic/gdx/maps/MapProperties;

.field public d:Lcom/badlogic/gdx/maps/MapObjects;

.field public e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->b:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->b:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iget-object v0, p1, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->c:Lcom/badlogic/gdx/maps/MapProperties;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v0

    iget-object v1, p1, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->c:Lcom/badlogic/gdx/maps/MapProperties;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/MapProperties;->putAll(Lcom/badlogic/gdx/maps/MapProperties;)V

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->d:Lcom/badlogic/gdx/maps/MapObjects;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->d:Lcom/badlogic/gdx/maps/MapObjects;

    iget-object v0, p1, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget p1, p1, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->a:I

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->a:I

    return-void
.end method


# virtual methods
.method public getBlendMode()Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->b:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->a:I

    return v0
.end method

.method public getObjects()Lcom/badlogic/gdx/maps/MapObjects;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->d:Lcom/badlogic/gdx/maps/MapObjects;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/maps/MapObjects;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapObjects;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->d:Lcom/badlogic/gdx/maps/MapObjects;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->d:Lcom/badlogic/gdx/maps/MapObjects;

    return-object v0
.end method

.method public getOffsetX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->f:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->g:F

    return v0
.end method

.method public getProperties()Lcom/badlogic/gdx/maps/MapProperties;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->c:Lcom/badlogic/gdx/maps/MapProperties;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/maps/MapProperties;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapProperties;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->c:Lcom/badlogic/gdx/maps/MapProperties;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->c:Lcom/badlogic/gdx/maps/MapProperties;

    return-object v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public setBlendMode(Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->b:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->a:I

    return-void
.end method

.method public setOffsetX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->f:F

    return-void
.end method

.method public setOffsetY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->g:F

    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
