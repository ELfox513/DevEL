.class public Lcom/prineside/tdi2/systems/MinerSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;,
        Lcom/prineside/tdi2/systems/MinerSystem$_MapSystemListener;,
        Lcom/prineside/tdi2/systems/MinerSystem$_WaveSystemListener;
    }
.end annotation


# static fields
.field public static final p:[Lcom/prineside/tdi2/enums/GameValueType;

.field public static final q:[F


# instance fields
.field public a:I

.field public b:[I

.field public final d:[[F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public final k:[Lcom/badlogic/gdx/utils/Array;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Miner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_SCALAR:Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_VECTOR:Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_MATRIX:Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_TENSOR:Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_INFIAR:Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/prineside/tdi2/systems/MinerSystem;->p:[Lcom/prineside/tdi2/enums/GameValueType;

    const/16 v0, 0xb

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/systems/MinerSystem;->q:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
        0x3ff33333    # 1.9f
        0x4019999a    # 2.4f
        0x40400000    # 3.0f
        0x40666666    # 3.6f
        0x40866666    # 4.2f
        0x409ccccd    # 4.9f
        0x40b33333    # 5.6f
        0x40d00000    # 6.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->a:I

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/Miner;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-direct {v1, v3, v4, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->values:[Lcom/prineside/tdi2/enums/MinerType;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->b:[I

    new-instance v1, Lcom/prineside/tdi2/ListenerGroup;

    const-class v2, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;

    invoke-direct {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v2, v1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x3

    aput v5, v4, v0

    aput v2, v4, v3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->d:[[F

    array-length v0, v1

    new-array v0, v0, [Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->k:[Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public final a(Lcom/prineside/tdi2/enums/MinerType;)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public addResources(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v0

    iget-object v1, p1, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v1

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/SourceTile;->minedResources:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sub-int v2, v0, v1

    :cond_0
    iget-object v0, p1, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p3}, Lcom/prineside/tdi2/utils/CheatSafeInt;->add(I)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/SourceTile;->minedResources:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v3, v0, v1

    add-int/2addr v3, p3

    aput v3, v0, v1

    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p2, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->addResources(Lcom/prineside/tdi2/enums/ResourceType;F)I

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;->minerResourcesChanged(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/prineside/tdi2/Miner;)V
    .locals 11

    iget-object v0, p1, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/tdi2/systems/MinerSystem;->getMiningSpeed(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iget v3, p1, Lcom/prineside/tdi2/Miner;->miningTime:F

    div-float v4, v3, v1

    float-to-int v4, v4

    int-to-float v5, v4

    mul-float v5, v5, v1

    sub-float/2addr v3, v5

    iput v3, p1, Lcom/prineside/tdi2/Miner;->miningTime:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/prineside/tdi2/systems/MinerSystem;->addResources(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/MinerManager;->minedResourceParticleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v4, p0, Lcom/prineside/tdi2/systems/MinerSystem;->k:[Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    const/4 v5, 0x0

    if-nez v4, :cond_0

    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    new-array v6, v1, [Lcom/badlogic/gdx/graphics/g2d/Sprite;

    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v9, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    aput-object v7, v6, v5

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/prineside/tdi2/systems/MinerSystem;->k:[Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput-object v4, v6, v7

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/prineside/tdi2/systems/MinerSystem;->k:[Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v4, v4, v6

    :goto_0
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setSprites(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne v6, v7, :cond_1

    const v2, 0x3e8f5c29    # 0.28f

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget v7, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_2

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v7, v0}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    iget-object v8, p0, Lcom/prineside/tdi2/systems/MinerSystem;->d:[[F

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    iget v9, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v9, v9, v2

    aput v9, v8, v5

    iget v9, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v9, v9, v2

    aput v9, v8, v1

    const/4 v9, 0x2

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v7, v7, v2

    aput v7, v8, v9

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/LimitedParticleType;->RESOURCE_MINED:Lcom/prineside/tdi2/enums/LimitedParticleType;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Lcom/prineside/tdi2/enums/LimitedParticleType;FF)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MinerSystem;->c(Lcom/prineside/tdi2/Miner;)V

    return-void
.end method

.method public buildMiner(Lcom/prineside/tdi2/enums/MinerType;II)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxMinersCount(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v2

    const-string v3, "MinerSystem"

    if-le v0, v2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No more miners of type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can be built"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p3, p2, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne p3, v0, :cond_4

    move-object p3, p2

    check-cast p3, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object p3, p3, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-nez p3, :cond_3

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    invoke-virtual {p3, p1}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/prineside/tdi2/Miner$Factory;->create()Lcom/prineside/tdi2/Miner;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MinerSystem;->getBuildPrice(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->removeMoney(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Lcom/prineside/tdi2/systems/MinerSystem;->register(Lcom/prineside/tdi2/Miner;)V

    invoke-virtual {p3}, Lcom/prineside/tdi2/Miner;->getInstallDuration()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/Miner;->setInstallTime(F)V

    iget-object v0, p3, Lcom/prineside/tdi2/Miner;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p2

    invoke-virtual {v0, v2, p2, p3}, Lcom/prineside/tdi2/systems/MapSystem;->setMiner(IILcom/prineside/tdi2/Miner;)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, p2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;

    invoke-interface {v2, p3, p1}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;->minerBuilt(Lcom/prineside/tdi2/Miner;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz p1, :cond_6

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/MinerManager;->highlightParticles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    iget-object p2, p3, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p3}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p3}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object p3

    iget-object p3, p3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {p2, p1, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    goto :goto_1

    :cond_2
    const-string p1, "not enough money to build a miner"

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "trying to build miner on tile which already has a miner"

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "buildMiner - tile type is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p1, "buildMiner - tile is null"

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public buildMinerAction(Lcom/prineside/tdi2/enums/MinerType;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/prineside/tdi2/systems/MinerSystem;->buildMinerAction(Lcom/prineside/tdi2/enums/MinerType;II)V

    :cond_0
    return-void
.end method

.method public buildMinerAction(Lcom/prineside/tdi2/enums/MinerType;II)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxMinersCount(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MinerSystem;->getBuildPrice(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v1

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/BuildMinerAction;

    invoke-direct {v1, p1, p2, p3}, Lcom/prineside/tdi2/actions/BuildMinerAction;-><init>(Lcom/prineside/tdi2/enums/MinerType;II)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    :cond_1
    return-void
.end method

.method public final c(Lcom/prineside/tdi2/Miner;)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v8, p1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/Miner$Factory;->canMineResource(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v5, :cond_4

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v6, v2, v3

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v8, p1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/Miner$Factory;->canMineResource(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v7

    if-lt v1, v5, :cond_3

    add-int v8, v5, v7

    if-ge v1, v8, :cond_3

    iput-object v6, p1, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    goto :goto_3

    :cond_3
    add-int/2addr v5, v7

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    :cond_5
    :goto_3
    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v8, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Miner;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v2

    iget-boolean v3, v2, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v3

    mul-int/lit16 v3, v3, 0x80

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    mul-int/lit16 v2, v2, 0x80

    int-to-float v4, v2

    const/high16 v5, 0x43000000    # 128.0f

    move-object v2, p1

    move v6, p2

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/prineside/tdi2/Miner;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public getBuildPrice(Lcom/prineside/tdi2/enums/MinerType;)I
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Miner$Factory;->getBaseBuildPrice(Lcom/prineside/tdi2/GameValueProvider;)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MinerSystem;->a(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result p1

    int-to-double v2, p1

    const-wide v4, 0x3ff99999a0000000L    # 1.600000023841858

    invoke-static {v4, v5, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public getBuildableMinersCount(Lcom/prineside/tdi2/enums/MinerType;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxMinersCount(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getGlobalUpgradePrice(Lcom/prineside/tdi2/enums/MinerType;)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_5

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Miner;

    aget-object v3, v3, v1

    iget-object v4, v3, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    if-eq v4, p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v4

    iget-object v5, v3, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p0, v5}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxUpgradeLevel(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v5

    if-lt v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v8, :cond_4

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Miner;

    aget-object v7, v7, v6

    iget-object v8, v7, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    if-ne v8, p1, :cond_3

    invoke-virtual {v7}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v8

    if-ge v6, v1, :cond_2

    iget-object v7, v7, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p0, v7}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxUpgradeLevel(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v7

    if-ge v8, v7, :cond_2

    add-int/lit8 v8, v8, 0x1

    :cond_2
    if-lt v8, v4, :cond_3

    const/high16 v7, 0x3fa00000    # 1.25f

    mul-float v5, v5, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/Miner;->getBaseUpgradePrice(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v2, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public getMaxMinersCount(Lcom/prineside/tdi2/enums/MinerType;)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/systems/MinerSystem;->p:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    return p1
.end method

.method public getMaxUpgradeLevel(Lcom/prineside/tdi2/enums/MinerType;)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINERS_MAX_UPGRADE_LEVEL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/systems/MinerSystem$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_INFIAR_MAX_UPGRADE_LEVEL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_TENSOR_MAX_UPGRADE_LEVEL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_MATRIX_MAX_UPGRADE_LEVEL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_VECTOR_MAX_UPGRADE_LEVEL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_SCALAR_MAX_UPGRADE_LEVEL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    :goto_1
    const/16 p1, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getMiningSpeed(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)F
    .locals 12

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v1, p1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0, p2, v1}, Lcom/prineside/tdi2/Miner$Factory;->getBaseMiningSpeed(Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/GameValueProvider;)F

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/systems/MinerSystem;->q:[F

    aget v1, v1, p3

    mul-float v0, v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    const-string v1, " is "

    const-string v2, " and "

    const-string v3, " L"

    const-string v4, "Base mining speed for "

    const/4 v5, 0x0

    cmpg-float v6, v0, v5

    if-lez v6, :cond_5

    const v6, 0x47435000    # 50000.0f

    cmpl-float v7, v0, v6

    if-gtz v7, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v9, Lcom/prineside/tdi2/enums/GameValueType;->MODIFIER_MINING_SPEED_VALUE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x0

    :goto_0
    iget-object v10, p1, Lcom/prineside/tdi2/Miner;->nearbyModifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v11, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v11, :cond_1

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    iget-object v10, v10, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierType:Lcom/prineside/tdi2/enums/ModifierType;

    sget-object v11, Lcom/prineside/tdi2/enums/ModifierType;->MINING_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne v10, v11, :cond_0

    add-float/2addr v7, v8

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    mul-float v0, v0, v7

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result v7

    mul-float v0, v0, v7

    :cond_2
    cmpg-float v5, v0, v5

    if-lez v5, :cond_4

    cmpl-float v5, v0, v6

    if-gtz v5, :cond_4

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    sget-object p2, Lcom/prineside/tdi2/enums/DifficultyMode;->EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne p1, p2, :cond_3

    const/high16 p1, 0x3f400000    # 0.75f

    mul-float v0, v0, p1

    :cond_3
    return v0

    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v5

    :goto_2
    goto :goto_1
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Miner"

    return-object v0
.end method

.method public getUpgradePrice(Lcom/prineside/tdi2/Miner;)I
    .locals 5

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxUpgradeLevel(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/Miner;

    iget-object v3, v3, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    iget-object v4, p1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/Miner;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v3

    if-lt v3, v0, :cond_1

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float v1, v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Miner;->getBaseUpgradePrice(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    return p1
.end method

.method public globalUpgradeMinerAction(Lcom/prineside/tdi2/enums/MinerType;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;

    invoke-direct {v1, p1}, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;-><init>(Lcom/prineside/tdi2/enums/MinerType;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public isRegistered(Lcom/prineside/tdi2/Tower;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result p1

    return p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->a:I

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v0, [I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->b:[I

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ListenerGroup;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public register(Lcom/prineside/tdi2/Miner;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->b:[I

    iget-object v1, p1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->a:I

    iput v0, p1, Lcom/prineside/tdi2/Miner;->id:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Miner is already registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeResources(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)Z
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p1, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p3, :cond_4

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/SourceTile;->minedResources:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sub-int/2addr v2, v0

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    sub-int v0, p3, v2

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2, p2, v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->removeResources(Lcom/prineside/tdi2/enums/ResourceType;I)Z

    :cond_2
    iget-object v0, p1, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0, p3}, Lcom/prineside/tdi2/utils/CheatSafeInt;->sub(I)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/SourceTile;->minedResources:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v3, v0, v2

    sub-int/2addr v3, p3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;

    neg-int v4, p3

    invoke-interface {v3, p1, p2, v4, v1}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;->minerResourcesChanged(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public sellMiner(II)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object p1

    const-string p2, "MinerSystem"

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v0, v1, :cond_2

    check-cast p1, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getSellPrice()I

    move-result p2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    int-to-float v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->addMoney(FZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/MapSystem;->removeMiner(Lcom/prineside/tdi2/Miner;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;

    invoke-interface {v1, p1, p2}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;->minerSold(Lcom/prineside/tdi2/Miner;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    goto :goto_1

    :cond_1
    const-string p1, "sellMiner - miner is not on tile"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sellMiner - tile is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "sellMiner - tile is null"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public sellMinerAction(II)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/SellMinerAction;

    invoke-direct {v1, p1, p2}, Lcom/prineside/tdi2/actions/SellMinerAction;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public sellMinerAction(Lcom/prineside/tdi2/Miner;)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/prineside/tdi2/systems/MinerSystem;->sellMinerAction(II)V

    return-void
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/MinerSystem$_MapSystemListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/MinerSystem$_MapSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/MinerSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/MinerSystem$_WaveSystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/MinerSystem$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/MinerSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public unregister(Lcom/prineside/tdi2/Miner;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/prineside/tdi2/Miner;->doubleSpeedParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/prineside/tdi2/Miner;->doubleSpeedParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->b:[I

    iget-object v1, p1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v2, v0, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Miner is not registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(F)V
    .locals 7

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/StateSystem;->getCurrentUpdateActions()Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->size:I

    if-ge v1, v2, :cond_6

    iget-object v2, p1, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->actions:[Lcom/prineside/tdi2/Action;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enums/ActionType;->BM:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v3, v4, :cond_0

    check-cast v2, Lcom/prineside/tdi2/actions/BuildMinerAction;

    iget-object v3, v2, Lcom/prineside/tdi2/actions/BuildMinerAction;->minerType:Lcom/prineside/tdi2/enums/MinerType;

    iget v4, v2, Lcom/prineside/tdi2/actions/BuildMinerAction;->x:I

    iget v2, v2, Lcom/prineside/tdi2/actions/BuildMinerAction;->y:I

    invoke-virtual {p0, v3, v4, v2}, Lcom/prineside/tdi2/systems/MinerSystem;->buildMiner(Lcom/prineside/tdi2/enums/MinerType;II)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enums/ActionType;->UM:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v3, v4, :cond_1

    check-cast v2, Lcom/prineside/tdi2/actions/UpgradeMinerAction;

    iget v3, v2, Lcom/prineside/tdi2/actions/UpgradeMinerAction;->x:I

    iget v2, v2, Lcom/prineside/tdi2/actions/UpgradeMinerAction;->y:I

    invoke-virtual {p0, v3, v2}, Lcom/prineside/tdi2/systems/MinerSystem;->upgradeMiner(II)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enums/ActionType;->GUM:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v3, v4, :cond_4

    check-cast v2, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_3

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Miner;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    iget-object v6, v2, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;->minerType:Lcom/prineside/tdi2/enums/MinerType;

    if-ne v5, v6, :cond_2

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/systems/MinerSystem;->upgradeMiner(Lcom/prineside/tdi2/Miner;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enums/ActionType;->SM:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v3, v4, :cond_5

    check-cast v2, Lcom/prineside/tdi2/actions/SellMinerAction;

    iget v3, v2, Lcom/prineside/tdi2/actions/SellMinerAction;->x:I

    iget v2, v2, Lcom/prineside/tdi2/actions/SellMinerAction;->y:I

    invoke-virtual {p0, v3, v2}, Lcom/prineside/tdi2/systems/MinerSystem;->sellMiner(II)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameRealTimePasses()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_3
    if-ge v0, p1, :cond_c

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Miner;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v2

    iget v3, v1, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    iget v3, v1, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v5

    sub-float/2addr v3, v5

    iput v3, v1, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_8

    iput v4, v1, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    iget-object v3, v1, Lcom/prineside/tdi2/Miner;->doubleSpeedParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/prineside/tdi2/Miner;->doubleSpeedParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_8
    invoke-virtual {v1}, Lcom/prineside/tdi2/Miner;->isPrepared()Z

    move-result v3

    if-nez v3, :cond_9

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Miner;->reduceInstallTime(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Miner;->isPrepared()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/MinerSystem;->c(Lcom/prineside/tdi2/Miner;)V

    goto :goto_4

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to reduce install time, miner idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_9
    iget v3, v1, Lcom/prineside/tdi2/Miner;->miningTime:F

    add-float/2addr v3, v2

    iput v3, v1, Lcom/prineside/tdi2/Miner;->miningTime:F

    iget-object v2, v1, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_a

    cmpl-float v2, v3, v5

    if-lez v2, :cond_b

    iput v4, v1, Lcom/prineside/tdi2/Miner;->miningTime:F

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/MinerSystem;->c(Lcom/prineside/tdi2/Miner;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/prineside/tdi2/systems/MinerSystem;->getMiningSpeed(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)F

    move-result v2

    div-float/2addr v5, v2

    iget v2, v1, Lcom/prineside/tdi2/Miner;->miningTime:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_b

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/MinerSystem;->b(Lcom/prineside/tdi2/Miner;)V

    :cond_b
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_c
    return-void
.end method

.method public upgradeMiner(II)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object p1

    const-string p2, "MinerSystem"

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v0, v1, :cond_5

    check-cast p1, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v0

    iget-object v1, p1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxUpgradeLevel(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string p1, "can\'t upgrade miner, it is already fully upgraded"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MinerSystem;->getUpgradePrice(Lcom/prineside/tdi2/Miner;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->removeMoney(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, p1, Lcom/prineside/tdi2/Miner;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->add(I)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/Miner;->setUpgradeLevel(I)V

    iget-object p2, p1, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/tdi2/systems/MinerSystem;->getMiningSpeed(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)F

    move-result p2

    iget-object v1, p1, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/prineside/tdi2/systems/MinerSystem;->getMiningSpeed(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)F

    move-result v1

    iget v2, p1, Lcom/prineside/tdi2/Miner;->miningTime:F

    div-float/2addr p2, v1

    mul-float v2, v2, p2

    iput v2, p1, Lcom/prineside/tdi2/Miner;->miningTime:F

    :cond_1
    iget-object p2, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p2, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, p2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;

    invoke-interface {v2, p1, v0}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;->minerUpgraded(Lcom/prineside/tdi2/Miner;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    goto :goto_1

    :cond_3
    const-string p1, "not enough money to upgrade the miner"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "upgradeMiner - no miner on tile"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upgradeMiner - tile is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p1, "upgradeMiner - tile is null"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public upgradeMiner(Lcom/prineside/tdi2/Miner;)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/prineside/tdi2/systems/MinerSystem;->upgradeMiner(II)V

    return-void
.end method

.method public upgradeMinerAction(II)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxUpgradeLevel(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/MinerSystem;->getUpgradePrice(Lcom/prineside/tdi2/Miner;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v1

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/UpgradeMinerAction;

    invoke-direct {v1, p1, p2}, Lcom/prineside/tdi2/actions/UpgradeMinerAction;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    :cond_1
    return-void
.end method

.method public upgradeMinerAction(Lcom/prineside/tdi2/Miner;)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/prineside/tdi2/systems/MinerSystem;->upgradeMinerAction(II)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->a:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->b:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
