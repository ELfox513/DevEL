.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Single"
.end annotation


# instance fields
.field public alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field public colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

.field public x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setHigh(F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->set(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;)V

    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v1, p1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v2, v2, p1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int p1, p1, v3

    add-int/lit8 p1, p1, 0x2

    mul-int p2, p2, v0

    add-int/2addr p2, v1

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    invoke-virtual {v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->getColor(F[FI)V

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v1, 0x3

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float v6, v6, v3

    add-float/2addr v6, v0

    aput v6, v4, v5

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v2, 0x0

    aput v0, v5, v6

    add-int/lit8 v0, v2, 0x1

    aput v3, v5, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v1, v0

    iget v0, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public allocateChannels()V
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->allocateChannels()V

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

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Life:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;)V

    return-object v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    const-string v1, "color"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    return-void
.end method

.method public update()V
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v0, v0, v1

    const/4 v1, 0x0

    add-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    invoke-virtual {v5, v4, v6, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->getColor(F[FI)V

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v2, 0x0

    aget v8, v7, v8

    add-int/lit8 v9, v2, 0x1

    aget v7, v7, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v4

    mul-float v7, v7, v4

    add-float/2addr v8, v7

    aput v8, v5, v6

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->alphaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;->colorValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    const-string v1, "color"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
