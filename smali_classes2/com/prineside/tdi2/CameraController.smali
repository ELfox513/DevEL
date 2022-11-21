.class public Lcom/prineside/tdi2/CameraController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/CameraController$CameraControllerListener;,
        Lcom/prineside/tdi2/CameraController$_InputProcessor;,
        Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;,
        Lcom/prineside/tdi2/CameraController$ShakeAnimation;,
        Lcom/prineside/tdi2/CameraController$BasicAnimation;,
        Lcom/prineside/tdi2/CameraController$CameraControllerTouch;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_ZOOM_MAP_SCALE:F = 1.25f

.field public static final DEFAULT_MIN_ZOOM_TILE_SIZE:F = 1.524f

.field public static final s:Lcom/badlogic/gdx/math/Rectangle;

.field public static final t:Lcom/badlogic/gdx/math/Vector2;

.field public static final u:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public final a:Lcom/prineside/tdi2/utils/IntRectangle;

.field public final b:Lcom/prineside/tdi2/utils/IntRectangle;

.field public c:D

.field public camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field public currentScenario:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

.field public d:D

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;

.field public m:F

.field public n:F

.field public o:Lcom/prineside/tdi2/Map;

.field public final p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/CameraController$CameraControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lcom/prineside/tdi2/CameraController$_InputProcessor;

.field public final r:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/CameraController$CameraControllerTouch;",
            ">;"
        }
    .end annotation
.end field

.field public scenarioLooped:Z

.field public scenarioTime:F

.field public zoom:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/CameraController;->s:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/CameraController;->t:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/CameraController;->u:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/prineside/tdi2/CameraController;->zoom:D

    new-instance v0, Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/IntRectangle;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/CameraController;->a:Lcom/prineside/tdi2/utils/IntRectangle;

    new-instance v0, Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/IntRectangle;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/CameraController;->b:Lcom/prineside/tdi2/utils/IntRectangle;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/prineside/tdi2/CameraController;->c:D

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Lcom/prineside/tdi2/CameraController;->d:D

    const v0, 0x3fc3126f    # 1.524f

    iput v0, p0, Lcom/prineside/tdi2/CameraController;->m:F

    const/high16 v1, 0x3fa00000    # 1.25f

    iput v1, p0, Lcom/prineside/tdi2/CameraController;->n:F

    new-instance v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v3, Lcom/prineside/tdi2/CameraController$CameraControllerListener;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/prineside/tdi2/CameraController;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v2, Lcom/prineside/tdi2/CameraController$_InputProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/prineside/tdi2/CameraController$_InputProcessor;-><init>(Lcom/prineside/tdi2/CameraController;Lcom/prineside/tdi2/CameraController$1;)V

    iput-object v2, p0, Lcom/prineside/tdi2/CameraController;->q:Lcom/prineside/tdi2/CameraController$_InputProcessor;

    new-instance v2, Lcom/prineside/tdi2/CameraController$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/CameraController$1;-><init>(Lcom/prineside/tdi2/CameraController;)V

    iput-object v2, p0, Lcom/prineside/tdi2/CameraController;->r:Lcom/badlogic/gdx/utils/Pool;

    iput-object p1, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iput p2, p0, Lcom/prineside/tdi2/CameraController;->e:I

    iput p3, p0, Lcom/prineside/tdi2/CameraController;->f:I

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result p1

    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/CameraController;->setScreenSize(II)V

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/CameraController;->setZoomBoundaries(FF)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->updateCamera()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/CameraController;)Lcom/badlogic/gdx/utils/Pool;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/CameraController;->r:Lcom/badlogic/gdx/utils/Pool;

    return-object p0
.end method

.method public static synthetic b()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/CameraController;->t:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/CameraController;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/CameraController;->j:I

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/CameraController;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/CameraController;->j:I

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/CameraController;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/CameraController;->k:I

    return p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/CameraController;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/CameraController;->k:I

    return p1
.end method

.method public static synthetic g()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/CameraController;->u:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/CameraController$CameraControllerListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public animate(Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->stopAnimations()V

    iput-object p1, p0, Lcom/prineside/tdi2/CameraController;->l:Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;

    invoke-interface {p1, p0}, Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;->start(Lcom/prineside/tdi2/CameraController;)V

    return-void
.end method

.method public fitMapToScreen(F)V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->stopAnimations()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/CameraController;->currentScenario:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iget v0, p0, Lcom/prineside/tdi2/CameraController;->e:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/prineside/tdi2/CameraController;->f:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/CameraController;->lookAt(FF)V

    iget v0, p0, Lcom/prineside/tdi2/CameraController;->g:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/prineside/tdi2/CameraController;->h:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/prineside/tdi2/CameraController;->e:I

    int-to-float v2, p1

    div-float/2addr v2, v0

    iget v3, p0, Lcom/prineside/tdi2/CameraController;->f:I

    int-to-float v4, v3

    div-float/2addr v4, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    int-to-float p1, v3

    div-float/2addr p1, v1

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/CameraController;->setZoom(D)V

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/CameraController;->setZoom(D)V

    :goto_0
    return-void
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->q:Lcom/prineside/tdi2/CameraController$_InputProcessor;

    return-object v0
.end method

.method public getLookPos()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getMapHeight()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/CameraController;->f:I

    return v0
.end method

.method public getMapWidth()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/CameraController;->e:I

    return v0
.end method

.method public getMaxZoom()D
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/CameraController;->d:D

    return-wide v0
.end method

.method public getMinZoom()D
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/CameraController;->c:D

    return-wide v0
.end method

.method public final h(DLcom/badlogic/gdx/math/Rectangle;)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/CameraController;->g:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, p3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v0, p0, Lcom/prineside/tdi2/CameraController;->h:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-int p1, v0

    int-to-float p1, p1

    iput p1, p3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-void
.end method

.method public final i()V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->a:Lcom/prineside/tdi2/utils/IntRectangle;

    iget-object v1, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    sub-float v6, v3, v6

    float-to-int v6, v6

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    div-float v4, v1, v5

    sub-float v4, v2, v4

    float-to-int v4, v4

    div-float/2addr v1, v5

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v6, v3, v4, v1}, Lcom/prineside/tdi2/utils/IntRectangle;->set(IIII)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_VIEWPORT_CULLING:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->a:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v1, v0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    iget v2, v0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->b:Lcom/prineside/tdi2/utils/IntRectangle;

    iget-object v1, p0, Lcom/prineside/tdi2/CameraController;->a:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v2, v1, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    add-int/lit8 v2, v2, -0x40

    iget v3, v1, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    add-int/lit8 v3, v3, 0x40

    iget v4, v1, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    add-int/lit8 v4, v4, -0x40

    iget v1, v1, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    add-int/lit8 v1, v1, 0x40

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/prineside/tdi2/utils/IntRectangle;->set(IIII)V

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/CameraController;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/CameraController$CameraControllerListener;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/prineside/tdi2/CameraController$CameraControllerListener;->onViewportUpdated(Lcom/prineside/tdi2/CameraController;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/CameraController;->i:Z

    return-void
.end method

.method public isRectVisible(Lcom/prineside/tdi2/utils/IntRectangle;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->a:Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/IntRectangle;->overlaps(Lcom/prineside/tdi2/utils/IntRectangle;)Z

    move-result p1

    return p1
.end method

.method public isRectVisibleMarginSmall(Lcom/prineside/tdi2/utils/IntRectangle;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->b:Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/IntRectangle;->overlaps(Lcom/prineside/tdi2/utils/IntRectangle;)Z

    move-result p1

    return p1
.end method

.method public final j()V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDensity()F

    move-result v0

    const/high16 v1, 0x43000000    # 128.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr v1, v0

    const v0, 0x40228f5c    # 2.54f

    mul-float v1, v1, v0

    iget v0, p0, Lcom/prineside/tdi2/CameraController;->m:F

    div-float/2addr v1, v0

    float-to-double v0, v1

    iput-wide v0, p0, Lcom/prineside/tdi2/CameraController;->c:D

    const-wide v2, 0x3fd51eb860000000L    # 0.33000001311302185

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    iput-wide v2, p0, Lcom/prineside/tdi2/CameraController;->c:D

    :cond_0
    iget-wide v0, p0, Lcom/prineside/tdi2/CameraController;->c:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    iput-wide v2, p0, Lcom/prineside/tdi2/CameraController;->c:D

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/CameraController;->e:I

    iget v1, p0, Lcom/prineside/tdi2/CameraController;->g:I

    div-int v2, v0, v1

    iget v3, p0, Lcom/prineside/tdi2/CameraController;->f:I

    iget v4, p0, Lcom/prineside/tdi2/CameraController;->h:I

    div-int v5, v3, v4

    if-ge v2, v5, :cond_2

    int-to-float v0, v3

    int-to-float v1, v4

    div-float/2addr v0, v1

    iget v1, p0, Lcom/prineside/tdi2/CameraController;->n:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/prineside/tdi2/CameraController;->d:D

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/prineside/tdi2/CameraController;->n:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/prineside/tdi2/CameraController;->d:D

    :goto_0
    iget-wide v0, p0, Lcom/prineside/tdi2/CameraController;->d:D

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    iput-wide v2, p0, Lcom/prineside/tdi2/CameraController;->d:D

    :cond_3
    iget-wide v0, p0, Lcom/prineside/tdi2/CameraController;->d:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_4

    iput-wide v2, p0, Lcom/prineside/tdi2/CameraController;->d:D

    :cond_4
    return-void
.end method

.method public lookAt(FF)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->updateCamera()V

    return-void
.end method

.method public lookAt(FFFF)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget v1, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    mul-float p3, p3, v1

    iget v0, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    mul-float p4, p4, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v1, p3

    div-float/2addr v0, v2

    sub-float/2addr v0, p4

    add-float/2addr p1, v1

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/CameraController;->lookAt(FF)V

    return-void
.end method

.method public mapToScreen(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/CameraController;->mapToViewport(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/CameraController;->viewportToScreen(Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method public mapToStage(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/CameraController;->mapToScreen(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/CameraController;->screenToStage(Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method public mapToViewport(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 5

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, v3

    iget v3, v1, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v0, v2

    iget v1, v1, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public playScenario(Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;FZ)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/CameraController;->currentScenario:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iput p2, p0, Lcom/prineside/tdi2/CameraController;->scenarioTime:F

    iput-boolean p3, p0, Lcom/prineside/tdi2/CameraController;->scenarioLooped:Z

    return-void
.end method

.method public realUpdate(F)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->currentScenario:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/prineside/tdi2/CameraController;->scenarioTime:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/prineside/tdi2/CameraController;->scenarioTime:F

    iget p1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    int-to-float v3, p1

    iget v4, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    iget-boolean v3, p0, Lcom/prineside/tdi2/CameraController;->scenarioLooped:Z

    if-eqz v3, :cond_0

    int-to-float p1, p1

    int-to-float v3, v4

    div-float/2addr p1, v3

    rem-float/2addr v2, p1

    iput v2, p0, Lcom/prineside/tdi2/CameraController;->scenarioTime:F

    iget p1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->startFrame:I

    int-to-float p1, p1

    int-to-float v3, v4

    div-float/2addr p1, v3

    add-float/2addr v2, p1

    iput v2, p0, Lcom/prineside/tdi2/CameraController;->scenarioTime:F

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    int-to-float v2, v4

    div-float/2addr p1, v2

    iput p1, p0, Lcom/prineside/tdi2/CameraController;->scenarioTime:F

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iget v2, p0, Lcom/prineside/tdi2/CameraController;->scenarioTime:F

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->calculate(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_2

    :cond_2
    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    :goto_2
    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_3

    :cond_3
    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    :goto_3
    iget-object v5, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/prineside/tdi2/CameraController;->zoom:D

    goto :goto_4

    :cond_4
    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    float-to-double v2, v0

    :goto_4
    iput-wide v2, p0, Lcom/prineside/tdi2/CameraController;->zoom:D

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->updateCamera()V

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/CameraController;->currentScenario:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->l:Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;->update(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/CameraController;->l:Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;

    invoke-interface {p1}, Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;->isDone()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->stopAnimations()V

    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/prineside/tdi2/CameraController;->o:Lcom/prineside/tdi2/Map;

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/prineside/tdi2/CameraController;->i:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/prineside/tdi2/CameraController;->i:Z

    iget-object p1, p1, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_6
    if-ge v1, p1, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->o:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Tile;

    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/CameraController;->isRectVisible(Lcom/prineside/tdi2/utils/IntRectangle;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method public removeListener(Lcom/prineside/tdi2/CameraController$CameraControllerListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public screenToMap(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/CameraController;->screenToViewport(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v3

    iput v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    div-float/2addr v0, v4

    sub-float/2addr v1, v0

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public screenToStage(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/prineside/tdi2/CameraController;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, v0

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public screenToViewport(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/prineside/tdi2/CameraController;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    mul-float v0, v0, v2

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/prineside/tdi2/CameraController;->h:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iget v0, v1, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    mul-float v2, v2, v0

    iput v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public setMap(Lcom/prineside/tdi2/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/CameraController;->o:Lcom/prineside/tdi2/Map;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/CameraController;->i:Z

    return-void
.end method

.method public setMapSize(II)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/CameraController;->e:I

    iput p2, p0, Lcom/prineside/tdi2/CameraController;->f:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->j()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->updateCamera()V

    return-void
.end method

.method public setScreenSize(II)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/16 p1, 0x500

    const/16 p2, 0x2d0

    :cond_1
    iput p1, p0, Lcom/prineside/tdi2/CameraController;->g:I

    iput p2, p0, Lcom/prineside/tdi2/CameraController;->h:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->j()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->updateCamera()V

    return-void
.end method

.method public setZoom(D)V
    .locals 4

    iput-wide p1, p0, Lcom/prineside/tdi2/CameraController;->zoom:D

    iget-wide v0, p0, Lcom/prineside/tdi2/CameraController;->c:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    iput-wide v0, p0, Lcom/prineside/tdi2/CameraController;->zoom:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/prineside/tdi2/CameraController;->d:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/prineside/tdi2/CameraController;->zoom:D

    :cond_1
    :goto_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DebugManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string p2, "Zoom"

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/prineside/tdi2/CameraController;->zoom:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-float p2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->updateCamera()V

    return-void
.end method

.method public setZoomBoundaries(FF)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/CameraController;->m:F

    iput p2, p0, Lcom/prineside/tdi2/CameraController;->n:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->j()V

    return-void
.end method

.method public stageToMap(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/CameraController;->stageToScreen(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method public stageToScreen(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/CameraController;->h:I

    int-to-float v0, v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, v0

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/prineside/tdi2/CameraController;->h:I

    int-to-float v1, v1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public stopAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController;->l:Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/CameraController;->l:Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;

    :cond_0
    return-void
.end method

.method public stopScenario()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/CameraController;->currentScenario:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    return-void
.end method

.method public updateCamera()V
    .locals 12

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iget v0, p0, Lcom/prineside/tdi2/CameraController;->h:I

    int-to-float v0, v0

    mul-float v1, v1, v0

    const/high16 v0, 0x44960000    # 1200.0f

    mul-float v0, v0, v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    mul-float v2, v2, v1

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    mul-float v4, v4, v1

    sget-object v1, Lcom/prineside/tdi2/CameraController;->s:Lcom/badlogic/gdx/math/Rectangle;

    iget-wide v5, p0, Lcom/prineside/tdi2/CameraController;->zoom:D

    invoke-virtual {p0, v5, v6, v1}, Lcom/prineside/tdi2/CameraController;->h(DLcom/badlogic/gdx/math/Rectangle;)V

    iget-object v3, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v5, v3, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v1, v3, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    float-to-double v6, v0

    iget-wide v8, p0, Lcom/prineside/tdi2/CameraController;->zoom:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v6, v8

    double-to-float v0, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    double-to-float v6, v6

    iget v7, p0, Lcom/prineside/tdi2/CameraController;->e:I

    int-to-float v10, v7

    add-float/2addr v10, v0

    add-float/2addr v10, v6

    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v10, v10, v5

    if-gtz v10, :cond_0

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    div-int/lit8 v7, v7, 0x2

    int-to-float v5, v7

    iput v5, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_0

    :cond_0
    neg-float v0, v0

    div-float v10, v5, v11

    add-float/2addr v0, v10

    int-to-float v7, v7

    add-float/2addr v7, v6

    div-float/2addr v5, v11

    sub-float/2addr v7, v5

    iget-object v5, v3, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v10, v6, v0

    if-gez v10, :cond_1

    iput v0, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_0

    :cond_1
    cmpl-float v0, v6, v7

    if-lez v0, :cond_2

    iput v7, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    :cond_2
    :goto_0
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v8

    double-to-float v0, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    double-to-float v2, v4

    iget v4, p0, Lcom/prineside/tdi2/CameraController;->f:I

    int-to-float v5, v4

    add-float/2addr v5, v0

    add-float/2addr v5, v2

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_3

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_1

    :cond_3
    neg-float v2, v2

    div-float v5, v1, v11

    add-float/2addr v2, v5

    int-to-float v4, v4

    add-float/2addr v4, v0

    div-float/2addr v1, v11

    sub-float/2addr v4, v1

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v5, v1, v2

    if-gez v5, :cond_4

    iput v2, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_1

    :cond_4
    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    iput v4, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController;->i()V

    return-void
.end method

.method public viewportToScreen(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    div-float/2addr v0, v2

    iget v2, p0, Lcom/prineside/tdi2/CameraController;->g:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/prineside/tdi2/CameraController;->h:I

    int-to-float v0, v0

    mul-float v1, v1, v0

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method
