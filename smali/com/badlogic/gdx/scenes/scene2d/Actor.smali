.class public Lcom/badlogic/gdx/scenes/scene2d/Actor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public final D:Lcom/badlogic/gdx/graphics/Color;

.field public E:Ljava/lang/Object;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public a:Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Group;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public final d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public r:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field public s:Z

.field public t:Z

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->p:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->r:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->s:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->D:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 11

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->C:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFF)V

    return-void
.end method

.method public act(F)V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->p:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-ne v4, v3, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3, v5}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v4

    :goto_1
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/2addr v2, v5

    goto :goto_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Actor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_0
    return-void
.end method

.method public addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ancestorsVisible()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->ascendantsVisible()Z

    move-result v0

    return v0
.end method

.method public ascendantsVisible()Z
    .locals 2

    move-object v0, p0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearListeners()V

    return-void
.end method

.method public clearActions()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->p:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public clearListeners()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    return-void
.end method

.method public clipBegin()Z
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipBegin(FFFF)Z

    move-result v0

    return v0
.end method

.method public clipBegin(FFFF)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v2, p3, v0

    if-lez v2, :cond_3

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/badlogic/gdx/math/Rectangle;->tmp:Lcom/badlogic/gdx/math/Rectangle;

    iput p1, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput p2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput p3, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput p4, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const-class p1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public clipEnd()V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 0

    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    return-void
.end method

.method public e(Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Group;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-void
.end method

.method public f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-void
.end method

.method public fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    :cond_0
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_3

    aget-object v4, v1, v2

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getBubbles()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    goto :goto_2

    :cond_6
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_8

    aget-object v5, v1, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public firstAscendant(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_2

    move-object v0, p0

    :cond_0
    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isInstance(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public getActions()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->p:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getCaptureListeners()Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->D:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->t:Z

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    return v0
.end method

.method public getListeners()Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    return v0
.end method

.method public getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getRight()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->C:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    return v0
.end method

.method public getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method public getTop()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->r:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->E:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    return v0
.end method

.method public getX(I)F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    :goto_0
    add-float/2addr v0, p1

    goto :goto_1

    :cond_0
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    return v0
.end method

.method public getY(I)F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    :goto_0
    add-float/2addr v0, p1

    goto :goto_1

    :cond_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getZIndex()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public hasActions()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->p:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasKeyboardFocus()Z
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParent()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScrollFocus()Z
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->r:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-eq p3, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    :cond_1
    const/4 p3, 0x0

    cmpl-float v1, p1, p3

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    cmpl-float p1, p2, p3

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0
.end method

.method public isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    if-eqz p1, :cond_2

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    if-eqz p1, :cond_2

    move-object v0, p0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public isTouchFocusListener()Z
    .locals 5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isTouchFocusTarget()Z
    .locals 5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->z:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isTouchable()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->r:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->s:Z

    return v0
.end method

.method public localToActorCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public localToAscendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    move-object v0, p0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToParentCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p1, :cond_0

    return-object p2

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Actor is not an ascendant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public localToParentCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 10

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->C:F

    neg-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v0

    if-nez v5, :cond_0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v3

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v4

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v0

    mul-float v6, v6, v1

    add-float/2addr v6, v0

    add-float/2addr v6, v3

    iput v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v5

    mul-float v0, v0, v2

    add-float/2addr v0, v5

    add-float/2addr v0, v4

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    :cond_1
    const v5, 0x3c8efa35

    mul-float v0, v0, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v0, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    iget v8, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v8, v6

    mul-float v8, v8, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v7

    mul-float v1, v1, v2

    mul-float v2, v8, v0

    mul-float v9, v1, v5

    add-float/2addr v2, v9

    add-float/2addr v2, v6

    add-float/2addr v2, v3

    iput v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v5

    mul-float v8, v8, v2

    mul-float v1, v1, v0

    add-float/2addr v8, v1

    add-float/2addr v8, v7

    add-float/2addr v8, v4

    iput v8, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_0
    return-object p1
.end method

.method public localToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToAscendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToAscendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public moveBy(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b()V

    :cond_1
    return-void
.end method

.method public notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z
    .locals 5

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    :goto_0
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setCapture(Z)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    :cond_2
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->handle()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Actor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The event target cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 10

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->C:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v0

    if-nez v5, :cond_0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v3

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v4

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v3

    sub-float/2addr v6, v0

    div-float/2addr v6, v1

    add-float/2addr v6, v0

    iput v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v4

    sub-float/2addr v0, v5

    div-float/2addr v0, v2

    add-float/2addr v0, v5

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    :cond_1
    const v5, 0x3c8efa35

    mul-float v0, v0, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v0, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    iget v8, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v8, v3

    sub-float/2addr v8, v6

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v7

    mul-float v4, v8, v0

    mul-float v9, v3, v5

    add-float/2addr v4, v9

    div-float/2addr v4, v1

    add-float/2addr v4, v6

    iput v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v1, v5

    mul-float v8, v8, v1

    mul-float v3, v3, v0

    add-float/2addr v8, v3

    div-float/2addr v8, v2

    add-float/2addr v8, v7

    iput v8, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_0
    return-object p1
.end method

.method public remove()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Action;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->p:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    return-void
.end method

.method public removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rotateBy(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->C:F

    add-float/2addr v0, p1

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->C:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->c()V

    :cond_0
    return-void
.end method

.method public scaleBy(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d()V

    :cond_0
    return-void
.end method

.method public scaleBy(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d()V

    :cond_1
    return-void
.end method

.method public screenToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public setBounds(FFFF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b()V

    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    cmpl-float p1, p1, p3

    if-nez p1, :cond_2

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float p1, p1, p4

    if-eqz p1, :cond_3

    :cond_2
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_3
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->D:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->D:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->t:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/badlogic/gdx/scenes/scene2d/Stage;->I:Z

    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->q:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    return-void
.end method

.method public setOrigin(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x8

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    :goto_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    goto :goto_1

    :cond_2
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    div-float/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    :goto_1
    return-void
.end method

.method public setOriginX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    return-void
.end method

.method public setOriginY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->z:F

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b()V

    :cond_1
    return-void
.end method

.method public setPosition(FFI)V
    .locals 2

    and-int/lit8 v0, p3, 0x10

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    :goto_0
    sub-float/2addr p1, v0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    :goto_2
    sub-float/2addr p2, p3

    goto :goto_3

    :cond_2
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_3

    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    div-float/2addr p3, v1

    goto :goto_2

    :cond_3
    :goto_3
    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    cmpl-float p3, p3, p1

    if-nez p3, :cond_4

    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    cmpl-float p3, p3, p2

    if-eqz p3, :cond_5

    :cond_4
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b()V

    :cond_5
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->C:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->C:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->c()V

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d()V

    :cond_1
    return-void
.end method

.method public setScale(FF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d()V

    :cond_1
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->A:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->B:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->d()V

    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_1
    return-void
.end method

.method public setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->r:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->E:Ljava/lang/Object;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->s:Z

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b()V

    :cond_0
    return-void
.end method

.method public setX(FI)V
    .locals 1

    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_0

    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    :goto_0
    sub-float/2addr p1, p2

    goto :goto_1

    :cond_0
    and-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_1

    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->u:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b()V

    :cond_2
    return-void
.end method

.method public setY(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b()V

    :cond_0
    return-void
.end method

.method public setY(FI)V
    .locals 1

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    :goto_0
    sub-float/2addr p1, p2

    goto :goto_1

    :cond_0
    and-int/lit8 p2, p2, 0x4

    if-nez p2, :cond_1

    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->v:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b()V

    :cond_2
    return-void
.end method

.method public setZIndex(I)Z
    .locals 4

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->F:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    return v1

    :cond_1
    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0, p0, v3}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0, p1, p0}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    return v3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ZIndex cannot be < 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sizeBy(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_0
    return-void
.end method

.method public sizeBy(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->w:F

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_1
    return-void
.end method

.method public sizeChanged()V
    .locals 0

    return-void
.end method

.method public stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p1
.end method

.method public toBack()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    return-void
.end method

.method public toFront()V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
