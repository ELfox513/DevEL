.class public Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;
.source "SourceFile"


# instance fields
.field public p:F

.field public q:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->p:F

    return-void
.end method


# virtual methods
.method public a(F)Z
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->q:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->p:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->q:F

    cmpg-float p1, v0, v1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-float p1, v0, v1

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->k:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->p:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->q:F

    return-void
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->p:F

    return v0
.end method

.method public getTime()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->q:F

    return v0
.end method

.method public restart()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->restart()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->q:F

    return-void
.end method

.method public setDuration(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->p:F

    return-void
.end method

.method public setTime(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->q:F

    return-void
.end method
