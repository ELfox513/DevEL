.class public Lcom/badlogic/gdx/maps/objects/TextureMapObject;
.super Lcom/badlogic/gdx/maps/MapObject;
.source "SourceFile"


# instance fields
.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapObject;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->f:F

    iput v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->g:F

    iput v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->h:F

    iput v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->j:F

    iput v1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->k:F

    iput v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->l:F

    iput-object p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method


# virtual methods
.method public getOriginX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->h:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->i:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->l:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->j:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->k:F

    return v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->f:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->g:F

    return v0
.end method

.method public setOriginX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->h:F

    return-void
.end method

.method public setOriginY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->i:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->l:F

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->j:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->k:F

    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->f:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->g:F

    return-void
.end method
