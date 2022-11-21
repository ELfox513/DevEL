.class public Lcom/prineside/tdi2/systems/MinerSystem$_WaveSystemListener;
.super Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MinerSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_WaveSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MinerSystem$_WaveSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/MinerSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/MinerSystem$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x8cfa36

    return v0
.end method

.method public nextWaveForced(IIF)V
    .locals 3

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/prineside/tdi2/systems/MinerSystem$_WaveSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v0, :cond_1

    iget-object p2, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p2, [Lcom/prineside/tdi2/Miner;

    aget-object p2, p2, p1

    iget v0, p2, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    add-float/2addr v0, p3

    iput v0, p2, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    iget-object v0, p2, Lcom/prineside/tdi2/Miner;->doubleSpeedParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem$_WaveSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->willParticleBeSkipped()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MinerManager;->doubleSpeedParticleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p2, Lcom/prineside/tdi2/Miner;->doubleSpeedParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p2}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem$_WaveSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/Miner;->doubleSpeedParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MinerSystem$_WaveSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem$_WaveSystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
