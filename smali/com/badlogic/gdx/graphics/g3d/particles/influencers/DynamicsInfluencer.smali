.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "SourceFile"


# instance fields
.field public A:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public B:Z

.field public C:Z

.field public D:Z

.field public velocities:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;)V
    .locals 1

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;)V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    array-length v1, p1

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v1, p1, v0

    mul-int v0, v0, p2

    add-int/2addr v0, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v6, v5, v3

    aput v6, v2, v3

    add-int/lit8 v3, v1, 0x1

    aget v6, v5, v3

    aput v6, v2, v3

    add-int/lit8 v3, v1, 0x2

    aget v5, v5, v3

    aput v5, v2, v3

    iget v2, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->C:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v3, p1, v0

    mul-int v0, v0, p2

    add-int/2addr v0, v3

    :goto_1
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v3, 0x0

    aput v1, v5, v6

    add-int/lit8 v6, v3, 0x1

    aput v2, v5, v6

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v3, p1, v0

    mul-int v0, v0, p2

    add-int/2addr v0, v3

    :goto_2
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v3, 0x0

    aput v2, v5, v6

    add-int/lit8 v6, v3, 0x1

    aput v2, v5, v6

    add-int/lit8 v6, v3, 0x2

    aput v2, v5, v6

    add-int/lit8 v6, v3, 0x3

    aput v1, v5, v6

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v3, v4

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_3

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->activateParticles(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public allocateChannels()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_0

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->allocateChannels()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->B:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->PreviousPosition:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->AngularVelocity2D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->A:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->C:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation2D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->D:Z

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->AngularVelocity3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->A:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->D:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    :cond_6
    :goto_3
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;)V

    return-object v0
.end method

.method public init()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->init()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    const-string v3, "velocities"

    invoke-virtual {p1, v3, v1, v2, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update()V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->B:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v5, v5, v1

    invoke-static {v4, v3, v5, v2}, Ljava/util/Arrays;->fill([FIIF)V

    :cond_0
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->C:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->D:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->A:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v5, v5, v1

    invoke-static {v4, v3, v5, v2}, Ljava/util/Arrays;->fill([FIIF)V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v5, :cond_3

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->update()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->B:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v1, v6, :cond_4

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v4, 0x0

    aget v9, v7, v8

    add-int/lit8 v10, v4, 0x1

    aget v11, v7, v10

    add-int/lit8 v12, v4, 0x2

    aget v13, v7, v12

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v15, v9, v14

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->y:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v17, v3, v8

    sub-float v15, v15, v17

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v18, v2, v8

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTimeSqr:F

    mul-float v18, v18, v5

    add-float v15, v15, v18

    aput v15, v7, v8

    mul-float v15, v11, v14

    aget v18, v3, v10

    sub-float v15, v15, v18

    aget v18, v2, v10

    mul-float v18, v18, v5

    add-float v15, v15, v18

    aput v15, v7, v10

    mul-float v14, v14, v13

    aget v15, v3, v12

    sub-float/2addr v14, v15

    aget v2, v2, v12

    mul-float v2, v2, v5

    add-float/2addr v14, v2

    aput v14, v7, v12

    aput v9, v3, v8

    aput v11, v3, v10

    aput v13, v3, v12

    add-int/lit8 v1, v1, 0x1

    iget v2, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->C:Z

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_2
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v3, v2, :cond_7

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->A:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v2, v2, v3

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    mul-float v2, v2, v1

    const/4 v1, 0x0

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_5

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v1

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v2

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v16, 0x0

    aget v6, v4, v5

    add-int/lit8 v7, v16, 0x1

    aget v8, v4, v7

    mul-float v9, v6, v1

    mul-float v10, v8, v2

    sub-float/2addr v9, v10

    mul-float v8, v8, v1

    mul-float v6, v6, v2

    add-float/2addr v8, v6

    aput v9, v4, v5

    aput v8, v4, v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int v16, v16, v1

    goto :goto_2

    :cond_6
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->D:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_3
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v3, v2, :cond_7

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->A:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v16, 0x0

    aget v4, v2, v4

    add-int/lit8 v5, v16, 0x1

    aget v5, v2, v5

    add-int/lit8 v6, v16, 0x2

    aget v2, v2, v6

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v1, 0x0

    aget v8, v6, v7

    add-int/lit8 v9, v1, 0x1

    aget v10, v6, v9

    add-int/lit8 v11, v1, 0x2

    aget v12, v6, v11

    add-int/lit8 v13, v1, 0x3

    aget v6, v6, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->s:Lcom/badlogic/gdx/math/Quaternion;

    const/4 v15, 0x0

    invoke-virtual {v14, v4, v5, v2, v15}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v2, v8, v10, v12, v6}, Lcom/badlogic/gdx/math/Quaternion;->mul(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    const/high16 v4, 0x3f000000    # 0.5f

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    mul-float v5, v5, v4

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Quaternion;->mul(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v2, v8, v10, v12, v6}, Lcom/badlogic/gdx/math/Quaternion;->add(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->z:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget v5, v14, Lcom/badlogic/gdx/math/Quaternion;->x:F

    aput v5, v4, v7

    iget v5, v14, Lcom/badlogic/gdx/math/Quaternion;->y:F

    aput v5, v4, v9

    iget v5, v14, Lcom/badlogic/gdx/math/Quaternion;->z:F

    aput v5, v4, v11

    iget v5, v14, Lcom/badlogic/gdx/math/Quaternion;->w:F

    aput v5, v4, v13

    add-int/lit8 v3, v3, 0x1

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->A:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int v16, v16, v2

    goto :goto_3

    :cond_7
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    const-string v3, "velocities"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method
