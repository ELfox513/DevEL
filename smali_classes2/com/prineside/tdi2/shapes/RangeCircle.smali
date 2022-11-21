.class public Lcom/prineside/tdi2/shapes/RangeCircle;
.super Lcom/prineside/tdi2/Shape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/shapes/RangeCircle$RangeCircleFactory;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public d:F

.field public k:F

.field public p:Lcom/badlogic/gdx/graphics/Color;

.field public q:F

.field public r:Z

.field public s:Z

.field public final t:Lcom/prineside/tdi2/shapes/Circle;

.field public final u:Lcom/prineside/tdi2/shapes/Circle;

.field public final v:Lcom/prineside/tdi2/shapes/Circle;

.field public final w:Lcom/prineside/tdi2/shapes/Circle;

.field public final x:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Shape;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->p:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->r:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->s:Z

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->x:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/Circle$CircleFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/shapes/Circle;

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->t:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/shapes/Circle;

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->u:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/shapes/Circle;

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->v:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/Circle;

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->w:Lcom/prineside/tdi2/shapes/Circle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/shapes/RangeCircle$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/shapes/RangeCircle;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->s:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->u:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/Circle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->t:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/Circle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->w:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/Circle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->v:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/Circle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Circle is not set up yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->p:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getMaxRadius()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->k:F

    return v0
.end method

.method public getMinRadius()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->d:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->a:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->b:F

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/RangeCircle;->s:Z

    return-void
.end method

.method public setup(FFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v1, p5

    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v13

    iget-object v2, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->p:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->x:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->x:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v14

    const/high16 v15, 0x41000000    # 8.0f

    const/high16 v16, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    cmpl-float v1, v11, v2

    if-lez v1, :cond_5

    iput-boolean v8, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->r:Z

    iget-boolean v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->s:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->d:F

    cmpl-float v1, v1, v11

    if-nez v1, :cond_4

    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->k:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->a:F

    cmpl-float v1, v1, v9

    if-nez v1, :cond_2

    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->b:F

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->q:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->u:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v13, v14}, Lcom/prineside/tdi2/shapes/Circle;->setColor(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->t:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v13, v13}, Lcom/prineside/tdi2/shapes/Circle;->setColor(FF)V

    goto :goto_2

    :cond_2
    :goto_0
    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->q:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->u:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v9, v10, v13, v14}, Lcom/prineside/tdi2/shapes/Circle;->setPositionAndColor(FFFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->t:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v9, v10, v13, v13}, Lcom/prineside/tdi2/shapes/Circle;->setPositionAndColor(FFFF)V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->u:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v9, v10}, Lcom/prineside/tdi2/shapes/Circle;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->t:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v9, v10}, Lcom/prineside/tdi2/shapes/Circle;->setPosition(FF)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->u:Lcom/prineside/tdi2/shapes/Circle;

    sub-float v2, v12, v11

    mul-float v2, v2, v16

    sub-float v5, v12, v2

    const/16 v6, 0x20

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move v7, v13

    move v8, v14

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/shapes/Circle;->setup(FFFFIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->t:Lcom/prineside/tdi2/shapes/Circle;

    add-float v5, v11, v15

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/shapes/Circle;->setup(FFFFIFF)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->r:Z

    :cond_6
    :goto_2
    iget-boolean v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->s:Z

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->d:F

    cmpl-float v1, v1, v11

    if-nez v1, :cond_b

    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->k:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->a:F

    cmpl-float v1, v1, v9

    if-nez v1, :cond_9

    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->b:F

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->q:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->w:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v14, v13}, Lcom/prineside/tdi2/shapes/Circle;->setColor(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->v:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v13, v13}, Lcom/prineside/tdi2/shapes/Circle;->setColor(FF)V

    goto :goto_5

    :cond_9
    :goto_3
    iget v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->q:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->w:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v9, v10, v14, v13}, Lcom/prineside/tdi2/shapes/Circle;->setPositionAndColor(FFFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->v:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v9, v10, v13, v13}, Lcom/prineside/tdi2/shapes/Circle;->setPositionAndColor(FFFF)V

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->w:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v9, v10}, Lcom/prineside/tdi2/shapes/Circle;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->v:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v1, v9, v10}, Lcom/prineside/tdi2/shapes/Circle;->setPosition(FF)V

    goto :goto_5

    :cond_b
    :goto_4
    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->w:Lcom/prineside/tdi2/shapes/Circle;

    sub-float v2, v12, v11

    mul-float v2, v2, v16

    add-float v4, v11, v2

    const/16 v6, 0x20

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move v7, v14

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/shapes/Circle;->setup(FFFFIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->v:Lcom/prineside/tdi2/shapes/Circle;

    sub-float v4, v12, v15

    move v7, v13

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/shapes/Circle;->setup(FFFFIFF)V

    :cond_c
    :goto_5
    iput v13, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->q:F

    iput v11, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->d:F

    iput v12, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->k:F

    iput v9, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->a:F

    iput v10, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->b:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/shapes/RangeCircle;->s:Z

    return-void
.end method
