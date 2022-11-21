.class Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:F

.field public final synthetic c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->t0:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->K0:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_2
    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v0, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->t0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    :cond_3
    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v0, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->o0:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    return v3

    :cond_4
    iget-boolean v0, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->n0:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v0, :cond_7

    iget-object p5, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p5, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result p5

    if-eqz p5, :cond_7

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->stop()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->k0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    iget p2, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->b:F

    iput-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->i0:Z

    iput p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->K0:I

    return v1

    :cond_5
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget p3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    iget-object p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget p4, p4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object p5, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    iget p5, p5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float p2, p2, p5

    if-gez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    :goto_0
    int-to-float p2, v2

    mul-float p4, p4, p2

    add-float/2addr p3, p4

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollX(F)V

    return v1

    :cond_7
    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v0, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->n0:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz v0, :cond_a

    iget-object p5, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p5, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result p5

    if-eqz p5, :cond_a

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->stop()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->k0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    iget p2, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->b:F

    iput-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->j0:Z

    iput p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->K0:I

    return v1

    :cond_8
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    iget-object p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget p4, p4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object p5, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    iget p5, p5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float p3, p3, p5

    if-gez p3, :cond_9

    const/4 v2, 0x1

    :cond_9
    int-to-float p3, v2

    mul-float p4, p4, p3

    add-float/2addr p2, p4

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollY(F)V

    return v1

    :cond_a
    return v3
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 4

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->K0:I

    if-eq p4, v0, :cond_0

    return-void

    :cond_0
    iget-boolean p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->i0:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    iget-object p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->k0:Lcom/badlogic/gdx/math/Vector2;

    iget p4, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float p4, p2, p4

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->b:F

    add-float/2addr v1, p4

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->b:F

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v1

    iget-object p4, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    iget p4, p4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v2, p4

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v3, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v2, v3

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1

    iget v0, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr p1, v0

    div-float/2addr p1, v2

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollPercentX(F)V

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->k0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_2
    iget-boolean p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->j0:Z

    if-eqz p4, :cond_4

    iget-object p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->k0:Lcom/badlogic/gdx/math/Vector2;

    iget p4, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float p4, p3, p4

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->b:F

    add-float/2addr v1, p4

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->b:F

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v1

    iget-object p4, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    iget p4, p4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v2, p4

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v3, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v2, v3

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr p1, v1

    div-float/2addr p1, v2

    sub-float/2addr v0, p1

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollPercentY(F)V

    :cond_3
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->k0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_4
    :goto_0
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->K0:I

    if-eq p4, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancel()V

    return-void
.end method
