.class public Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;
.super Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public H:Z

.field public I:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

.field public J:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field public durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field public emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field public lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field public lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->setActive(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->setActive(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->setActive(Z)V

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->H:Z

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Enabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->I:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->activateParticles(II)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    return-void
.end method

.method public activateParticles(II)V
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->B:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->C:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->percent:F

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->z:I

    int-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->A:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->percent:F

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-lez v1, :cond_1

    if-lt v1, v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    :cond_0
    sub-int v1, v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v3, v1, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->J:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int p1, p1, v3

    mul-int p2, p2, v3

    add-int/2addr p2, p1

    :goto_1
    if-ge p1, p2, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->J:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, p1, 0x0

    aput v1, v4, v5

    add-int/lit8 v5, p1, 0x1

    aput v0, v4, v5

    add-int/lit8 v5, p1, 0x2

    aput v2, v4, v5

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr p1, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method public allocateChannels()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Life:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->J:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V

    return-object v0
.end method

.method public getDelay()Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    return-object v0
.end method

.method public getDuration()Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    return-object v0
.end method

.method public getEmission()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public getEmissionMode()Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->I:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    return-object v0
.end method

.method public getLife()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public getLifeOffset()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public getPercentComplete()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->G:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->E:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->F:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->D:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->init()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->y:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->D:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->F:F

    return-void
.end method

.method public isComplete()Z
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->G:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->E:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->F:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->D:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isContinuous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->H:Z

    return v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 4

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "continous"

    invoke-virtual {p1, v3, v2, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->H:Z

    const-string v2, "emission"

    invoke-virtual {p1, v2, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-string v2, "delay"

    invoke-virtual {p1, v2, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const-string v2, "duration"

    invoke-virtual {p1, v2, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const-string v0, "life"

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-string v0, "lifeOffset"

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->w:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->w:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->x:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->x:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->y:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->y:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->z:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->z:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->A:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->A:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->B:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->B:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->C:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->C:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->D:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->D:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->E:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->E:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->F:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->F:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->G:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->G:F

    iget-boolean p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->H:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->H:Z

    return-void
.end method

.method public setContinuous(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->H:Z

    return-void
.end method

.method public setEmissionMode(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->I:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->E:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->G:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->F:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->D:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->F:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->percent:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->w:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->x:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->x:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->w:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->x:I

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->B:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->C:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->C:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->B:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->C:I

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->z:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->A:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->A:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->A:I

    :cond_4
    return-void
.end method

.method public update()V
    .locals 11

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->G:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->E:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    add-float/2addr v3, v1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->G:F

    goto/16 :goto_2

    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->I:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Disabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    if-eq v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->F:F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->D:F

    cmpg-float v9, v7, v8

    if-gez v9, :cond_2

    add-float/2addr v7, v1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->F:F

    div-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->percent:F

    goto :goto_1

    :cond_2
    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->H:Z

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Enabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    if-ne v3, v7, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->start()V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->y:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->w:I

    int-to-float v0, v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->percent:F

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    cmpl-float v3, v0, v5

    if-lez v3, :cond_4

    div-float/2addr v2, v0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->y:I

    int-to-float v3, v0

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_4

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->y:I

    int-to-float v3, v3

    int-to-float v4, v0

    mul-float v4, v4, v2

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    rem-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->y:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->a(I)V

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    if-ge v0, v2, :cond_5

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->a(I)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v7, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v6, v7, :cond_7

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->J:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v2, 0x0

    aget v9, v7, v8

    sub-float/2addr v9, v1

    aput v9, v7, v8

    cmpg-float v8, v9, v5

    if-gtz v8, :cond_6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->removeElement(I)V

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v2, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    add-int/lit8 v10, v2, 0x1

    aget v10, v7, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v7, v4

    add-int/lit8 v6, v6, 0x1

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v2, v3

    goto :goto_3

    :cond_7
    if-ge v7, v0, :cond_8

    sub-int/2addr v0, v7

    invoke-virtual {v3, v7, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->killParticles(II)V

    :cond_8
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->write(Lcom/badlogic/gdx/utils/Json;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->H:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "continous"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-string v1, "emission"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const-string v1, "delay"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    const-string v1, "duration"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-string v1, "life"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const-string v1, "lifeOffset"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
