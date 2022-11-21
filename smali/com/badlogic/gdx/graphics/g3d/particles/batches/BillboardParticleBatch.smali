.class public Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;
.super Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;,
        Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;",
        ">;"
    }
.end annotation


# static fields
.field public static final C:Lcom/badlogic/gdx/math/Vector3;

.field public static final D:Lcom/badlogic/gdx/math/Vector3;

.field public static final E:Lcom/badlogic/gdx/math/Vector3;

.field public static final F:Lcom/badlogic/gdx/math/Vector3;

.field public static final G:Lcom/badlogic/gdx/math/Vector3;

.field public static final H:Lcom/badlogic/gdx/math/Vector3;

.field public static final I:Lcom/badlogic/gdx/math/Matrix3;

.field public static final J:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field public static final K:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field public static final L:I

.field public static final M:I

.field public static final N:I

.field public static final O:I

.field public static final P:I

.field public static final Q:I

.field public static final R:I

.field public static final S:I

.field public static final T:I


# instance fields
.field public A:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

.field public B:Lcom/badlogic/gdx/graphics/g3d/Shader;

.field public q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

.field public r:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field public s:[F

.field public t:[S

.field public u:I

.field public v:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field public w:Z

.field public x:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

.field public y:Lcom/badlogic/gdx/graphics/Texture;

.field public z:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->C:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->D:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->E:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->F:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->G:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->H:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->I:Lcom/badlogic/gdx/math/Matrix3;

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "a_position"

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    const/4 v7, 0x0

    aput-object v3, v2, v7

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v8, 0x10

    const/4 v9, 0x2

    const-string v10, "a_texCoord0"

    invoke-direct {v3, v8, v9, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v11, "a_color"

    invoke-direct {v3, v9, v1, v11}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v9

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v12, 0x200

    const-string v13, "a_sizeAndRotation"

    invoke-direct {v3, v12, v1, v13}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->J:Lcom/badlogic/gdx/graphics/VertexAttributes;

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttributes;

    new-array v3, v5, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v13, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v13, v4, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v13, v3, v7

    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v5, v8, v9, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v5, v3, v4

    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v5, v9, v1, v11}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v5, v3, v9

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->K:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v1

    int-to-short v3, v3

    sput v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->L:I

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v1

    int-to-short v3, v3

    sput v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->M:I

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v1

    int-to-short v3, v3

    sput v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->N:I

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v1

    int-to-short v3, v3

    sput v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->O:I

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->P:I

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v1

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->Q:I

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v1

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->R:I

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v1

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->S:I

    iget v0, v2, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->T:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZI)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZILcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZILcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;)V
    .locals 3

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->w:Z

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->r:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    iput-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->z:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iput-object p5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->A:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    if-nez p4, :cond_0

    new-instance p4, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    const/4 p5, 0x1

    const/16 v1, 0x303

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p4, p5, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(IIF)V

    iput-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->z:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    :cond_0
    iget-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->A:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    if-nez p4, :cond_1

    new-instance p4, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    const/16 p5, 0x203

    invoke-direct {p4, p5, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(IZ)V

    iput-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->A:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->b()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->k()V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->ensureCapacity(I)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setUseGpu(Z)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setAlignMode(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    return-void
.end method

.method public static l([FIFFFFFFFFFFFFF)V
    .locals 2

    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->L:I

    add-int v1, p1, v0

    aput p2, p0, v1

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput p3, p0, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    aput p4, p0, v0

    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->M:I

    add-int v1, p1, v0

    aput p5, p0, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    aput p6, p0, v0

    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->N:I

    add-int v1, p1, v0

    aput p7, p0, v1

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput p8, p0, v1

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x2

    aput p9, p0, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    aput p10, p0, v0

    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->O:I

    add-int v1, p1, v0

    aput p11, p0, v1

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput p12, p0, v1

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x2

    aput p13, p0, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    aput p14, p0, v0

    return-void
.end method

.method public static m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V
    .locals 3

    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->Q:I

    add-int v1, p1, v0

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, p0, v1

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, p0, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p2, p0, v0

    sget p2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->R:I

    add-int v0, p1, p2

    aput p3, p0, v0

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    aput p4, p0, p2

    sget p2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->S:I

    add-int p3, p1, p2

    aput p5, p0, p3

    add-int p3, p1, p2

    add-int/lit8 p3, p3, 0x1

    aput p6, p0, p3

    add-int p3, p1, p2

    add-int/lit8 p3, p3, 0x2

    aput p7, p0, p3

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x3

    aput p8, p0, p1

    return-void
.end method


# virtual methods
.method public a([I)V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->g([I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->h([I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->ViewPoint:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->i([I)V

    :cond_2
    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->b:I

    mul-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    sub-int v1, p1, v0

    const/16 v2, 0x7ffc

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    div-int/lit8 v4, v1, 0x4

    mul-int/lit8 v4, v4, 0x6

    iput v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    mul-int v6, v5, v0

    mul-int v5, v5, v1

    invoke-virtual {v3, v4, v6, v5}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->update()V

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public allocParticlesData(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    mul-int/lit8 v0, v0, 0x4

    mul-int v0, v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->d(I)V

    return-void
.end method

.method public final b()V
    .locals 7

    const v0, 0xbffa

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->t:[S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->t:[S

    int-to-short v4, v2

    aput-short v4, v3, v1

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v2, 0x1

    int-to-short v6, v6

    aput-short v6, v3, v5

    add-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v2, 0x2

    int-to-short v6, v6

    aput-short v6, v3, v5

    add-int/lit8 v5, v1, 0x3

    aput-short v6, v3, v5

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, v2, 0x3

    int-to-short v6, v6

    aput-short v6, v3, v5

    add-int/lit8 v5, v1, 0x5

    aput-short v4, v3, v5

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public begin()V
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->begin()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public c()Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Renderable;-><init>()V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    const/4 v2, 0x4

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->z:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->A:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->y:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->createDiffuse(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    new-instance v3, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->v:Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/16 v5, 0x7ffc

    const v6, 0xbffa

    invoke-direct {v3, v2, v5, v6, v4}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->t:[S

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->B:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    return-object v0
.end method

.method public final d(I)V
    .locals 3

    div-int/lit16 p1, p1, 0x1fff

    int-to-float p1, p1

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->getFree()I

    move-result v0

    if-ge v0, p1, :cond_0

    const/4 v1, 0x0

    sub-int/2addr p1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->newObject()Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->c()Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->j(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->B:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->getFree()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public final g([I)V
    .locals 56

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v9, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v4, :cond_0

    aget v11, p1, v3

    iget v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    mul-int v11, v11, v12

    mul-int/lit8 v11, v11, 0x4

    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget v13, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v13, v13, v10

    aget v12, v12, v13

    iget v13, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v13, v13, v10

    iget v14, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v14, v14, v10

    iget v15, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v15, v15, v10

    iget v2, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v2, v2, v10

    move-object/from16 v27, v1

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v14, 0x0

    aget v43, v1, v16

    add-int/lit8 v16, v14, 0x1

    aget v44, v1, v16

    add-int/lit8 v14, v14, 0x2

    aget v1, v1, v14

    iget-object v14, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v13, 0x0

    aget v45, v14, v16

    add-int/lit8 v16, v13, 0x1

    aget v46, v14, v16

    add-int/lit8 v16, v13, 0x2

    aget v47, v14, v16

    add-int/lit8 v16, v13, 0x3

    aget v34, v14, v16

    add-int/lit8 v16, v13, 0x4

    aget v16, v14, v16

    move/from16 v48, v4

    mul-float v4, v16, v12

    add-int/lit8 v13, v13, 0x5

    aget v13, v14, v13

    mul-float v14, v13, v12

    iget-object v12, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v15, 0x0

    aget v49, v12, v13

    add-int/lit8 v13, v15, 0x1

    aget v50, v12, v13

    add-int/lit8 v13, v15, 0x2

    aget v51, v12, v13

    add-int/lit8 v15, v15, 0x3

    aget v52, v12, v15

    iget-object v12, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v2, 0x0

    aget v53, v12, v13

    add-int/lit8 v2, v2, 0x1

    aget v2, v12, v2

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    neg-float v15, v4

    neg-float v13, v14

    move/from16 v36, v13

    move v13, v11

    move/from16 v54, v14

    move/from16 v14, v43

    move/from16 v55, v15

    move/from16 v15, v44

    move/from16 v16, v1

    move/from16 v17, v45

    move/from16 v18, v34

    move/from16 v19, v55

    move/from16 v20, v36

    move/from16 v21, v53

    move/from16 v22, v2

    move/from16 v23, v49

    move/from16 v24, v50

    move/from16 v25, v51

    move/from16 v26, v52

    invoke-static/range {v12 .. v26}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->l([FIFFFFFFFFFFFFF)V

    iget v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    move-object/from16 v28, v12

    move/from16 v29, v11

    move/from16 v30, v43

    move/from16 v31, v44

    move/from16 v32, v1

    move/from16 v33, v47

    move/from16 v35, v4

    move/from16 v37, v53

    move/from16 v38, v2

    move/from16 v39, v49

    move/from16 v40, v50

    move/from16 v41, v51

    move/from16 v42, v52

    invoke-static/range {v28 .. v42}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->l([FIFFFFFFFFFFFFF)V

    iget v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    move-object/from16 v28, v12

    move/from16 v29, v11

    move/from16 v34, v46

    move/from16 v36, v54

    invoke-static/range {v28 .. v42}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->l([FIFFFFFFFFFFFFF)V

    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int v29, v11, v4

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    move-object/from16 v28, v4

    move/from16 v33, v45

    move/from16 v35, v55

    invoke-static/range {v28 .. v42}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->l([FIFFFFFFFFFFFFF)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v27

    move/from16 v4, v48

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public getAlignMode()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    return-object v0
.end method

.method public getBlendingAttribute()Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->z:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    return-object v0
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 3
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

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g3d/Renderable;->set(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->y:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public final h([I)V
    .locals 52

    move-object/from16 v0, p0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->E:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->p:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->F:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->p:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->p:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v9, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v11, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v12, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v7, :cond_1

    aget v14, p1, v6

    iget v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    mul-int v14, v14, v15

    mul-int/lit8 v14, v14, 0x4

    iget-object v15, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget v5, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v5, v5, v13

    aget v5, v15, v5

    iget v15, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v15, v15, v13

    move-object/from16 v24, v4

    iget v4, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v4, v4, v13

    move/from16 v25, v7

    iget v7, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v7, v7, v13

    move-object/from16 v26, v8

    iget v8, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v8, v8, v13

    move/from16 v27, v6

    iget-object v6, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v4, 0x0

    move-object/from16 v28, v10

    aget v10, v6, v16

    add-int/lit8 v16, v4, 0x1

    move/from16 v29, v13

    aget v13, v6, v16

    add-int/lit8 v4, v4, 0x2

    aget v4, v6, v4

    iget-object v6, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v15, 0x0

    aget v33, v6, v16

    add-int/lit8 v16, v15, 0x1

    aget v43, v6, v16

    add-int/lit8 v16, v15, 0x2

    aget v30, v6, v16

    add-int/lit8 v16, v15, 0x3

    aget v38, v6, v16

    add-int/lit8 v16, v15, 0x4

    aget v16, v6, v16

    move-object/from16 v44, v9

    mul-float v9, v16, v5

    add-int/lit8 v15, v15, 0x5

    aget v6, v6, v15

    mul-float v6, v6, v5

    iget-object v5, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v15, v7, 0x0

    aget v45, v5, v15

    add-int/lit8 v15, v7, 0x1

    aget v46, v5, v15

    add-int/lit8 v15, v7, 0x2

    aget v47, v5, v15

    add-int/lit8 v7, v7, 0x3

    aget v5, v5, v7

    iget-object v7, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v15, v8, 0x0

    aget v15, v7, v15

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->C:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v48, v11

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->D:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v15, v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->I:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v6, v1, v15, v7}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->H:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v11, v11

    move-object/from16 v49, v1

    iget v1, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v11, v1

    iget v1, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v1, v1

    move-object/from16 v50, v2

    iget v2, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    iget v2, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v2, v2

    move-object/from16 v51, v3

    iget v3, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v3

    invoke-virtual {v7, v11, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v10, v13, v4}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v17

    move/from16 v16, v14

    move/from16 v18, v33

    move/from16 v19, v38

    move/from16 v20, v45

    move/from16 v21, v46

    move/from16 v22, v47

    move/from16 v23, v5

    invoke-static/range {v15 .. v23}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int/2addr v14, v1

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v2, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v3

    iget v3, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v11, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v3, v11

    iget v11, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v15, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v11, v15

    invoke-virtual {v7, v2, v3, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v10, v13, v4}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v36

    move-object/from16 v34, v1

    move/from16 v35, v14

    move/from16 v37, v30

    move/from16 v39, v45

    move/from16 v40, v46

    move/from16 v41, v47

    move/from16 v42, v5

    invoke-static/range {v34 .. v42}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int/2addr v14, v1

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v2, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    iget v3, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v11, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v3, v11

    iget v11, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v15, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v11, v15

    invoke-virtual {v7, v2, v3, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v10, v13, v4}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v36

    move-object/from16 v34, v1

    move/from16 v35, v14

    move/from16 v38, v43

    invoke-static/range {v34 .. v42}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int v31, v14, v1

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v2, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v2, v2

    iget v3, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    iget v3, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v3, v3

    iget v11, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v3, v11

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v8, v8

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v8, v9

    invoke-virtual {v7, v2, v3, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v10, v13, v4}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v32

    move-object/from16 v30, v1

    move/from16 v34, v43

    move/from16 v35, v45

    move/from16 v36, v46

    move/from16 v37, v47

    move/from16 v38, v5

    invoke-static/range {v30 .. v38}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    goto/16 :goto_2

    :cond_0
    move-object/from16 v49, v1

    move-object/from16 v50, v2

    move-object/from16 v51, v3

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->H:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v2, v2

    iget v3, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v10

    iget v3, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v3, v3

    iget v6, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v3, v6

    add-float/2addr v3, v13

    iget v6, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v6, v6

    iget v7, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v6, v7

    add-float/2addr v6, v4

    invoke-virtual {v1, v2, v3, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v17

    move/from16 v16, v14

    move/from16 v18, v33

    move/from16 v19, v38

    move/from16 v20, v45

    move/from16 v21, v46

    move/from16 v22, v47

    move/from16 v23, v5

    invoke-static/range {v15 .. v23}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int/2addr v14, v2

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v3, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v6

    add-float/2addr v3, v10

    iget v6, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v6, v7

    add-float/2addr v6, v13

    iget v7, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v11, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v7, v11

    add-float/2addr v7, v4

    invoke-virtual {v1, v3, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v36

    move-object/from16 v34, v2

    move/from16 v35, v14

    move/from16 v37, v30

    move/from16 v39, v45

    move/from16 v40, v46

    move/from16 v41, v47

    move/from16 v42, v5

    invoke-static/range {v34 .. v42}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int/2addr v14, v2

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v3, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v3, v6

    add-float/2addr v3, v10

    iget v6, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v6, v7

    add-float/2addr v6, v13

    iget v7, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v11, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v7, v11

    add-float/2addr v7, v4

    invoke-virtual {v1, v3, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v36

    move-object/from16 v34, v2

    move/from16 v35, v14

    move/from16 v38, v43

    invoke-static/range {v34 .. v42}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int v31, v14, v2

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v3, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v3, v3

    iget v6, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v3, v6

    add-float/2addr v3, v10

    iget v6, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v6, v6

    iget v7, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v6, v7

    add-float/2addr v6, v13

    iget v7, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v7, v7

    iget v8, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v7, v8

    add-float/2addr v7, v4

    invoke-virtual {v1, v3, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v32

    move-object/from16 v30, v2

    move/from16 v34, v43

    move/from16 v35, v45

    move/from16 v36, v46

    move/from16 v37, v47

    move/from16 v38, v5

    invoke-static/range {v30 .. v38}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    :goto_2
    add-int/lit8 v13, v29, 0x1

    add-int/lit8 v6, v27, 0x1

    move-object/from16 v4, v24

    move/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v44

    move-object/from16 v11, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move-object/from16 v3, v51

    goto/16 :goto_1

    :cond_1
    move/from16 v27, v6

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final i([I)V
    .locals 46

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v9, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v4, :cond_0

    aget v11, p1, v3

    iget v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    mul-int v11, v11, v12

    mul-int/lit8 v11, v11, 0x4

    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget v13, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v13, v13, v10

    aget v12, v12, v13

    iget v13, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v13, v13, v10

    iget v14, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v14, v14, v10

    iget v15, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v15, v15, v10

    iget v2, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v2, v2, v10

    move-object/from16 v21, v1

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v14, 0x0

    move/from16 v22, v4

    aget v4, v1, v16

    add-int/lit8 v16, v14, 0x1

    move-object/from16 v23, v5

    aget v5, v1, v16

    add-int/lit8 v14, v14, 0x2

    aget v1, v1, v14

    iget-object v14, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v13, 0x0

    aget v27, v14, v16

    add-int/lit8 v16, v13, 0x1

    aget v37, v14, v16

    add-int/lit8 v16, v13, 0x2

    aget v24, v14, v16

    add-int/lit8 v16, v13, 0x3

    aget v32, v14, v16

    add-int/lit8 v16, v13, 0x4

    aget v16, v14, v16

    move-object/from16 v38, v6

    mul-float v6, v16, v12

    add-int/lit8 v13, v13, 0x5

    aget v13, v14, v13

    mul-float v13, v13, v12

    iget-object v12, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v14, v15, 0x0

    aget v39, v12, v14

    add-int/lit8 v14, v15, 0x1

    aget v40, v12, v14

    add-int/lit8 v14, v15, 0x2

    aget v41, v12, v14

    add-int/lit8 v15, v15, 0x3

    aget v42, v12, v15

    iget-object v12, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v14, v2, 0x0

    aget v14, v12, v14

    add-int/lit8 v2, v2, 0x1

    aget v2, v12, v2

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->E:Lcom/badlogic/gdx/math/Vector3;

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->p:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v4, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->C:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v43, v7

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->p:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v15, v7}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    move-object/from16 v44, v8

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->D:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v45, v9

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v13}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v14, v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->I:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v6, v12, v14, v2}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->H:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v15, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v7, v7

    iget v9, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v7, v9

    iget v9, v15, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v9, v9

    iget v13, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v9, v13

    iget v13, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v13, v13

    iget v14, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v13, v14

    invoke-virtual {v2, v7, v9, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v4, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move v13, v11

    move-object v7, v15

    move/from16 v15, v27

    move/from16 v16, v32

    move/from16 v17, v39

    move/from16 v18, v40

    move/from16 v19, v41

    move/from16 v20, v42

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int/2addr v11, v9

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v12, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v13, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v12, v13

    iget v13, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v14, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    iget v14, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v15, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v14, v15

    invoke-virtual {v2, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v4, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v30

    move-object/from16 v28, v9

    move/from16 v29, v11

    move/from16 v31, v24

    move/from16 v33, v39

    move/from16 v34, v40

    move/from16 v35, v41

    move/from16 v36, v42

    invoke-static/range {v28 .. v36}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int/2addr v11, v9

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v12, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v13, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v12, v13

    iget v13, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v14, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v13, v14

    iget v14, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v15, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v14, v15

    invoke-virtual {v2, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v4, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v30

    move-object/from16 v28, v9

    move/from16 v29, v11

    move/from16 v32, v37

    invoke-static/range {v28 .. v36}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int v25, v11, v9

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v11, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v11, v11

    iget v12, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v11, v12

    iget v12, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v12, v12

    iget v13, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v12, v13

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v7, v7

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v7, v8

    invoke-virtual {v2, v11, v12, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v26

    move-object/from16 v24, v9

    move/from16 v28, v37

    move/from16 v29, v39

    move/from16 v30, v40

    move/from16 v31, v41

    move/from16 v32, v42

    invoke-static/range {v24 .. v32}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    goto/16 :goto_1

    :cond_1
    move-object v7, v15

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->H:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v6, v6

    iget v9, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v6, v9

    add-float/2addr v6, v4

    iget v9, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v9, v9

    iget v13, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v9, v13

    add-float/2addr v9, v5

    iget v13, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v13, v13

    iget v14, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v13, v14

    add-float/2addr v13, v1

    invoke-virtual {v2, v6, v9, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move v13, v11

    move/from16 v15, v27

    move/from16 v16, v32

    move/from16 v17, v39

    move/from16 v18, v40

    move/from16 v19, v41

    move/from16 v20, v42

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int/2addr v11, v6

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v9, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v12, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v9, v12

    add-float/2addr v9, v4

    iget v12, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v13, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v12, v13

    add-float/2addr v12, v5

    iget v13, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v14, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v13, v14

    add-float/2addr v13, v1

    invoke-virtual {v2, v9, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v30

    move-object/from16 v28, v6

    move/from16 v29, v11

    move/from16 v31, v24

    move/from16 v33, v39

    move/from16 v34, v40

    move/from16 v35, v41

    move/from16 v36, v42

    invoke-static/range {v28 .. v36}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int/2addr v11, v6

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v9, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v12, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v9, v12

    add-float/2addr v9, v4

    iget v12, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v13, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v12, v13

    add-float/2addr v12, v5

    iget v13, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v14, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v13, v14

    add-float/2addr v13, v1

    invoke-virtual {v2, v9, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v30

    move-object/from16 v28, v6

    move/from16 v29, v11

    move/from16 v32, v37

    invoke-static/range {v28 .. v36}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    add-int v25, v11, v6

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->s:[F

    iget v9, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v9, v9

    iget v11, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v9, v11

    add-float/2addr v9, v4

    iget v4, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v4, v4

    iget v11, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v4, v11

    add-float/2addr v4, v5

    iget v5, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v5, v5

    iget v7, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v5, v7

    add-float/2addr v5, v1

    invoke-virtual {v2, v9, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v26

    move-object/from16 v24, v6

    move/from16 v28, v37

    move/from16 v29, v39

    move/from16 v30, v40

    move/from16 v31, v41

    move/from16 v32, v42

    invoke-static/range {v24 .. v32}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->m([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v21

    move/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v38

    move-object/from16 v7, v43

    move-object/from16 v8, v44

    move-object/from16 v9, v45

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public isUseGPU()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->w:Z

    return v0
.end method

.method public j(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->w:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    :goto_0
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/Shader;->init()V

    return-object v0
.end method

.method public final k()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setVertexData()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->f()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->e()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->resetCapacity()V

    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 1

    const-string v0, "billboardBatch"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    const-string p1, "cfg"

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;

    iget-boolean p2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;->a:Z

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setUseGpu(Z)V

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;->b:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setAlignMode(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    :cond_0
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 3

    const-string v0, "billboardBatch"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->createSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object p2

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->w:Z

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;-><init>(ZLcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    const-string v1, "cfg"

    invoke-virtual {p2, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->save(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->y:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p2, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->saveAsset(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public setAlignMode(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->w:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->k()V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->b:I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->d(I)V

    :cond_0
    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->getFree()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->q:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput-object p1, v2, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->y:Lcom/badlogic/gdx/graphics/Texture;

    return-void
.end method

.method public setUseGpu(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->w:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->w:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->k()V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->b:I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->d(I)V

    :cond_0
    return-void
.end method

.method public setVertexData()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->w:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->J:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->v:Lcom/badlogic/gdx/graphics/VertexAttributes;

    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->P:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->K:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->v:Lcom/badlogic/gdx/graphics/VertexAttributes;

    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->T:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->u:I

    :goto_0
    return-void
.end method
