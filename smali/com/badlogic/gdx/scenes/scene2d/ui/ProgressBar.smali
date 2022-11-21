.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    }
.end annotation


# instance fields
.field public I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

.field public J:F

.field public K:F

.field public L:F

.field public M:F

.field public N:F

.field public O:F

.field public final P:Z

.field public Q:F

.field public R:F

.field public S:Lcom/badlogic/gdx/math/Interpolation;

.field public T:Lcom/badlogic/gdx/math/Interpolation;

.field public U:Z

.field public V:Z

.field public W:Z


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->S:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->T:Lcom/badlogic/gdx/math/Interpolation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->V:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->W:Z

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->J:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->K:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->L:F

    iput-boolean p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->P:Z

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->M:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "stepSize must be > 0: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "max must be > min. min,max: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

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

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->R:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->R:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 21

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->l()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->i()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->k()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->j()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v15

    const/4 v6, 0x0

    if-nez v0, :cond_0

    const/16 v16, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    move/from16 v16, v2

    :goto_0
    if-nez v0, :cond_1

    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    move/from16 v17, v0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualPercent()F

    move-result v18

    iget v0, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v1, v1, p2

    move-object/from16 v5, p1

    invoke-interface {v5, v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-boolean v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->P:Z

    const/high16 v19, 0x3f000000    # 0.5f

    if-eqz v0, :cond_6

    if-eqz v9, :cond_2

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    sub-float v0, v14, v0

    mul-float v0, v0, v19

    add-float v3, v12, v0

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move v4, v13

    move/from16 v5, v17

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->h(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)V

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v6

    add-float/2addr v0, v6

    sub-float/2addr v15, v0

    goto :goto_2

    :cond_2
    move-object/from16 v20, v8

    const/4 v8, 0x0

    const/4 v6, 0x0

    :goto_2
    sub-float v15, v15, v16

    mul-float v0, v15, v18

    invoke-static {v0, v8, v15}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v8

    add-float v0, v6, v8

    iput v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    mul-float v9, v16, v19

    if-eqz v10, :cond_3

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    sub-float v0, v14, v0

    mul-float v0, v0, v19

    add-float v3, v12, v0

    add-float v4, v13, v6

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    add-float v6, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->h(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)V

    :cond_3
    if-eqz v11, :cond_5

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    sub-float v0, v14, v0

    mul-float v0, v0, v19

    add-float v3, v12, v0

    iget v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    add-float/2addr v0, v13

    add-float v4, v0, v9

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    iget-boolean v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->V:Z

    if-eqz v0, :cond_4

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_3

    :cond_4
    sub-float v0, v8, v9

    :goto_3
    sub-float v6, v15, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->h(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)V

    :cond_5
    if-eqz v20, :cond_b

    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v6

    sub-float/2addr v14, v5

    mul-float v14, v14, v19

    add-float v3, v12, v14

    iget v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    add-float/2addr v13, v0

    sub-float v16, v16, v6

    mul-float v16, v16, v19

    add-float v4, v13, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->h(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)V

    goto/16 :goto_6

    :cond_6
    move-object/from16 v20, v8

    const/4 v8, 0x0

    if-eqz v9, :cond_7

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    sub-float v0, v15, v0

    mul-float v0, v0, v19

    add-float/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v4, v0

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v12

    move v5, v14

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->h(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)V

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v6

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    add-float/2addr v0, v6

    sub-float/2addr v14, v0

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    sub-float v14, v14, v17

    mul-float v0, v14, v18

    invoke-static {v0, v8, v14}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v8

    add-float v0, v6, v8

    iput v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    mul-float v9, v17, v19

    if-eqz v10, :cond_8

    add-float v3, v12, v6

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    sub-float v0, v15, v0

    mul-float v0, v0, v19

    add-float v4, v13, v0

    add-float v5, v8, v9

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->h(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)V

    :cond_8
    if-eqz v11, :cond_a

    iget v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    add-float/2addr v0, v12

    add-float v3, v0, v9

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    sub-float v0, v15, v0

    mul-float v0, v0, v19

    add-float v4, v13, v0

    iget-boolean v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->V:Z

    if-eqz v0, :cond_9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_5

    :cond_9
    sub-float v0, v8, v9

    :goto_5
    sub-float v5, v14, v0

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->h(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)V

    :cond_a
    if-eqz v20, :cond_b

    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v6

    iget v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->O:F

    add-float/2addr v12, v0

    sub-float v17, v17, v5

    mul-float v17, v17, v19

    add-float v3, v12, v17

    sub-float/2addr v15, v6

    mul-float v15, v15, v19

    add-float v4, v13, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->h(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)V

    :cond_b
    :goto_6
    return-void
.end method

.method public g(F)F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->J:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->K:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public getMaxValue()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->K:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->J:F

    return v0
.end method

.method public getPercent()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->J:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->K:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->M:F

    sub-float/2addr v2, v0

    sub-float/2addr v1, v0

    div-float/2addr v2, v1

    return v2
.end method

.method public getPrefHeight()F
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->P:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x430c0000    # 140.0f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->i()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getPrefWidth()F
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->P:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->i()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_2
    const/high16 v0, 0x430c0000    # 140.0f

    return v0
.end method

.method public getStepSize()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->L:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->M:F

    return v0
.end method

.method public getVisualPercent()F
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->J:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->K:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->T:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualValue()F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->J:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->K:F

    sub-float/2addr v3, v2

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    return v0
.end method

.method public getVisualValue()F
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->R:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->S:Lcom/badlogic/gdx/math/Interpolation;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->N:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->M:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->Q:F

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->M:F

    return v0
.end method

.method public final h(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)V
    .locals 6

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->V:Z

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    int-to-float p5, p5

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    int-to-float p6, p6

    :cond_0
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v0, p2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public i()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->U:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->R:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->U:Z

    return v0
.end method

.method public isVertical()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->P:Z

    return v0
.end method

.method public j()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->U:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public k()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->U:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public l()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->U:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public m(F)F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->L:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->L:F

    mul-float p1, p1, v0

    return p1
.end method

.method public setAnimateDuration(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->Q:F

    return-void
.end method

.method public setAnimateInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->S:Lcom/badlogic/gdx/math/Interpolation;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "animateInterpolation cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->U:Z

    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->W:Z

    return-void
.end method

.method public setRange(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->J:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->K:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->M:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    goto :goto_0

    :cond_0
    cmpl-float p1, v0, p2

    if-lez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min must be <= max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " <= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->V:Z

    return-void
.end method

.method public setStepSize(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->L:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "steps must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(F)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->m(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->g(F)F

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->M:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v0

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualValue()F

    move-result v2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->M:F

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->W:Z

    if-eqz p1, :cond_1

    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v3

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    if-eqz v3, :cond_1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->M:F

    return v1

    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->Q:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->N:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->R:F

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setVisualInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->T:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method

.method public updateVisualValue()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->R:F

    return-void
.end method
