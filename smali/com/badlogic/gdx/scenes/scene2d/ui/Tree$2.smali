.class Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->getTouchDownY()F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object p3

    if-eq p1, p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object p3, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getMultiple()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object p3, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->notEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object p3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez p3, :cond_2

    iput-object p1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    :cond_2
    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object p3, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    :cond_3
    iget-object p3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result p3

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result p1

    cmpl-float v0, p3, p1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1, p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->H(Lcom/badlogic/gdx/utils/Array;FF)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1, p3, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->H(Lcom/badlogic/gdx/utils/Array;FF)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/OrderedSet;->orderedItems()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iput-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-void

    :cond_5
    iget-object p3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget p3, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez p3, :cond_8

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object p3, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getMultiple()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result p3

    if-nez p3, :cond_8

    :cond_6
    iget-object p3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result p3

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->f:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->U:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    add-float/2addr v1, v0

    sub-float/2addr p3, v1

    :cond_7
    cmpg-float p2, p2, p3

    if-gez p2, :cond_8

    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->isSelectable()Z

    move-result p2

    if-nez p2, :cond_9

    return-void

    :cond_9
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iput-object p1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    :cond_a
    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p5    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p5, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    :cond_1
    return-void
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    const/4 p1, 0x0

    return p1
.end method
