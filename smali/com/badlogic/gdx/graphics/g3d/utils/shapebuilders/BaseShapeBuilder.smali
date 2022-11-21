.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/badlogic/gdx/graphics/Color;

.field public static final b:Lcom/badlogic/gdx/graphics/Color;

.field public static final c:Lcom/badlogic/gdx/graphics/Color;

.field public static final d:Lcom/badlogic/gdx/graphics/Color;

.field public static final e:Lcom/badlogic/gdx/graphics/Color;

.field public static final f:Lcom/badlogic/gdx/math/Vector3;

.field public static final g:Lcom/badlogic/gdx/math/Vector3;

.field public static final h:Lcom/badlogic/gdx/math/Vector3;

.field public static final i:Lcom/badlogic/gdx/math/Vector3;

.field public static final j:Lcom/badlogic/gdx/math/Vector3;

.field public static final k:Lcom/badlogic/gdx/math/Vector3;

.field public static final l:Lcom/badlogic/gdx/math/Vector3;

.field public static final m:Lcom/badlogic/gdx/math/Vector3;

.field public static final n:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public static final o:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public static final p:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public static final q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public static final r:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public static final s:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public static final t:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public static final u:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public static final v:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public static final w:Lcom/badlogic/gdx/math/Matrix4;

.field public static final x:Lcom/badlogic/gdx/utils/FlushablePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/FlushablePool<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Lcom/badlogic/gdx/utils/FlushablePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/FlushablePool<",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->a:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->b:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->c:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->d:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->e:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->f:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->g:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->h:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->i:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->j:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->k:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->l:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->m:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->n:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->o:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->p:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->q:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->r:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->s:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->t:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->u:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->v:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->w:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->x:Lcom/badlogic/gdx/utils/FlushablePool;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->y:Lcom/badlogic/gdx/utils/FlushablePool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->x:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FlushablePool;->flush()V

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->y:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FlushablePool;->flush()V

    return-void
.end method

.method public static b()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->y:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FlushablePool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public static c()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;->x:Lcom/badlogic/gdx/utils/FlushablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FlushablePool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method
