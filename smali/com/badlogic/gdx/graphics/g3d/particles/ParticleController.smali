.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializable;
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;


# instance fields
.field public a:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field public deltaTime:F

.field public deltaTimeSqr:F

.field public emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

.field public influencers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

.field public particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

.field public renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<",
            "**>;"
        }
    .end annotation
.end field

.field public scale:Lcom/badlogic/gdx/math/Vector3;

.field public transform:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    const v0, 0x3c888889

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->e(F)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;[Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<",
            "**>;[",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    new-instance p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1, p4}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->allocateChannels()V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->allocateChannels()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->allocateChannels()V

    return-void
.end method

.method public activateParticles(II)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->activateParticles(II)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->activateParticles(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    return-void
.end method

.method public c()V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->a:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->clr()Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    mul-int v1, v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->a:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v2, 0x0

    aget v5, v4, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, v4, v6

    add-int/lit8 v7, v2, 0x2

    aget v4, v4, v7

    invoke-virtual {v3, v5, v6, v4}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    aput-object v4, v2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;[Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;)V

    return-object v1
.end method

.method public final d(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->dispose()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->update()V

    :cond_0
    return-void
.end method

.method public final e(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    mul-float p1, p1, p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTimeSqr:F

    return-void
.end method

.method public end()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->end()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->end()V

    return-void
.end method

.method public findInfluencer(Ljava/lang/Class;)Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->d(Ljava/lang/Class;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->a:Lcom/badlogic/gdx/math/collision/BoundingBox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->a:Lcom/badlogic/gdx/math/collision/BoundingBox;

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->a:Lcom/badlogic/gdx/math/collision/BoundingBox;

    return-object v0
.end method

.method public getTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public init()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->b()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->a()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->a(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->init()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->init()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->init()V

    return-void
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->isComplete()Z

    move-result v0

    return v0
.end method

.method public killParticles(II)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->killParticles(II)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->killParticles(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    return-void
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 4

    const-class v0, Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    const-string v1, "emitter"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    const-string v3, "influencers"

    invoke-virtual {p1, v3, v1, v2, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    const-string v1, "renderer"

    invoke-virtual {p1, v1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    return-void
.end method

.method public removeInfluencer(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->d(Ljava/lang/Class;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public replaceInfluencer(Ljava/lang/Class;Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;TK;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->d(Ljava/lang/Class;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->end()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->start()V

    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public scale(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale(FFF)V

    return-void
.end method

.method public setTransform(FFFFFFFF)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p8

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v2, p8

    invoke-virtual {v1, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public setTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public setTranslation(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->start()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->translate(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public update()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->update(F)V

    return-void
.end method

.method public update(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->e(F)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->update()V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->update()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    const-string v2, "emitter"

    invoke-virtual {p1, v2, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    const-string v3, "influencers"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    const-string v2, "renderer"

    invoke-virtual {p1, v2, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
