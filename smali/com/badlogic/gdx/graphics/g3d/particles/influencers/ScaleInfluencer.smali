.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;)V

    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v2, p1, v0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int p1, p1, v3

    mul-int p2, p2, v0

    add-int/2addr p2, v2

    :goto_0
    if-ge v2, p2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v0, v0, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, p1, 0x0

    aput v0, v4, v5

    add-int/lit8 v5, p1, 0x1

    aput v3, v4, v5

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v5

    mul-float v3, v3, v5

    add-float/2addr v0, v3

    aput v0, v4, v2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v2, p1, v0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int p1, p1, v3

    mul-int p2, p2, v0

    add-int/2addr p2, v2

    :goto_1
    if-ge v2, p2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v0, v0, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v3, v3, v4

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, p1, 0x0

    aput v0, v4, v5

    add-int/lit8 v5, p1, 0x1

    aput v3, v4, v5

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v5

    mul-float v3, v3, v5

    add-float/2addr v0, v3

    aput v0, v4, v2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr p1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;)V

    return-object v0
.end method
