.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/EventListener;


# static fields
.field public static final e:Lcom/badlogic/gdx/math/Vector2;

.field public static final f:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public final a:Lcom/badlogic/gdx/input/GestureDetector;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

.field public c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->e:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->f:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/high16 v0, 0x41a00000    # 20.0f

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v3, 0x4f000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/badlogic/gdx/input/GestureDetector;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;

    invoke-direct {v5, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;)V

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    iput-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->a:Lcom/badlogic/gdx/input/GestureDetector;

    return-void
.end method


# virtual methods
.method public fling(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    return-void
.end method

.method public getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->a:Lcom/badlogic/gdx/input/GestureDetector;

    return-object v0
.end method

.method public getTouchDownTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 9

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$2;->a:[I

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v8, 0x1

    if-eq v0, v8, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->b:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->a:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/badlogic/gdx/input/GestureDetector;->touchDragged(FFI)Z

    return v8

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isTouchFocusCancel()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->a:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-virtual {p1}, Lcom/badlogic/gdx/input/GestureDetector;->reset()V

    return v1

    :cond_3
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->b:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->a:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector;->touchUp(FFII)Z

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    return v8

    :cond_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->a:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector;->touchDown(FFII)Z

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getTouchFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V

    :cond_5
    return v8
.end method

.method public longPress(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public pan(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)V
    .locals 0

    return-void
.end method

.method public panStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    return-void
.end method

.method public pinch(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0

    return-void
.end method

.method public tap(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    return-void
.end method

.method public zoom(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    return-void
.end method
