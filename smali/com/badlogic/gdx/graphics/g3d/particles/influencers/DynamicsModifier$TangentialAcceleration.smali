.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TangentialAcceleration"
.end annotation


# instance fields
.field public D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public E:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;)V

    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->allocateChannels()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->E:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;)V

    return-object v0
.end method

.method public update()V
    .locals 13

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v0, v0, v1

    const/4 v1, 0x0

    add-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->B:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v2, 0x0

    aget v8, v7, v8

    add-int/lit8 v9, v2, 0x1

    aget v7, v7, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->strengthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v9

    mul-float v7, v7, v9

    add-float/2addr v8, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->C:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v3, 0x2

    aget v9, v7, v9

    add-int/lit8 v10, v3, 0x3

    aget v7, v7, v10

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v10

    mul-float v7, v7, v10

    add-float/2addr v9, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->C:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v10, v3, 0x0

    aget v10, v7, v10

    add-int/lit8 v11, v3, 0x1

    aget v7, v7, v11

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float v7, v7, v6

    add-float/2addr v10, v7

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v6

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v7

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v10

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v9

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->z:Lcom/badlogic/gdx/math/Vector3;

    mul-float v6, v6, v9

    mul-float v7, v7, v9

    invoke-virtual {v11, v6, v10, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->x:Lcom/badlogic/gdx/math/Vector3;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->E:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v9, v4, 0x0

    aget v9, v7, v9

    add-int/lit8 v10, v4, 0x1

    aget v10, v7, v10

    add-int/lit8 v12, v4, 0x2

    aget v7, v7, v12

    invoke-virtual {v6, v9, v10, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->isGlobal:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->A:Lcom/badlogic/gdx/math/Quaternion;

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;Z)Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v1, 0x0

    aget v9, v7, v8

    iget v10, v11, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v8, v1, 0x1

    aget v9, v7, v8

    iget v10, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v8, v1, 0x2

    aget v9, v7, v8

    iget v10, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v9, v10

    aput v9, v7, v8

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->B:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v2, v7

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v1, v6

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->C:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v3, v6

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->E:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v4, v6

    goto/16 :goto_0

    :cond_1
    return-void
.end method
