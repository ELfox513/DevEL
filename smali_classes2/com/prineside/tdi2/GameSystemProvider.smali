.class public Lcom/prineside/tdi2/GameSystemProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;
    }
.end annotation


# static fields
.field public static CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator; = null

.field public static DEBUG:Z = false
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public static final k:[Ljava/lang/Class;

.field public static final p:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Lcom/badlogic/gdx/utils/IntIntMap;

.field public static final r:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

.field public _graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public _input:Lcom/prineside/tdi2/systems/InputSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public _inventory:Lcom/prineside/tdi2/systems/InventorySystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public _mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public _mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public _particle:Lcom/prineside/tdi2/systems/ParticleSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public _pathRendering:Lcom/prineside/tdi2/systems/PathRenderingSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public _projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public _quest:Lcom/prineside/tdi2/systems/QuestSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public _sound:Lcom/prineside/tdi2/systems/SoundSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/GameSystem;",
            ">;"
        }
    .end annotation
.end field

.field public ability:Lcom/prineside/tdi2/systems/AbilitySystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public achievement:Lcom/prineside/tdi2/systems/AchievementSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/prineside/tdi2/GameSystem;",
            ">;"
        }
    .end annotation
.end field

.field public buff:Lcom/prineside/tdi2/systems/BuffSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public final d:[J
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public enemy:Lcom/prineside/tdi2/systems/EnemySystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public explosion:Lcom/prineside/tdi2/systems/ExplosionSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public gameState:Lcom/prineside/tdi2/systems/GameStateSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public loot:Lcom/prineside/tdi2/systems/LootSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public map:Lcom/prineside/tdi2/systems/MapSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public miner:Lcom/prineside/tdi2/systems/MinerSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public modifier:Lcom/prineside/tdi2/systems/ModifierSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public script:Lcom/prineside/tdi2/systems/ScriptSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public state:Lcom/prineside/tdi2/systems/StateSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public tower:Lcom/prineside/tdi2/systems/TowerSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public unit:Lcom/prineside/tdi2/systems/UnitSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public wave:Lcom/prineside/tdi2/systems/WaveSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/prineside/tdi2/systems/SoundSystem;

    aput-object v2, v0, v1

    const-class v1, Lcom/prineside/tdi2/systems/AchievementSystem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v3, Lcom/prineside/tdi2/systems/InputSystem;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-class v3, Lcom/prineside/tdi2/systems/GraphicsSystem;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-class v3, Lcom/prineside/tdi2/systems/GameValueSystem;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-class v3, Lcom/prineside/tdi2/systems/GameStateSystem;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-class v3, Lcom/prineside/tdi2/systems/QuestSystem;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-class v3, Lcom/prineside/tdi2/systems/BuffSystem;

    aput-object v3, v0, v1

    const-class v1, Lcom/prineside/tdi2/systems/LootSystem;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-class v4, Lcom/prineside/tdi2/systems/EnemySystem;

    aput-object v4, v0, v1

    const/16 v1, 0xa

    const-class v4, Lcom/prineside/tdi2/systems/UnitSystem;

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-class v4, Lcom/prineside/tdi2/systems/AbilitySystem;

    aput-object v4, v0, v1

    const/16 v1, 0xc

    const-class v4, Lcom/prineside/tdi2/systems/MapSystem;

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-class v4, Lcom/prineside/tdi2/systems/MapRenderingSystem;

    aput-object v4, v0, v1

    const/16 v1, 0xe

    const-class v4, Lcom/prineside/tdi2/systems/PathRenderingSystem;

    aput-object v4, v0, v1

    const/16 v1, 0xf

    const-class v4, Lcom/prineside/tdi2/systems/ProjectileSystem;

    aput-object v4, v0, v1

    const/16 v1, 0x10

    const-class v4, Lcom/prineside/tdi2/systems/ExplosionSystem;

    aput-object v4, v0, v1

    const/16 v1, 0x11

    const-class v4, Lcom/prineside/tdi2/systems/TowerSystem;

    aput-object v4, v0, v1

    const/16 v1, 0x12

    const-class v4, Lcom/prineside/tdi2/systems/MinerSystem;

    aput-object v4, v0, v1

    const/16 v1, 0x13

    const-class v4, Lcom/prineside/tdi2/systems/ModifierSystem;

    aput-object v4, v0, v1

    const/16 v1, 0x14

    const-class v4, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    aput-object v4, v0, v1

    const/16 v1, 0x15

    const-class v4, Lcom/prineside/tdi2/systems/ParticleSystem;

    aput-object v4, v0, v1

    const/16 v1, 0x16

    const-class v4, Lcom/prineside/tdi2/systems/WaveSystem;

    aput-object v4, v0, v1

    const/16 v1, 0x17

    const-class v4, Lcom/prineside/tdi2/systems/StatisticsSystem;

    aput-object v4, v0, v1

    const/16 v1, 0x18

    const-class v4, Lcom/prineside/tdi2/systems/ScriptSystem;

    aput-object v4, v0, v1

    sput-object v0, Lcom/prineside/tdi2/GameSystemProvider;->k:[Ljava/lang/Class;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/GameSystemProvider;->p:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/GameSystemProvider;->q:Lcom/badlogic/gdx/utils/IntIntMap;

    new-instance v0, Lcom/prineside/tdi2/GameSystemProvider$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/GameSystemProvider$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/GameSystemProvider;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/GameSystemProvider;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/GameSystem;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    const/16 v0, 0x40

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->d:[J

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/GameSystem;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    const/16 v0, 0x40

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->d:[J

    iput-object p1, p0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/GameSystemProvider;Ljava/lang/Class;)Lcom/prineside/tdi2/GameSystem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/GameSystemProvider;->d(Ljava/lang/Class;)Lcom/prineside/tdi2/GameSystem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/GameSystemProvider;->k:[Ljava/lang/Class;

    return-object v0
.end method

.method public static unserialize(Lcom/esotericsoftware/kryo/io/Input;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->networkManager:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0, p0, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method


# virtual methods
.method public addSystem(Lcom/prineside/tdi2/GameSystem;)V
    .locals 2

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/prineside/tdi2/systems/InventorySystem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/InventorySystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    :cond_0
    instance-of v0, p1, Lcom/prineside/tdi2/systems/MapEditorSystem;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/MapEditorSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    :cond_1
    instance-of v0, p1, Lcom/prineside/tdi2/systems/StateSystem;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/StateSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->state:Lcom/prineside/tdi2/systems/StateSystem;

    :cond_2
    instance-of v0, p1, Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/GameStateSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    :cond_3
    instance-of v0, p1, Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/SoundSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    :cond_4
    instance-of v0, p1, Lcom/prineside/tdi2/systems/AchievementSystem;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/AchievementSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    :cond_5
    instance-of v0, p1, Lcom/prineside/tdi2/systems/InputSystem;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/InputSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    :cond_6
    instance-of v0, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/GraphicsSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    :cond_7
    instance-of v0, p1, Lcom/prineside/tdi2/systems/MapRenderingSystem;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    :cond_8
    instance-of v0, p1, Lcom/prineside/tdi2/systems/PathRenderingSystem;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_pathRendering:Lcom/prineside/tdi2/systems/PathRenderingSystem;

    :cond_9
    instance-of v0, p1, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    :cond_a
    instance-of v0, p1, Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/ParticleSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    :cond_b
    instance-of v0, p1, Lcom/prineside/tdi2/systems/GameValueSystem;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/GameValueSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    :cond_c
    instance-of v0, p1, Lcom/prineside/tdi2/systems/QuestSystem;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/QuestSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    :cond_d
    instance-of v0, p1, Lcom/prineside/tdi2/systems/BuffSystem;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/BuffSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    :cond_e
    instance-of v0, p1, Lcom/prineside/tdi2/systems/LootSystem;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/LootSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    :cond_f
    instance-of v0, p1, Lcom/prineside/tdi2/systems/EnemySystem;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/EnemySystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    :cond_10
    instance-of v0, p1, Lcom/prineside/tdi2/systems/UnitSystem;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/UnitSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    :cond_11
    instance-of v0, p1, Lcom/prineside/tdi2/systems/AbilitySystem;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/AbilitySystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    :cond_12
    instance-of v0, p1, Lcom/prineside/tdi2/systems/MapSystem;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/MapSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    :cond_13
    instance-of v0, p1, Lcom/prineside/tdi2/systems/ProjectileSystem;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/ProjectileSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    :cond_14
    instance-of v0, p1, Lcom/prineside/tdi2/systems/ExplosionSystem;

    if-eqz v0, :cond_15

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/ExplosionSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->explosion:Lcom/prineside/tdi2/systems/ExplosionSystem;

    :cond_15
    instance-of v0, p1, Lcom/prineside/tdi2/systems/TowerSystem;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/TowerSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    :cond_16
    instance-of v0, p1, Lcom/prineside/tdi2/systems/MinerSystem;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/MinerSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    :cond_17
    instance-of v0, p1, Lcom/prineside/tdi2/systems/ModifierSystem;

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/ModifierSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    :cond_18
    instance-of v0, p1, Lcom/prineside/tdi2/systems/WaveSystem;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/WaveSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    :cond_19
    instance-of v0, p1, Lcom/prineside/tdi2/systems/StatisticsSystem;

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/systems/StatisticsSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    :cond_1a
    instance-of v0, p1, Lcom/prineside/tdi2/systems/ScriptSystem;

    if-eqz v0, :cond_1b

    check-cast p1, Lcom/prineside/tdi2/systems/ScriptSystem;

    iput-object p1, p0, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    :cond_1b
    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "System is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compareSync(Lcom/prineside/tdi2/GameSystemProvider;Lcom/badlogic/gdx/utils/StringBuilder;Z)V
    .locals 8

    sget-object v3, Lcom/prineside/tdi2/GameSystemProvider;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v7, Lcom/prineside/tdi2/GameSystemProvider;->q:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    const-string v0, "S"

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/16 v4, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v7

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    return-void
.end method

.method public createAndSetupNonStateAffectingSystemsAfterDeserialization()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/GameSystem;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    new-instance v1, Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-direct {v1}, Lcom/prineside/tdi2/systems/SoundSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/systems/InputSystem;

    invoke-direct {v1}, Lcom/prineside/tdi2/systems/InputSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/systems/GraphicsSystem;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/prineside/tdi2/systems/GraphicsSystem;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-direct {v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/systems/PathRenderingSystem;

    invoke-direct {v1}, Lcom/prineside/tdi2/systems/PathRenderingSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    invoke-direct {v1}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-direct {v1}, Lcom/prineside/tdi2/systems/ParticleSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-direct {v1}, Lcom/prineside/tdi2/systems/QuestSystem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/GameSystem;

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/GameSystemProvider;->e()V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/GameSystem;

    invoke-virtual {v2, p0}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/GameSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/GameSystem;->setup()V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/GameSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameSystem;->postSetup()V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/GameSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameSystem;->postStateRestore()V

    goto :goto_4

    :cond_4
    return-void
.end method

.method public createSystems()V
    .locals 3

    const-string v0, "GameSystemProvider"

    const-string v1, "createSystems"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->setup:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    sget-object v2, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->GAME:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    if-ne v1, v2, :cond_8

    iget-boolean v0, v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/SoundSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/systems/AchievementSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/AchievementSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v0, v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/prineside/tdi2/systems/InputSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/InputSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v0, v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    new-instance v0, Lcom/prineside/tdi2/systems/GraphicsSystem;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/systems/GraphicsSystem;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    :cond_2
    new-instance v0, Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/GameValueSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v0, v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-nez v0, :cond_3

    new-instance v0, Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/QuestSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    :cond_3
    new-instance v0, Lcom/prineside/tdi2/systems/BuffSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/BuffSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/LootSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/LootSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/EnemySystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/UnitSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/UnitSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/AbilitySystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/MapSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/MapSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v0, v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v0, v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/PathRenderingSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    :cond_5
    new-instance v0, Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/ProjectileSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/ExplosionSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/ExplosionSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/TowerSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/MinerSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/ModifierSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/ModifierSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v0, v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-nez v0, :cond_6

    new-instance v0, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v0, v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-nez v0, :cond_7

    new-instance v0, Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/ParticleSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    :cond_7
    new-instance v0, Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/WaveSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/StatisticsSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/ScriptSystem;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/systems/ScriptSystem;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->MAP_EDITOR:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    if-ne v1, v0, :cond_9

    new-instance v0, Lcom/prineside/tdi2/systems/StateSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/StateSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/InventorySystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/MapSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/MapSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/PathRenderingSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    new-instance v0, Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/ParticleSystem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/GameSystemProvider;->e()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v0, v1, :cond_a

    iget-object v2, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/GameSystem;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method public final d(Ljava/lang/Class;)Lcom/prineside/tdi2/GameSystem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/prineside/tdi2/GameSystem;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/GameSystem;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/GameSystem;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/GameSystem;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not registered"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public deepCopy()Lcom/prineside/tdi2/GameSystemProvider;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->networkManager:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    invoke-virtual {v0, p0}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/GameSystemProvider;

    return-object v0
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/GameSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    iget-object v2, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/GameSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_pathRendering:Lcom/prineside/tdi2/systems/PathRenderingSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->state:Lcom/prineside/tdi2/systems/StateSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->explosion:Lcom/prineside/tdi2/systems/ExplosionSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/prineside/tdi2/GameSystemProvider$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/GameSystemProvider$2;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public flushSystemsFrameProfiling()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/GameSystemProvider;->d:[J

    aget-wide v3, v2, v1

    iget-object v2, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/GameSystem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/GameSystem;->profileUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    iget-object v5, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/GameSystem;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/prineside/tdi2/GameSystem;->getSystemName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v4}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getSystemsOrdered()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/GameSystem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public postSetupSystems()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/GameSystem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/GameSystem;->postSetup()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 3

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iput-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/GameSystem;

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetSystemsFrameProfiling()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->d:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public serialize(Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->networkManager:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    invoke-virtual {v0, p1, p0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public setupSystems()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/GameSystem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/GameSystem;->setup()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateSystems()V
    .locals 12

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    iput-boolean v1, v0, Lcom/prineside/tdi2/systems/StateSystem;->inUpdateStage:Z

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v2, v0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    rem-int/lit16 v2, v2, 0x2710

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-wide v4, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->validationStartTimestamp:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    mul-float v2, v2, v3

    iget v0, v0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    check-cast v2, Lcom/prineside/tdi2/HeadlessReplayValidationGame;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validating|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v5, v5, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v5, v5, Lcom/prineside/tdi2/systems/GameStateSystem;->validationLastUpdateNumber:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->writeServerStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v0, v0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    rem-int/lit16 v0, v0, 0x4e20

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v2, v2, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "k"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GameSystemProvider"

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v5

    iget-object v7, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/GameSystem;

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    if-nez v8, :cond_1

    sget v8, Lcom/prineside/tdi2/Config;->UPDATE_DELTA_TIME:F

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v8

    :goto_1
    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/GameSystem;->update(F)V

    iget-object v7, p0, Lcom/prineside/tdi2/GameSystemProvider;->d:[J

    aget-wide v8, v7, v4

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v10

    sub-long/2addr v10, v5

    add-long/2addr v8, v10

    aput-wide v8, v7, v4

    add-int/2addr v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_3

    iput-boolean v2, v0, Lcom/prineside/tdi2/systems/StateSystem;->inUpdateStage:Z

    :cond_3
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_1

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/GameSystem;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/prineside/tdi2/GameSystem;->affectsGameState()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p2, v2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_3

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/GameSystem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameSystem;->affectsGameState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/GameSystem;

    aget-object v1, v1, v0

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
