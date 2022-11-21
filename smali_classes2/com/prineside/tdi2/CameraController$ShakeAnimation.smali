.class public Lcom/prineside/tdi2/CameraController$ShakeAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShakeAnimation"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:Lcom/prineside/tdi2/CameraController;

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->e:F

    iput p2, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->f:F

    return-void
.end method


# virtual methods
.method public end()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->d:Lcom/prineside/tdi2/CameraController;

    iget-object v0, v0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->a:F

    iget v2, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->b:F

    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->d:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v0}, Lcom/prineside/tdi2/CameraController;->updateCamera()V

    return-void
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->c:F

    iget v1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start(Lcom/prineside/tdi2/CameraController;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->a:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->c:F

    iput-object p1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->d:Lcom/prineside/tdi2/CameraController;

    return-void
.end method

.method public update(F)V
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->c:F

    iget p1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->f:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->c:F

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp5Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    iget v1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->c:F

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$ExpOut;->apply(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    iget v1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->e:F

    mul-float v1, v1, p1

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p1, p1, v2

    sub-float/2addr p1, v0

    mul-float p1, p1, v1

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v3

    mul-float v3, v3, v2

    sub-float/2addr v3, v0

    mul-float v3, v3, v1

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->d:Lcom/prineside/tdi2/CameraController;

    iget-object v0, v0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->a:F

    add-float/2addr v1, p1

    iget p1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->b:F

    add-float/2addr p1, v3

    iget v2, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, p1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, p0, Lcom/prineside/tdi2/CameraController$ShakeAnimation;->d:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {p1}, Lcom/prineside/tdi2/CameraController;->updateCamera()V

    return-void
.end method
