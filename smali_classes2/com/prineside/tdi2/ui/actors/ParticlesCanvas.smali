.class public Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;
    }
.end annotation


# instance fields
.field public final F:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;",
            ">;"
        }
    .end annotation
.end field

.field public scissors:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->F:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FFZ)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    move-result-object p1

    return-object p1
.end method

.method public addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FFZ)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;-><init>()V

    iput-object p1, v0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    iput p2, v0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->x:F

    iput p3, v0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->y:F

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->F:Lcom/badlogic/gdx/utils/Array;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->F:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->start()V

    return-object v0
.end method

.method public clearParticles()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->F:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    aget-object v2, v2, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    iget-object v1, v2, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->reset()V

    iget-object v1, v2, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-static {v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->freeParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 8

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->F:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->scissors:Z

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipBegin()Z

    move-result v2

    :cond_0
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->F:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->F:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    iget-object v5, v4, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->reset()V

    iget-object v4, v4, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-static {v4}, Lcom/prineside/tdi2/systems/ParticleSystem;->freeParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    goto :goto_2

    :cond_1
    iget-object v5, v4, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    iget v6, v4, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->x:F

    add-float/2addr v6, v0

    iget v7, v4, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->y:F

    add-float/2addr v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v5, v4, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTransparency()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    goto :goto_1

    :cond_2
    iget-object v5, v4, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->update(F)V

    iget-object v4, v4, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipEnd()V

    :cond_4
    const/16 p2, 0x302

    const/16 v0, 0x303

    invoke-interface {p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    :cond_5
    return-void
.end method

.method public removeParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->F:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    if-ne v1, p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->reset()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->F:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/ParticleSystem;->freeParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
