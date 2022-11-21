.class Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$2;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic P:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$2;->P:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$2;->P:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->c(Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    const/4 v0, 0x1

    const/16 v1, 0x302

    invoke-interface {p1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    const/16 p2, 0x303

    invoke-interface {p1, v1, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    :cond_0
    return-void
.end method
