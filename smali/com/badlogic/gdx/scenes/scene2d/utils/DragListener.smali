.class public Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:I

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->b:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->c:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->d:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->e:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->f:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->m:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->o:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->m:I

    return-void
.end method

.method public drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    return-void
.end method

.method public dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    return-void
.end method

.method public dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    return-void
.end method

.method public getButton()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->n:I

    return v0
.end method

.method public getDeltaX()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->k:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->i:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getDeltaY()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->l:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->j:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getDragDistance()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->k:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->g:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->l:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->h:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->len(FF)F

    move-result v0

    return v0
.end method

.method public getDragStartX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->g:F

    return v0
.end method

.method public getDragStartY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->h:F

    return v0
.end method

.method public getDragX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->k:F

    return v0
.end method

.method public getDragY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->l:F

    return v0
.end method

.method public getStageTouchDownX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->e:F

    return v0
.end method

.method public getStageTouchDownY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->f:F

    return v0
.end method

.method public getTapSquareSize()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->b:F

    return v0
.end method

.method public getTouchDownX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->c:F

    return v0
.end method

.method public getTouchDownY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->d:F

    return v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->o:Z

    return v0
.end method

.method public setButton(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->n:I

    return-void
.end method

.method public setDragStartX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->g:F

    return-void
.end method

.method public setDragStartY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->h:F

    return-void
.end method

.method public setTapSquareSize(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->b:F

    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->m:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    if-nez p4, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->n:I

    if-eq v0, v2, :cond_1

    if-eq p5, v0, :cond_1

    return v1

    :cond_1
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->m:I

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->c:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->d:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->e:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->f:F

    const/4 p1, 0x1

    return p1
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->m:I

    if-eq p4, v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->o:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->c:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->b:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->d:F

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->o:Z

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->g:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->h:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->k:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->l:F

    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->o:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->k:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->i:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->l:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->j:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->k:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->l:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    :cond_3
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget p5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->m:I

    if-ne p4, p5, :cond_1

    iget-boolean p5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->o:Z

    if-eqz p5, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->cancel()V

    :cond_1
    return-void
.end method
