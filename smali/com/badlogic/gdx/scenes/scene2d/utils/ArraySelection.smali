.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public u:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field public v:Z

.field public w:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->v:Z

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->u:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public choose(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->v:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->q:Z

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v0, :cond_7

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->w:Ljava/lang/Object;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->u:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_7

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->w:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->i()V

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->u:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, p1, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    if-le v0, p1, :cond_3

    move v4, v0

    move v0, p1

    move p1, v4

    :cond_3
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    :cond_4
    :goto_1
    if-gt v0, p1, :cond_5

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->u:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->g()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->d()V

    :goto_2
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->w:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->e()V

    return-void

    :cond_7
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->w:Ljava/lang/Object;

    return-void

    :cond_8
    :goto_3
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->w:Ljava/lang/Object;

    return-void
.end method

.method public getRangeSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->v:Z

    return v0
.end method

.method public setRangeSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->v:Z

    return-void
.end method

.method public validate()V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->u:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->r:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->d()V

    :cond_4
    :goto_1
    return-void
.end method
