.class public Lcom/prineside/tdi2/CameraController$BasicAnimation;
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
    name = "BasicAnimation"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:D

.field public d:F

.field public e:Lcom/prineside/tdi2/CameraController;

.field public f:F

.field public g:F

.field public h:D

.field public i:F

.field public j:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>(FFDFLcom/badlogic/gdx/math/Interpolation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->f:F

    iput p2, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->g:F

    iput-wide p3, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->h:D

    iput p5, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->i:F

    iput-object p6, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->j:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    return-void
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->d:F

    iget v1, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->i:F

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

    iput v1, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->a:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->b:F

    iget-wide v0, p1, Lcom/prineside/tdi2/CameraController;->zoom:D

    iput-wide v0, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->c:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->d:F

    iput-object p1, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->e:Lcom/prineside/tdi2/CameraController;

    return-void
.end method

.method public update(F)V
    .locals 7

    iget v0, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->d:F

    iget p1, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->i:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->d:F

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->j:Lcom/badlogic/gdx/math/Interpolation;

    iget v1, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->d:F

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p1

    iget v0, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->a:F

    iget v1, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->f:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->b:F

    iget v2, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->g:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->e:Lcom/prineside/tdi2/CameraController;

    iget-object v2, v2, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v2, v0, v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->e:Lcom/prineside/tdi2/CameraController;

    iget-wide v1, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->c:D

    iget-wide v3, p0, Lcom/prineside/tdi2/CameraController$BasicAnimation;->h:D

    sub-double/2addr v3, v1

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/prineside/tdi2/CameraController;->zoom:D

    invoke-virtual {v0}, Lcom/prineside/tdi2/CameraController;->updateCamera()V

    return-void
.end method
