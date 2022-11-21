.class Lcom/prineside/tdi2/ui/actors/ModelView$1;
.super Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/actors/ModelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Lcom/prineside/tdi2/ui/actors/ModelView;FF)V
    .locals 2

    iget-object p3, p1, Lcom/prineside/tdi2/ui/actors/ModelView;->model:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float p2, p2, v1

    invoke-virtual {p3, v0, p2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    iget-object p2, p1, Lcom/prineside/tdi2/ui/actors/ModelView;->model:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/ModelView;->requireModelCacheUpdate()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/ModelView;->requireRedraw()V

    return-void
.end method
