.class public Lcom/prineside/tdi2/systems/AchievementSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/AchievementSystem$_GameSystemListener;,
        Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;,
        Lcom/prineside/tdi2/systems/AchievementSystem$_WaveSystemListener;,
        Lcom/prineside/tdi2/systems/AchievementSystem$_TowerSystemListener;
    }
.end annotation


# static fields
.field public static final s:[Lcom/prineside/tdi2/enums/EnemyType;


# instance fields
.field public a:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public b:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public d:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public k:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public p:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public q:[I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public r:Lcom/badlogic/gdx/utils/IntArray;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->FAST:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->STRONG:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->HELI:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->JET:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->ARMORED:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->HEALER:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->TOXIC:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->ICY:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->FIGHTER:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->LIGHT:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/prineside/tdi2/systems/AchievementSystem;->s:[Lcom/prineside/tdi2/enums/EnemyType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->b:I

    iput v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->k:I

    iput v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->p:I

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->values:[Lcom/prineside/tdi2/enums/AchievementType;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->q:[I

    new-instance v1, Lcom/badlogic/gdx/utils/IntArray;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->r:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Achievement"

    return-object v0
.end method

.method public isActive()Z
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    sget-object v2, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne v1, v2, :cond_0

    iget-boolean v0, v0, Lcom/prineside/tdi2/systems/StateSystem;->replayMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->a:F

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->b:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->d:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->k:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->p:I

    const-class v0, [I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->q:[I

    const-class v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/IntArray;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->r:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public registerDelta(Lcom/prineside/tdi2/enums/AchievementType;I)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->q:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v2, v0, v1

    add-int/2addr v2, p2

    aput v2, v0, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/AchievementSystem;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->q:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p2, p1, v0}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->d:Z

    return-void
.end method

.method public setup()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/AchievementSystem;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/AchievementSystem$_GameSystemListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/AchievementSystem$_GameSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/AchievementSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/AchievementSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/AchievementSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/AchievementSystem$_WaveSystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/AchievementSystem$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/AchievementSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/AchievementSystem$_TowerSystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/AchievementSystem$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/AchievementSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/AchievementSystem;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->a:F

    const p1, 0x3dcccccd    # 0.1f

    cmpl-float v1, v0, p1

    if-lez v1, :cond_12

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->a:F

    iget p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    iput v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->b:I

    goto/16 :goto_8

    :pswitch_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Unit;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/prineside/tdi2/Unit;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->RECRUIT_ENEMIES:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v0, v2, p1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    goto/16 :goto_8

    :pswitch_1
    const/4 p1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_4

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Projectile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/prineside/tdi2/Projectile;->type:Lcom/prineside/tdi2/enums/ProjectileType;

    sget-object v3, Lcom/prineside/tdi2/enums/ProjectileType;->MISSILE:Lcom/prineside/tdi2/enums/ProjectileType;

    if-ne v2, v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->MASS_MISSILES:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v0, v2, p1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    goto/16 :goto_8

    :pswitch_2
    const/4 p1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_6

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Ability;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/prineside/tdi2/Ability;->type:Lcom/prineside/tdi2/enums/AbilityType;

    sget-object v3, Lcom/prineside/tdi2/enums/AbilityType;->BALL_LIGHTNING:Lcom/prineside/tdi2/enums/AbilityType;

    if-ne v2, v3, :cond_5

    add-int/lit8 p1, p1, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->MASS_BALL_LIGHTNINGS:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v0, v2, p1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    goto/16 :goto_8

    :pswitch_3
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    iget-object v4, p1, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_8

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v5, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v4, v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_4
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_a

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Unit;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/prineside/tdi2/Unit;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    add-int/lit8 p1, p1, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->PLACE_MICROGUNS:Lcom/prineside/tdi2/enums/AchievementType;

    sub-int/2addr p1, v3

    invoke-virtual {v0, v2, p1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    goto/16 :goto_8

    :pswitch_4
    const/4 p1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_c

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Unit;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/prineside/tdi2/Unit;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    add-int/lit8 p1, p1, 0x1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->PLACE_MINES_ONE_GAME:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v0, v2, p1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    goto/16 :goto_8

    :pswitch_5
    iget p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->k:I

    if-ne p1, v1, :cond_11

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->BUILD_TOWER_FINISH_WITH_TEN:Lcom/prineside/tdi2/enums/AchievementType;

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, v0, v2}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    goto/16 :goto_8

    :pswitch_6
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->MASS_MINERS:Lcom/prineside/tdi2/enums/AchievementType;

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MinerSystem;->miners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, v0, v2}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    goto/16 :goto_8

    :pswitch_7
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->MASS_TOWERS_LEVEL_DEV:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AchievementManager;->isRequirementMet(Lcom/prineside/tdi2/enums/AchievementType;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-eqz p1, :cond_11

    const-string v2, "dev"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, v0, v2}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    goto :goto_8

    :pswitch_8
    const/4 p1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_e

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tower;

    aget-object v2, v2, v0

    sget-object v3, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Tower;->getCachedStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v2

    cmpg-float v3, p1, v2

    if-gez v3, :cond_d

    move p1, v2

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->HUGE_TOWER_ATTACK_SPEED:Lcom/prineside/tdi2/enums/AchievementType;

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    goto :goto_8

    :pswitch_9
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->EVERY_ENEMY_MET:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/managers/AchievementManager;->isRequirementMet(Lcom/prineside/tdi2/enums/AchievementType;)Z

    move-result p1

    if-nez p1, :cond_11

    sget-object p1, Lcom/prineside/tdi2/systems/AchievementSystem;->s:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_7
    if-ge v0, v2, :cond_10

    aget-object v4, p1, v0

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v4

    if-nez v4, :cond_f

    add-int/lit8 v3, v3, 0x1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->EVERY_ENEMY_MET:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, v0, v3}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_11
    :goto_8
    iget p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->b:I

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->a:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->b:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->d:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->k:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->p:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->q:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AchievementSystem;->r:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
