.class public Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SourceFile"


# instance fields
.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->y:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->y:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->u:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->y:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->v:F

    return-void
.end method

.method public c(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->u:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->v:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->w:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->x:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->u:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->w:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->v:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->x:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float p1, v1, v2

    move v3, v0

    move v0, p1

    move p1, v3

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->y:I

    invoke-virtual {v1, p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FFI)V

    return-void
.end method

.method public getAlignment()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->y:I

    return v0
.end method

.method public getStartX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->u:F

    return v0
.end method

.method public getStartY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->v:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->w:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->x:F

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reset()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->y:I

    return-void
.end method

.method public setAlignment(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->y:I

    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->w:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->x:F

    return-void
.end method

.method public setPosition(FFI)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->w:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->x:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->y:I

    return-void
.end method

.method public setStartPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->u:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->v:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->w:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->x:F

    return-void
.end method
