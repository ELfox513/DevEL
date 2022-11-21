.class Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;
.super Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->recreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public final synthetic d:[Z

.field public final synthetic e:[F

.field public final synthetic f:[F

.field public final synthetic g:[F

.field public final synthetic h:Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

.field public final synthetic i:Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

.field public final synthetic j:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;[Z[F[F[FLcom/badlogic/gdx/graphics/g3d/environment/PointLight;Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->j:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->d:[Z

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->e:[F

    iput-object p4, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->f:[F

    iput-object p5, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->g:[F

    iput-object p6, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->h:Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iput-object p7, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->i:Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;-><init>()V

    const/high16 p1, 0x41a00000    # 20.0f

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->a:F

    const/high16 p1, 0x43b40000    # 360.0f

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->b:F

    const/high16 p1, 0x41c80000    # 25.0f

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->c:F

    return-void
.end method


# virtual methods
.method public transform(Lcom/prineside/tdi2/ui/actors/ModelView;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->d:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->c:F

    mul-float v2, v2, p2

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->e:[F

    aget v6, v5, v3

    iget v7, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->b:F

    neg-float v8, v7

    cmpg-float v8, v6, v8

    if-gez v8, :cond_0

    neg-float v6, v7

    aput v6, v5, v3

    goto :goto_0

    :cond_0
    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    aput v7, v5, v3

    :cond_1
    :goto_0
    aget v6, v5, v3

    cmpg-float v7, v6, v4

    if-gez v7, :cond_2

    iget v7, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->a:F

    cmpl-float v7, v7, v4

    if-gtz v7, :cond_3

    :cond_2
    cmpl-float v7, v6, v4

    if-lez v7, :cond_4

    iget v7, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->a:F

    cmpg-float v7, v7, v4

    if-gez v7, :cond_4

    :cond_3
    iget v7, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->a:F

    neg-float v7, v7

    iput v7, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->a:F

    :cond_4
    iget v7, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->a:F

    cmpg-float v8, v6, v7

    if-gez v8, :cond_5

    add-float/2addr v6, v2

    aput v6, v5, v3

    cmpl-float v2, v6, v7

    if-lez v2, :cond_6

    aput v7, v5, v3

    goto :goto_1

    :cond_5
    cmpl-float v8, v6, v7

    if-lez v8, :cond_6

    sub-float/2addr v6, v2

    aput v6, v5, v3

    cmpg-float v2, v6, v7

    if-gez v2, :cond_6

    aput v7, v5, v3

    :cond_6
    :goto_1
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->f:[F

    aget v6, v2, v3

    aget v5, v5, v3

    mul-float v5, v5, p2

    add-float/2addr v6, v5

    aput v6, v2, v3

    :cond_7
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->f:[F

    aget v5, v2, v3

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    aput v5, v2, v3

    sget-object v2, Lcom/badlogic/gdx/math/Interpolation;->circleOut:Lcom/badlogic/gdx/math/Interpolation;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->g:[F

    aget v5, v5, v3

    const v6, 0x3f933333    # 1.15f

    div-float/2addr v5, v6

    const v6, 0x3f7d70a4    # 0.99f

    mul-float v5, v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v2

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->f:[F

    aget v5, v5, v3

    const v7, 0x3f866666    # 1.05f

    mul-float v7, v7, v2

    invoke-static {v4, v4, v5, v7}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    if-eqz v1, :cond_b

    iget-object v7, v1, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    if-eqz v7, :cond_a

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    if-eqz v7, :cond_9

    if-eqz v5, :cond_8

    iget v8, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->g:[F

    aget v9, v9, v3

    iget v10, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v7, v1, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v4, v6, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->f:[F

    aget v7, v7, v3

    const/high16 v8, 0x42b40000    # 90.0f

    sub-float/2addr v7, v8

    const/high16 v9, 0x3e800000    # 0.25f

    const v10, 0x3e99999a    # 0.3f

    const v11, 0x3f333333    # 0.7f

    mul-float v11, v11, v2

    add-float/2addr v11, v10

    mul-float v11, v11, v9

    invoke-static {v4, v4, v7, v11}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, v1, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    const v9, 0x3eb33333    # 0.35f

    mul-float v2, v2, v9

    invoke-virtual {v7, v4, v2, v4}, Lcom/badlogic/gdx/graphics/Camera;->lookAt(FFF)V

    iget-object v2, v1, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->update()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->f:[F

    aget v2, v2, v3

    const/high16 v7, 0x42340000    # 45.0f

    sub-float/2addr v2, v7

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v4, v4, v2, v7}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->h:Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    iget v13, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v14, 0x40400000    # 3.0f

    iget v15, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v16, 0x40a00000    # 5.0f

    invoke-virtual/range {v9 .. v16}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(FFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iget v2, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->f:[F

    aget v5, v5, v3

    sub-float/2addr v5, v8

    invoke-static {v2, v4, v5, v6}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->i:Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    const v8, 0x3f0ccccd    # 0.55f

    const v9, 0x3f0ccccd    # 0.55f

    const v10, 0x3f0ccccd    # 0.55f

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;->g:[F

    aget v3, v4, v3

    add-float v12, v3, v6

    iget v13, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v14, 0x41200000    # 10.0f

    invoke-virtual/range {v7 .. v14}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(FFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/ui/actors/ModelView;->requireRedraw()V

    return-void

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "camPos is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "modelView.camera.position is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "modelView.camera is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "modelView is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
