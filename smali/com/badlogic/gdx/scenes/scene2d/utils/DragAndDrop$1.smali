.class Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->addSource(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

.field public final synthetic q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v6, p4

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->q:I

    if-eq v6, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    move-object/from16 v7, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v1, v7, v2, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v8

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v9, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v1

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v2

    const/high16 v3, 0x4f000000

    invoke-virtual {v9, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v3

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->m:F

    add-float/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v4

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->n:F

    add-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v5

    const/4 v11, 0x1

    invoke-virtual {v5, v3, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    const/4 v12, 0x0

    if-nez v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :cond_4
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-boolean v12, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->f:Z

    const/4 v13, 0x0

    if-eqz v5, :cond_6

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->g:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v14, v14, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->g:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v15, v14, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v15

    if-nez v15, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, v14, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-object v1, v14

    goto :goto_2

    :cond_6
    move-object v1, v13

    :goto_2
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eq v1, v3, :cond_8

    if-eqz v3, :cond_7

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->reset(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;)V

    :cond_7
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    :cond_8
    if-eqz v1, :cond_9

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v3, v14, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->t:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v15, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    move v4, v5

    move v5, v15

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->drag(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;FFI)Z

    move-result v1

    iput-boolean v1, v14, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->f:Z

    :cond_9
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v2, :cond_b

    iget-boolean v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->f:Z

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_3

    :cond_a
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :goto_3
    move-object v13, v2

    :cond_b
    if-nez v13, :cond_c

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v13, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_c
    if-eq v13, v9, :cond_f

    if-eqz v9, :cond_d

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->d:Z

    if-eqz v1, :cond_d

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_d
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v13, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    const/4 v11, 0x0

    :goto_4
    iput-boolean v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->d:Z

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->d:Z

    if-eqz v1, :cond_f

    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_f
    if-nez v13, :cond_10

    return-void

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v1

    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->k:F

    add-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v2

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->l:F

    add-float/2addr v2, v4

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->s:Z

    if-eqz v3, :cond_15

    cmpg-float v3, v1, v10

    if-gez v3, :cond_11

    const/4 v1, 0x0

    :cond_11
    cmpg-float v3, v2, v10

    if-gez v3, :cond_12

    goto :goto_5

    :cond_12
    move v10, v2

    :goto_5
    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    :cond_13
    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    add-float/2addr v2, v10

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_14

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    goto :goto_6

    :cond_14
    move v2, v10

    :cond_15
    :goto_6
    invoke-virtual {v13, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    return-void
.end method

.method public dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 4

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget p3, p2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->q:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->stop()V

    return-void

    :cond_0
    iput p4, p2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->q:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v2, p3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->p:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->o:J

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iput-object p2, p3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->getTouchDownX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->getTouchDownY()F

    move-result v1

    invoke-virtual {p2, p1, v0, v1, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    move-result-object p2

    iput-object p2, p3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->stop()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->r:Z

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    return-void
.end method

.method public dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->q:I

    move/from16 v9, p4

    if-eq v9, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->q:I

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-wide v4, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->o:J

    const/4 v10, 0x0

    cmp-long v6, v1, v4

    if-gez v6, :cond_2

    iput-boolean v10, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->f:Z

    goto :goto_0

    :cond_2
    iget-boolean v1, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->f:Z

    if-nez v1, :cond_3

    iget-object v1, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->m:F

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v2

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->n:F

    add-float/2addr v2, v4

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget v6, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v4, v2

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->drag(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;FFI)Z

    move-result v2

    iput-boolean v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->f:Z

    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_4

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->d:Z

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_4
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->f:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->m:F

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v2

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->n:F

    add-float/2addr v2, v4

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget v6, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v4, v2

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->drop(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;FFI)V

    :cond_5
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-boolean v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->f:Z

    const/4 v11, 0x0

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    goto :goto_1

    :cond_6
    move-object v1, v11

    :goto_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object v9, v1

    invoke-virtual/range {v3 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;)V

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v2, :cond_7

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->p:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->reset(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;)V

    :cond_7
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->q:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->e:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iput-boolean v10, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->f:Z

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method
