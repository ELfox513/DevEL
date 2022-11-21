.class Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->u()Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public fling(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p4, 0x43160000    # 150.0f

    const/4 v0, 0x0

    cmpl-float p1, p1, p4

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p4

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz p1, :cond_1

    neg-float p1, p3

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    cmpl-float p3, p2, v0

    if-nez p3, :cond_2

    cmpl-float p3, p1, v0

    if-eqz p3, :cond_4

    :cond_2
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p4, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->s0:Z

    if-eqz p4, :cond_3

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus()V

    :cond_3
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget p4, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->u0:F

    invoke-virtual {p3, p4, p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fling(FFF)V

    :cond_4
    return-void
.end method

.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 v0, 0x0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->v0:F

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isTouchFocusCancel()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancel()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public pan(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)V
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 p4, 0x0

    :cond_0
    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-nez p2, :cond_1

    const/4 p5, 0x0

    :cond_1
    iget p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    sub-float/2addr p2, p4

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    iget p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    add-float/2addr p2, p5

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->s()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->s0:Z

    if-eqz p2, :cond_3

    cmpl-float p2, p4, p3

    if-nez p2, :cond_2

    cmpl-float p2, p5, p3

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus()V

    :cond_3
    return-void
.end method
