.class public Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
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

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->v:F

    mul-float v1, v1, p1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->w:F

    mul-float v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeBy(FF)V

    return-void
.end method

.method public getAmountHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->w:F

    return v0
.end method

.method public getAmountWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->v:F

    return v0
.end method

.method public setAmount(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->v:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->w:F

    return-void
.end method

.method public setAmountHeight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->w:F

    return-void
.end method

.method public setAmountWidth(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->v:F

    return-void
.end method
