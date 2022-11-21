.class public Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;


# instance fields
.field public h:Lcom/badlogic/gdx/graphics/g2d/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRotation(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setScale(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPackedColor(F)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v0, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p4, p10}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRotation(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p4, p8, p9}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setScale(FF)V

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p4, p2, p3, p6, p7}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPackedColor(F)V

    return-void
.end method

.method public getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    return-object v0
.end method

.method public setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setMinWidth(F)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setMinHeight(F)V

    return-void
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->h:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    instance-of v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    :goto_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->getMinWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->getMinHeight()F

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->getLeftWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setLeftWidth(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->getRightWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setRightWidth(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->getTopHeight()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setTopHeight(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->getBottomHeight()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setBottomHeight(F)V

    return-object p1
.end method
