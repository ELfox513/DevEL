.class Lcom/prineside/tdi2/ui/shared/CameraTools$23;
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
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/CameraTools;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$23;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$23;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$23;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->f(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/prineside/tdi2/CameraController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$23;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$23;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/CameraTools;->g(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->getKeyframe(I)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$23;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$23;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/CameraTools;->g(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result v4

    iget-object v5, v1, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iX:Lcom/prineside/tdi2/enums/InterpolationType;

    iget v8, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v9, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iY:Lcom/prineside/tdi2/enums/InterpolationType;

    iget-wide v10, v1, Lcom/prineside/tdi2/CameraController;->zoom:D

    double-to-float v1, v10

    iget-object v10, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iZ:Lcom/prineside/tdi2/enums/InterpolationType;

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v1

    invoke-virtual/range {v3 .. v10}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframe(IFLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    goto :goto_0

    :cond_0
    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$23;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$23;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->g(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result v12

    iget-object v2, v1, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v18, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-wide v1, v1, Lcom/prineside/tdi2/CameraController;->zoom:D

    double-to-float v1, v1

    move-object/from16 v14, v18

    move-object/from16 v16, v18

    move/from16 v17, v1

    invoke-virtual/range {v11 .. v18}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframe(IFLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    :goto_0
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$23;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->e(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$23;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->i(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    :cond_1
    return-void
.end method
