.class public Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;
.super Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraGestureListener"
.end annotation


# instance fields
.field public a:F

.field public controller:Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public fling(FFI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public longPress(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public pan(FFFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public tap(FFII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public touchDown(FFII)Z
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;->a:F

    const/4 p1, 0x0

    return p1
.end method

.method public zoom(FF)Z
    .locals 3

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;->a:F

    sub-float p1, p2, p1

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;->a:F

    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;->controller:Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;

    cmpl-float v2, p2, v0

    if-lez v2, :cond_0

    move p2, v0

    :cond_0
    div-float/2addr p1, p2

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->b(F)Z

    move-result p1

    return p1
.end method
