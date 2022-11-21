.class Lcom/prineside/tdi2/ui/components/GameOverOverlay$5;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/GameOverOverlay;->show(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/MapPrestigeConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public final synthetic r:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

.field public final synthetic s:Lcom/prineside/tdi2/ui/components/GameOverOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay;Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$5;->s:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$5;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$5;->r:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$5;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMinParticleCount(I)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMaxParticleCount(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$5;->r:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/high16 v2, 0x43080000    # 136.0f

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v1, v0, v2, v3}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    return-void
.end method
