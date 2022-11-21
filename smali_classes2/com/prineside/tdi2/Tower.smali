.class public abstract Lcom/prineside/tdi2/Tower;
.super Lcom/prineside/tdi2/Building;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/prineside/tdi2/ScheduledUpdater$Updatable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Tower$AimStrategy;,
        Lcom/prineside/tdi2/Tower$Factory;,
        Lcom/prineside/tdi2/Tower$AimStrategyEnemyComparator;,
        Lcom/prineside/tdi2/Tower$FindEnemyFilter;,
        Lcom/prineside/tdi2/Tower$AbilityConfig;
    }
.end annotation


# static fields
.field public static final ABILITIES_COUNT:I = 0x6

.field public static final ABILITY_INDEX_POWERFUL:I = 0x5

.field public static final ABILITY_INDEX_SPECIAL:I = 0x3

.field public static final ABILITY_INDEX_ULTIMATE:I = 0x4

.field public static final ABILITY_NAMES:[Ljava/lang/String;

.field public static final DPS_STAT_INTERVAL:F = 10.0f

.field public static final DPS_STAT_SLOTS:I = 0xa

.field public static final H:Lcom/badlogic/gdx/graphics/Color;

.field public static final I:[Lcom/prineside/tdi2/Tower$AimStrategyEnemyComparator;

.field public static final J:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final K:Lcom/badlogic/gdx/math/Vector2;

.field public static L:I = 0x0
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public static final LEVEL_EXPERIENCE:[I

.field public static final LEVEL_EXPERIENCE_MILESTONES:[I

.field public static final MAX_LEVEL:I = 0x100

.field public static final MAX_UPGRADE_LEVEL:I = 0xa

.field public static final SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final searchEnemiesHelper:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:F

.field public B:F

.field public C:I

.field public D:[F

.field public E:I

.field public final F:Lcom/badlogic/gdx/utils/Array;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public G:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public abilityAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

.field public angle:F

.field public attackDisabled:Z

.field public b:F

.field public bonusCoinsBrought:F

.field public bountyModifiersNearby:I

.field public currentLevelExperience:F

.field public d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Modifier$ModifierSidePair;",
            ">;"
        }
    .end annotation
.end field

.field public damageGiven:F

.field public dpsDamage:[F

.field public dpsTime:[F

.field public enemiesKilled:I

.field public experience:F

.field public experienceGeneration:F

.field public experienceMultiplier:F

.field public id:I

.field public installedAbilities:[Z

.field public k:I

.field public mdps:F

.field public minRangeInPixels:F

.field public moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

.field public nextLevelExperience:F

.field public outOfOrder:Z

.field public p:I

.field public q:I

.field public r:I

.field public rangeInPixels:F

.field public rangeInPixelsSqr:F

.field public s:I

.field public shotCount:I

.field public t:I

.field public type:Lcom/prineside/tdi2/enums/TowerType;

.field public u:I

.field public v:F

.field public w:Z

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0f5c29    # 0.56f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/Tower;->H:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3e570a3d    # 0.21f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/Tower;->SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "SPECIAL"

    const/4 v6, 0x3

    aput-object v3, v1, v6

    const-string v3, "ULTIMATE"

    const/4 v7, 0x4

    aput-object v3, v1, v7

    const-string v3, "POWERFUL"

    const/4 v8, 0x5

    aput-object v3, v1, v8

    sput-object v1, Lcom/prineside/tdi2/Tower;->ABILITY_NAMES:[Ljava/lang/String;

    const/16 v1, 0x101

    new-array v3, v1, [I

    sput-object v3, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE:[I

    aput v2, v3, v2

    aput v2, v3, v4

    const/16 v4, 0x1e

    aput v4, v3, v5

    const/16 v4, 0x28

    aput v4, v3, v6

    const/16 v4, 0x3c

    aput v4, v3, v7

    const/16 v4, 0x5a

    aput v4, v3, v8

    const/16 v4, 0x8c

    aput v4, v3, v0

    const/4 v0, 0x7

    const/16 v4, 0xd2

    aput v4, v3, v0

    const/16 v0, 0x8

    const/16 v4, 0x118

    aput v4, v3, v0

    const/16 v0, 0x9

    const/16 v4, 0x154

    aput v4, v3, v0

    const/16 v0, 0xa

    const/16 v4, 0x1f4

    aput v4, v3, v0

    const/16 v0, 0xb

    const/16 v4, 0x258

    aput v4, v3, v0

    const/16 v0, 0xc

    const/16 v4, 0x28a

    aput v4, v3, v0

    const/16 v0, 0xd

    const/16 v4, 0x2bc

    aput v4, v3, v0

    const/16 v0, 0xe

    const/16 v4, 0x2ee

    aput v4, v3, v0

    const/16 v0, 0xf

    const/16 v4, 0x320

    aput v4, v3, v0

    const/16 v0, 0x10

    const/16 v4, 0x352

    aput v4, v3, v0

    const/16 v0, 0x11

    const/16 v4, 0x384

    aput v4, v3, v0

    const/16 v0, 0x12

    const/16 v4, 0x3b6

    aput v4, v3, v0

    const/16 v0, 0x13

    const/16 v4, 0x3e8

    aput v4, v3, v0

    const/16 v0, 0x14

    const/16 v4, 0x41a

    aput v4, v3, v0

    const/16 v0, 0x15

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v3, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE:[I

    add-int/lit8 v5, v0, -0x14

    mul-int/lit8 v5, v5, 0x32

    add-int/2addr v5, v4

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    sput-object v0, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE_MILESTONES:[I

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x100

    if-gt v2, v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE_MILESTONES:[I

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/Tower$AimStrategyEnemyComparator;

    sput-object v0, Lcom/prineside/tdi2/Tower;->I:[Lcom/prineside/tdi2/Tower$AimStrategyEnemyComparator;

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->FIRST:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/Tower$1;

    invoke-direct {v2}, Lcom/prineside/tdi2/Tower$1;-><init>()V

    aput-object v2, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->LAST:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/Tower$2;

    invoke-direct {v2}, Lcom/prineside/tdi2/Tower$2;-><init>()V

    aput-object v2, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->WEAKEST:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/Tower$3;

    invoke-direct {v2}, Lcom/prineside/tdi2/Tower$3;-><init>()V

    aput-object v2, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->STRONGEST:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/Tower$4;

    invoke-direct {v2}, Lcom/prineside/tdi2/Tower$4;-><init>()V

    aput-object v2, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->NEAREST:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/Tower$5;

    invoke-direct {v2}, Lcom/prineside/tdi2/Tower$5;-><init>()V

    aput-object v2, v0, v1

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/Tower;->searchEnemiesHelper:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Tower;->J:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Tower;->K:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, -0x1

    sput v0, Lcom/prineside/tdi2/Tower;->L:I

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/TowerType;)V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Building;-><init>(Lcom/prineside/tdi2/enums/BuildingType;)V

    sget-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->FIRST:Lcom/prineside/tdi2/Tower$AimStrategy;

    iput-object v0, p0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    new-instance v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;-><init>(II)V

    iput-object v0, p0, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Tower;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/Tower;->damageGiven:F

    iput v1, p0, Lcom/prineside/tdi2/Tower;->shotCount:I

    iput v0, p0, Lcom/prineside/tdi2/Tower;->angle:F

    iput v0, p0, Lcom/prineside/tdi2/Tower;->experience:F

    iput v0, p0, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    iput v0, p0, Lcom/prineside/tdi2/Tower;->nextLevelExperience:F

    iput v3, p0, Lcom/prineside/tdi2/Tower;->x:I

    iput v1, p0, Lcom/prineside/tdi2/Tower;->y:I

    const/4 v2, 0x6

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    iput v0, p0, Lcom/prineside/tdi2/Tower;->experienceGeneration:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/prineside/tdi2/Tower;->experienceMultiplier:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/prineside/tdi2/Tower;->C:I

    sget-object v2, Lcom/prineside/tdi2/enums/TowerStatType;->values:[Lcom/prineside/tdi2/enums/TowerStatType;

    array-length v2, v2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->D:[F

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v4, Lcom/prineside/tdi2/Tile;

    invoke-direct {v2, v1, v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->F:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->G:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/16 v2, 0xa

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/prineside/tdi2/Tower;->dpsDamage:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->dpsTime:[F

    iput v0, p0, Lcom/prineside/tdi2/Tower;->mdps:F

    iput v1, p0, Lcom/prineside/tdi2/Tower;->enemiesKilled:I

    iput v0, p0, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    iput-object p1, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/utils/ObjectFilter;Lcom/prineside/tdi2/Enemy;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->d(Lcom/prineside/tdi2/utils/ObjectFilter;Lcom/prineside/tdi2/Enemy;)Z

    move-result p0

    return p0
.end method

.method private synthetic d(Lcom/prineside/tdi2/utils/ObjectFilter;Lcom/prineside/tdi2/Enemy;)Z
    .locals 3

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectFilter;->passes(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    if-eqz p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/Tower;->getEnemyPriority(Lcom/prineside/tdi2/Enemy;)I

    move-result p1

    sget p2, Lcom/prineside/tdi2/Tower;->L:I

    if-le p1, p2, :cond_2

    sput p1, Lcom/prineside/tdi2/Tower;->L:I

    sget-object p1, Lcom/prineside/tdi2/Tower;->searchEnemiesHelper:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return v1

    :cond_2
    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static getExpLevelStatBonusPercentage(ILcom/prineside/tdi2/GameValueProvider;)F
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_POWER_PER_LEVEL_TILL_10:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/GameValueProvider;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    const/16 v2, 0xb

    if-ge p0, v2, :cond_0

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p0

    :goto_0
    double-to-float p0, v0

    return p0

    :cond_0
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    add-int/lit8 p0, p0, -0xa

    int-to-double v2, p0

    sget-object p0, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_POWER_PER_LEVEL_AFTER_10:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p1, p0}, Lcom/prineside/tdi2/GameValueProvider;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static getLevelForExperience(F)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x100

    if-gt v0, v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE_MILESTONES:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public addExperience(F)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Tower;->experience:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->setExperience(F)V

    return-void
.end method

.method public applyDrawInterpolation(F)V
    .locals 0

    return-void
.end method

.method public attack(I)V
    .locals 0

    return-void
.end method

.method public b(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v9, p2

    move/from16 v11, p3

    move-object/from16 v1, p4

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v3, v0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v12

    sget-object v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    const/high16 v13, 0x40400000    # 3.0f

    const/high16 v14, 0x40e00000    # 7.0f

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v12, Lcom/prineside/tdi2/Tower$Factory;->roundedSmallRectTextureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v7, v9

    add-float v3, v7, v14

    int-to-float v8, v11

    add-float v4, v8, v14

    const/high16 v5, 0x42100000    # 36.0f

    const/high16 v6, 0x42100000    # 36.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v1, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    add-float v3, v7, v13

    add-float v4, v8, v13

    const/high16 v5, 0x42300000    # 44.0f

    const/high16 v6, 0x42300000    # 44.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/tiles/PlatformTile;->drawBonusExtras(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFZZ)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->canAim()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, v0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyColor(Lcom/prineside/tdi2/Tower$AimStrategy;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v12, Lcom/prineside/tdi2/Tower$Factory;->roundedSmallRectTextureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int/lit16 v1, v9, 0x80

    int-to-float v1, v1

    sub-float/2addr v1, v14

    const/high16 v3, 0x42100000    # 36.0f

    sub-float v7, v1, v3

    add-int/lit16 v1, v11, 0x80

    int-to-float v1, v1

    sub-float/2addr v1, v3

    sub-float v8, v1, v14

    const/high16 v5, 0x42100000    # 36.0f

    const/high16 v6, 0x42100000    # 36.0f

    move-object/from16 v1, p1

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v1, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, v0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyIcon(Lcom/prineside/tdi2/Tower$AimStrategy;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    sget-object v14, Lcom/prineside/tdi2/Tower;->J:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget v1, v0, Lcom/prineside/tdi2/Tower;->y:I

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    sget v16, Lcom/prineside/tdi2/Config;->BLACK_SEMITRANSPARENT_COLOR_FLOAT_BITS:F

    int-to-float v9, v9

    add-float v5, v9, v13

    int-to-float v1, v11

    const/high16 v2, 0x42940000    # 74.0f

    add-float v11, v1, v2

    sub-float v6, v11, v13

    const/high16 v7, 0x43000000    # 128.0f

    const/4 v8, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v12

    move/from16 v4, v16

    move/from16 v17, v9

    move v9, v13

    invoke-static/range {v1 .. v9}, Lcom/prineside/tdi2/utils/DrawUtils;->drawFontToCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFFFIZ)V

    sget-object v1, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v4

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move/from16 v5, v17

    move v6, v11

    invoke-static/range {v1 .. v9}, Lcom/prineside/tdi2/utils/DrawUtils;->drawFontToCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFFFIZ)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-string v1, "L"

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/prineside/tdi2/Tower;->x:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const/high16 v1, 0x40000000    # 2.0f

    add-float v5, v17, v1

    sub-float v1, v11, v1

    const/high16 v13, 0x42200000    # 40.0f

    sub-float v6, v1, v13

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v12

    move/from16 v4, v16

    invoke-static/range {v1 .. v9}, Lcom/prineside/tdi2/utils/DrawUtils;->drawFontToCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFFFIZ)V

    sget v4, Lcom/prineside/tdi2/Config;->WHITE_SEMITRANSPARENT_COLOR_FLOAT_BITS:F

    sub-float v6, v11, v13

    move/from16 v5, v17

    invoke-static/range {v1 .. v9}, Lcom/prineside/tdi2/utils/DrawUtils;->drawFontToCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFFFIZ)V

    :cond_3
    return-void
.end method

.method public c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Tower;->SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower$Factory;->getShadowTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    int-to-float p2, p2

    int-to-float p3, p3

    const/high16 v2, 0x43000000    # 128.0f

    invoke-static {v1, p1, p2, p3, v2}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawCache(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFF)V

    sget-object v1, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DEFAULT:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p4, v1, :cond_0

    sget-object p4, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower$Factory;->getBaseTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object p4

    invoke-static {p4, p1, p2, p3, v2}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawCache(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFF)V

    iget-object p4, v0, Lcom/prineside/tdi2/Tower$Factory;->weaponShadowTexture:Lcom/prineside/tdi2/utils/TextureRegionConfig;

    if-eqz p4, :cond_2

    invoke-virtual {p4, p1, p2, p3, v2}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFF)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-eq p4, v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p4, v1, :cond_2

    :cond_1
    sget-object p4, Lcom/prineside/tdi2/Tower;->H:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower$Factory;->getBaseTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object p4

    invoke-static {p4, p1, p2, p3, v2}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawCache(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFF)V

    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public canAbilityBeInstalled(I)Z
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    const/4 v4, 0x1

    if-ge p1, v0, :cond_6

    if-ge v3, v4, :cond_3

    iget p1, p0, Lcom/prineside/tdi2/Tower;->x:I

    if-ge p1, v2, :cond_4

    :cond_3
    const/4 p1, 0x2

    if-ge v3, p1, :cond_5

    iget p1, p0, Lcom/prineside/tdi2/Tower;->x:I

    const/4 v0, 0x7

    if-lt p1, v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    iget-object p1, p0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    aget-boolean v0, p1, v2

    if-nez v0, :cond_8

    const/4 v0, 0x5

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/prineside/tdi2/Tower;->x:I

    const/16 v0, 0x14

    if-lt p1, v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    :goto_1
    return v1
.end method

.method public abstract canAim()Z
.end method

.method public canAttack()Z
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prineside/tdi2/Tower;->attackDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget v2, p0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-static {v2, v0}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(F)F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/TowerSystem;->canTowerAttackEnemy:[[Z

    iget-object v1, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/prineside/tdi2/Enemy;->canBeAttackedBy(Lcom/prineside/tdi2/Tower;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canNewAbilityBeInstalled()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    const/4 v4, 0x3

    if-ge v1, v3, :cond_1

    if-eq v1, v4, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/prineside/tdi2/Tower;->x:I

    const/16 v3, 0x14

    const/4 v5, 0x1

    if-lt v1, v3, :cond_2

    if-lt v2, v4, :cond_4

    :cond_2
    const/4 v3, 0x7

    if-lt v1, v3, :cond_3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    :cond_3
    const/4 v3, 0x4

    if-lt v1, v3, :cond_5

    if-ge v2, v5, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public bridge synthetic cloneBuilding()Lcom/prineside/tdi2/Building;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->cloneBuilding()Lcom/prineside/tdi2/Tower;

    move-result-object v0

    return-object v0
.end method

.method public cloneBuilding()Lcom/prineside/tdi2/Tower;
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower$Factory;->create()Lcom/prineside/tdi2/Tower;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    iput-object v1, v0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    iget v1, p0, Lcom/prineside/tdi2/Tower;->y:I

    iput v1, v0, Lcom/prineside/tdi2/Tower;->y:I

    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    iget-object v2, v0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, p0, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    iput-boolean v1, v0, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    iget v1, p0, Lcom/prineside/tdi2/Tower;->angle:F

    iput v1, v0, Lcom/prineside/tdi2/Tower;->angle:F

    iget v1, p0, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    iput v1, v0, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    iget v1, p0, Lcom/prineside/tdi2/Tower;->damageGiven:F

    iput v1, v0, Lcom/prineside/tdi2/Tower;->damageGiven:F

    iget v1, p0, Lcom/prineside/tdi2/Tower;->experience:F

    iput v1, v0, Lcom/prineside/tdi2/Tower;->experience:F

    iget v1, p0, Lcom/prineside/tdi2/Tower;->x:I

    iput v1, v0, Lcom/prineside/tdi2/Tower;->x:I

    iget v1, p0, Lcom/prineside/tdi2/Tower;->nextLevelExperience:F

    iput v1, v0, Lcom/prineside/tdi2/Tower;->nextLevelExperience:F

    iget-object v1, v0, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    iget-object v2, p0, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v2}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    return-object v0
.end method

.method public customButtonAction(II)V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->b(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 7

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_TOWER_XP:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-boolean p2, p2, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v0, 0x15

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/Tower;->experience:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x42000000    # 32.0f

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v5, 0x42800000    # 64.0f

    sub-float/2addr v4, v5

    const/high16 v6, 0x42200000    # 40.0f

    add-float/2addr v4, v6

    invoke-virtual {p2, p1, v0, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clxp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    :cond_0
    return-void
.end method

.method public drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    return-void
.end method

.method public drawGlitch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 12

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const v9, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v7, v8, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-static {v6}, Lcom/prineside/tdi2/Tower$Factory;->a(Lcom/prineside/tdi2/Tower$Factory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    const v10, 0x40cccccd    # 6.4f

    sub-float/2addr v0, v10

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v2

    const v11, 0x414ccccd    # 12.8f

    mul-float v2, v2, v11

    add-float/2addr v0, v2

    sub-float v2, v0, v10

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    sub-float/2addr v0, v10

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v3

    mul-float v3, v3, v11

    add-float/2addr v0, v3

    sub-float v3, v0, v10

    const v4, 0x430ccccd    # 140.8f

    const v5, 0x430ccccd    # 140.8f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    invoke-virtual {p1, v8, v7, v7, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-static {v6}, Lcom/prineside/tdi2/Tower$Factory;->a(Lcom/prineside/tdi2/Tower$Factory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    sub-float/2addr v0, v10

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v2

    mul-float v2, v2, v11

    add-float/2addr v0, v2

    sub-float v2, v0, v10

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    sub-float/2addr v0, v10

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v3

    mul-float v3, v3, v11

    add-float/2addr v0, v3

    sub-float v3, v0, v10

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    invoke-virtual {p1, v7, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-static {v6}, Lcom/prineside/tdi2/Tower$Factory;->a(Lcom/prineside/tdi2/Tower$Factory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    sub-float/2addr v0, v10

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v2

    mul-float v2, v2, v11

    add-float/2addr v0, v2

    sub-float v2, v0, v10

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    sub-float/2addr v0, v10

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v3

    mul-float v3, v3, v11

    add-float/2addr v0, v3

    sub-float v3, v0, v10

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v6}, Lcom/prineside/tdi2/Tower$Factory;->a(Lcom/prineside/tdi2/Tower$Factory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    sub-float v2, v0, v10

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    sub-float v3, v0, v10

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public drawHoveredRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getMinRange()F

    move-result v0

    const/high16 v1, 0x43000000    # 128.0f

    mul-float v4, v0, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getRange()F

    move-result v0

    mul-float v5, v0, v1

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getMinRadius()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getMaxRadius()F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    :cond_0
    sget-object v6, Lcom/prineside/tdi2/systems/MapSystem;->TOWER_RANGE_HOVER_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/shapes/RangeCircle;->setup(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/RangeCircle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public drawSelectedRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getMinRange()F

    move-result v0

    const/high16 v1, 0x43000000    # 128.0f

    mul-float v4, v0, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getRange()F

    move-result v0

    mul-float v5, v0, v1

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getMinRadius()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/RangeCircle;->getMaxRadius()F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    :cond_0
    sget-object v6, Lcom/prineside/tdi2/systems/MapSystem;->TOWER_RANGE_SELECTED_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/shapes/RangeCircle;->setup(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/RangeCircle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public drawWeapon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p5

    iget-boolean p5, p5, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result p5

    if-nez p5, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getWeaponTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/prineside/tdi2/Tower;->angle:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFF)V

    :cond_0
    return-void
.end method

.method public e(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/prineside/tdi2/Tower;->rotateTo(FFFF)V

    :cond_0
    return-void
.end method

.method public fillTowerMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/Group;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_BUILDING_INFO:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    const-string v0, "_dbgBuildingInfo"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :goto_0
    sget-object p2, Lcom/prineside/tdi2/Tower;->J:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-string v0, "target: "

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "-"

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/Enemy;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v0, "targetSearchTime: "

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/prineside/tdi2/Tower;->z:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v0, "shotCount: "

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/prineside/tdi2/Tower;->shotCount:I

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v0, "timeSinceLastAttack: "

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/prineside/tdi2/Tower;->A:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v0, "timeSinceConstantEnemySeeking: "

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/prineside/tdi2/Tower;->v:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, -0x3cb80000    # -200.0f

    const/high16 v0, 0x43000000    # 128.0f

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 p2, 0x43340000    # 180.0f

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    :cond_2
    return-void
.end method

.method public findTarget()Lcom/prineside/tdi2/Enemy;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->findTarget(Lcom/prineside/tdi2/utils/ObjectFilter;)Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    return-object v0
.end method

.method public findTarget(Lcom/prineside/tdi2/utils/ObjectFilter;)Lcom/prineside/tdi2/Enemy;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectFilter<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;)",
            "Lcom/prineside/tdi2/Enemy;"
        }
    .end annotation

    sget-object v7, Lcom/prineside/tdi2/Tower;->searchEnemiesHelper:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, -0x1

    sput v0, Lcom/prineside/tdi2/Tower;->L:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    iget v5, p0, Lcom/prineside/tdi2/Tower;->minRangeInPixels:F

    new-instance v6, Lcom/prineside/tdi2/z1;

    invoke-direct {v6, p0, p1}, Lcom/prineside/tdi2/z1;-><init>(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/utils/ObjectFilter;)V

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/prineside/tdi2/systems/MapSystem;->getEnemiesNearPoint(Lcom/badlogic/gdx/utils/Array;FFFFLcom/prineside/tdi2/utils/ObjectFilter;)V

    iget-object p1, p0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    sget-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->RANDOM:Lcom/prineside/tdi2/Tower$AimStrategy;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget p1, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/prineside/tdi2/Enemy;

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Tower;->I:[Lcom/prineside/tdi2/Tower$AimStrategyEnemyComparator;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/Tower;->searchEnemiesHelper:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_3

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Enemy;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    invoke-interface {p1, p0, v2, v1}, Lcom/prineside/tdi2/Tower$AimStrategyEnemyComparator;->compare(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Enemy;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p1, Lcom/prineside/tdi2/Tower;->searchEnemiesHelper:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-object v1
.end method

.method public getAttackDelay()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCachedStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->D:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getEnemyPriority(Lcom/prineside/tdi2/Enemy;)I
    .locals 0

    iget-boolean p1, p1, Lcom/prineside/tdi2/Enemy;->lowAimPriority:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    return p1
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Tower;->x:I

    return v0
.end method

.method public getMaxTowerLevel()I
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_MAX_EXP_LEVEL:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/TowerManager;->getMaxExpLevelGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getMaxUpgradeLevel()I
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_MAX_UPGRADE_LEVEL:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/TowerManager;->getMaxUpgradeLevelGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getMinRange()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPowerCombinedMultiplier()F
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MODIFIER_POWER_VALUE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/prineside/tdi2/Tower;->t:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    sget-object v3, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->PWR_MULTIPLIER:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v3, v2}, Lcom/prineside/tdi2/SpaceTileBonus;->getEffect(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)F

    move-result v2

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Tower;->getExpLevelStatBonusPercentage(ILcom/prineside/tdi2/GameValueProvider;)F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_POWERFUL_ABILITY_PWR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_1
    return v0
.end method

.method public getRange()F
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->RANGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    return v0
.end method

.method public getScheduledUpdateInterval()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSellPrice()I
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isSellFullRefundStillActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_SELL_REFUND:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    sget-object v2, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->SELL_REFUND:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v2, v1}, Lcom/prineside/tdi2/SpaceTileBonus;->getEffect(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getStartingLevel()I
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_STARTING_LEVEL:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/TowerManager;->getStartingLevelGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->min(II)I

    move-result v0

    return v0
.end method

.method public abstract getStat(Lcom/prineside/tdi2/enums/TowerStatType;)F
.end method

.method public getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F
    .locals 7

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->getStat(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/SpaceTileBonus;->b:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v1, v2}, Lcom/prineside/tdi2/SpaceTileBonus;->getEffect(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)F

    move-result v1

    mul-float v0, v0, v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isStatAffectedByPower(Lcom/prineside/tdi2/enums/TowerStatType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1, v2, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getStatConfig(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;)Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getPowerCombinedMultiplier()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    iget v1, v1, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->pwrFactor:F

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    mul-float v0, v0, v2

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    const v2, 0x3d4ccccd    # 0.05f

    if-ne p1, v1, :cond_2

    float-to-double v0, v0

    iget v3, p0, Lcom/prineside/tdi2/Tower;->k:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v6, Lcom/prineside/tdi2/enums/GameValueType;->MODIFIER_DAMAGE_VALUE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v3

    double-to-float v0, v0

    iget v1, p0, Lcom/prineside/tdi2/Tower;->r:I

    :goto_0
    int-to-float v1, v1

    mul-float v1, v1, v2

    mul-float v1, v1, v0

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_3

    float-to-double v0, v0

    iget v3, p0, Lcom/prineside/tdi2/Tower;->q:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v6, Lcom/prineside/tdi2/enums/GameValueType;->MODIFIER_ATTACK_SPEED_VALUE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v3

    double-to-float v0, v0

    iget v1, p0, Lcom/prineside/tdi2/Tower;->p:I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->RANGE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_4

    float-to-double v0, v0

    iget v3, p0, Lcom/prineside/tdi2/Tower;->s:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v6, Lcom/prineside/tdi2/enums/GameValueType;->MODIFIER_SEARCH_RANGE_VALUE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v3

    double-to-float v0, v0

    :cond_4
    :goto_1
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_6

    :cond_5
    iget v1, p0, Lcom/prineside/tdi2/Tower;->u:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    mul-float v1, v1, v0

    sub-float/2addr v0, v1

    :cond_6
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1, v2, p1, v0}, Lcom/prineside/tdi2/managers/TowerManager;->clampStat(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;F)F

    move-result p1

    return p1
.end method

.method public getStatCacheState()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Tower;->E:I

    return v0
.end method

.method public getTarget()Lcom/prineside/tdi2/Enemy;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->G:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    return-object v0
.end method

.method public getTilesInRange()Lcom/badlogic/gdx/utils/Array;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->F:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->a:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    iget-object v3, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v8, 0x42800000    # 64.0f

    sub-float/2addr v7, v8

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v8, v3, v8

    const/high16 v9, 0x43000000    # 128.0f

    const/high16 v10, 0x43000000    # 128.0f

    invoke-static/range {v4 .. v10}, Lcom/prineside/tdi2/utils/PMath;->circleIntersectsRect(FFFFFFF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/Tower;->F:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->F:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getUniqueStatDescription()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getUniqueStatDescription(Lcom/prineside/tdi2/enums/TowerType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradeLevel()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Tower;->y:I

    return v0
.end method

.method public abstract getWeaponTextures()Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation
.end method

.method public hasCustomButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAbilityInstalled(I)Z
    .locals 4

    const/4 v0, 0x6

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/prineside/tdi2/Tower;->x:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    aget-boolean p1, v0, p1

    return p1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ability index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isCustomButtonNeedMapPoint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOutOfOrder()Z
    .locals 6

    iget-boolean v0, p0, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_2

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Lcom/prineside/tdi2/Enemy;->disabled:Z

    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isSellFullRefundStillActive()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/Tower;->b:F

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/Tower;->y:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/Tower;->damageGiven:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/Tower;->shotCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStatAffectedByPower(Lcom/prineside/tdi2/enums/TowerStatType;)Z
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getStatConfig(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;)Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->unique:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->RANGE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadFromJson(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 3

    :try_start_0
    const-string v0, "as"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/Tower$AimStrategy;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/Tower$AimStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    const-string v0, "ul"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Tower;->y:I

    const-string v0, "e"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Tower;->experience:F

    const/4 v0, 0x0

    const-string v1, "ia"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, p0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    aput-boolean v1, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Tower"

    const-string v1, "failed to load tower from json"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onAbilitySet(IZ)V
    .locals 0

    return-void
.end method

.method public onPreSell()V
    .locals 0

    return-void
.end method

.method public placedOnMap()V
    .locals 0

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 3

    const-class v0, [F

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Building;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->id:I

    const-class v2, Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/enums/TowerType;

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    const-class v2, Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Tower$AimStrategy;

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    const-class v2, Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/utils/CheatSafeInt;

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->b:F

    const-class v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->k:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->p:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->q:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->r:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->s:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->t:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->u:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->bountyModifiersNearby:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->v:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/prineside/tdi2/Tower;->w:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->damageGiven:F

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->shotCount:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->experience:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->nextLevelExperience:F

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->x:I

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->y:I

    const-class v2, [Z

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->z:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->A:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->rangeInPixelsSqr:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->minRangeInPixels:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->B:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->experienceGeneration:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->experienceMultiplier:F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->D:[F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Tower;->E:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/prineside/tdi2/Tower;->attackDisabled:Z

    const-class v2, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->G:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, p0, Lcom/prineside/tdi2/Tower;->dpsDamage:[F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/prineside/tdi2/Tower;->dpsTime:[F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->mdps:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->enemiesKilled:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->C:I

    return-void
.end method

.method public registerNearbyModifier(Lcom/prineside/tdi2/Modifier$ModifierSidePair;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    iget v1, v1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierId:I

    iget v2, p1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierId:I

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifier is already registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierType:Lcom/prineside/tdi2/enums/ModifierType;

    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->SEARCH:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/prineside/tdi2/Tower;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/Tower;->s:I

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->POWER:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcom/prineside/tdi2/Tower;->t:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/Tower;->t:I

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->MINING_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/prineside/tdi2/Tower;->u:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/Tower;->u:I

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->BOUNTY:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne v0, v1, :cond_5

    iget v1, p0, Lcom/prineside/tdi2/Tower;->bountyModifiersNearby:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/Tower;->bountyModifiersNearby:I

    :cond_5
    :goto_1
    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->DAMAGE:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne v0, v1, :cond_8

    iget-object p1, p1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->side:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-ne p1, v0, :cond_6

    goto :goto_2

    :cond_6
    iget p1, p0, Lcom/prineside/tdi2/Tower;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->p:I

    goto :goto_4

    :cond_7
    :goto_2
    iget p1, p0, Lcom/prineside/tdi2/Tower;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->k:I

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne v0, v1, :cond_b

    iget-object p1, p1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->side:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-ne p1, v0, :cond_9

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/prineside/tdi2/Tower;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->r:I

    goto :goto_4

    :cond_a
    :goto_3
    iget p1, p0, Lcom/prineside/tdi2/Tower;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->q:I

    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    :cond_c
    return-void
.end method

.method public removedFromMap()V
    .locals 0

    return-void
.end method

.method public rotateTo(FFF)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/Tower;->angle:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result v0

    mul-float p2, p2, p3

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(F)F

    move-result p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_2

    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    iget p1, p0, Lcom/prineside/tdi2/Tower;->angle:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/prineside/tdi2/Tower;->angle:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/prineside/tdi2/Tower;->angle:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/prineside/tdi2/Tower;->angle:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/prineside/tdi2/Tower;->angle:F

    :goto_0
    return-void
.end method

.method public rotateTo(FFFF)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v1, p1, p2}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/prineside/tdi2/Tower;->rotateTo(FFF)V

    return-void
.end method

.method public final scheduledUpdatableGetId()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Tower;->C:I

    return v0
.end method

.method public final scheduledUpdatableSetId(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/Tower;->C:I

    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 0

    return-void
.end method

.method public setAimStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    return-void
.end method

.method public setExperience(F)V
    .locals 3

    iput p1, p0, Lcom/prineside/tdi2/Tower;->experience:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getMaxTowerLevel()I

    move-result p1

    iget v0, p0, Lcom/prineside/tdi2/Tower;->x:I

    if-eq v0, p1, :cond_2

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-gt v0, p1, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/Tower;->experience:F

    float-to-int v1, v1

    sget-object v2, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE_MILESTONES:[I

    aget v2, v2, v0

    if-lt v1, v2, :cond_0

    iput v0, p0, Lcom/prineside/tdi2/Tower;->x:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/Tower;->x:I

    if-eq v0, p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE:[I

    add-int/lit8 v0, v0, 0x1

    aget p1, p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->nextLevelExperience:F

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/Tower;->nextLevelExperience:F

    :cond_2
    :goto_1
    iget p1, p0, Lcom/prineside/tdi2/Tower;->experience:F

    sget-object v0, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE_MILESTONES:[I

    iget v1, p0, Lcom/prineside/tdi2/Tower;->x:I

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    return-void
.end method

.method public setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget p1, p0, Lcom/prineside/tdi2/Tower;->experience:F

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->setExperience(F)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    return-void
.end method

.method public setTarget(Lcom/prineside/tdi2/Enemy;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/Tower;->G:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-void
.end method

.method public setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Building;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    :cond_0
    return-void
.end method

.method public setUnregistered()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->F:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/Tower;->G:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public setUpgradeLevel(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    const/16 p1, 0xa

    :cond_1
    iput p1, p0, Lcom/prineside/tdi2/Tower;->y:I

    return-void
.end method

.method public shouldSearchForTarget()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->canAim()Z

    move-result v0

    return v0
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Building;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "as"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->experience:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "e"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ul"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ia"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-boolean v3, v0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void
.end method

.method public unregisterNearbyModifier(Lcom/prineside/tdi2/Modifier;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierId:I

    iget v3, p1, Lcom/prineside/tdi2/Modifier;->id:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    iget-object v2, p0, Lcom/prineside/tdi2/Tower;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->SEARCH:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/Tower;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->s:I

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->POWER:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/prineside/tdi2/Tower;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->t:I

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->MINING_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/prineside/tdi2/Tower;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->u:I

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->BOUNTY:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne p1, v0, :cond_5

    iget v0, p0, Lcom/prineside/tdi2/Tower;->bountyModifiersNearby:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->bountyModifiersNearby:I

    :cond_5
    :goto_2
    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->DAMAGE:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne p1, v0, :cond_8

    iget-object p1, v1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->side:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-ne p1, v0, :cond_6

    goto :goto_3

    :cond_6
    iget p1, p0, Lcom/prineside/tdi2/Tower;->p:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->p:I

    goto :goto_5

    :cond_7
    :goto_3
    iget p1, p0, Lcom/prineside/tdi2/Tower;->k:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->k:I

    goto :goto_5

    :cond_8
    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    if-ne p1, v0, :cond_b

    iget-object p1, v1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->side:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    if-ne p1, v0, :cond_9

    goto :goto_4

    :cond_9
    iget p1, p0, Lcom/prineside/tdi2/Tower;->r:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->r:I

    goto :goto_5

    :cond_a
    :goto_4
    iget p1, p0, Lcom/prineside/tdi2/Tower;->q:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/Tower;->q:I

    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifier was not registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public update(F)V
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/Tower;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->b:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->shouldSearchForTarget()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/prineside/tdi2/Tower;->A:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->A:F

    iget v0, p0, Lcom/prineside/tdi2/Tower;->s:I

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/Tower;->v:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->v:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/Tower;->w:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->findTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v3

    if-eq v3, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    :cond_1
    iput v2, p0, Lcom/prineside/tdi2/Tower;->v:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Tower;->w:Z

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->canAttack()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/prineside/tdi2/Tower;->A:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getAttackDelay()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/StrictMath;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Tower;->A:F

    :cond_4
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget v3, p0, Lcom/prineside/tdi2/Tower;->rangeInPixelsSqr:F

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_5

    iget v3, p0, Lcom/prineside/tdi2/Tower;->B:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    :cond_6
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/prineside/tdi2/Tower;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->z:F

    cmpl-float p1, v0, v1

    if-lez p1, :cond_7

    iput v2, p0, Lcom/prineside/tdi2/Tower;->z:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->findTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    :cond_7
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->canAttack()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getAttackDelay()F

    move-result p1

    iget v0, p0, Lcom/prineside/tdi2/Tower;->A:F

    div-float/2addr v0, p1

    float-to-int v0, v0

    if-lez v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->attack(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/Tower;->w:Z

    iget v1, p0, Lcom/prineside/tdi2/Tower;->A:F

    int-to-float v0, v0

    mul-float p1, p1, v0

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/prineside/tdi2/Tower;->A:F

    cmpg-float p1, v1, v2

    if-gez p1, :cond_8

    iput v2, p0, Lcom/prineside/tdi2/Tower;->A:F

    :cond_8
    return-void
.end method

.method public updateCache()V
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->E:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getStatTypes(Lcom/prineside/tdi2/enums/TowerType;)[Lcom/prineside/tdi2/enums/TowerStatType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/Tower;->D:[F

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v6

    aput v6, v4, v5

    iget v4, p0, Lcom/prineside/tdi2/Tower;->E:I

    mul-int/lit8 v4, v4, 0x1f

    iget-object v5, p0, Lcom/prineside/tdi2/Tower;->D:[F

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v4, v3

    iput v4, p0, Lcom/prineside/tdi2/Tower;->E:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getRange()F

    move-result v0

    const/high16 v1, 0x43000000    # 128.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    mul-float v0, v0, v0

    iput v0, p0, Lcom/prineside/tdi2/Tower;->rangeInPixelsSqr:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getMinRange()F

    move-result v0

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->minRangeInPixels:F

    mul-float v0, v0, v0

    iput v0, p0, Lcom/prineside/tdi2/Tower;->B:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_EXPERIENCE_GENERATION:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/TowerManager;->getExperienceGenerationGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/Tower;->y:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->experienceGeneration:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_EXPERIENCE_MULTIPLIER:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/TowerManager;->getExperienceMultiplierGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/prineside/tdi2/Tower;->experienceMultiplier:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    sget-object v1, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->BONUS_EXPERIENCE:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/Tower;->experienceMultiplier:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v1, v2}, Lcom/prineside/tdi2/SpaceTileBonus;->getEffect(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)F

    move-result v1

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->experienceMultiplier:F

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->F:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public updateCustomButton(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)V
    .locals 0

    return-void
.end method

.method public upgrade()V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Tower;->y:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->upgrade(I)V

    return-void
.end method

.method public upgrade(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getMaxUpgradeLevel()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getMaxUpgradeLevel()I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/prineside/tdi2/Tower;->y:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Building;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->id:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    const-class v2, Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p1, p2, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->b:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->k:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->p:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->q:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->r:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->s:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->t:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->u:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->bountyModifiersNearby:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->v:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Tower;->w:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->damageGiven:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->shotCount:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->experience:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->nextLevelExperience:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->x:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/Tower;->y:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->z:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->A:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->rangeInPixelsSqr:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->minRangeInPixels:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->B:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->experienceGeneration:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->experienceMultiplier:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->D:[F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->E:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Tower;->outOfOrder:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Tower;->attackDisabled:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->G:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->dpsDamage:[F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->dpsTime:[F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/Tower;->mdps:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/Tower;->enemiesKilled:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p0, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/Tower;->C:I

    invoke-virtual {p2, p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return-void
.end method
