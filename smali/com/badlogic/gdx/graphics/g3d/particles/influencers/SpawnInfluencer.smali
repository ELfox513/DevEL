.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "SourceFile"


# instance fields
.field public spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

.field public w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PointSpawnShapeValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v1, p1, v0

    mul-int v0, v0, p2

    add-int/2addr v0, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->b:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->percent:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->spawn(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v1, 0x0

    iget v6, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v6, v4, v5

    add-int/lit8 v5, v1, 0x1

    iget v6, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v6, v4, v5

    add-int/lit8 v5, v1, 0x2

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v3, v4, v5

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int p1, p1, v0

    mul-int p2, p2, v0

    add-int/2addr p2, p1

    :goto_1
    if-ge p1, p2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->s:Lcom/badlogic/gdx/math/Quaternion;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;Z)Lcom/badlogic/gdx/math/Quaternion;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, p1, 0x0

    iget v4, v1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    aput v4, v2, v3

    add-int/lit8 v3, p1, 0x1

    iget v4, v1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    aput v4, v2, v3

    add-int/lit8 v3, p1, 0x2

    iget v4, v1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    aput v4, v2, v3

    add-int/lit8 v3, p1, 0x3

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    aput v1, v2, v3

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

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->w:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->x:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;)V

    return-object v0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->init()V

    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    const-string v1, "spawnShape"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->start()V

    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SpawnInfluencer;->spawnShapeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    const-string v2, "spawnShape"

    invoke-virtual {p1, v2, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
