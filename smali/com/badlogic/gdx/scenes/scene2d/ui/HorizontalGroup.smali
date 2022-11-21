.class public Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# instance fields
.field public P:F

.field public Q:F

.field public R:F

.field public S:Z

.field public T:Lcom/badlogic/gdx/utils/FloatArray;

.field public U:I

.field public V:I

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:F

.field public c0:F

.field public d0:F

.field public e0:F

.field public f0:F

.field public g0:F

.field public h0:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->S:Z

    const/16 v1, 0x8

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->X:Z

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getDebug()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->f0:F

    add-float v3, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->g0:F

    add-float v4, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getOriginX()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getOriginY()F

    move-result v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->f0:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->h0:F

    sub-float v7, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->g0:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->e0:F

    sub-float v8, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleX()F

    move-result v9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleY()F

    move-result v10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getRotation()F

    move-result v11

    move-object v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFF)V

    return-void
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    or-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    return-object p0
.end method

.method public expand()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->a0:Z

    return-object p0
.end method

.method public expand(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->a0:Z

    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->d0:F

    return-object p0
.end method

.method public fill(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->d0:F

    return-object p0
.end method

.method public getAlign()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    return v0
.end method

.method public getExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->a0:Z

    return v0
.end method

.method public getFill()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->d0:F

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->g0:F

    return v0
.end method

.method public getPadLeft()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->f0:F

    return v0
.end method

.method public getPadRight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->h0:F

    return v0
.end method

.method public getPadTop()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->e0:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->S:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->q()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->S:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->q()V

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    return v0
.end method

.method public getReverse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->W:Z

    return v0
.end method

.method public getRows()I
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->T:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    shr-int/lit8 v1, v0, 0x1

    :cond_0
    return v1
.end method

.method public getSpace()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->b0:F

    return v0
.end method

.method public getWrap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Y:Z

    return v0
.end method

.method public getWrapReverse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Z:Z

    return v0
.end method

.method public getWrapSpace()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->c0:F

    return v0
.end method

.method public grow()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->a0:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->d0:F

    return-object p0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->S:Z

    return-void
.end method

.method public layout()V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->S:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->q()V

    :cond_0
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Y:Z

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->r()V

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->X:Z

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->b0:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->g0:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->d0:F

    iget-boolean v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->a0:Z

    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    goto :goto_0

    :cond_2
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    :goto_0
    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->e0:F

    sub-float/2addr v6, v7

    sub-float/2addr v6, v4

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->f0:F

    and-int/lit8 v8, v2, 0x10

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    sub-float/2addr v8, v10

    :goto_1
    add-float/2addr v7, v8

    goto :goto_2

    :cond_3
    and-int/lit8 v8, v2, 0x8

    if-nez v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    sub-float/2addr v8, v10

    div-float/2addr v8, v9

    goto :goto_1

    :cond_4
    :goto_2
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->e0:F

    sub-float/2addr v2, v4

    sub-float v4, v2, v6

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    sub-float/2addr v2, v4

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->e0:F

    sub-float/2addr v2, v8

    sub-float/2addr v2, v6

    div-float/2addr v2, v9

    add-float/2addr v4, v2

    :goto_3
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v8

    const/4 v10, 0x0

    iget v11, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-boolean v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->W:Z

    const/4 v13, -0x1

    if-eqz v12, :cond_7

    add-int/lit8 v10, v11, -0x1

    const/4 v11, -0x1

    goto :goto_4

    :cond_7
    const/4 v13, 0x1

    :goto_4
    if-eq v10, v11, :cond_f

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v14, 0x0

    instance-of v15, v12, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_8

    move-object v14, v12

    check-cast v14, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v15

    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v16

    goto :goto_5

    :cond_8
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v15

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v16

    :goto_5
    const/16 v17, 0x0

    cmpl-float v18, v5, v17

    if-lez v18, :cond_9

    mul-float v16, v6, v5

    :cond_9
    move/from16 v9, v16

    if-eqz v14, :cond_a

    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v0

    cmpl-float v16, v0, v17

    if-lez v16, :cond_a

    cmpl-float v16, v9, v0

    if-lez v16, :cond_a

    move v9, v0

    :cond_a
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_b

    sub-float v0, v6, v9

    add-float/2addr v0, v4

    const/high16 v16, 0x40000000    # 2.0f

    goto :goto_6

    :cond_b
    and-int/lit8 v0, v2, 0x4

    if-nez v0, :cond_c

    sub-float v0, v6, v9

    const/high16 v16, 0x40000000    # 2.0f

    div-float v0, v0, v16

    add-float/2addr v0, v4

    goto :goto_6

    :cond_c
    const/high16 v16, 0x40000000    # 2.0f

    move v0, v4

    :goto_6
    if-eqz v1, :cond_d

    move/from16 v17, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    move/from16 v18, v2

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v12, v1, v0, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_7

    :cond_d
    move/from16 v17, v1

    move/from16 v18, v2

    invoke-virtual {v12, v7, v0, v15, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    :goto_7
    add-float/2addr v15, v3

    add-float/2addr v7, v15

    if-eqz v14, :cond_e

    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_e
    add-int/2addr v10, v13

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_4

    :cond_f
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->e0:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->f0:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->g0:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->h0:F

    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->e0:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->f0:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->g0:F

    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->h0:F

    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->g0:F

    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->f0:F

    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->h0:F

    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->e0:F

    return-object p0
.end method

.method public final q()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->S:Z

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Y:Z

    if-eqz v5, :cond_9

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->T:Lcom/badlogic/gdx/utils/FloatArray;

    if-nez v5, :cond_0

    new-instance v5, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->T:Lcom/badlogic/gdx/utils/FloatArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    :goto_0
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->T:Lcom/badlogic/gdx/utils/FloatArray;

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->b0:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->c0:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->f0:F

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->h0:F

    add-float/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v9

    sub-float/2addr v9, v8

    iget-boolean v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->W:Z

    const/4 v11, -0x1

    if-eqz v10, :cond_1

    add-int/lit8 v1, v3, -0x1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x1

    :goto_1
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-eq v1, v3, :cond_7

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v15, v14, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_3

    check-cast v14, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v15

    cmpl-float v16, v15, v9

    if-lez v16, :cond_2

    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    :cond_2
    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v14

    goto :goto_3

    :cond_3
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v15

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v14

    :goto_3
    cmpl-float v16, v10, v4

    if-lez v16, :cond_4

    move/from16 v16, v6

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    add-float v16, v15, v16

    add-float v17, v10, v16

    cmpl-float v17, v17, v9

    if-lez v17, :cond_6

    cmpl-float v17, v10, v4

    if-lez v17, :cond_6

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    add-float/2addr v10, v8

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    const/4 v4, 0x0

    cmpl-float v10, v13, v4

    if-lez v10, :cond_5

    add-float/2addr v13, v7

    :cond_5
    add-float/2addr v13, v12

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto :goto_5

    :cond_6
    move/from16 v15, v16

    :goto_5
    add-float/2addr v10, v15

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    add-int/2addr v1, v11

    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    add-float/2addr v10, v8

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    const/4 v1, 0x0

    cmpl-float v1, v13, v1

    if-lez v1, :cond_8

    add-float/2addr v13, v7

    :cond_8
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    add-float/2addr v13, v12

    invoke-static {v1, v13}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    goto :goto_8

    :cond_9
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->f0:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->h0:F

    add-float/2addr v4, v5

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->b0:F

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    :goto_6
    if-ge v1, v3, :cond_b

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v5, :cond_a

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    goto :goto_7

    :cond_a
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    :goto_8
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->e0:F

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->g0:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->X:Z

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Q:F

    :cond_c
    return-void
.end method

.method public final r()V
    .locals 29

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->getPrefHeight()F

    move-result v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->R:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->R:F

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidateHierarchy()V

    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->X:Z

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->b0:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->d0:F

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->c0:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->f0:F

    sub-float/2addr v7, v8

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->h0:F

    sub-float/2addr v7, v8

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->e0:F

    sub-float v8, v1, v8

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v9

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->f0:F

    const/high16 v11, -0x40800000    # -1.0f

    and-int/lit8 v12, v2, 0x2

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v12

    sub-float/2addr v12, v1

    :goto_0
    add-float/2addr v8, v12

    goto :goto_1

    :cond_1
    and-int/lit8 v12, v2, 0x4

    if-nez v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v12

    sub-float/2addr v12, v1

    div-float/2addr v12, v13

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Z:Z

    const/4 v14, 0x1

    if-eqz v12, :cond_3

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->T:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    add-float/2addr v1, v11

    sub-float/2addr v8, v1

    const/high16 v11, 0x3f800000    # 1.0f

    :cond_3
    and-int/lit8 v1, v2, 0x10

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    sub-float v1, v9, v1

    :goto_2
    add-float/2addr v10, v1

    goto :goto_3

    :cond_4
    and-int/lit8 v1, v2, 0x8

    if-nez v1, :cond_5

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->P:F

    sub-float v1, v9, v1

    div-float/2addr v1, v13

    goto :goto_2

    :cond_5
    :goto_3
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->h0:F

    sub-float/2addr v9, v1

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->T:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v12

    iget v15, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->W:Z

    const/16 v17, -0x1

    const/16 v18, 0x0

    if-eqz v14, :cond_6

    add-int/lit8 v15, v15, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    goto :goto_4

    :cond_6
    move v13, v15

    const/4 v14, 0x1

    const/4 v15, 0x0

    :goto_4
    const/16 v17, 0x0

    const/4 v0, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_5
    if-eq v15, v13, :cond_14

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v12

    move-object/from16 v12, v20

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/16 v20, 0x0

    move/from16 v22, v13

    instance-of v13, v12, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v13, :cond_8

    move-object/from16 v20, v12

    check-cast v20, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v13

    cmpl-float v23, v13, v9

    if-lez v23, :cond_7

    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    :cond_7
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v23

    goto :goto_6

    :cond_8
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v13

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v23

    :goto_6
    add-float v24, v18, v13

    cmpl-float v24, v24, v9

    if-gtz v24, :cond_a

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v27, v19

    move/from16 v19, v7

    move/from16 v7, v27

    move/from16 v28, v18

    move/from16 v18, v9

    move/from16 v9, v28

    goto :goto_a

    :cond_a
    :goto_7
    move/from16 v18, v9

    iget v9, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v9, v9, -0x2

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_b

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    sub-float v9, v7, v9

    :goto_8
    add-float/2addr v9, v10

    goto :goto_9

    :cond_b
    and-int/lit8 v9, v1, 0x8

    if-nez v9, :cond_c

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    sub-float v9, v7, v9

    const/high16 v16, 0x40000000    # 2.0f

    div-float v9, v9, v16

    goto :goto_8

    :cond_c
    move v9, v10

    :goto_9
    move/from16 v19, v7

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    if-lez v0, :cond_d

    mul-float v24, v6, v11

    add-float v8, v8, v24

    :cond_d
    mul-float v24, v7, v11

    add-float v8, v8, v24

    add-int/lit8 v0, v0, 0x2

    :goto_a
    cmpl-float v24, v5, v17

    if-lez v24, :cond_e

    mul-float v23, v7, v5

    :cond_e
    move/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v23, v2

    if-eqz v20, :cond_f

    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v2

    cmpl-float v25, v2, v17

    if-lez v25, :cond_f

    cmpl-float v25, v0, v2

    if-lez v25, :cond_f

    move v0, v2

    :cond_f
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_10

    sub-float v2, v7, v0

    add-float/2addr v2, v8

    const/high16 v16, 0x40000000    # 2.0f

    goto :goto_b

    :cond_10
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_11

    sub-float v2, v7, v0

    const/high16 v16, 0x40000000    # 2.0f

    div-float v2, v2, v16

    add-float/2addr v2, v8

    goto :goto_b

    :cond_11
    const/high16 v16, 0x40000000    # 2.0f

    move v2, v8

    :goto_b
    if-eqz v3, :cond_12

    move/from16 v25, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v26, v3

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v12, v1, v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_c

    :cond_12
    move/from16 v25, v1

    move/from16 v26, v3

    invoke-virtual {v12, v9, v2, v13, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    :goto_c
    add-float/2addr v13, v4

    add-float v0, v9, v13

    if-eqz v20, :cond_13

    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_13
    add-int/2addr v15, v14

    move/from16 v9, v18

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v2, v23

    move/from16 v1, v25

    move/from16 v3, v26

    move/from16 v18, v0

    move/from16 v0, v24

    move/from16 v27, v19

    move/from16 v19, v7

    move/from16 v7, v27

    goto/16 :goto_5

    :cond_14
    return-void
.end method

.method public reverse()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->W:Z

    return-object p0
.end method

.method public reverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->W:Z

    return-object p0
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    return-object p0
.end method

.method public rowAlign(I)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    return-object p0
.end method

.method public rowBottom()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    or-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    return-object p0
.end method

.method public rowCenter()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    return-object p0
.end method

.method public rowLeft()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    return-object p0
.end method

.method public rowRight()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    return-object p0
.end method

.method public rowTop()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    or-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->V:I

    return-object p0
.end method

.method public setRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->X:Z

    return-void
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->b0:F

    return-object p0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    or-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->U:I

    return-object p0
.end method

.method public wrap()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Y:Z

    return-object p0
.end method

.method public wrap(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Y:Z

    return-object p0
.end method

.method public wrapReverse()Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Z:Z

    return-object p0
.end method

.method public wrapReverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->Z:Z

    return-object p0
.end method

.method public wrapSpace(F)Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/HorizontalGroup;->c0:F

    return-object p0
.end method
