.class public Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SourceFile"


# instance fields
.field public u:F

.field public v:F

.field public w:F

.field public x:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->u:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->v:F

    return-void
.end method

.method public c(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->u:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->v:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->w:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->x:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->u:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->w:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->v:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->x:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float p1, v1, v2

    move v3, v0

    move v0, p1

    move p1, v3

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScale(FF)V

    return-void
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->w:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->x:F

    return v0
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->w:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->x:F

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->w:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->x:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->w:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->x:F

    return-void
.end method
