.class public Lcom/badlogic/gdx/graphics/g3d/ModelBatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/Camera;

.field public final b:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

.field public final d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

.field public final p:Z

.field public final q:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

.field public final r:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->b:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    if-nez p3, :cond_0

    new-instance p3, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;

    invoke-direct {p3}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->r:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    const/4 p3, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->p:Z

    if-nez p1, :cond_2

    new-instance p1, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;

    invoke-direct {v0, p3, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(II)V

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;)V

    :cond_2
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->k:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    if-nez p2, :cond_3

    new-instance p2, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;

    invoke-direct {p2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>()V

    :cond_3
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->q:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    return-void
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->a:Lcom/badlogic/gdx/graphics/Camera;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->a:Lcom/badlogic/gdx/graphics/Camera;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->p:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->k:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->begin()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Call end() first."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->q:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v0}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    return-void
.end method

.method public end()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->flush()V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->k:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->end()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->a:Lcom/badlogic/gdx/graphics/Camera;

    return-void
.end method

.method public flush()V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->r:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->a:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;->sort(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/utils/Array;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    if-eq v0, v3, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/Shader;->end()V

    :cond_0
    iget-object v0, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->a:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->k:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Shader;->begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V

    :cond_1
    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/Shader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/Shader;->end()V

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->b:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FlushablePool;->flush()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->a:Lcom/badlogic/gdx/graphics/Camera;

    return-object v0
.end method

.method public getRenderContext()Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->k:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    return-object v0
.end method

.method public getRenderableSorter()Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->r:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    return-object v0
.end method

.method public getShaderProvider()Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->q:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    return-object v0
.end method

.method public ownsRenderContext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->p:Z

    return v0
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->q:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v0

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->b:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->q:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v0

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->b:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iput-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->q:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v0

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->b:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iput-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iput-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->q:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v0

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->b:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iput-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->q:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v0

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/Environment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/Environment;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;",
            "Lcom/badlogic/gdx/graphics/g3d/Shader;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;Lcom/badlogic/gdx/graphics/g3d/Shader;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/badlogic/gdx/graphics/g3d/Shader;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Shader;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->a:Lcom/badlogic/gdx/graphics/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->d:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->flush()V

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->a:Lcom/badlogic/gdx/graphics/Camera;

    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Call begin() first."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
