.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/InputListener;"
    }
.end annotation


# static fields
.field public static h:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public final b:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

.field public final c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->h:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->getInstance()Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;

    invoke-direct {p2, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V
    .locals 6

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->g:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->maxWidth:F

    const/high16 v3, 0x4f000000

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->pack()V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->offsetX:F

    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->offsetY:F

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->edgeDistance:F

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->h:Lcom/badlogic/gdx/math/Vector2;

    add-float/2addr p2, v2

    sub-float v2, p3, v3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    sub-float/2addr v2, v5

    invoke-virtual {v4, p2, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->h:Lcom/badlogic/gdx/math/Vector2;

    add-float/2addr p3, v3

    invoke-virtual {v2, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    :cond_1
    iget p2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_2

    iput v1, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    :cond_2
    iget p2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result p3

    sub-float/2addr p3, v1

    cmpl-float p2, p2, p3

    if-lez p2, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result p2

    sub-float/2addr p2, v1

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p3

    sub-float/2addr p2, p3

    iput p2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    :cond_3
    iget p2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result p3

    sub-float/2addr p3, v1

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result p2

    sub-float/2addr p2, v1

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result p3

    sub-float/2addr p2, p3

    iput p2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    :cond_4
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget p3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->h:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p2, p3, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result p2

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget p3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p2, p3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p5    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    return-void

    :cond_0
    iget-boolean p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->f:Z

    if-eqz p4, :cond_1

    sget-object p4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {p4}, Lcom/badlogic/gdx/Input;->isTouched()Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    if-eqz p5, :cond_2

    invoke-virtual {p5, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result p4

    if-eqz p4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->enter(Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p5    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->hide()V

    return-void
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object v0
.end method

.method public getManager()Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    return-object v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->hide(Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;)V

    return-void
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public setAlways(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->e:Z

    return-void
.end method

.method public setInstant(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->d:Z

    return-void
.end method

.method public setTouchIndependent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->f:Z

    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->d:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toFront()V

    return p2

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;)V

    return p2
.end method
