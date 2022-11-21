.class public Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;
.source "SourceFile"


# instance fields
.field public v:F

.field public w:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public d(F)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->v:F

    mul-float v1, v1, p1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->w:F

    mul-float v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->moveBy(FF)V

    return-void
.end method

.method public getAmountX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->v:F

    return v0
.end method

.method public getAmountY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->w:F

    return v0
.end method

.method public setAmount(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->v:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->w:F

    return-void
.end method

.method public setAmountX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->v:F

    return-void
.end method

.method public setAmountY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->w:F

    return-void
.end method
