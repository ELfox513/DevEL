.class public Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;


# instance fields
.field public M:Z

.field public N:Z

.field public O:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->M:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->O:Z

    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->M:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->O:Z

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
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method public getMaxHeight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidateHierarchy()V

    return-void
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->M:Z

    return-void
.end method

.method public invalidateHierarchy()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidateHierarchy()V

    :cond_0
    return-void
.end method

.method public layout()V
    .locals 0

    return-void
.end method

.method public needsLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->M:Z

    return v0
.end method

.method public final p(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object p1

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v3, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->setLayoutEnabled(Z)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p0, v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->p(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public pack()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    return-void
.end method

.method public setFillParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->N:Z

    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->O:Z

    invoke-virtual {p0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->p(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V

    return-void
.end method

.method public sizeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    return-void
.end method

.method public validate()V
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->O:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->N:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->M:Z

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->M:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layout()V

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->M:Z

    if-eqz v2, :cond_6

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_6

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->M:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layout()V

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->M:Z

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method
