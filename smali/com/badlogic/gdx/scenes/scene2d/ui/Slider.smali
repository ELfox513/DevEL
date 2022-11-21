.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    }
.end annotation


# instance fields
.field public X:I

.field public Y:I

.field public Z:Z

.field public a0:Lcom/badlogic/gdx/math/Interpolation;

.field public b0:[F

.field public c0:F


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v1, "vertical"

    goto :goto_0

    :cond_0
    const-string v1, "horizontal"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->X:I

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->Y:I

    sget-object p1, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->a0:Lcom/badlogic/gdx/math/Interpolation;

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    return-object v0
.end method

.method public i()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->U:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->backgroundDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->Z:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public isDragging()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->Y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->Z:Z

    return v0
.end method

.method public j()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->U:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfterDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->Z:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobAfterOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public k()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->U:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBeforeDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->Z:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobBeforeOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public l()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->U:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->Z:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public n(FF)Z
    .locals 8

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->i()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getMinValue()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getMaxValue()F

    move-result v4

    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->P:Z

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result p1

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v5

    sub-float/2addr p1, v5

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v5

    sub-float/2addr p1, v5

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    :goto_0
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v5

    sub-float/2addr p2, v5

    mul-float v6, v6, v0

    sub-float/2addr p2, v6

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    sub-float/2addr v4, v3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->a0:Lcom/badlogic/gdx/math/Interpolation;

    sub-float/2addr p1, v0

    div-float/2addr p2, p1

    invoke-virtual {v5, p2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p2

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result p2

    invoke-static {v7, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    sub-float/2addr p2, v5

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v5

    sub-float/2addr p2, v5

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    :goto_1
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    sub-float/2addr p1, v5

    mul-float v6, v6, v0

    sub-float/2addr p1, v6

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    sub-float/2addr v4, v3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->a0:Lcom/badlogic/gdx/math/Interpolation;

    sub-float/2addr p2, v0

    div-float/2addr p1, p2

    invoke-virtual {v5, p1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p1

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result p1

    invoke-static {v7, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    :goto_2
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 p2, 0x3b

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 p2, 0x3c

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->o(F)F

    move-result p1

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    move-result p2

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    :cond_4
    return p2
.end method

.method public o(F)F
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->b0:[F

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->b0:[F

    array-length v5, v4

    if-ge v1, v5, :cond_3

    aget v4, v4, v1

    sub-float v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->c0:F

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_2

    cmpl-float v6, v3, v2

    if-eqz v6, :cond_1

    cmpg-float v6, v5, v3

    if-gez v6, :cond_2

    :cond_1
    move v0, v4

    move v3, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    cmpl-float v1, v3, v2

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    :cond_5
    :goto_1
    return p1
.end method

.method public setButton(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->X:I

    return-void
.end method

.method public setSnapToValues([FF)V
    .locals 0
    .param p1    # [F
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->b0:[F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->c0:F

    return-void
.end method

.method public setVisualInterpolationInverse(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->a0:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method

.method public setVisualPercent(F)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->J:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->K:F

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->a0:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    return-void
.end method
