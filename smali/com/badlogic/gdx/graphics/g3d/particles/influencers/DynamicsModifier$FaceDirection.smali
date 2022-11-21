.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceDirection"
.end annotation


# instance fields
.field public B:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public C:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;)V

    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->B:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->C:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;)V

    return-object v0
.end method

.method public update()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->B:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v1, v1, v2

    const/4 v2, 0x0

    add-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->x:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->C:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v3, 0x0

    aget v6, v5, v6

    add-int/lit8 v7, v3, 0x1

    aget v7, v5, v7

    add-int/lit8 v8, v3, 0x2

    aget v5, v5, v8

    invoke-virtual {v4, v6, v7, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->z:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->A:Lcom/badlogic/gdx/math/Quaternion;

    const/4 v8, 0x0

    iget v9, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v10, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v12, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v13, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v14, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v7, v15

    move-object/from16 v18, v15

    move v15, v6

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual/range {v7 .. v17}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(ZFFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->B:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v2, 0x0

    move-object/from16 v7, v18

    iget v8, v7, Lcom/badlogic/gdx/math/Quaternion;->x:F

    aput v8, v5, v6

    add-int/lit8 v6, v2, 0x1

    iget v8, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    aput v8, v5, v6

    add-int/lit8 v6, v2, 0x2

    iget v8, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    aput v8, v5, v6

    add-int/lit8 v6, v2, 0x3

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    aput v7, v5, v6

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v2, v4

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->C:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v3, v4

    goto/16 :goto_0

    :cond_0
    return-void
.end method
