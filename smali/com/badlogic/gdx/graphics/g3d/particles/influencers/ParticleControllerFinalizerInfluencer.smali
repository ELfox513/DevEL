.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;-><init>()V

    return-object v0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->ParticleController:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->A:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->B:Z

    return-void

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "ParticleController channel not found, specify an influencer which will allocate it please."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update()V
    .locals 13

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aget-object v3, v3, v1

    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->A:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v4, v4, v1

    move v12, v4

    goto :goto_1

    :cond_0
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_1
    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->B:Z

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v5, v5, v1

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v5, 0x0

    aget v6, v4, v6

    add-int/lit8 v7, v5, 0x1

    aget v7, v4, v7

    add-int/lit8 v8, v5, 0x2

    aget v8, v4, v8

    add-int/lit8 v5, v5, 0x3

    aget v4, v4, v5

    move v11, v4

    move v9, v7

    move v10, v8

    move v8, v6

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    :goto_2
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v2, 0x0

    aget v5, v4, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, v4, v6

    add-int/lit8 v7, v2, 0x2

    aget v7, v4, v7

    move-object v4, v3

    invoke-virtual/range {v4 .. v12}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->setTransform(FFFFFFFF)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->update()V

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    return-void
.end method
