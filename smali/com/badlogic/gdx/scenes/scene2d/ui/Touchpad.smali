.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;
    }
.end annotation


# instance fields
.field public I:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

.field public J:Z

.field public K:Z

.field public L:F

.field public final M:Lcom/badlogic/gdx/math/Circle;

.field public final N:Lcom/badlogic/gdx/math/Circle;

.field public final O:Lcom/badlogic/gdx/math/Circle;

.field public final P:Lcom/badlogic/gdx/math/Vector2;

.field public final Q:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;-><init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V

    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;-><init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V

    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V
    .locals 3

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->K:Z

    new-instance v0, Lcom/badlogic/gdx/math/Circle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->M:Lcom/badlogic/gdx/math/Circle;

    new-instance v0, Lcom/badlogic/gdx/math/Circle;

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->N:Lcom/badlogic/gdx/math/Circle;

    new-instance v0, Lcom/badlogic/gdx/math/Circle;

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->O:Lcom/badlogic/gdx/math/Circle;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->P:Lcom/badlogic/gdx/math/Vector2;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->L:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deadzoneRadius must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result p2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v8

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v9

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v4, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v4, :cond_0

    move-object v5, p1

    move v6, p2

    move v7, v0

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->P:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    add-float/2addr p2, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->P:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    add-float v5, v0, v1

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v6

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v7

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_1
    return-void
.end method

.method public g(FFZ)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->P:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->M:Lcom/badlogic/gdx/math/Circle;

    iget v6, v5, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v5, v5, Lcom/badlogic/gdx/math/Circle;->y:F

    invoke-virtual {v0, v6, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->O:Lcom/badlogic/gdx/math/Circle;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Circle;->contains(FF)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    sub-float v0, p1, v6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->M:Lcom/badlogic/gdx/math/Circle;

    iget v6, v6, Lcom/badlogic/gdx/math/Circle;->radius:F

    div-float/2addr v0, v6

    sub-float v5, p2, v5

    div-float/2addr v5, v6

    invoke-virtual {p3, v0, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v5, p3, v0

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    div-float/2addr v0, p3

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    :cond_0
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->M:Lcom/badlogic/gdx/math/Circle;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Circle;->contains(FF)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->P:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->P:Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->M:Lcom/badlogic/gdx/math/Circle;

    iget p2, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->M:Lcom/badlogic/gdx/math/Circle;

    iget p3, p2, Lcom/badlogic/gdx/math/Circle;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Circle;->y:F

    invoke-virtual {p1, p3, p2}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float p2, v4, p2

    if-nez p2, :cond_3

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float p1, v3, p1

    if-eqz p1, :cond_5

    :cond_3
    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, v4, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->P:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_4
    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public getKnobPercentX()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getKnobPercentY()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getKnobX()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->P:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getKnobY()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->P:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getResetOnTouchUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->K:Z

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object p3

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-eq p3, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    :cond_1
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->N:Lcom/badlogic/gdx/math/Circle;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Circle;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0
.end method

.method public isTouched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->J:Z

    return v0
.end method

.method public layout()V
    .locals 6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->N:Lcom/badlogic/gdx/math/Circle;

    invoke-virtual {v4, v0, v2, v3}, Lcom/badlogic/gdx/math/Circle;->set(FFF)V

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->M:Lcom/badlogic/gdx/math/Circle;

    invoke-virtual {v1, v0, v2, v3}, Lcom/badlogic/gdx/math/Circle;->set(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->O:Lcom/badlogic/gdx/math/Circle;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->L:F

    invoke-virtual {v1, v0, v2, v3}, Lcom/badlogic/gdx/math/Circle;->set(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->P:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->Q:Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public setDeadzone(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->L:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deadzoneRadius must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResetOnTouchUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->K:Z

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
