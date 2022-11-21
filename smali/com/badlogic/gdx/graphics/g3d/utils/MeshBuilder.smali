.class public Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;


# static fields
.field public static final L:Lcom/badlogic/gdx/utils/ShortArray;

.field public static final M:Lcom/badlogic/gdx/utils/FloatArray;

.field public static final MAX_INDEX:I = 0xffff

.field public static final MAX_VERTICES:I = 0x10000

.field public static final N:Lcom/badlogic/gdx/math/Vector3;

.field public static O:Lcom/badlogic/gdx/utils/IntIntMap;


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:Z

.field public E:[F

.field public F:Z

.field public final G:Lcom/badlogic/gdx/math/Matrix4;

.field public final H:Lcom/badlogic/gdx/math/Matrix3;

.field public final I:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field public J:I

.field public final K:Lcom/badlogic/gdx/math/Vector3;

.field public final a:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public final b:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public final c:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public final d:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field public final e:Lcom/badlogic/gdx/graphics/Color;

.field public f:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field public g:Lcom/badlogic/gdx/utils/FloatArray;

.field public h:Lcom/badlogic/gdx/utils/ShortArray;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

.field public v:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lcom/badlogic/gdx/graphics/Color;

.field public x:Z

.field public y:I

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->L:Lcom/badlogic/gdx/utils/ShortArray;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->M:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->N:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->O:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->b:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->c:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->d:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->e:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->v:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->w:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->x:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->z:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->A:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->B:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->C:F

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->D:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->F:Z

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->G:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->H:Lcom/badlogic/gdx/math/Matrix3;

    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->I:Lcom/badlogic/gdx/math/collision/BoundingBox;

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->J:I

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->K:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public static final c([FIILcom/badlogic/gdx/math/Matrix3;)V
    .locals 5

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->N:Lcom/badlogic/gdx/math/Vector3;

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v2, p0, v1

    add-int/lit8 v3, p1, 0x2

    aget v4, p0, v3

    invoke-virtual {p2, v0, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p3, p0, p1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p1, p0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->N:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v3, p0, v2

    invoke-virtual {p2, v1, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p3, p0, p1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v2

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->N:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    invoke-virtual {p2, v1, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    :goto_0
    return-void
.end method

.method public static createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-wide/16 v1, 0x1

    and-long v3, p0, v1

    const/4 v5, 0x3

    cmp-long v6, v3, v1

    if-nez v6, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x1

    const-string v3, "a_position"

    invoke-direct {v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v1, 0x2

    and-long v3, p0, v1

    const-string v6, "a_color"

    const/4 v7, 0x2

    const/4 v8, 0x4

    cmp-long v9, v3, v1

    if-nez v9, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v1, v7, v8, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v1, 0x4

    and-long v3, p0, v1

    cmp-long v9, v3, v1

    if-nez v9, :cond_2

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v1, v8, v8, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    const-wide/16 v1, 0x8

    and-long v3, p0, v1

    cmp-long v6, v3, v1

    if-nez v6, :cond_3

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v2, 0x8

    const-string v3, "a_normal"

    invoke-direct {v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    const-wide/16 v1, 0x10

    and-long/2addr p0, v1

    cmp-long v3, p0, v1

    if-nez v3, :cond_4

    new-instance p0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 p1, 0x10

    const-string v1, "a_texCoord0"

    invoke-direct {p0, p1, v7, v1}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    iget p0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array p1, p0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    return-object p0
.end method

.method public static final d([FIILcom/badlogic/gdx/math/Matrix4;)V
    .locals 5

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->N:Lcom/badlogic/gdx/math/Vector3;

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v2, p0, v1

    add-int/lit8 v3, p1, 0x2

    aget v4, p0, v3

    invoke-virtual {p2, v0, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p3, p0, p1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p1, p0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->N:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v3, p0, v2

    invoke-virtual {p2, v1, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p3, p0, p1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v2

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->N:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    invoke-virtual {p2, v1, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    :goto_0
    return-void
.end method


# virtual methods
.method public final a([FI)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    invoke-virtual {v0, p1, p2, v2}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([FII)V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->j:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->j:I

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->J:I

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->F:Z

    const/4 p2, 0x3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->l:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->m:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->G:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {p1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->d([FIILcom/badlogic/gdx/math/Matrix4;)V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->n:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    add-int/2addr p1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->H:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->c([FIILcom/badlogic/gdx/math/Matrix3;)V

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->o:I

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    add-int/2addr p1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->H:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->c([FIILcom/badlogic/gdx/math/Matrix3;)V

    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->p:I

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    add-int/2addr p1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->H:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->c([FIILcom/badlogic/gdx/math/Matrix3;)V

    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->l:I

    add-int v2, v1, v0

    aget v2, p1, v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->m:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_3

    add-int v6, v1, v0

    add-int/2addr v6, v5

    aget v6, p1, v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    if-le v3, v7, :cond_4

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    aget v4, p1, v0

    :cond_4
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->I:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {p1, v2, v6, v4}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->x:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->q:I

    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    add-int v2, v1, p1

    aget v3, v0, v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->w:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v3, v3, v6

    aput v3, v0, v2

    add-int v2, v1, p1

    add-int/2addr v2, v5

    aget v3, v0, v2

    iget v6, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v3, v3, v6

    aput v3, v0, v2

    add-int v2, v1, p1

    add-int/2addr v2, v7

    aget v3, v0, v2

    iget v6, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v3, v3, v6

    aput v3, v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->r:I

    if-le v2, p2, :cond_6

    add-int/2addr p1, v1

    add-int/2addr p1, p2

    aget p2, v0, p1

    iget v2, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float p2, p2, v2

    aput p2, v0, p1

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->s:I

    if-ltz p1, :cond_6

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->e:Lcom/badlogic/gdx/graphics/Color;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    add-int/2addr p1, v1

    aget p1, v0, p1

    invoke-static {p2, p1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->s:I

    add-int/2addr p2, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->e:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->w:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    aput v0, p1, p2

    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->D:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->t:I

    if-ltz p1, :cond_7

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p2, p2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    add-int v0, v1, p1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->z:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->A:F

    add-int v4, v1, p1

    aget v4, p2, v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    aput v2, p2, v0

    add-int v0, v1, p1

    add-int/2addr v0, v5

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->B:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->C:F

    add-int/2addr v1, p1

    add-int/2addr v1, v5

    aget p1, p2, v1

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    aput v2, p2, v0

    :cond_7
    return-void
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;)V
    .locals 2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    return-void
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->f:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-gtz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    mul-int v0, v0, v1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->M:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    iput v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->L:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    iput p3, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget-object v2, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v3, 0x0

    invoke-virtual {p1, p2, p3, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    iget-object p1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object p2, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh([F[SII)V

    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Vertex attributes do not match"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)V
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->y:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Primitive type doesn\'t match"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMesh([F[S)V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->J:I

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    div-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a([FI)V

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    :goto_1
    array-length p1, p2

    if-ge v1, p1, :cond_1

    aget-short p1, p2, v1

    const v2, 0xffff

    add-int/2addr v2, v0

    and-int/2addr p1, v2

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addMesh([F[SII)V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->O:Lcom/badlogic/gdx/utils/IntIntMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->O:Lcom/badlogic/gdx/utils/IntIntMap;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->O:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/IntIntMap;->ensureCapacity(I)V

    :goto_0
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    div-int/2addr v0, v1

    if-ge v0, p4, :cond_1

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p4, :cond_3

    add-int v1, p3, v0

    aget-short v1, p2, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->O:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    mul-int v2, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a([FI)V

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->O:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->J:I

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    move v2, v3

    :cond_2
    int-to-short v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arrow(FFFFFFFFI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFFFFI)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->u:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->I:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->I:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->u:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->u:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->I:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->u:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->k:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int v1, v2, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->u:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(JI)V
    .locals 0

    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->f:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v0, :cond_a

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->f:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->v:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->j:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->J:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->k:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->u:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v3, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    const/4 v4, 0x4

    div-int/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->E:[F

    if-eqz v5, :cond_0

    array-length v5, v5

    if-ge v5, v3, :cond_1

    :cond_0
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->E:[F

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-eqz v3, :cond_9

    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v4

    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->l:I

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->m:I

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v4

    :goto_0
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->n:I

    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v4

    :goto_1
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->o:I

    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, -0x1

    goto :goto_2

    :cond_4
    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v4

    :goto_2
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->p:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v5, -0x1

    goto :goto_3

    :cond_5
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v4

    :goto_3
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->q:I

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    iget v0, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    :goto_4
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->r:I

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, -0x1

    goto :goto_5

    :cond_7
    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v4

    :goto_5
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->s:I

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    iget p1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, p1, 0x4

    :goto_6
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->t:I

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->y:I

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->I:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    return-void

    :cond_9
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Cannot build mesh without position attribute"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Call end() first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public box(FFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFF)V

    return-void
.end method

.method public box(FFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFF)V

    return-void
.end method

.method public box(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public box(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method public box(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public capsule(FFI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CapsuleShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFI)V

    return-void
.end method

.method public circle(FIFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p14}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p16}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v19, p7

    move/from16 v20, p8

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v12, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v13, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v14, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v16, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v17, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v18, v0

    invoke-virtual/range {v4 .. v20}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->v:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->j:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->J:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->u:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-void
.end method

.method public cone(FFFI)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cone(FFFIFF)V

    return-void
.end method

.method public cone(FFFIFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ConeShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFF)V

    return-void
.end method

.method public cylinder(FFFI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFI)V

    return-void
.end method

.method public cylinder(FFFIFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFF)V

    return-void
.end method

.method public cylinder(FFFIFFZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFFZ)V

    return-void
.end method

.method public ellipse(FFFFIFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFF)V

    return-void
.end method

.method public ellipse(FFFFIFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p13}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFFFIFFFFFFFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p19}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFFFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public ellipse(FFIFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p15}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p17}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    return-void
.end method

.method public end()Lcom/badlogic/gdx/graphics/Mesh;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    div-int/2addr v1, v2

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->f:Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->b()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->f:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const-string v2, " < "

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->v:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object p1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->v:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->f:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    return-object p1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mesh can\'t hold enough indices: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mesh can\'t hold enough vertices: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " * "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Mesh attributes don\'t match"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Call begin() first"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public ensureCapacity(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    return-void
.end method

.method public ensureIndices(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    return-void
.end method

.method public ensureRectangleIndices(I)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->y:I

    if-nez v0, :cond_0

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    :goto_0
    return-void
.end method

.method public ensureRectangles(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    mul-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    return-void
.end method

.method public ensureRectangles(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    return-void
.end method

.method public ensureTriangleIndices(I)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Incorrect primtive type"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    :goto_1
    return-void
.end method

.method public ensureTriangles(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    mul-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangleIndices(I)V

    return-void
.end method

.method public ensureTriangles(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangleIndices(I)V

    return-void
.end method

.method public ensureVertices(I)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    mul-int v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->f:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getFloatsPerVertex()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    return v0
.end method

.method public getIndices([SI)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->f:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_0

    array-length v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v0, v2

    if-gt p2, v0, :cond_0

    iget-object v0, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Array too small or offset out of range"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Must be called in between #begin and #end"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMeshPart()Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->u:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getPrimitiveType()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->y:I

    return v0
.end method

.method public getVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->G:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public getVertices([FI)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->f:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_0

    array-length v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->g:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v0, v2

    if-gt p2, v0, :cond_0

    iget-object v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Array too small or offset out of range"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Must be called in between #begin and #end"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public index(S)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SS)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSS)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSS)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSSSS)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSSSSSS)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p7}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->h:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p8}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public isVertexTransformationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->F:Z

    return v0
.end method

.method public lastIndex()S
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->J:I

    int-to-short v0, v0

    return v0
.end method

.method public line(FFFFFF)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->b:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p2, p4, p5, p6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(SS)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->b:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, p3, v1, p4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->b:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(SS)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SS)V

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public part(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->f:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->b()V

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->u:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object p1, p3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    iput p2, p3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->y:I

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->v:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->u:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Call begin() first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch(FFFFFFFFFFFFFFFII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p17}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFFFFFFFFFFFII)V

    return-void
.end method

.method public patch(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V

    return-void
.end method

.method public patch(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;II)V

    return-void
.end method

.method public rect(FFFFFFFFFFFFFFF)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    move/from16 v2, p14

    move/from16 v3, p15

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    invoke-virtual {v4, p1, p2, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->b:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v8, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    invoke-virtual {v8, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    invoke-virtual {v8, v7, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->c:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v9, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    invoke-virtual {v9, v7, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v7

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->d:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v9, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-virtual {v5, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {p0, v4, v8, v7, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p3

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    return-void
.end method

.method public rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->b:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v3, p2, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p2, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->c:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v3, p3, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p3, v2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->d:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v2, p4, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p4

    invoke-virtual {p4, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public rect(SSSS)V
    .locals 9

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->y:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p4

    move v7, p4

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSSSS)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSS)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColor(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->w:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->w:Lcom/badlogic/gdx/graphics/Color;

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->x:Z

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->w:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->x:Z

    if-nez v1, :cond_1

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_1
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setUVRange(FFFF)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->z:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->B:F

    sub-float v0, p3, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->A:F

    sub-float v0, p4, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->C:F

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p3, p1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p4, p1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->D:Z

    return-void
.end method

.method public setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->D:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->B:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->z:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->C:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->A:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->D:Z

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(FFFF)V

    :goto_0
    return-void
.end method

.method public setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->G:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->H:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->inv()Lcom/badlogic/gdx/math/Matrix3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->transpose()Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->G:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->H:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    :goto_1
    return-void
.end method

.method public setVertexTransformationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->F:Z

    return-void
.end method

.method public sphere(FFFII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFII)V

    return-void
.end method

.method public sphere(FFFIIFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIIFFFF)V

    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFII)V

    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(SSS)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->b:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, p3, v1, p4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->c:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p3, p5, v1, p6, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->b:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->c:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p3, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public triangle(SSS)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->y:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSS)V

    :goto_1
    return-void
.end method

.method public vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S
    .locals 5

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-boolean v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iget-boolean v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    iget-boolean v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    if-eqz v4, :cond_3

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S

    move-result p1

    return p1
.end method

.method public vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->j:I

    const v1, 0xffff

    if-gt v0, v1, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->E:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->l:I

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->m:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v4, v1, 0x1

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v5, v0, v4

    :cond_0
    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    add-int/2addr v1, v4

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->n:I

    if-ltz v0, :cond_3

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->K:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->E:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->n:I

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v1, p1, v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, p1, v1

    add-int/2addr v0, v4

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p2, p1, v0

    :cond_3
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->q:I

    if-ltz p1, :cond_5

    if-nez p3, :cond_4

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_4
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->E:[F

    iget v0, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v0, p2, p1

    add-int/lit8 v0, p1, 0x1

    iget v1, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v1, p2, v0

    add-int/lit8 v0, p1, 0x2

    iget v1, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v1, p2, v0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->r:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_7

    add-int/2addr p1, v1

    iget p3, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    aput p3, p2, p1

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->s:I

    if-lez p1, :cond_7

    if-nez p3, :cond_6

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_6
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->E:[F

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p3

    aput p3, p2, p1

    :cond_7
    :goto_0
    if-eqz p4, :cond_8

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->t:I

    if-ltz p1, :cond_8

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->E:[F

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput p3, p2, p1

    add-int/2addr p1, v3

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput p3, p2, p1

    :cond_8
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->E:[F

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a([FI)V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->J:I

    int-to-short p1, p1

    return p1

    :cond_9
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Too many vertices used"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs vertex([F)S
    .locals 3

    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->a([FI)V

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->i:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->J:I

    int-to-short p1, p1

    return p1
.end method
