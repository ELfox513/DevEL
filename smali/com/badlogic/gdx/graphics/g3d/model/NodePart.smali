.class public Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bones:[Lcom/badlogic/gdx/math/Matrix4;

.field public enabled:Z

.field public invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field public material:Lcom/badlogic/gdx/graphics/g3d/Material;

.field public meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/ArrayMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const-class v3, Lcom/badlogic/gdx/math/Matrix4;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->putAll(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p1, :cond_2

    array-length p1, p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eq p1, v0, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget p1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    new-array p1, p1, [Lcom/badlogic/gdx/math/Matrix4;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v1, v0

    if-ge p1, v1, :cond_5

    aget-object v1, v0, p1

    if-nez v1, :cond_4

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    aput-object v1, v0, p1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object p0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;-><init>()V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->a(Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    move-result-object v0

    return-object v0
.end method

.method public setRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->set(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    return-object p1
.end method
