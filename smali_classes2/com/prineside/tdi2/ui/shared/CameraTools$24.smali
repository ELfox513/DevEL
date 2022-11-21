.class Lcom/prineside/tdi2/ui/shared/CameraTools$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/CameraTools;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$24;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$24;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->f(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/prineside/tdi2/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$24;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->getSelectedScenario()Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$24;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->g(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->calculate(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_0

    :cond_0
    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    :goto_0
    iget v3, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_1

    :cond_1
    iget v3, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/prineside/tdi2/CameraController;->lookAt(FF)V

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v1, v0, Lcom/prineside/tdi2/CameraController;->zoom:D

    goto :goto_2

    :cond_2
    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    float-to-double v1, v1

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/CameraController;->setZoom(D)V

    :cond_3
    return-void
.end method
