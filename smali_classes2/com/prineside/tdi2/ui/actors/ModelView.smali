.class public Lcom/prineside/tdi2/ui/actors/ModelView;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;
    }
.end annotation


# static fields
.field public static final rotateModelAround:Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;


# instance fields
.field public F:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

.field public G:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public H:Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;

.field public I:Z

.field public J:F

.field public K:Z

.field public L:Ljava/lang/String;

.field public M:Z

.field public camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

.field public environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

.field public height:I

.field public model:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

.field public modelCache:Lcom/badlogic/gdx/graphics/g3d/ModelCache;

.field public modelCacheUpdateRequired:Z

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/ui/actors/ModelView$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/actors/ModelView$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/actors/ModelView;->rotateModelAround:Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;

    return-void
.end method

.method public constructor <init>(IILcom/prineside/tdi2/ui/actors/ModelView$Transformer;Lcom/badlogic/gdx/graphics/g3d/Environment;Z)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    if-nez p4, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;-><init>()V

    new-instance v9, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-direct {v10}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;-><init>()V

    const/high16 v11, 0x3f400000    # 0.75f

    const/high16 v12, 0x3f400000    # 0.75f

    const/high16 v13, 0x3f400000    # 0.75f

    const/high16 v14, -0x41000000    # -0.5f

    const/high16 v15, -0x40800000    # -1.0f

    const v16, -0x41b33333    # -0.2f

    invoke-virtual/range {v10 .. v16}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->set(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    :goto_0
    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/ModelView;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/ModelView;->H:Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;

    move/from16 v1, p5

    iput-boolean v1, v0, Lcom/prineside/tdi2/ui/actors/ModelView;->M:Z

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/ModelCache;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/ModelView;->modelCache:Lcom/badlogic/gdx/graphics/g3d/ModelCache;

    invoke-virtual/range {p0 .. p2}, Lcom/prineside/tdi2/ui/actors/ModelView;->setSize(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/actors/ModelView;->requireModelCacheUpdate()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/actors/ModelView;->requireRedraw()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 5

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->J:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->J:F

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->H:Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0, p1, v0}, Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;->transform(Lcom/prineside/tdi2/ui/actors/ModelView;FF)V

    :cond_1
    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->M:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ModelView;->updateModelCacheIfRequired()V

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->I:Z

    goto/16 :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->I:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->K:Z

    if-eqz p1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->model:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->F:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->begin()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4100

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/RenderingManager;->modelBatch:Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->begin(Lcom/badlogic/gdx/graphics/Camera;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ModelView;->updateModelCacheIfRequired()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/RenderingManager;->modelBatch:Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->modelCache:Lcom/badlogic/gdx/graphics/g3d/ModelCache;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/RenderingManager;->modelBatch:Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->end()V

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->K:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->F:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->F:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v0, p1, v1, v2}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixels(IIIIZ)[B

    move-result-object p1

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->F:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->F:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getHeight()I

    move-result v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p1

    invoke-static {p1, v0, v2, v3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([BILjava/nio/Buffer;I)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->L:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->K:Z

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->F:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->end()V

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->I:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->F:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->modelCache:Lcom/badlogic/gdx/graphics/g3d/ModelCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->F:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 10

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->model:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->M:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/RenderingManager;->modelBatch:Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->begin(Lcom/badlogic/gdx/graphics/Camera;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/RenderingManager;->modelBatch:Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->modelCache:Lcom/badlogic/gdx/graphics/g3d/ModelCache;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/RenderingManager;->modelBatch:Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->end()V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->G:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v7

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v8

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v9

    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_0
    return-void
.end method

.method public requireModelCacheUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->modelCacheUpdateRequired:Z

    return-void
.end method

.method public requireRedraw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->I:Z

    return-void
.end method

.method public saveScreenshot(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->K:Z

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->L:Ljava/lang/String;

    return-void
.end method

.method public setEnvironment(Lcom/badlogic/gdx/graphics/g3d/Environment;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ModelView;->requireRedraw()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Environment can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setModel(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;F)V
    .locals 2

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->model:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, p2, p2, p2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslationAndScaling(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ModelView;->requireModelCacheUpdate()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ModelView;->requireRedraw()V

    return-void
.end method

.method public setModelPart(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Material;F)V
    .locals 7

    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;ZZZ)V

    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object p1

    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iput-object p3, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    invoke-virtual {p0, v6, p4}, Lcom/prineside/tdi2/ui/actors/ModelView;->setModel(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;F)V

    return-void
.end method

.method public setSize(II)V
    .locals 4

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v1, 0x18

    if-ge p2, v1, :cond_1

    :cond_0
    const/16 p1, 0x20

    const/16 p2, 0x20

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->width:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->height:I

    if-eq v0, p2, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->F:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->dispose()V

    :cond_3
    iput p2, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->height:I

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->width:I

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->M:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_4

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v3, 0x1

    invoke-direct {v0, v2, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->F:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->G:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    int-to-float v0, p2

    div-float v0, v1, v0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->G:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->G:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->G:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v3

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->G:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->G:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v2, v2}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    :cond_4
    new-instance v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    const/high16 v2, 0x42860000    # 67.0f

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, v2, p1, p2}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;-><init>(FFF)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object p1, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    const/high16 p2, 0x3e800000    # 0.25f

    const/4 v0, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    invoke-virtual {p1, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Camera;->lookAt(FFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    const p2, 0x3c23d70a    # 0.01f

    iput p2, p1, Lcom/badlogic/gdx/graphics/Camera;->near:F

    const/high16 p2, 0x43960000    # 300.0f

    iput p2, p1, Lcom/badlogic/gdx/graphics/Camera;->far:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->update()V

    :cond_5
    return-void
.end method

.method public setTransformer(Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->H:Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;

    return-void
.end method

.method public updateModelCacheIfRequired()V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->modelCacheUpdateRequired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->model:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->modelCache:Lcom/badlogic/gdx/graphics/g3d/ModelCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->modelCache:Lcom/badlogic/gdx/graphics/g3d/ModelCache;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->model:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->add(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->modelCache:Lcom/badlogic/gdx/graphics/g3d/ModelCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ModelView"

    const-string v2, "failed to update model cache"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ModelView;->modelCacheUpdateRequired:Z

    :cond_1
    return-void
.end method
