.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;
.super Lcom/badlogic/gdx/graphics/g2d/Sprite;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtlasSprite"
.end annotation


# instance fields
.field public final u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

.field public v:F

.field public w:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V
    .locals 3

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->v:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->w:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setOrigin(FF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    iget-boolean v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-super {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotate90(Z)V

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-super {p0, v2, p1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-super {p0, v2, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>()V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->v:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->v:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->w:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->w:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    return-void
.end method


# virtual methods
.method public flip(ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p2, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginY()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getWidthRatio()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getHeightRatio()F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->v:F

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->w:F

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    invoke-virtual {v6, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->flip(ZZ)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget p2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->v:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->w:F

    mul-float p2, p2, v4

    iput p2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    mul-float v6, v6, v5

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr p2, v3

    sub-float/2addr v6, v2

    invoke-virtual {p0, p2, v6}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translate(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setOrigin(FF)V

    return-void
.end method

.method public getAtlasRegion()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedHeight()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public getHeightRatio()F
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedHeight()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getOriginX()F
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginX()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getOriginY()F
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginY()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedWidth()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public getWidthRatio()F
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedWidth()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getX()F
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public rotate90(Z)V
    .locals 7

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotate90(Z)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginY()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getWidthRatio()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getHeightRatio()F

    move-result v5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iput v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    sub-float/2addr v6, v3

    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    sub-float/2addr v6, v5

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    sub-float/2addr v6, v2

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v5

    sub-float/2addr v6, v4

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iput v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr v4, v3

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr p1, v2

    invoke-virtual {p0, v4, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translate(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setOrigin(FF)V

    return-void
.end method

.method public setBounds(FFFF)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v1, v1

    div-float/2addr p4, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->v:F

    mul-float v1, v1, p3

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->w:F

    mul-float v2, v2, p4

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v3, :cond_0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    :goto_0
    if-eqz v3, :cond_1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    goto :goto_1

    :cond_1
    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    :goto_1
    add-float/2addr p1, v1

    add-float/2addr p2, v2

    int-to-float v1, v4

    mul-float v1, v1, p3

    int-to-float p3, v0

    mul-float p3, p3, p4

    invoke-super {p0, p1, p2, v1, p3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    return-void
.end method

.method public setOrigin(FF)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr p1, v1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr p2, v0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    return-void
.end method

.method public setOriginCenter()V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->l:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->m:F

    div-float/2addr v3, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v3, v1

    invoke-super {p0, v0, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    return-void
.end method

.method public setPosition(FF)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    add-float/2addr p1, v1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    add-float/2addr p2, v0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    return-void
.end method

.method public setSize(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setBounds(FFFF)V

    return-void
.end method

.method public setX(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    add-float/2addr p1, v0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setX(F)V

    return-void
.end method

.method public setY(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    add-float/2addr p1, v0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setY(F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->u:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
