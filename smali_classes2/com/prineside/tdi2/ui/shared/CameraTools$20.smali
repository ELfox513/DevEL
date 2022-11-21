.class Lcom/prineside/tdi2/ui/shared/CameraTools$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools;->updateScenarioMenu()V
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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$20;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v8, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    invoke-direct {v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;-><init>()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$20;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->f(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/prineside/tdi2/CameraController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v7, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v8

    move-object v3, v7

    move-object v5, v7

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframe(IFLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v7, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-wide v5, v0, Lcom/prineside/tdi2/CameraController;->zoom:D

    double-to-float v6, v5

    move-object v0, v8

    move v2, v3

    move-object v3, v7

    move-object v5, v7

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframe(IFLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$20;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->c(Lcom/prineside/tdi2/ui/shared/CameraTools;)[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$20;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->d(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result v1

    aput-object v8, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$20;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->updateScenarioMenu()V

    return-void
.end method
