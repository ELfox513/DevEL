.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrownianAcceleration"
.end annotation


# instance fields
.field public C:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;)V

    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->allocateChannels()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->C:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;)V

    return-object v0
.end method

.method public update()V
    .locals 11

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->B:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v3, 0x0

    aget v6, v5, v6

    add-int/lit8 v7, v3, 0x1

    aget v5, v5, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->strengthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float v5, v5, v7

    add-float/2addr v6, v5

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->z:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v9

    invoke-static {v7, v8}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v10

    invoke-static {v7, v8}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v7

    invoke-virtual {v5, v9, v10, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->C:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v4, 0x0

    aget v9, v7, v8

    iget v10, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v8, v4, 0x1

    aget v9, v7, v8

    iget v10, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v8, v4, 0x2

    aget v9, v7, v8

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v9, v5

    aput v9, v7, v8

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->B:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v3, v5

    iget v5, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v1, v5

    goto :goto_0

    :cond_0
    return-void
.end method
