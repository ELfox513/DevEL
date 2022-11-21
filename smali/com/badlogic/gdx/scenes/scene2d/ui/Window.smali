.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
    }
.end annotation


# static fields
.field public static final I0:Lcom/badlogic/gdx/math/Vector2;

.field public static final J0:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public A0:Z

.field public B0:I

.field public C0:Z

.field public D0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public E0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public F0:Z

.field public G0:I

.field public H0:Z

.field public x0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

.field public y0:Z

.field public z0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->I0:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->J0:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-direct {p0, p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->y0:Z

    const/16 v1, 0x8

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->B0:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->C0:Z

    if-eqz p1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setClip(Z)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->A(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->D0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setEllipsis(Z)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->E0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->D0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->E0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    const/high16 p1, 0x43160000    # 150.0f

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "title cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 11

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage()V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->x0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->stageBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->I0:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->J0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v0

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v7, v0, v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v0

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v8, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v0

    iget v1, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v9, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v0

    iget v1, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v10, v0, v1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->z(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFF)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method public getPrefWidth()F
    .locals 3

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->E0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->x0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    return-object v0
.end method

.method public getTitleLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->D0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method public getTitleTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->E0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->z0:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object p3

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne p3, v1, :cond_2

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result p3

    if-eqz v0, :cond_5

    if-ne v0, p0, :cond_3

    goto :goto_1

    :cond_3
    cmpg-float v1, p2, p3

    if-gtz v1, :cond_5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v1

    sub-float/2addr p3, v1

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_5

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_5

    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p2

    if-eq p2, p0, :cond_4

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->H0:Z

    return v0
.end method

.method public isModal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->z0:Z

    return v0
.end method

.method public isMovable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->y0:Z

    return v0
.end method

.method public isResizable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->A0:Z

    return v0
.end method

.method public keepWithinStage()V
    .locals 11

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->C0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v1

    instance-of v2, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX(I)F

    move-result v5

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v3, v7

    iget v9, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float v10, v8, v9

    cmpl-float v5, v5, v10

    if-lez v5, :cond_2

    div-float v5, v8, v9

    add-float/2addr v6, v5

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY(I)F

    move-result v5

    invoke-virtual {p0, v6, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FFI)V

    :cond_2
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX(I)F

    move-result v5

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v5, v6

    neg-float v3, v3

    div-float/2addr v3, v7

    iget v9, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v3, v9

    cmpg-float v3, v5, v3

    if-gez v3, :cond_3

    div-float/2addr v8, v9

    sub-float/2addr v6, v8

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY(I)F

    move-result v3

    invoke-virtual {p0, v6, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FFI)V

    :cond_3
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY(I)F

    move-result v4

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v4, v5

    div-float v5, v0, v7

    iget v6, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float v6, v5, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX(I)F

    move-result v4

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float v8, v5, v8

    add-float/2addr v6, v8

    invoke-virtual {p0, v4, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FFI)V

    :cond_4
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY(I)F

    move-result v4

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v4, v6

    neg-float v0, v0

    div-float/2addr v0, v7

    iget v6, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v0, v6

    cmpg-float v0, v4, v0

    if-gez v0, :cond_9

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX(I)F

    move-result v0

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    div-float/2addr v5, v2

    sub-float/2addr v1, v5

    invoke-virtual {p0, v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FFI)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V

    :cond_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getRight()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_7

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V

    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_8

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    :cond_8
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getTop()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    :cond_9
    :goto_0
    return-void
.end method

.method public setKeepWithinStage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->C0:Z

    return-void
.end method

.method public setModal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->z0:Z

    return-void
.end method

.method public setMovable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->y0:Z

    return-void
.end method

.method public setResizable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->A0:Z

    return-void
.end method

.method public setResizeBorder(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->B0:I

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->x0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->D0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidateHierarchy()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->u(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->E0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput p4, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result p3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result p4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->E0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    sub-float/2addr v1, p4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->E0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    sub-float/2addr v1, p3

    invoke-virtual {v0, p4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->F0:Z

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->E0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->F0:Z

    return-void
.end method

.method public z(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFF)V
    .locals 6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->x0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->stageBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method
