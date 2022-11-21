.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "SourceFile"


# instance fields
.field public value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field public w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setHigh(F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->a(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    return-void
.end method

.method public activateParticles(II)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

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

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v3

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

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v3

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

.method public allocateChannels()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Interpolation:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newId()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Life:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-string v1, "value"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-void
.end method

.method public update()V
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v0, v0, v1

    const/4 v1, 0x0

    add-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v2, 0x0

    aget v6, v5, v6

    add-int/lit8 v7, v2, 0x1

    aget v5, v5, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float v5, v5, v7

    add-float/2addr v6, v5

    aput v6, v4, v1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
