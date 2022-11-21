.class public Lcom/prineside/tdi2/utils/QuadDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;


# instance fields
.field public h:Lcom/prineside/tdi2/ui/actors/QuadActor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/QuadDrawable;->setQuadActor(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/utils/QuadDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object p1, p1, Lcom/prineside/tdi2/utils/QuadDrawable;->h:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/QuadDrawable;->setQuadActor(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/utils/QuadDrawable;->h:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/utils/QuadDrawable;->h:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {p2, p4, p5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/utils/QuadDrawable;->h:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p2, p0, Lcom/prineside/tdi2/utils/QuadDrawable;->h:Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, p3}, Lcom/prineside/tdi2/ui/actors/QuadActor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .locals 0

    iget-object p4, p0, Lcom/prineside/tdi2/utils/QuadDrawable;->h:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {p4, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/utils/QuadDrawable;->h:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {p2, p6, p7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/utils/QuadDrawable;->h:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p2, p0, Lcom/prineside/tdi2/utils/QuadDrawable;->h:Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, p3}, Lcom/prineside/tdi2/ui/actors/QuadActor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method public getQuadActor()Lcom/prineside/tdi2/ui/actors/QuadActor;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/utils/QuadDrawable;->h:Lcom/prineside/tdi2/ui/actors/QuadActor;

    return-object v0
.end method

.method public setQuadActor(Lcom/prineside/tdi2/ui/actors/QuadActor;)V
    .locals 1

    iput-object p1, p0, Lcom/prineside/tdi2/utils/QuadDrawable;->h:Lcom/prineside/tdi2/ui/actors/QuadActor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getMinWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setMinWidth(F)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getMinHeight()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setMinHeight(F)V

    :cond_0
    return-void
.end method
