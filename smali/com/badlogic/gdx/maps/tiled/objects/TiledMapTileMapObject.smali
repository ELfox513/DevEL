.class public Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;
.super Lcom/badlogic/gdx/maps/objects/TextureMapObject;
.source "SourceFile"


# instance fields
.field public n:Z

.field public o:Z

.field public p:Lcom/badlogic/gdx/maps/tiled/TiledMapTile;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;ZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;-><init>()V

    iput-boolean p2, p0, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->n:Z

    iput-boolean p3, p0, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->o:Z

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->p:Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-interface {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void
.end method


# virtual methods
.method public getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->p:Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    return-object v0
.end method

.method public isFlipHorizontally()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->n:Z

    return v0
.end method

.method public isFlipVertically()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->o:Z

    return v0
.end method

.method public setFlipHorizontally(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->n:Z

    return-void
.end method

.method public setFlipVertically(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->o:Z

    return-void
.end method

.method public setTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->p:Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    return-void
.end method
