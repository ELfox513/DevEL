.class public Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->setBatch(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z

    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;)V

    return-object v0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->ModelInstance:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->modelInstanceChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Color:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->y:Z

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->z:Z

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->A:Z

    return-void
.end method

.method public isCompatible(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
            "*>;)Z"
        }
    .end annotation

    instance-of p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;

    return p1
.end method

.method public update()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    move-object v6, v5

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->modelInstanceChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v6, [Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    aget-object v6, v6, v3

    iget-boolean v7, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->z:Z

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_0

    move-object v7, v5

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v7, v7, v3

    move/from16 v19, v7

    goto :goto_1

    :cond_0
    const/high16 v19, 0x3f800000    # 1.0f

    :goto_1
    iget-boolean v7, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->A:Z

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    move-object v7, v5

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v7, v7, v3

    move-object v8, v5

    check-cast v8, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v7, 0x0

    aget v8, v8, v9

    move-object v9, v5

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    move-object v10, v5

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    move-object v11, v5

    check-cast v11, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v11, v11, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v11, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v7, 0x3

    aget v7, v11, v7

    move/from16 v16, v7

    move v13, v8

    move v14, v9

    move v15, v10

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    :goto_2
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    move-object v7, v5

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v4, 0x0

    aget v10, v7, v8

    move-object v7, v5

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v4, 0x1

    aget v11, v7, v8

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v4, 0x2

    aget v12, v5, v7

    move/from16 v17, v19

    move/from16 v18, v19

    invoke-virtual/range {v9 .. v19}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->y:Z

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v5, v5, v3

    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    move-object v9, v8

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v10, v5, 0x0

    aget v9, v9, v10

    iput v9, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object v9, v8

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v10, v5, 0x1

    aget v9, v9, v10

    iput v9, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object v9, v8

    check-cast v9, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v10, v5, 0x2

    aget v9, v9, v10

    iput v9, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    if-eqz v6, :cond_2

    check-cast v8, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v7, v8, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v5, 0x3

    aget v5, v7, v5

    iput v5, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    :cond_2
    add-int/lit8 v3, v3, 0x1

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v4, v5

    goto/16 :goto_0

    :cond_3
    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->update()V

    return-void
.end method
