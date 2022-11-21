.class public Lcom/badlogic/gdx/graphics/g3d/ModelCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/ModelCache$Sorter;,
        Lcom/badlogic/gdx/graphics/g3d/ModelCache$TightMeshPool;,
        Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;,
        Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/utils/FlushablePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/FlushablePool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/utils/FlushablePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/FlushablePool<",
            "Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

.field public r:Z

.field public s:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

.field public t:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

.field public u:Lcom/badlogic/gdx/graphics/Camera;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$Sorter;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$Sorter;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$SimpleMeshPool;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelCache;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->b:Lcom/badlogic/gdx/utils/FlushablePool;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$2;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelCache;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->d:Lcom/badlogic/gdx/utils/FlushablePool;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->k:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->p:Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->s:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->t:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

    new-instance p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/g3d/Material;I)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->b:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FlushablePool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v2, 0x0

    iput v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iput v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iput p2, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, p2, p2, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->userData:Ljava/lang/Object;

    iget-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Can only add items to the ModelCache in between .begin() and .end()"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->p:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->b:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->p:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->add(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public add(Ljava/lang/Iterable;)V
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

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->add(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public begin()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->begin(Lcom/badlogic/gdx/graphics/Camera;)V

    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->r:Z

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->u:Lcom/badlogic/gdx/graphics/Camera;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->b:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/FlushablePool;->flush()V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->d:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/FlushablePool;->flush()V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->t:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;->flush()V

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Call end() after calling begin()"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->t:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

    invoke-interface {v0}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot dispose a ModelCache in between .begin() and .end()"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->r:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->r:Z

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->k:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->s:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->u:Lcom/badlogic/gdx/graphics/Camera;

    invoke-interface {v3, v4, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;->sort(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->k:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v3

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->d:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/FlushablePool;->obtain()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    const-string v8, ""

    invoke-virtual {v6, v8, v2, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object v6

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v4, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a(Lcom/badlogic/gdx/graphics/g3d/Material;I)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->k:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_9

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v12

    iget-object v13, v11, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-object v14, v11, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v14, v14, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v15

    iget-object v1, v11, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, v11, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v1

    goto :goto_2

    :cond_2
    iget-object v1, v11, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    :goto_2
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getNumVertices()I

    move-result v10

    add-int/2addr v10, v1

    const/high16 v1, 0x10000

    if-gt v10, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v15, :cond_4

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_5

    if-ne v14, v2, :cond_5

    const/4 v10, 0x1

    invoke-virtual {v13, v4, v10}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->same(Lcom/badlogic/gdx/graphics/g3d/Attributes;Z)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    if-nez v10, :cond_8

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->t:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getNumVertices()I

    move-result v4

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getNumIndices()I

    move-result v10

    invoke-interface {v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;->obtain(Lcom/badlogic/gdx/graphics/VertexAttributes;II)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v1

    :goto_6
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v3, :cond_6

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move v5, v3

    goto :goto_6

    :cond_6
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V

    move-object v3, v12

    :cond_7
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->d:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/FlushablePool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v1, v8, v14, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object v1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v4, v6, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iput v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v4, v6, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iput v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a(Lcom/badlogic/gdx/graphics/g3d/Material;I)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v4, v13

    move v2, v14

    :cond_8
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    iget-object v10, v11, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    iget-object v10, v11, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v11, v10, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v12, v10, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    invoke-virtual {v1, v11, v12, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_9
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->t:Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getNumVertices()I

    move-result v4

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getNumIndices()I

    move-result v7

    invoke-interface {v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$MeshPool;->obtain(Lcom/badlogic/gdx/graphics/VertexAttributes;II)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v1

    :goto_7
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v3, :cond_a

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move v5, v3

    goto :goto_7

    :cond_a
    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v2, v6, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v2, v6, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    return-void

    :cond_b
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Call begin() prior to calling end()"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    iget-boolean p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->r:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Cannot render a ModelCache in between .begin() and .end()"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
