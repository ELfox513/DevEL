.class Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public final synthetic f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->B0:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v6

    sub-float/2addr v0, v6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    const/4 v7, 0x0

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    iget-boolean v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->A0:Z

    if-eqz v7, :cond_6

    sub-float v7, v4, v1

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_6

    add-float v7, v0, v1

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_6

    sub-float v7, v5, v1

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_6

    add-float v7, v4, v1

    cmpg-float v7, p1, v7

    if-gez v7, :cond_0

    const/4 v7, 0x0

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    :cond_0
    sub-float v7, v0, v1

    cmpl-float v7, p1, v7

    if-lez v7, :cond_1

    iget v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    :cond_1
    add-float v7, v5, v1

    cmpg-float v7, p2, v7

    if-gez v7, :cond_2

    iget v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    :cond_2
    iget v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    if-eqz v7, :cond_3

    const/high16 v8, 0x41c80000    # 25.0f

    add-float/2addr v1, v8

    :cond_3
    add-float v8, v4, v1

    cmpg-float v8, p1, v8

    if-gez v8, :cond_4

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    :cond_4
    sub-float v7, v0, v1

    cmpl-float v7, p1, v7

    if-lez v7, :cond_5

    iget v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    :cond_5
    add-float/2addr v5, v1

    cmpg-float v1, p2, v5

    if-gez v1, :cond_6

    iget v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    :cond_6
    iget-boolean v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->y0:Z

    if-eqz v1, :cond_7

    iget v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    if-nez v1, :cond_7

    cmpg-float v1, p2, v2

    if-gtz v1, :cond_7

    sub-float/2addr v2, v3

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_7

    cmpl-float p2, p1, v4

    if-ltz p2, :cond_7

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_7

    const/16 p1, 0x20

    iput p1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    :cond_7
    return-void
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->z0:Z

    return p1
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->z0:Z

    return p1
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->z0:Z

    return p1
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->a(FF)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->z0:Z

    return p1
.end method

.method public scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->z0:Z

    return p1
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 1

    const/4 p1, 0x0

    const/4 p4, 0x1

    if-nez p5, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->a(FF)V

    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v0, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->H0:Z

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->b:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->c:F

    invoke-virtual {p5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p5

    sub-float/2addr p2, p5

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->d:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result p2

    sub-float/2addr p3, p2

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->e:F

    :cond_1
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget p3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    if-nez p3, :cond_2

    iget-boolean p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->z0:Z

    if-eqz p2, :cond_3

    :cond_2
    const/4 p1, 0x1

    :cond_3
    return p1
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 10

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->H0:Z

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p1

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result p4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getMinWidth()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getMaxWidth()F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getMinHeight()F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getMaxHeight()F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->C0:Z

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    and-int/lit8 v7, v6, 0x20

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->b:F

    sub-float v7, p2, v7

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->c:F

    sub-float v8, p3, v8

    add-float/2addr v0, v7

    add-float/2addr v1, v8

    :cond_2
    and-int/lit8 v7, v6, 0x8

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->b:F

    sub-float v7, p2, v7

    sub-float v9, p1, v7

    cmpg-float v9, v9, v2

    if-gez v9, :cond_3

    sub-float v7, v2, p1

    neg-float v7, v7

    :cond_3
    if-eqz v5, :cond_4

    add-float v9, v0, v7

    cmpg-float v9, v9, v8

    if-gez v9, :cond_4

    neg-float v7, v0

    :cond_4
    sub-float/2addr p1, v7

    add-float/2addr v0, v7

    :cond_5
    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->c:F

    sub-float v7, p3, v7

    sub-float v9, p4, v7

    cmpg-float v9, v9, v3

    if-gez v9, :cond_6

    sub-float v7, v3, p4

    neg-float v7, v7

    :cond_6
    if-eqz v5, :cond_7

    add-float v9, v1, v7

    cmpg-float v8, v9, v8

    if-gez v8, :cond_7

    neg-float v7, v1

    :cond_7
    sub-float/2addr p4, v7

    add-float/2addr v1, v7

    :cond_8
    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->d:F

    sub-float/2addr p2, v6

    sub-float/2addr p2, p1

    add-float v6, p1, p2

    cmpg-float v6, v6, v2

    if-gez v6, :cond_9

    sub-float p2, v2, p1

    :cond_9
    if-eqz v5, :cond_a

    add-float v2, v0, p1

    add-float/2addr v2, p2

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_a

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result p2

    sub-float/2addr p2, v0

    sub-float/2addr p2, p1

    :cond_a
    add-float/2addr p1, p2

    :cond_b
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->G0:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_e

    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->e:F

    sub-float/2addr p3, p2

    sub-float/2addr p3, p4

    add-float p2, p4, p3

    cmpg-float p2, p2, v3

    if-gez p2, :cond_c

    sub-float p3, v3, p4

    :cond_c
    if-eqz v5, :cond_d

    add-float p2, v1, p4

    add-float/2addr p2, p3

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_d

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result p2

    sub-float/2addr p2, v1

    sub-float p3, p2, p4

    :cond_d
    add-float/2addr p4, p3

    :cond_e
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->H0:Z

    return-void
.end method
