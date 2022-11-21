.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# instance fields
.field public P:F

.field public Q:F

.field public R:F

.field public S:F

.field public T:F

.field public U:F

.field public V:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->V:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v0, 0x43160000    # 150.0f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public getMaxHeight()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->V:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->q()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->U:F

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->V:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->q()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->T:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->V:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->q()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->S:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->V:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->q()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->R:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->V:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->q()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->Q:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->V:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->q()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->P:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->V:Z

    return-void
.end method

.method public layout()V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->V:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->q()V

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    instance-of v6, v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final q()V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->V:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->P:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->Q:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->R:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->S:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->T:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->U:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v3, :cond_5

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->P:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->P:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->Q:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->Q:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->R:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->R:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->S:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->S:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v5

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v4

    goto :goto_1

    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->P:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->P:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->Q:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->Q:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->R:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->R:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->S:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->S:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    cmpl-float v6, v5, v1

    if-lez v6, :cond_2

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->T:F

    cmpl-float v7, v6, v1

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_2
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->T:F

    :cond_2
    cmpl-float v5, v4, v1

    if-lez v5, :cond_4

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->U:F

    cmpl-float v6, v5, v1

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_3
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->U:F

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
