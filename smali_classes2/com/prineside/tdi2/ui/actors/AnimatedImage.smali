.class public Lcom/prineside/tdi2/ui/actors/AnimatedImage;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
.source "SourceFile"


# instance fields
.field public P:Lcom/badlogic/gdx/graphics/g2d/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g2d/Animation<",
            "+",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field public Q:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Animation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/Animation<",
            "+",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/AnimatedImage;->Q:F

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/AnimatedImage;->P:Lcom/badlogic/gdx/graphics/g2d/Animation;

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/AnimatedImage;->P:Lcom/badlogic/gdx/graphics/g2d/Animation;

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/AnimatedImage;->Q:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/prineside/tdi2/ui/actors/AnimatedImage;->Q:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getPlayMode()Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(FZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    return-void
.end method
