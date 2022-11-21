.class public Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;
.super Lcom/badlogic/gdx/maps/MapLayer;
.source "SourceFile"


# instance fields
.field public l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public m:F

.field public n:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->m:F

    iput p3, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->n:F

    return-void
.end method


# virtual methods
.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->m:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->n:F

    return v0
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->m:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->n:F

    return-void
.end method
