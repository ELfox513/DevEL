.class public Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SourceFile"


# instance fields
.field public u:F

.field public v:F

.field public w:Lcom/badlogic/gdx/graphics/Color;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->w:Lcom/badlogic/gdx/graphics/Color;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->w:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->w:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->u:F

    return-void
.end method

.method public c(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->w:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->u:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->w:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->v:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->w:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->u:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->v:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    :goto_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->v:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->w:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->w:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->v:F

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/graphics/Color;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->w:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method
