.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SourceFile"


# instance fields
.field public u:F

.field public v:F

.field public w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->w:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->w:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->u:F

    return-void
.end method

.method public c(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->u:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->v:F

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->w:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->u:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->v:F

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/math/MathUtils;->lerpAngleDeg(FFF)F

    move-result p1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->u:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->v:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float p1, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setRotation(F)V

    return-void
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->v:F

    return v0
.end method

.method public isUseShortestDirection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->w:Z

    return v0
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->v:F

    return-void
.end method

.method public setUseShortestDirection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->w:Z

    return-void
.end method
