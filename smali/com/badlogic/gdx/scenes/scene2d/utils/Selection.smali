.class public Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/OrderedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/badlogic/gdx/utils/OrderedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field public k:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/lang/Object;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d:Lcom/badlogic/gdx/utils/OrderedSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->s:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d()V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->i()V

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v2, :cond_4

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->s:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->g()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->e()V

    return-void
.end method

.method public choose(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->i()V

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->p:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->e()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->q:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->p:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-ne v3, v1, :cond_5

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->e()V

    return-void

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    move v2, v1

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_8

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->e()V

    return-void

    :cond_8
    :try_start_3
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->g()V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->e()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->e()V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->i()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->g()V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d()V

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->e()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    return-void
.end method

.method public fireChangeEvent()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    throw v1
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->first()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll(Lcom/badlogic/gdx/utils/OrderedSet;)V

    return-void
.end method

.method public getLastSelected()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiple()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->q:Z

    return v0
.end method

.method public getRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->r:Z

    return v0
.end method

.method public getToggle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->p:Z

    return v0
.end method

.method public hasItems()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll(Lcom/badlogic/gdx/utils/OrderedSet;)V

    return-void
.end method

.method public isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->k:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public items()Lcom/badlogic/gdx/utils/OrderedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d()V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->i()V

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v2, :cond_4

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->s:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->g()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->e()V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->first()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->i()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->g()V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d()V

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->e()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v2, :cond_4

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->s:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->g()V

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->d()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->e()V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->k:Z

    return-void
.end method

.method public setMultiple(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->q:Z

    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->s:Z

    return-void
.end method

.method public setRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->r:Z

    return-void
.end method

.method public setToggle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->p:Z

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    return v0
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->b:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
