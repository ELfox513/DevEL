.class Lcom/prineside/tdi2/CameraController$_InputProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_InputProcessor"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public d:J

.field public k:Z

.field public final p:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/CameraController$CameraControllerTouch;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic q:Lcom/prineside/tdi2/CameraController;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/CameraController;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->p:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/CameraController;Lcom/prineside/tdi2/CameraController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/CameraController$_InputProcessor;-><init>(Lcom/prineside/tdi2/CameraController;)V

    return-void
.end method


# virtual methods
.method public keyDown(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public keyTyped(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public keyUp(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public mouseMoved(II)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/CameraController;->d(Lcom/prineside/tdi2/CameraController;I)I

    iget-object p1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/CameraController;->f(Lcom/prineside/tdi2/CameraController;I)I

    const/4 p1, 0x0

    return p1
.end method

.method public scrolled(FF)Z
    .locals 10

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->TOUCHES_STOP_CAMERA_SCENARIOS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/prineside/tdi2/CameraController;->currentScenario:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {p1}, Lcom/prineside/tdi2/CameraController;->stopAnimations()V

    iget-object p1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    iget-wide v0, p1, Lcom/prineside/tdi2/CameraController;->zoom:D

    invoke-static {}, Lcom/prineside/tdi2/CameraController;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-static {}, Lcom/prineside/tdi2/CameraController;->g()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-static {v3}, Lcom/prineside/tdi2/CameraController;->c(Lcom/prineside/tdi2/CameraController;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-static {v4}, Lcom/prineside/tdi2/CameraController;->e(Lcom/prineside/tdi2/CameraController;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-static {v3}, Lcom/prineside/tdi2/CameraController;->c(Lcom/prineside/tdi2/CameraController;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-static {v4}, Lcom/prineside/tdi2/CameraController;->e(Lcom/prineside/tdi2/CameraController;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/CameraController;->screenToViewport(Lcom/badlogic/gdx/math/Vector2;)V

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    iget-object v5, v4, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget v6, v5, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    div-float/2addr v3, v6

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, v5, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    div-float/2addr v2, v5

    const/4 v5, 0x0

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpl-float p2, p2, v5

    if-lez p2, :cond_1

    iget-wide v8, v4, Lcom/prineside/tdi2/CameraController;->zoom:D

    add-double/2addr v8, v6

    goto :goto_0

    :cond_1
    iget-wide v8, v4, Lcom/prineside/tdi2/CameraController;->zoom:D

    sub-double/2addr v8, v6

    :goto_0
    invoke-virtual {v4, v8, v9}, Lcom/prineside/tdi2/CameraController;->setZoom(D)V

    iget-object p2, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    iget-wide v4, p2, Lcom/prineside/tdi2/CameraController;->zoom:D

    cmpl-double v6, v4, v0

    if-eqz v6, :cond_2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1, v3, v2}, Lcom/prineside/tdi2/CameraController;->lookAt(FFFF)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public touchCancelled(IIII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public touchDown(IIII)Z
    .locals 8

    iget-object p4, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {p4}, Lcom/prineside/tdi2/CameraController;->stopAnimations()V

    sget-object p4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p4, p4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->TOUCHES_STOP_CAMERA_SCENARIOS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p4, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p4, v0, v2

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    const/4 v0, 0x0

    iput-object v0, p4, Lcom/prineside/tdi2/CameraController;->currentScenario:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    :cond_0
    const/4 p4, 0x2

    const/4 v0, 0x0

    if-le p3, p4, :cond_1

    return v0

    :cond_1
    iget-object p4, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-static {p4}, Lcom/prineside/tdi2/CameraController;->a(Lcom/prineside/tdi2/CameraController;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object p4

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;

    iget-object v1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    iget-object v2, v1, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-wide v6, v1, Lcom/prineside/tdi2/CameraController;->zoom:D

    move-object v1, p4

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->setup(IIFFD)V

    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;

    if-eqz v1, :cond_3

    iget v2, v1, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->x:I

    iput v2, v1, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->d:I

    iget v2, v1, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->y:I

    iput v2, v1, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->k:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->p:Lcom/badlogic/gdx/utils/IntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v2, :cond_3

    if-nez p3, :cond_3

    iget v2, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->a:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->b:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_3

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    iput-boolean v1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->k:Z

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, p3, p4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->a:I

    iput p2, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->b:I

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->d:J

    return v0
.end method

.method public touchDragged(III)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->p:Lcom/badlogic/gdx/utils/IntMap;

    iget v5, v4, Lcom/badlogic/gdx/utils/IntMap;->size:I

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    iget-boolean v5, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->k:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntMap;->values()Lcom/badlogic/gdx/utils/IntMap$Values;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;

    :cond_0
    if-nez v7, :cond_1

    iput-boolean v6, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->k:Z

    return v6

    :cond_1
    iget v4, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->a:I

    sub-int/2addr v4, v1

    iget v5, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->b:I

    sub-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    mul-float v4, v4, v5

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    iget-wide v7, v5, Lcom/prineside/tdi2/CameraController;->zoom:D

    const v9, 0x3b03126f    # 0.002f

    mul-float v4, v4, v9

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Lcom/prineside/tdi2/CameraController;->setZoom(D)V

    iput v1, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->a:I

    iput v2, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->b:I

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;

    if-eqz v4, :cond_9

    iget-boolean v5, v4, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->t:Z

    if-nez v5, :cond_9

    iget v5, v4, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->a:I

    sub-int v5, v1, v5

    iget v7, v4, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->b:I

    sub-int v7, v2, v7

    int-to-float v9, v5

    neg-float v9, v9

    iget-object v10, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    iget-wide v11, v10, Lcom/prineside/tdi2/CameraController;->zoom:D

    double-to-float v13, v11

    mul-float v9, v9, v13

    int-to-float v13, v7

    double-to-float v11, v11

    mul-float v13, v13, v11

    iget-object v10, v10, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v4, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->p:F

    add-float/2addr v11, v9

    iget v9, v4, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->q:F

    add-float/2addr v9, v13

    iget v12, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v10, v11, v9, v12}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v9}, Lcom/prineside/tdi2/CameraController;->updateCamera()V

    invoke-static {v5}, Ljava/lang/StrictMath;->abs(I)I

    move-result v5

    const/16 v9, 0x14

    if-gt v5, v9, :cond_3

    invoke-static {v7}, Ljava/lang/StrictMath;->abs(I)I

    move-result v5

    if-le v5, v9, :cond_9

    :cond_3
    iput-boolean v8, v4, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->u:Z

    goto/16 :goto_2

    :cond_4
    const/4 v9, 0x2

    if-ne v5, v9, :cond_9

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntMap;->values()Lcom/badlogic/gdx/utils/IntMap$Values;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v7

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;

    if-nez v5, :cond_5

    move-object v5, v10

    goto :goto_0

    :cond_5
    move-object v7, v10

    :cond_6
    iget v4, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->d:I

    int-to-float v4, v4

    iget v10, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->k:I

    int-to-float v10, v10

    iget v11, v7, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->d:I

    int-to-float v11, v11

    iget v12, v7, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->k:I

    int-to-float v12, v12

    invoke-static {v4, v10, v11, v12}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v4

    float-to-double v10, v4

    iget v4, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->x:I

    int-to-float v4, v4

    iget v12, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->y:I

    int-to-float v12, v12

    iget v13, v7, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->x:I

    int-to-float v13, v13

    iget v14, v7, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->y:I

    int-to-float v14, v14

    invoke-static {v4, v12, v13, v14}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v4

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v10

    iget-boolean v4, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->t:Z

    if-nez v4, :cond_7

    iget v4, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->x:I

    iget v10, v7, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->x:I

    add-int/2addr v4, v10

    div-int/2addr v4, v9

    int-to-float v4, v4

    iget v10, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->y:I

    iget v11, v7, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->y:I

    add-int/2addr v10, v11

    div-int/2addr v10, v9

    int-to-float v9, v10

    new-instance v10, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v10}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    invoke-virtual {v10, v4, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v4, v10}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iput-object v10, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->s:Lcom/badlogic/gdx/math/Vector2;

    iput-object v10, v7, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->s:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v16, v7

    goto :goto_1

    :cond_7
    iget-wide v10, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->r:D

    iget v4, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->x:I

    iget v14, v7, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->x:I

    add-int/2addr v4, v14

    div-int/2addr v4, v9

    iget v14, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->y:I

    iget v15, v7, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->y:I

    add-int/2addr v14, v15

    div-int/2addr v14, v9

    invoke-static {}, Lcom/prineside/tdi2/CameraController;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    int-to-float v4, v4

    int-to-float v14, v14

    invoke-virtual {v9, v4, v14}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-static {}, Lcom/prineside/tdi2/CameraController;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/prineside/tdi2/CameraController;->screenToViewport(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-static {}, Lcom/prineside/tdi2/CameraController;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    iget-object v9, v9, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    div-float/2addr v4, v9

    invoke-static {}, Lcom/prineside/tdi2/CameraController;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v14, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    iget-object v15, v14, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget v15, v15, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    div-float/2addr v9, v15

    move-object/from16 v16, v7

    iget-wide v6, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->r:D

    div-double/2addr v6, v12

    invoke-virtual {v14, v6, v7}, Lcom/prineside/tdi2/CameraController;->setZoom(D)V

    iget-object v6, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    iget-wide v12, v6, Lcom/prineside/tdi2/CameraController;->zoom:D

    cmpl-double v7, v12, v10

    if-eqz v7, :cond_8

    iget-object v7, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->s:Lcom/badlogic/gdx/math/Vector2;

    if-eqz v7, :cond_8

    iget v10, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v10, v10

    int-to-float v10, v10

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v10, v7, v4, v9}, Lcom/prineside/tdi2/CameraController;->lookAt(FFFF)V

    :cond_8
    :goto_1
    iput-boolean v8, v5, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->t:Z

    move-object/from16 v7, v16

    iput-boolean v8, v7, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->t:Z

    :cond_9
    :goto_2
    iget-object v4, v0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;

    if-eqz v3, :cond_a

    iput v1, v3, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->x:I

    iput v2, v3, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->y:I

    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method public touchUp(IIII)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->k:Z

    iget-object p2, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;

    iget-boolean p4, p2, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->t:Z

    if-nez p4, :cond_0

    iget-boolean p4, p2, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->u:Z

    if-eqz p4, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    iget-object p4, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->p:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p4, p3}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    iget-object p3, p0, Lcom/prineside/tdi2/CameraController$_InputProcessor;->q:Lcom/prineside/tdi2/CameraController;

    invoke-static {p3}, Lcom/prineside/tdi2/CameraController;->a(Lcom/prineside/tdi2/CameraController;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_2
    return p1
.end method
