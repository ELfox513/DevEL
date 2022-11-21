.class public Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SourceFile"


# instance fields
.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:Lcom/badlogic/gdx/graphics/Color;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public final z:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->z:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->y:Lcom/badlogic/gdx/graphics/Color;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->y:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->y:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->u:F

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->v:F

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->w:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->x:F

    return-void
.end method

.method public c(F)V
    .locals 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->y:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->u:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->v:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->w:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->x:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->y:Lcom/badlogic/gdx/graphics/Color;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->z:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->u:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->z:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v2, v0

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->v:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v3, v2

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->w:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v4, v3

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->x:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v1, v4

    mul-float v1, v1, p1

    add-float/2addr v4, v1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->y:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-void
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->y:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getEndColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->z:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->y:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/graphics/Color;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->y:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setEndColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->z:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method
