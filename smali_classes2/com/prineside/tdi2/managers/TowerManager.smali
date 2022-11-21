.class public Lcom/prineside/tdi2/managers/TowerManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/TowerManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;,
        Lcom/prineside/tdi2/managers/TowerManager$Factories;,
        Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;,
        Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;,
        Lcom/prineside/tdi2/managers/TowerManager$Serializer;
    }
.end annotation


# static fields
.field public static final STAT_ROUNDING_CEIL:I = 0x3

.field public static final STAT_ROUNDING_FLOOR:I = 0x1

.field public static final STAT_ROUNDING_MIDDLE:I = 0x2

.field public static final STAT_ROUNDING_NONE:I


# instance fields
.field public final A:[Lcom/prineside/tdi2/enums/GameValueType;

.field public final B:[Lcom/prineside/tdi2/enums/GameValueType;

.field public final C:[Lcom/prineside/tdi2/enums/GameValueType;

.field public final D:[Lcom/prineside/tdi2/enums/GameValueType;

.field public final E:[Lcom/prineside/tdi2/enums/GameValueType;

.field public final F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

.field public final G:[Lcom/prineside/tdi2/enums/GameValueType;

.field public final SHORT_TOWER_ALIASES:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/TowerType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final a:[Lcom/prineside/tdi2/Tower$Factory;

.field public abilityAvailableParticleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public final b:[Ljava/lang/String;

.field public final canTowerAttackEnemy:[[Z

.field public final d:[Ljava/lang/String;

.field public highlightParticles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public final k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

.field public lvlUpParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public final p:[Lcom/prineside/tdi2/enums/StatisticsType;

.field public final q:[Lcom/prineside/tdi2/enums/StatisticsType;

.field public final r:[Lcom/prineside/tdi2/enums/StatisticsType;

.field public final s:[Lcom/prineside/tdi2/enums/StatisticsType;

.field public final t:[Lcom/prineside/tdi2/enums/StatisticsType;

.field public final towerEnemyDamageMultiplier:[[F

.field public final u:[Lcom/prineside/tdi2/enums/StatisticsType;

.field public upgradeParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public final v:[Ljava/lang/String;

.field public final w:[Ljava/lang/String;

.field public final x:[Ljava/lang/String;

.field public final y:[Lcom/prineside/tdi2/enums/GameValueType;

.field public final z:[Lcom/prineside/tdi2/enums/GameValueType;


# direct methods
.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/Tower$Factory;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->b:[Ljava/lang/String;

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->d:[Ljava/lang/String;

    new-instance v2, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->SHORT_TOWER_ALIASES:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->BASIC:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "B"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->SNIPER:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "S"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->CANNON:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "C"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->FREEZING:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "F"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->VENOM:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "V"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->SPLASH:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "SP"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->BLAST:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "BL"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->MULTISHOT:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "M"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->MINIGUN:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "MI"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->AIR:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "A"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->TESLA:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "T"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->MISSILE:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "MS"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->FLAMETHROWER:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "FL"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->LASER:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "L"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->GAUSS:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "G"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->CRUSHER:Lcom/prineside/tdi2/enums/TowerType;

    const-string v4, "CR"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v3, v2

    array-length v4, v0

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v4, v6, v7

    const/4 v4, 0x0

    aput v3, v6, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/prineside/tdi2/managers/TowerManager;->canTowerAttackEnemy:[[Z

    array-length v2, v2

    array-length v3, v0

    new-array v5, v5, [I

    aput v3, v5, v7

    aput v2, v5, v4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->towerEnemyDamageMultiplier:[[F

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->p:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->q:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->r:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->s:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->t:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->u:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->v:[Ljava/lang/String;

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->w:[Ljava/lang/String;

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->x:[Ljava/lang/String;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->y:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->z:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->A:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->B:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->C:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->D:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->E:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, v0

    new-array v2, v2, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->G:[Lcom/prineside/tdi2/enums/GameValueType;

    new-instance v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/TowerManager$Factories;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    array-length v0, v0

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->highlightParticles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->b:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aim_strategy_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->d:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->FIRST:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-target-first"

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->d:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->LAST:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-target-last"

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->d:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->STRONGEST:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-target-strong"

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->d:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->WEAKEST:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-target-weak"

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->d:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->NEAREST:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-target-near"

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->d:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->RANDOM:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "icon-target-random"

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->SHORT_TOWER_ALIASES:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/prineside/tdi2/managers/TowerManager;->p:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TMS_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v9

    aput-object v9, v6, v8

    iget-object v6, p0, Lcom/prineside/tdi2/managers/TowerManager;->q:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TDD_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v9

    aput-object v9, v6, v8

    iget-object v6, p0, Lcom/prineside/tdi2/managers/TowerManager;->r:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TB_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v9

    aput-object v9, v6, v8

    iget-object v6, p0, Lcom/prineside/tdi2/managers/TowerManager;->s:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TS_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v9

    aput-object v9, v6, v8

    iget-object v6, p0, Lcom/prineside/tdi2/managers/TowerManager;->t:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TU_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v9

    aput-object v9, v6, v8

    iget-object v6, p0, Lcom/prineside/tdi2/managers/TowerManager;->u:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TEK_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v5

    aput-object v5, v6, v8

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->v:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tower_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->w:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tower_description_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->x:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tower_unique_stat_description_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->y:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TOWER_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_UPGRADE_PRICE"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v8

    aput-object v8, v5, v6

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->z:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_PRICE"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v8

    aput-object v8, v5, v6

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->A:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_MAX_EXP_LEVEL"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v8

    aput-object v8, v5, v6

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->B:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_MAX_UPGRADE_LEVEL"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v8

    aput-object v8, v5, v6

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->C:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_EXPERIENCE_GENERATION"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v8

    aput-object v8, v5, v6

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->D:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_EXPERIENCE_MULTIPLIER"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v8

    aput-object v8, v5, v6

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->E:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TOWER_TYPE_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v8

    aput-object v8, v5, v6

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->G:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_STARTING_LEVEL"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v3

    aput-object v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->BASIC:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/BasicTower$BasicTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/BasicTower$BasicTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->BASIC:Lcom/prineside/tdi2/towers/BasicTower$BasicTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->AIR:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/AirTower$AirTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/AirTower$AirTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->AIR:Lcom/prineside/tdi2/towers/AirTower$AirTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->BLAST:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/BlastTower$BlastTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/BlastTower$BlastTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->BLAST:Lcom/prineside/tdi2/towers/BlastTower$BlastTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->CANNON:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/CannonTower$CannonTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/CannonTower$CannonTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->CANNON:Lcom/prineside/tdi2/towers/CannonTower$CannonTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->FREEZING:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FREEZING:Lcom/prineside/tdi2/towers/FreezingTower$FreezingTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->MINIGUN:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MINIGUN:Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->MISSILE:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MISSILE:Lcom/prineside/tdi2/towers/MissileTower$MissileTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->MULTISHOT:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/MultishotTower$MultishotTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/MultishotTower$MultishotTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->MULTISHOT:Lcom/prineside/tdi2/towers/MultishotTower$MultishotTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->SNIPER:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SNIPER:Lcom/prineside/tdi2/towers/SniperTower$SniperTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->SPLASH:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/SplashTower$SplashTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/SplashTower$SplashTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SPLASH:Lcom/prineside/tdi2/towers/SplashTower$SplashTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->TESLA:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/TeslaTower$TeslaTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/TeslaTower$TeslaTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->TESLA:Lcom/prineside/tdi2/towers/TeslaTower$TeslaTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->VENOM:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/VenomTower$VenomTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/VenomTower$VenomTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->VENOM:Lcom/prineside/tdi2/towers/VenomTower$VenomTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->FLAMETHROWER:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/FlamethrowerTower$FlamethrowerTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/FlamethrowerTower$FlamethrowerTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FLAMETHROWER:Lcom/prineside/tdi2/towers/FlamethrowerTower$FlamethrowerTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->LASER:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/LaserTower$LaserTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/LaserTower$LaserTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->LASER:Lcom/prineside/tdi2/towers/LaserTower$LaserTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->GAUSS:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->GAUSS:Lcom/prineside/tdi2/towers/GaussTower$GaussTowerFactory;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->CRUSHER:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    new-instance v3, Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;-><init>()V

    iput-object v3, v2, Lcom/prineside/tdi2/managers/TowerManager$Factories;->CRUSHER:Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;

    aput-object v3, v0, v1

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget-object v5, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v5, v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all tower factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "res/tower-enemy-attack-matrix.json"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-string v2, "columns"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prineside/tdi2/enums/TowerType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TowerType;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const-string v3, "values"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v6, v5, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/prineside/tdi2/enums/EnemyType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v6

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v5

    const/4 v8, 0x0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v10, p0, Lcom/prineside/tdi2/managers/TowerManager;->canTowerAttackEnemy:[[Z

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v9

    aput-boolean v9, v10, v11

    add-int/2addr v8, v7

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "res/tower-enemy-damage-matrix.json"

    invoke-interface {v1, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prineside/tdi2/enums/TowerType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TowerType;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/prineside/tdi2/enums/EnemyType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v8, p0, Lcom/prineside/tdi2/managers/TowerManager;->towerEnemyDamageMultiplier:[[F

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v6

    aput v6, v8, v9

    add-int/2addr v5, v7

    goto :goto_6

    :cond_9
    return-void
.end method


# virtual methods
.method public clampStat(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;F)F
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->c:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;

    iget p2, p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->minValue:F

    const/4 v0, 0x1

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    cmpg-float v0, p3, p2

    if-gez v0, :cond_0

    move p3, p2

    :cond_0
    iget p2, p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->maxValue:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    cmpl-float v0, p3, p2

    if-lez v0, :cond_1

    move p3, p2

    :cond_1
    iget p1, p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->rounding:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    goto :goto_0

    :cond_4
    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    :goto_0
    int-to-float p3, p1

    :goto_1
    return p3
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tower;
    .locals 1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/TowerType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TowerType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower$Factory;->create()Lcom/prineside/tdi2/Tower;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Tower;->loadFromJson(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0
.end method

.method public getAbilitiesConfig(Lcom/prineside/tdi2/enums/TowerType;)[Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->e:[Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;

    return-object p1
.end method

.method public getAimStrategyColor(Lcom/prineside/tdi2/Tower$AimStrategy;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/TowerManager$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P700:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P900:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_3
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :pswitch_5
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P800:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAimStrategyIcon(Lcom/prineside/tdi2/Tower$AimStrategy;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyIconAlias(Lcom/prineside/tdi2/Tower$AimStrategy;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    return-object p1
.end method

.method public getAimStrategyIconAlias(Lcom/prineside/tdi2/Tower$AimStrategy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->d:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAimStrategyName(Lcom/prineside/tdi2/Tower$AimStrategy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->b:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBuiltStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->r:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getDamageDealtStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->q:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getDescription(Lcom/prineside/tdi2/enums/TowerType;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/TowerManager;->w:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEnemiesKilledStatisticsType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->u:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getExperienceGenerationGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->C:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getExperienceMultiplierGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->D:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/TowerType;",
            ")",
            "Lcom/prineside/tdi2/Tower$Factory<",
            "+",
            "Lcom/prineside/tdi2/Tower;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getGeneralizedTowerStatColor(Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/TowerManager$1;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_3
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_4
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method

.method public getGeneralizedTowerStatName(Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;)Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/TowerManager$1;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "generalized_tower_stat_AGILITY"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "generalized_tower_stat_CROWD_DAMAGE"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "generalized_tower_stat_DAMAGE"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "generalized_tower_stat_ATTACK_SPEED"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "generalized_tower_stat_RANGE"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaxExpLevelGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->A:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMaxUpgradeLevelGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->B:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMoneySpentStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->p:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPriceGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->z:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSoldStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->s:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getStartingLevelGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->G:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getStatBarCoeff(Lcom/prineside/tdi2/enums/TowerStatType;FF)F
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v0, :cond_3

    const/high16 p1, 0x447a0000    # 1000.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/math/Interpolation;->pow3Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x453b8000    # 3000.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    sget-object p1, Lcom/badlogic/gdx/math/Interpolation;->pow4Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result p1

    goto :goto_0

    :cond_1
    const p1, 0x461c4000    # 10000.0f

    cmpg-float v0, p3, p1

    if-gez v0, :cond_2

    sget-object p1, Lcom/badlogic/gdx/math/Interpolation;->pow5Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result p1

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/badlogic/gdx/math/Interpolation;->pow5Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    div-float/2addr p2, p1

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result p1

    goto :goto_0

    :cond_3
    div-float p1, p2, p3

    :goto_0
    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public getStatConfig(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;)Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->c:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;

    return-object p1
.end method

.method public getStatFromConfig(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;IILcom/prineside/tdi2/GameValueProvider;)F
    .locals 3

    if-eqz p5, :cond_8

    const/16 v0, 0xa

    if-gt p3, v0, :cond_7

    const/16 v0, 0x100

    if-gt p4, v0, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->c:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;

    if-eqz v0, :cond_5

    iget-boolean p1, v0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->unique:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->values:[F

    sub-int/2addr p4, p2

    aget p1, p1, p4

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->values:[F

    aget p1, p1, p3

    :goto_0
    iget-object p3, v0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->gameValueMultipliers:[Lcom/prineside/tdi2/enums/GameValueType;

    if-eqz p3, :cond_1

    float-to-double v1, p1

    invoke-interface {p5, p3}, Lcom/prineside/tdi2/GameValueProvider;->getPercentValueAsMultiplier([Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide p3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, p3

    double-to-float p1, v1

    :cond_1
    iget p3, v0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->rounding:I

    if-eq p3, p2, :cond_4

    const/4 p2, 0x2

    if-eq p3, p2, :cond_3

    const/4 p2, 0x3

    if-eq p3, p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result p1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    :goto_1
    int-to-float p1, p1

    :goto_2
    return p1

    :cond_5
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Experience level is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", max 20"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Upgrade level is "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", max 10"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "gvp is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStatTypes(Lcom/prineside/tdi2/enums/TowerType;)[Lcom/prineside/tdi2/enums/TowerStatType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->d:[Lcom/prineside/tdi2/enums/TowerStatType;

    return-object p1
.end method

.method public getTextureConfig(Lcom/prineside/tdi2/enums/TowerType;Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/TowerType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->f:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    return-object p1
.end method

.method public getTitle(Lcom/prineside/tdi2/enums/TowerType;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/TowerManager;->v:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTowerGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->E:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getUniqueStatDescription(Lcom/prineside/tdi2/enums/TowerType;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/TowerManager;->x:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUpgradePrice(Lcom/prineside/tdi2/enums/TowerType;ILcom/prineside/tdi2/GameValueProvider;)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->a:[I

    add-int/lit8 p2, p2, -0x1

    aget p2, v0, p2

    int-to-double v0, p2

    sget-object p2, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_UPGRADE_PRICE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getUpgradePriceGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/prineside/tdi2/GameValueProvider;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public getUpgradePriceGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->y:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getUpgradePriceMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    iget p1, p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->b:F

    return p1
.end method

.method public getUpgradedStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->t:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hasStat(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->c:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result p1

    return p1
.end method

.method public reloadTowerStats()V
    .locals 18

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "res/tower-stats.json"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/prineside/tdi2/enums/TowerType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TowerType;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;-><init>(Lcom/prineside/tdi2/managers/TowerManager$1;)V

    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/prineside/tdi2/managers/TowerManager;->k:[Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput-object v3, v6, v7

    const-string v6, "prices"

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v10, v3, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->a:[I

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v9

    aput v9, v10, v8

    move v8, v11

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    const-string v9, " has "

    const-string v10, "Tower "

    if-ne v8, v6, :cond_11

    const-string v6, "upgradePriceMultiplier"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v6

    iput v6, v3, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->b:F

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "textures"

    if-eqz v6, :cond_2

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/utils/JsonValue;

    new-instance v13, Lcom/badlogic/gdx/utils/Array;

    const-class v14, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iget-object v14, v3, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->f:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v15, v12, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-static {v14}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/utils/TextureRegionConfig;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-string v6, "stats"

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    new-instance v12, Lcom/badlogic/gdx/utils/Array;

    const-class v13, Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v14, v13, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v14}, Lcom/prineside/tdi2/enums/TowerStatType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TowerStatType;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;

    invoke-direct {v15}, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;-><init>()V

    iget-object v4, v3, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->c:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v4, v8, v15}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    const-string v8, "min"

    invoke-virtual {v13, v8, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->minValue:F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const-string v8, "max"

    invoke-virtual {v13, v8, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->maxValue:F

    const-string v4, "unique"

    invoke-virtual {v13, v4, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->unique:Z

    const-string v4, "pwrFactor"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v13, v4, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->pwrFactor:F

    const-string v4, "rounding"

    const/4 v8, 0x0

    invoke-virtual {v13, v4, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const/16 v16, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/4 v7, 0x1

    sparse-switch v17, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v8, "floor"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    const/16 v16, 0x2

    goto :goto_4

    :sswitch_1
    const-string v8, "ceil"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    const/16 v16, 0x1

    goto :goto_4

    :sswitch_2
    const-string v8, "middle"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    :goto_4
    packed-switch v16, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    iput v7, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->rounding:I

    goto :goto_5

    :pswitch_1
    const/4 v4, 0x3

    iput v4, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->rounding:I

    goto :goto_5

    :pswitch_2
    const/4 v4, 0x2

    iput v4, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->rounding:I

    :cond_6
    :goto_5
    const-string v4, "gvMultipliers"

    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/utils/JsonValue;->hasChild(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    const-class v8, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v4, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->gameValueMultipliers:[Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v4, 0x0

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    new-array v7, v4, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v7, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->gameValueMultipliers:[Lcom/prineside/tdi2/enums/GameValueType;

    :goto_7
    iget-boolean v7, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->unique:Z

    if-eqz v7, :cond_9

    const/16 v7, 0x100

    new-array v7, v7, [F

    iput-object v7, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->values:[F

    goto :goto_8

    :cond_9
    const/16 v7, 0xb

    new-array v7, v7, [F

    iput-object v7, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->values:[F

    :goto_8
    const-string v7, "values"

    invoke-virtual {v13, v7}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v13, v7}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v4, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->values:[F

    add-int/lit8 v16, v8, 0x1

    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v13

    aput v13, v4, v8

    move/from16 v8, v16

    const/4 v4, 0x0

    goto :goto_9

    :cond_a
    iget-object v4, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->values:[F

    array-length v4, v4

    if-ne v8, v4, :cond_b

    goto :goto_b

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->values:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " values for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string v4, "startValue"

    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v4

    const-string v7, "valueDelta"

    invoke-virtual {v13, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v8, 0x0

    :goto_a
    iget-object v13, v15, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->values:[F

    array-length v14, v13

    if-ge v8, v14, :cond_d

    int-to-float v14, v8

    mul-float v14, v14, v7

    add-float/2addr v14, v4

    aput v14, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_d
    :goto_b
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/prineside/tdi2/enums/TowerStatType;

    iput-object v2, v3, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->d:[Lcom/prineside/tdi2/enums/TowerStatType;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v4, Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const-string v4, "abilities"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    new-instance v6, Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;

    invoke-direct {v6}, Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;-><init>()V

    const-string v7, "name"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;->name:Ljava/lang/String;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v7, :cond_f

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v8, v6, Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v7}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/utils/TextureRegionConfig;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_d

    :cond_f
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_c

    :cond_10
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;

    iput-object v1, v3, Lcom/prineside/tdi2/managers/TowerManager$TowerStatsConfig;->e:[Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;

    goto/16 :goto_0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/10 prices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v5, p0

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4009266b -> :sswitch_2
        0x2e8905 -> :sswitch_1
        0x5d0240c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setup()V
    .locals 11

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/TowerManager;->reloadTowerStats()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TowerManager;->a:[Lcom/prineside/tdi2/Tower$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tower$Factory;->setup()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "particles/ability-available-mark.prt"

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "upgrade-arrow-up"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/16 v3, 0x10

    const/16 v4, 0x400

    invoke-direct {v1, v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/TowerManager;->abilityAvailableParticleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "particles/upgrade.prt"

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-triangle-top"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/16 v3, 0x8

    const/16 v4, 0x200

    invoke-direct {v1, v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/TowerManager;->upgradeParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "particles/lvl-up.prt"

    invoke-interface {v1, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-lvl-plus"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-direct {v1, v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/TowerManager;->lvlUpParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    new-instance v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v8, "particles/building-highlight.prt"

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "tower-basic-base"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tower$Factory;->getBaseTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    new-instance v8, Lcom/badlogic/gdx/utils/Array;

    const-class v9, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    const/high16 v10, 0x43000000    # 128.0f

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createSprite(F)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setSprites(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    iget v9, v9, Lcom/prineside/tdi2/utils/TextureRegionConfig;->width:F

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    iget v7, v7, Lcom/prineside/tdi2/utils/TextureRegionConfig;->height:F

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleSize(F)V

    iget-object v7, p0, Lcom/prineside/tdi2/managers/TowerManager;->highlightParticles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/16 v9, 0x80

    invoke-direct {v8, v6, v3, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    aput-object v8, v7, v5

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method
