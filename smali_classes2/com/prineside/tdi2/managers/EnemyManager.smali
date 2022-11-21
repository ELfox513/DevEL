.class public Lcom/prineside/tdi2/managers/EnemyManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/EnemyManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/EnemyManager$Factories;,
        Lcom/prineside/tdi2/managers/EnemyManager$Serializer;
    }
.end annotation


# instance fields
.field public final F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

.field public final a:[Lcom/prineside/tdi2/Enemy$Factory;

.field public final b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public final d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public enemyBuffArraysPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "[",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/EnemyManager$Factories;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v2, v1

    new-array v2, v2, [Lcom/prineside/tdi2/Enemy$Factory;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/EnemyManager;->a:[Lcom/prineside/tdi2/Enemy$Factory;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v3, p0, Lcom/prineside/tdi2/managers/EnemyManager;->b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v3, Lcom/prineside/tdi2/enums/DamageType;->values:[Lcom/prineside/tdi2/enums/DamageType;

    array-length v3, v3

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v3, p0, Lcom/prineside/tdi2/managers/EnemyManager;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v3, Lcom/prineside/tdi2/managers/EnemyManager$1;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/managers/EnemyManager$1;-><init>(Lcom/prineside/tdi2/managers/EnemyManager;)V

    iput-object v3, p0, Lcom/prineside/tdi2/managers/EnemyManager;->enemyBuffArraysPool:Lcom/badlogic/gdx/utils/Pool;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v3, p0, Lcom/prineside/tdi2/managers/EnemyManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->HELI:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/HeliEnemy$HeliEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/HeliEnemy$HeliEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->HELI:Lcom/prineside/tdi2/enemies/HeliEnemy$HeliEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->ARMORED:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/ArmoredEnemy$ArmoredEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/ArmoredEnemy$ArmoredEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->ARMORED:Lcom/prineside/tdi2/enemies/ArmoredEnemy$ArmoredEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/BossEnemy$BossEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/BossEnemy$BossEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->BOSS:Lcom/prineside/tdi2/enemies/BossEnemy$BossEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->FAST:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/FastEnemy$FastEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/FastEnemy$FastEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->FAST:Lcom/prineside/tdi2/enemies/FastEnemy$FastEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->FIGHTER:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->FIGHTER:Lcom/prineside/tdi2/enemies/FighterEnemy$FighterEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->ICY:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/IcyEnemy$IcyEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/IcyEnemy$IcyEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->ICY:Lcom/prineside/tdi2/enemies/IcyEnemy$IcyEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->JET:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/JetEnemy$JetEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/JetEnemy$JetEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->JET:Lcom/prineside/tdi2/enemies/JetEnemy$JetEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->LIGHT:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/LightEnemy$LightEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/LightEnemy$LightEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->LIGHT:Lcom/prineside/tdi2/enemies/LightEnemy$LightEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/RegularEnemy$RegularEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/RegularEnemy$RegularEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->REGULAR:Lcom/prineside/tdi2/enemies/RegularEnemy$RegularEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->STRONG:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/StrongEnemy$StrongEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/StrongEnemy$StrongEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->STRONG:Lcom/prineside/tdi2/enemies/StrongEnemy$StrongEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->TOXIC:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/ToxicEnemy$ToxicEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/ToxicEnemy$ToxicEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->TOXIC:Lcom/prineside/tdi2/enemies/ToxicEnemy$ToxicEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->HEALER:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/HealerEnemy$HealerEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/HealerEnemy$HealerEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->HEALER:Lcom/prineside/tdi2/enemies/HealerEnemy$HealerEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->GENERIC:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/GenericEnemy$GenericEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/GenericEnemy$GenericEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->GENERIC:Lcom/prineside/tdi2/enemies/GenericEnemy$GenericEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy$SnakeBossHeadEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy$SnakeBossHeadEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy$SnakeBossHeadEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy$SnakeBossBodyEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy$SnakeBossBodyEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->SNAKE_BOSS_BODY:Lcom/prineside/tdi2/enemies/bosses/SnakeBossBodyEnemy$SnakeBossBodyEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_TAIL:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/bosses/SnakeBossTailEnemy$SnakeBossTailEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/bosses/SnakeBossTailEnemy$SnakeBossTailEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->SNAKE_BOSS_TAIL:Lcom/prineside/tdi2/enemies/bosses/SnakeBossTailEnemy$SnakeBossTailEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy$BrootEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy$BrootEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->BROOT_BOSS:Lcom/prineside/tdi2/enemies/bosses/BrootEnemy$BrootEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy$ConstructorBossBodyEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy$ConstructorBossBodyEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy$ConstructorBossBodyEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/bosses/MobchainBossBodyEnemy$MobchainBossBodyEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/bosses/MobchainBossBodyEnemy$MobchainBossBodyEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->MOBCHAIN_BOSS_BODY:Lcom/prineside/tdi2/enemies/bosses/MobchainBossBodyEnemy$MobchainBossBodyEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy$MobchainBossHeadEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy$MobchainBossHeadEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy$MobchainBossHeadEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy$MobchainBossCreepEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy$MobchainBossCreepEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy$MobchainBossCreepEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->METAPHOR_BOSS:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossEnemy$MetaphorBossEnemyFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;

    aput-object v4, v2, v3

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/EnemyManager;->a:[Lcom/prineside/tdi2/Enemy$Factory;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v4, v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all enemy factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/EnemyManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/EnemyManager;->reload()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getBossEnemyType(Lcom/prineside/tdi2/enums/BossType;)Lcom/prineside/tdi2/enums/EnemyType;
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/managers/EnemyManager$3;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    return-object p1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    return-object p1

    :cond_3
    sget-object p1, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    return-object p1

    :cond_4
    sget-object p1, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    return-object p1
.end method

.method public getDamageTypeIcon(Lcom/prineside/tdi2/enums/DamageType;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            ")",
            "Lcom/prineside/tdi2/Enemy$Factory<",
            "+",
            "Lcom/prineside/tdi2/Enemy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->a:[Lcom/prineside/tdi2/Enemy$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getIceOverlayTexture(I)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-le v0, v2, :cond_0

    return-object v1

    :cond_0
    return-object p1
.end method

.method public isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public markEnemyTypeAsNotNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/EnemyManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/EnemyManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-eq v0, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "typeNames"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "enemyTypesMetWith"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    :cond_3
    return-void
.end method

.method public final reload()V
    .locals 5

    const-string v0, "enemyTypesMetWith"

    iget-object v1, p0, Lcom/prineside/tdi2/managers/EnemyManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    :try_start_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v3, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/EnemyManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-static {v3}, Lcom/prineside/tdi2/enums/EnemyType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnemyManager"

    const-string v2, "Failed loading info about enemy types met with"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public setup()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/EnemyManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/EnemyManager$2;-><init>(Lcom/prineside/tdi2/managers/EnemyManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/EnemyManager;->reload()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->a:[Lcom/prineside/tdi2/Enemy$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy$Factory;->setup()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/EnemyManager;->b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v3, "enemy-ice-overlay-1"

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "enemy-ice-overlay-2"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-bullet"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->ELECTRICITY:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-lightning-bolt"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->EXPLOSION:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-explosion-range"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->FIRE:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-flame"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->LASER:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-laser"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/EnemyManager;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->POISON:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-poison"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_1
    return-void
.end method

.method public test()V
    .locals 0

    return-void
.end method
