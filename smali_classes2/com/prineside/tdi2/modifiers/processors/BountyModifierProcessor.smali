.class public Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;
.super Lcom/prineside/tdi2/ModifierProcessor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/ModifierProcessor<",
        "Lcom/prineside/tdi2/modifiers/BountyModifier;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Tile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ModifierProcessor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;Lcom/prineside/tdi2/Wave;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;->b(Lcom/prineside/tdi2/Wave;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/prineside/tdi2/Wave;)V
    .locals 6

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->MODIFIER_BOUNTY_VALUE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ca3d70a    # 0.02f

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_4

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Modifier;

    aget-object v3, v3, v0

    iget-object v4, v3, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    sget-object v5, Lcom/prineside/tdi2/enums/ModifierType;->BOUNTY:Lcom/prineside/tdi2/enums/ModifierType;

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v1, p1

    move-object v4, v3

    check-cast v4, Lcom/prineside/tdi2/modifiers/BountyModifier;

    iget v5, v4, Lcom/prineside/tdi2/modifiers/BountyModifier;->coinsGained:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/prineside/tdi2/modifiers/BountyModifier;->coinsGained:I

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v3}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v5, 0x42000000    # 32.0f

    add-float/2addr v3, v5

    invoke-virtual {v2, v4, v3, p1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addCoinParticle(FFI)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    int-to-float v0, v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->addMoney(FZ)I

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->CG_B:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/ModifierProcessor;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;->b:Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;

    return-void
.end method

.method public setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;->b:Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;->b:Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;

    :cond_0
    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;->b:Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public setUnregistered()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;->b:Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/ModifierProcessor;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;->b:Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;

    const-class v1, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor$_WaveSystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
