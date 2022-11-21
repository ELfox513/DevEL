.class public Lcom/prineside/tdi2/systems/EnemySystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;,
        Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;,
        Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;,
        Lcom/prineside/tdi2/systems/EnemySystem$DBG_DamageParticle;
    }
.end annotation


# static fields
.field public static final MIDDLE_SIDE_SHIFT:I = 0x5

.field public static final RANDOM_SIDE_SHIFT:I = -0x1

.field public static final w:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/prineside/tdi2/ScheduledUpdater;

.field public b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public enemyBuffVulnerability:[[F

.field public enemyDamageVulnerability:[[Z

.field public enemySpecialDamageVulnerability:[[Z

.field public flyingEnemy:[Z

.field public k:Lcom/badlogic/gdx/utils/IntArray;

.field public lastDamageGiven:F

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public p:[Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

.field public q:D

.field public r:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public s:[D
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public t:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public u:[Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public v:Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/prineside/tdi2/systems/a;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/a;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/EnemySystem;->w:Ljava/util/Comparator;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v1, v0

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->flyingEnemy:[Z

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->HELI:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    iget-object v1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->flyingEnemy:[Z

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->JET:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    array-length v0, v0

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->values:[Lcom/prineside/tdi2/enums/DamageType;

    array-length v1, v1

    const/4 v2, 0x2

    new-array v4, v2, [I

    aput v1, v4, v3

    const/4 v1, 0x0

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyDamageVulnerability:[[Z

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v0, v5

    invoke-static {v6, v3}, Ljava/util/Arrays;->fill([ZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyDamageVulnerability:[[Z

    sget-object v4, Lcom/prineside/tdi2/enums/EnemyType;->ARMORED:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v0, v0, v4

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->ELECTRICITY:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput-boolean v1, v0, v4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyDamageVulnerability:[[Z

    sget-object v4, Lcom/prineside/tdi2/enums/EnemyType;->HEALER:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v0, v0, v4

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->FIRE:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput-boolean v1, v0, v4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyDamageVulnerability:[[Z

    sget-object v4, Lcom/prineside/tdi2/enums/EnemyType;->TOXIC:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v0, v0, v4

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->POISON:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput-boolean v1, v0, v4

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v0, v0

    sget-object v4, Lcom/prineside/tdi2/enums/SpecialDamageType;->values:[Lcom/prineside/tdi2/enums/SpecialDamageType;

    array-length v4, v4

    new-array v5, v2, [I

    aput v4, v5, v3

    aput v0, v5, v1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    invoke-static {v6, v3}, Ljava/util/Arrays;->fill([ZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    sget-object v4, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v0, v0, v4

    sget-object v4, Lcom/prineside/tdi2/enums/SpecialDamageType;->KILLSHOT:Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v1, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v1, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v1, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v1, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v1, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v1, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v1, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v1, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v1, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_TAIL:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput-boolean v1, v0, v4

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v0, v0

    sget-object v4, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v4, v4

    new-array v5, v2, [I

    aput v4, v5, v3

    aput v0, v5, v1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    array-length v4, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([FF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    sget-object v4, Lcom/prineside/tdi2/enums/EnemyType;->HEALER:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v0, v0, v4

    sget-object v4, Lcom/prineside/tdi2/enums/BuffType;->BURN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x0

    aput v6, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->TOXIC:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    sget-object v5, Lcom/prineside/tdi2/enums/BuffType;->POISON:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v6, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->ICY:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/high16 v5, 0x3fc00000    # 1.5f

    aput v5, v0, v4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    sget-object v4, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    sget-object v5, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v6, v0, v7

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v0, v0, v7

    sget-object v7, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v0, v8

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v0, v0, v8

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->BLIZZARD:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v0, v8

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v0, v0, v4

    sget-object v4, Lcom/prineside/tdi2/enums/BuffType;->SNOWBALL:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v0, v8

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    sget-object v8, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v0, v0, v9

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v6, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v6, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    sget-object v5, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v6, v0, v5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v6, v0, v4

    new-array v0, v2, [Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v4, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    aput-object v4, v0, v1

    sget-object v4, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    aput-object v4, v0, v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->BLIZZARD:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->REGENERATION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v5, v7, v5

    sget-object v7, Lcom/prineside/tdi2/enums/BuffType;->SNOWBALL:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v6, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x3

    new-array v4, v0, [Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    aput-object v5, v4, v1

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    aput-object v5, v4, v3

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    aput-object v5, v4, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_4

    aget-object v7, v4, v5

    iget-object v8, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    sget-object v9, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v6, v8, v9

    iget-object v8, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    sget-object v9, Lcom/prineside/tdi2/enums/BuffType;->SNOWBALL:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v6, v8, v9

    iget-object v8, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    sget-object v9, Lcom/prineside/tdi2/enums/BuffType;->BLIZZARD:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v6, v8, v9

    iget-object v8, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    sget-object v9, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v6, v8, v9

    iget-object v8, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v7, v8, v7

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    new-array v4, v0, [Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    aput-object v5, v4, v1

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    aput-object v5, v4, v3

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_TAIL:Lcom/prineside/tdi2/enums/EnemyType;

    aput-object v5, v4, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_5

    aget-object v5, v4, v2

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->POISON:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->BLIZZARD:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    sget-object v8, Lcom/prineside/tdi2/enums/BuffType;->SNOWBALL:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v5, v7, v5

    sget-object v7, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v6, v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    new-instance v0, Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-direct {v0}, Lcom/prineside/tdi2/ScheduledUpdater;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/16 v2, 0x8

    const-class v4, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-direct {v0, v1, v2, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput v3, p0, Lcom/prineside/tdi2/systems/EnemySystem;->d:I

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->k:Lcom/badlogic/gdx/utils/IntArray;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->p:[Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->r:Z

    iput v1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->t:I

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->u:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/Enemy$EnemyReference;Lcom/prineside/tdi2/Enemy$EnemyReference;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->d(Lcom/prineside/tdi2/Enemy$EnemyReference;Lcom/prineside/tdi2/Enemy$EnemyReference;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/Enemy$EnemyReference;Lcom/prineside/tdi2/Enemy$EnemyReference;)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/prineside/tdi2/Path;->getLengthInTiles()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget p0, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    sub-float/2addr v0, p0

    :goto_0
    iget-object p0, p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget-object p0, p0, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->getLengthInTiles()I

    move-result p0

    int-to-float p0, p0

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget p1, p1, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    sub-float v1, p0, p1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tile;I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/SpawnTile;

    iput-object v0, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    new-instance v0, Lcom/prineside/tdi2/Path;

    invoke-direct {v0}, Lcom/prineside/tdi2/Path;-><init>()V

    iput-object v0, p1, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v0, p1, v1, p2}, Lcom/prineside/tdi2/Map;->findPath(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Path;Lcom/prineside/tdi2/Tile;)Z

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/prineside/tdi2/systems/EnemySystem;->register(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Path;IF)V

    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    invoke-virtual {p3, p1}, Lcom/prineside/tdi2/systems/LootSystem;->fillWithLoot(Lcom/prineside/tdi2/Enemy;)V

    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p3, p1}, Lcom/prineside/tdi2/systems/MapSystem;->spawnEnemy(Lcom/prineside/tdi2/Enemy;)V

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/Tile;->registerEnemy(Lcom/prineside/tdi2/Enemy;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->setPositionToPath()V

    return-void
.end method

.method public addEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/tiles/SpawnTile;ILcom/prineside/tdi2/Wave;F)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iput-object p2, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    iput-object p4, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    invoke-virtual {p0, p1, p3}, Lcom/prineside/tdi2/systems/EnemySystem;->register(Lcom/prineside/tdi2/Enemy;I)V

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/systems/LootSystem;->fillWithLoot(Lcom/prineside/tdi2/Enemy;)V

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/systems/MapSystem;->spawnEnemy(Lcom/prineside/tdi2/Enemy;)V

    iput p5, p1, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->setPositionToPath()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->updateEnemyCurrentTile(Lcom/prineside/tdi2/Enemy;)V

    return-void
.end method

.method public addEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/tiles/SpawnTile;Lcom/prineside/tdi2/Path;ILcom/prineside/tdi2/Wave;F)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iput-object p2, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    iput-object p5, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    invoke-virtual {p0, p1, p3, p4, p6}, Lcom/prineside/tdi2/systems/EnemySystem;->register(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Path;IF)V

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/systems/LootSystem;->fillWithLoot(Lcom/prineside/tdi2/Enemy;)V

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/systems/MapSystem;->spawnEnemy(Lcom/prineside/tdi2/Enemy;)V

    iput p6, p1, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->setPositionToPath()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->updateEnemyCurrentTile(Lcom/prineside/tdi2/Enemy;)V

    return-void
.end method

.method public addStaticEnemy(Lcom/prineside/tdi2/Enemy;FF)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/SpawnTile;

    iput-object v0, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/prineside/tdi2/systems/EnemySystem;->register(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Path;IF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/MapSystem;->spawnEnemy(Lcom/prineside/tdi2/Enemy;)V

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/Enemy;->setPosition(FF)V

    return-void
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "dd/MM"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->EMOJI_ENEMIES:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "01/04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->r:Z

    :cond_1
    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v0

    return v0
.end method

.method public despawnEnemy(Lcom/prineside/tdi2/Enemy;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/MapSystem;->despawnEnemy(Lcom/prineside/tdi2/Enemy;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->f(Lcom/prineside/tdi2/Enemy;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->v:Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->v:Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ScheduledUpdater;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v1, "Towers MDPS"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->unregisterValue(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    cmpg-float v3, p3, v2

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v2, p3

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    sget-object v4, Lcom/prineside/tdi2/systems/EnemySystem;->w:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_2

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/Enemy;->applyDrawInterpolation(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x1

    sub-int/2addr v5, v11

    :goto_2
    if-ltz v5, :cond_4

    sget-object v2, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget-boolean v3, v2, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->hasDrawPriority()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lcom/prineside/tdi2/Enemy;->visible:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v3

    iget-boolean v3, v3, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2, v9, v1}, Lcom/prineside/tdi2/Enemy;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, v11

    :goto_3
    if-ltz v2, :cond_6

    sget-object v3, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget-boolean v4, v3, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v4

    iget-boolean v4, v4, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->hasDrawPriority()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, v3, Lcom/prineside/tdi2/Enemy;->visible:Z

    if-eqz v4, :cond_5

    invoke-virtual {v3, v9, v1}, Lcom/prineside/tdi2/Enemy;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v2

    const/16 v12, 0x303

    const/16 v13, 0x302

    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-virtual {v9, v13, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    sget-object v2, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, v11

    :goto_4
    if-ltz v2, :cond_8

    sget-object v3, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget-boolean v4, v3, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v4

    iget-boolean v4, v4, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v3, Lcom/prineside/tdi2/Enemy;->visible:Z

    if-eqz v4, :cond_7

    invoke-virtual {v3, v9, v1}, Lcom/prineside/tdi2/Enemy;->drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-virtual {v9, v13, v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_9
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_ENEMIES_INFO:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const-wide/16 v14, 0x0

    cmpl-double v3, v1, v14

    if-eqz v3, :cond_c

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v8

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_MAX_PATH_SEARCHES:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v7

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget v6, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v6, :cond_b

    sget-object v1, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget-boolean v2, v1, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/StrictMath;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getBuffedSpeed()F

    move-result v3

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/StrictMath;->round(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3c23d70a    # 0.01f

    mul-float v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " PS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/prineside/tdi2/Enemy;->pathSearches:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x42480000    # 50.0f

    sub-float v4, v2, v4

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v2, 0x41f00000    # 30.0f

    add-float v16, v1, v2

    const/high16 v17, 0x42c80000    # 100.0f

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v1, v8

    move-object/from16 v2, p1

    move/from16 v20, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v18

    move-object v10, v8

    move/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    goto :goto_6

    :cond_a
    move/from16 v20, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move-object v10, v8

    :goto_6
    add-int/lit8 v5, v20, 0x1

    move-object v8, v10

    move/from16 v6, v16

    move/from16 v7, v17

    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_b
    move-object v10, v8

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_c
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_UNITS_BBOX:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-double v4, v1, v14

    if-eqz v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput v3, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v1, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_e

    sget-object v4, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget-boolean v5, v4, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    if-eqz v5, :cond_d

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v4

    invoke-virtual {v5, v6, v7, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFF)V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :cond_f
    iget-object v1, v0, Lcom/prineside/tdi2/systems/EnemySystem;->s:[D

    if-eqz v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput v3, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v13, v12}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    const/high16 v1, -0x3c1f0000    # -450.0f

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldHeight()F

    move-result v2

    neg-float v2, v2

    mul-float v2, v2, v3

    const-wide v3, 0x4072c00000000000L    # 300.0

    iget-wide v5, v0, Lcom/prineside/tdi2/systems/EnemySystem;->q:D

    div-double/2addr v3, v5

    iget v5, v0, Lcom/prineside/tdi2/systems/EnemySystem;->t:I

    const/4 v6, 0x0

    :goto_8
    iget-object v7, v0, Lcom/prineside/tdi2/systems/EnemySystem;->s:[D

    array-length v8, v7

    const/high16 v10, 0x40000000    # 2.0f

    if-ge v5, v8, :cond_10

    aget-wide v12, v7, v5

    mul-double v12, v12, v3

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    mul-int/lit8 v8, v6, 0x3

    int-to-float v8, v8

    add-float/2addr v8, v1

    double-to-float v12, v12

    invoke-virtual {v7, v8, v2, v10, v12}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    :goto_9
    iget v7, v0, Lcom/prineside/tdi2/systems/EnemySystem;->t:I

    if-ge v5, v7, :cond_11

    iget-object v7, v0, Lcom/prineside/tdi2/systems/EnemySystem;->s:[D

    aget-wide v12, v7, v5

    mul-double v12, v12, v3

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    mul-int/lit8 v8, v6, 0x3

    int-to-float v8, v8

    add-float/2addr v8, v1

    double-to-float v12, v12

    invoke-virtual {v7, v8, v2, v10, v12}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    add-int/2addr v6, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :cond_12
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_ENEMY_PATHS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    cmpl-double v3, v1, v14

    if-eqz v3, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    sget-object v1, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_15

    sget-object v3, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget-boolean v4, v3, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Path;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/PathNode;

    if-eqz v4, :cond_13

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v7, v4, Lcom/prineside/tdi2/PathNode;->tileCenterX:F

    iget v4, v4, Lcom/prineside/tdi2/PathNode;->tileCenterY:F

    iget v8, v5, Lcom/prineside/tdi2/PathNode;->tileCenterX:F

    iget v10, v5, Lcom/prineside/tdi2/PathNode;->tileCenterY:F

    invoke-virtual {v6, v7, v4, v8, v10}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    :cond_13
    move-object v4, v5

    goto :goto_b

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :cond_16
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_BUILDING_INFO:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    cmpl-double v3, v1, v14

    if-eqz v3, :cond_18

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_18

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v3, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v2, v3, :cond_18

    move-object v10, v1

    check-cast v10, Lcom/prineside/tdi2/Tower;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v11

    const/4 v12, 0x0

    :goto_c
    sget-object v1, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v12, v2, :cond_17

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, v12

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {v10, v1}, Lcom/prineside/tdi2/Tower;->getEnemyPriority(Lcom/prineside/tdi2/Enemy;)I

    move-result v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x41000000    # 8.0f

    sub-float v4, v2, v4

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_17
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_18
    sget-object v1, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public drawEnemyHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 5

    sget-object p2, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    sget-object v0, Lcom/prineside/tdi2/systems/EnemySystem;->w:Ljava/util/Comparator;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    sget-object v3, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->hasDrawPriority()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v4

    iget-boolean v4, v4, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v4, :cond_0

    iget v4, v3, Lcom/prineside/tdi2/Enemy;->healthBarScale:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_0

    iget-boolean v2, v3, Lcom/prineside/tdi2/Enemy;->healthBarInvisible:Z

    if-nez v2, :cond_0

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/Enemy;->drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v0, p2, :cond_3

    sget-object v1, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->hasDrawPriority()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v3

    iget-boolean v3, v3, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/prineside/tdi2/Enemy;->healthBarScale:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_2

    iget-boolean v3, v1, Lcom/prineside/tdi2/Enemy;->healthBarInvisible:Z

    if-nez v3, :cond_2

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/Enemy;->drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/prineside/tdi2/systems/EnemySystem;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final e(Lcom/prineside/tdi2/Enemy;)V
    .locals 5

    iget v0, p1, Lcom/prineside/tdi2/Enemy;->id:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->k:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->sort()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->k:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->d:I

    :goto_0
    iput v0, p1, Lcom/prineside/tdi2/Enemy;->id:I

    new-instance v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-direct {v1}, Lcom/prineside/tdi2/Enemy$EnemyReference;-><init>()V

    iput-object p1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget-object v3, p0, Lcom/prineside/tdi2/systems/EnemySystem;->u:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    array-length v4, v3

    if-lt v0, v4, :cond_1

    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    new-array v0, v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v3, p0, Lcom/prineside/tdi2/systems/EnemySystem;->u:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    array-length v4, v3

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->u:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->u:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget p1, p1, Lcom/prineside/tdi2/Enemy;->id:I

    aput-object v1, v0, p1

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enemy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already registered with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/prineside/tdi2/Enemy;->id:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(Lcom/prineside/tdi2/Enemy;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->setUnregistered()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ScheduledUpdater;->remove(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;)Z

    iget-object v1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->u:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget v2, p1, Lcom/prineside/tdi2/Enemy;->id:I

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->k:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    const/4 v0, 0x0

    iput v0, p1, Lcom/prineside/tdi2/Enemy;->id:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Enemy$Factory;->free(Lcom/prineside/tdi2/Enemy;)V

    return-void
.end method

.method public getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-object p1

    :cond_0
    iget v0, p1, Lcom/prineside/tdi2/Enemy;->id:I

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->u:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enemy is not registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Enemy"

    return-object v0
.end method

.method public getTowersMaxDps()D
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->q:D

    return-wide v0
.end method

.method public giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    iget-object v0, v6, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    if-eqz p5, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, v7, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_0

    const v0, 0x3d99999a    # 0.075f

    mul-float v0, v0, p3

    move v10, v0

    goto :goto_0

    :cond_0
    move/from16 v10, p3

    :goto_0
    invoke-virtual {v7, v8, v10, v9}, Lcom/prineside/tdi2/Enemy;->giveDamage(Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;)F

    move-result v11

    iput v11, v6, Lcom/prineside/tdi2/systems/EnemySystem;->lastDamageGiven:F

    if-eqz v8, :cond_1

    iget v0, v8, Lcom/prineside/tdi2/Tower;->damageGiven:F

    add-float/2addr v0, v11

    iput v0, v8, Lcom/prineside/tdi2/Tower;->damageGiven:F

    :cond_1
    const/4 v12, 0x0

    if-eqz v8, :cond_2

    if-nez p5, :cond_2

    if-eqz p6, :cond_2

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iget-object v1, v6, Lcom/prineside/tdi2/systems/EnemySystem;->p:[Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

    aget-object v1, v1, v0

    iget-wide v2, v1, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->damage:D

    float-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->damage:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, v6, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v0, v6, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_3

    iget-object v0, v6, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0, v14}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;

    move-object/from16 v1, p1

    move v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;->enemyTakeDamage(Lcom/prineside/tdi2/Enemy;FLcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Projectile;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, v6, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iget-object v0, v6, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DAMAGE_PARTICLES_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v8, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    iget-object v0, v8, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    :goto_3
    invoke-virtual {v7, v0, v9}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result v0

    iget-object v1, v6, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v4, v11

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->addDamageParticle(FFIF)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Enemy;->onPreDie()V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/systems/EnemySystem;->killEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V

    const/4 v0, 0x1

    return v0

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    if-ne v9, v0, :cond_7

    iget-object v0, v6, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    move-object/from16 v1, p7

    invoke-virtual {v0, v8, v7, v10, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addEnemyHitParticle(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Enemy;FLcom/prineside/tdi2/Projectile;)V

    :cond_7
    return v12
.end method

.method public isEmojiEnemies()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->r:Z

    return v0
.end method

.method public killEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getBreakParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    move-result-object v0

    iget-object v1, p1, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/LimitedParticleType;->ENEMY_DEAD:Lcom/prineside/tdi2/enums/LimitedParticleType;

    iget-object v3, p1, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Lcom/prineside/tdi2/enums/LimitedParticleType;FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/EnemySystem;->isEmojiEnemies()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getEmojiTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iget v1, p1, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    move-object v3, v0

    move v7, v1

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget v8, p1, Lcom/prineside/tdi2/Enemy;->drawScale:F

    invoke-virtual/range {v2 .. v8}, Lcom/prineside/tdi2/systems/ParticleSystem;->addShatterParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFF)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/MapSystem;->despawnEnemy(Lcom/prineside/tdi2/Enemy;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;->enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->f(Lcom/prineside/tdi2/Enemy;)V

    return-void
.end method

.method public postSetup()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/EnemySystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->v:Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->v:Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/EnemySystem;->b()V

    return-void
.end method

.method public postStateRestore()V
    .locals 0

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->postStateRestore()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/EnemySystem;->b()V

    return-void
.end method

.method public queueAllEnemiesPathfinding()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_MAX_PATH_SEARCHES:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/prineside/tdi2/Enemy;->ignorePathfinding:Z

    if-nez v4, :cond_0

    iget v4, v3, Lcom/prineside/tdi2/Enemy;->pathSearches:I

    if-ge v4, v0, :cond_0

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, [Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->flyingEnemy:[Z

    const-class v0, [[Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyDamageVulnerability:[[Z

    const-class v0, [[F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    const-class v0, Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ScheduledUpdater;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->d:I

    const-class v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntArray;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->k:Lcom/badlogic/gdx/utils/IntArray;

    const-class v0, [Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->p:[Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->q:D

    const-class v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->u:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->lastDamageGiven:F

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ListenerGroup;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    const-class v0, Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/EnemySystem;->v:Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;

    return-void
.end method

.method public register(Lcom/prineside/tdi2/Enemy;)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/EnemySystem;->c()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/systems/EnemySystem;->register(Lcom/prineside/tdi2/Enemy;I)V

    return-void
.end method

.method public register(Lcom/prineside/tdi2/Enemy;I)V
    .locals 3

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->e(Lcom/prineside/tdi2/Enemy;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/ScheduledUpdater;->add(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;F)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/EnemySystem;->c()I

    move-result p2

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v2, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/Map;->getNewPath(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/tiles/SpawnTile;)Lcom/prineside/tdi2/Path;

    move-result-object v0

    iput-object v0, p1, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iput p2, p1, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Enemy must have spawnTile set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public register(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Path;IF)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->e(Lcom/prineside/tdi2/Enemy;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/ScheduledUpdater;->add(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;F)V

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/EnemySystem;->c()I

    move-result p3

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/Path;

    invoke-direct {v0, p2}, Lcom/prineside/tdi2/Path;-><init>(Lcom/prineside/tdi2/Path;)V

    iput-object v0, p1, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    :cond_1
    iput p3, p1, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    iput p4, p1, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iput p4, p1, Lcom/prineside/tdi2/Enemy;->sumPassedTiles:F

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object p3, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object p2

    sget-object p3, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne p2, p3, :cond_2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->hasDrawPriority()Z

    move-result p2

    if-eqz p2, :cond_2

    const/high16 p2, 0x40000000    # 2.0f

    iput p2, p1, Lcom/prineside/tdi2/Enemy;->healthBarScale:F

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Enemy must have spawnTile set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setup()V
    .locals 5

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DPS_CHART_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v0, 0x12c

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->s:[D

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/EnemySystem;->p:[Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

    new-instance v3, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;-><init>(Lcom/prineside/tdi2/systems/EnemySystem$1;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/EnemySystem;->p:[Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

    aget-object v2, v2, v1

    int-to-float v3, v1

    mul-float v3, v3, v0

    iput v3, v2, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->timeAccumulator:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public update(F)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/prineside/tdi2/systems/EnemySystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ScheduledUpdater;->process(F)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v2

    iget-object v4, v0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v4, v0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v6, v4, :cond_a

    iget-object v10, v0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v10, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v10, :cond_8

    iget-boolean v11, v10, Lcom/prineside/tdi2/Enemy;->disabled:Z

    if-nez v11, :cond_8

    invoke-virtual {v10}, Lcom/prineside/tdi2/Enemy;->dynamicPathfindingAllowed()Z

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v11, v10, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    const v12, -0x41000022    # -0.499999f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    iput v12, v10, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    :cond_1
    iget v11, v10, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v10, v1}, Lcom/prineside/tdi2/Enemy;->getPassedTilesDelta(F)F

    move-result v13

    cmpg-float v14, v13, v8

    if-gez v14, :cond_2

    goto/16 :goto_6

    :cond_2
    iget v14, v10, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    add-float/2addr v14, v12

    add-float/2addr v14, v13

    float-to-int v12, v14

    if-eq v11, v12, :cond_9

    iget-object v11, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v11}, Lcom/prineside/tdi2/Path;->getCount()I

    move-result v11

    if-le v11, v12, :cond_3

    iget-object v11, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/Path;->get(I)Lcom/prineside/tdi2/PathNode;

    move-result-object v11

    goto :goto_1

    :cond_3
    move-object v11, v7

    :goto_1
    iget-object v12, v10, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    iget-boolean v13, v10, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    if-eqz v13, :cond_5

    invoke-virtual {v10}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v12

    iget-object v13, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iget v14, v10, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/Path;->getMoveSide(F)Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v13

    if-eqz v12, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enemy is set up but its current tile is null (id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/prineside/tdi2/Enemy;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", passed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " tiles)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object v13, v7

    :goto_2
    iget-object v14, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v14}, Lcom/prineside/tdi2/Path;->clear()V

    iget-object v14, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v14, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v14}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v14

    iget-object v15, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v14, v10, v15, v12}, Lcom/prineside/tdi2/Map;->findPath(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Path;Lcom/prineside/tdi2/Tile;)Z

    if-eqz v11, :cond_7

    iget-object v12, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/Path;->get(I)Lcom/prineside/tdi2/PathNode;

    move-result-object v12

    iget v12, v12, Lcom/prineside/tdi2/PathNode;->x:I

    iget v14, v11, Lcom/prineside/tdi2/PathNode;->x:I

    if-ne v12, v14, :cond_6

    iget-object v12, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/Path;->get(I)Lcom/prineside/tdi2/PathNode;

    move-result-object v12

    iget v12, v12, Lcom/prineside/tdi2/PathNode;->y:I

    iget v14, v11, Lcom/prineside/tdi2/PathNode;->y:I

    if-ne v12, v14, :cond_6

    iget-object v7, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v7, v5, v13}, Lcom/prineside/tdi2/Path;->setMoveSide(ILcom/prineside/tdi2/Path$MoveSide;)V

    iget v7, v10, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    float-to-int v11, v7

    int-to-float v11, v11

    sub-float/2addr v7, v11

    iput v7, v10, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    goto :goto_4

    :cond_6
    :try_start_0
    iget-object v12, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v12, v5}, Lcom/prineside/tdi2/Path;->get(I)Lcom/prineside/tdi2/PathNode;

    move-result-object v12

    iget-object v13, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v13, v9}, Lcom/prineside/tdi2/Path;->get(I)Lcom/prineside/tdi2/PathNode;

    move-result-object v13

    invoke-static {v12, v11, v13}, Lcom/prineside/tdi2/Path;->calculateMoveSides(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;)Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iget-object v11, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v11, v5}, Lcom/prineside/tdi2/Path;->get(I)Lcom/prineside/tdi2/PathNode;

    move-result-object v11

    iget-object v12, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/Path;->get(I)Lcom/prineside/tdi2/PathNode;

    move-result-object v12

    invoke-static {v11, v7, v12}, Lcom/prineside/tdi2/Path;->calculateMoveSides(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;)Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v7

    :goto_3
    iget-object v11, v10, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v11, v5, v7}, Lcom/prineside/tdi2/Path;->setMoveSide(ILcom/prineside/tdi2/Path$MoveSide;)V

    const v7, -0x41000d1b    # -0.4999f

    iput v7, v10, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    :cond_7
    :goto_4
    iget v7, v10, Lcom/prineside/tdi2/Enemy;->pathSearches:I

    add-int/2addr v7, v9

    iput v7, v10, Lcom/prineside/tdi2/Enemy;->pathSearches:I

    iget-object v7, v0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    iget v7, v10, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    iget v7, v10, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    rsub-int/lit8 v7, v7, 0xb

    sub-int/2addr v7, v9

    iput v7, v10, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    goto :goto_6

    :cond_8
    :goto_5
    iget-object v7, v0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v4, v0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v10

    sub-long/2addr v10, v2

    const-string v2, "Pathfinding"

    invoke-virtual {v4, v2, v10, v11}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-static {v2}, Lcom/prineside/tdi2/utils/EntityUtils;->removeNullRefs(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    sget-object v3, Lcom/prineside/tdi2/systems/EnemySystem;->w:Ljava/util/Comparator;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->sort(Ljava/util/Comparator;)V

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1a

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v4, :cond_b

    goto/16 :goto_c

    :cond_b
    iget-boolean v6, v4, Lcom/prineside/tdi2/Enemy;->disabled:Z

    if-nez v6, :cond_19

    iget-object v6, v4, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    if-nez v6, :cond_c

    goto/16 :goto_b

    :cond_c
    iput-boolean v9, v4, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/Enemy;->getPassedTilesDelta(F)F

    move-result v10

    iget v11, v4, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    add-float/2addr v11, v10

    iput v11, v4, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v12, v4, Lcom/prineside/tdi2/Enemy;->sumPassedTiles:F

    add-float/2addr v12, v10

    iput v12, v4, Lcom/prineside/tdi2/Enemy;->sumPassedTiles:F

    const v10, -0x41000150    # -0.49999f

    cmpg-float v13, v11, v10

    if-gez v13, :cond_d

    sub-float v11, v10, v11

    add-float/2addr v12, v11

    iput v12, v4, Lcom/prineside/tdi2/Enemy;->sumPassedTiles:F

    iput v10, v4, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    :cond_d
    iget v10, v4, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {v6}, Lcom/prineside/tdi2/Path;->getLengthInTiles()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v10, v6

    if-ltz v6, :cond_15

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getBaseDamage()F

    move-result v6

    cmpl-float v10, v6, v8

    if-lez v10, :cond_f

    const/high16 v10, 0x3f800000    # 1.0f

    rem-float v10, v6, v10

    cmpl-float v11, v10, v8

    if-nez v11, :cond_e

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v6

    goto :goto_8

    :cond_e
    float-to-int v6, v6

    iget-object v11, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v11}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v11

    cmpg-float v10, v11, v10

    if-gez v10, :cond_10

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    :cond_10
    :goto_8
    iget-object v10, v4, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iget-object v11, v10, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v11, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v11, v9

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/Path;->get(I)Lcom/prineside/tdi2/PathNode;

    move-result-object v10

    if-eqz v10, :cond_11

    iget-object v11, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v11}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v11

    iget v12, v10, Lcom/prineside/tdi2/PathNode;->x:I

    iget v10, v10, Lcom/prineside/tdi2/PathNode;->y:I

    invoke-virtual {v11, v12, v10}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v10

    if-eqz v10, :cond_11

    iget-object v11, v10, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v12, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

    if-ne v11, v12, :cond_11

    check-cast v10, Lcom/prineside/tdi2/tiles/TargetTile;

    goto :goto_9

    :cond_11
    move-object v10, v7

    :goto_9
    iget-object v11, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v11}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v11, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v11}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a
    if-ge v12, v11, :cond_13

    iget-object v14, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v14, v12}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v14

    check-cast v14, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;

    invoke-interface {v14, v4, v6, v10}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;->enemyReachedTarget(Lcom/prineside/tdi2/Enemy;ILcom/prineside/tdi2/tiles/TargetTile;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/4 v13, 0x1

    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_13
    iget-object v6, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v6}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    if-nez v13, :cond_14

    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/systems/MapSystem;->despawnEnemy(Lcom/prineside/tdi2/Enemy;)V

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/systems/EnemySystem;->f(Lcom/prineside/tdi2/Enemy;)V

    goto :goto_c

    :cond_14
    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->setPositionToPath()V

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/Enemy;->update(F)V

    goto :goto_c

    :cond_15
    iget v6, v4, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    const/high16 v10, -0x41000000    # -0.5f

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_18

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->setPositionToPath()V

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v10, 0x43000000    # 128.0f

    div-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v11

    if-ne v6, v11, :cond_16

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v10

    if-eq v6, v10, :cond_17

    :cond_16
    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/systems/EnemySystem;->updateEnemyCurrentTile(Lcom/prineside/tdi2/Enemy;)V

    :cond_17
    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/Enemy;->update(F)V

    goto :goto_c

    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v4, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " passed tiles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    :goto_b
    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/Enemy;->update(F)V

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/systems/EnemySystem;->updateEnemyCurrentTile(Lcom/prineside/tdi2/Enemy;)V

    iput-boolean v9, v4, Lcom/prineside/tdi2/Enemy;->setUpByEnemySystem:Z

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_1a
    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v2, v0, Lcom/prineside/tdi2/systems/EnemySystem;->p:[Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

    array-length v3, v2

    const/4 v4, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    :goto_d
    if-ge v4, v3, :cond_1f

    aget-object v13, v2, v4

    iget v14, v13, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->timeAccumulator:F

    add-float/2addr v14, v1

    iput v14, v13, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->timeAccumulator:F

    const/high16 v15, 0x41200000    # 10.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1d

    iget-wide v14, v13, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->damage:D

    iget-wide v5, v13, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->maxDamage:D

    cmpl-double v7, v14, v5

    if-lez v7, :cond_1b

    iput-wide v14, v13, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->maxDamage:D

    :cond_1b
    cmpg-double v5, v11, v14

    if-gez v5, :cond_1c

    move-wide v11, v14

    :cond_1c
    iput v8, v13, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->timeAccumulator:F

    const-wide/16 v5, 0x0

    iput-wide v5, v13, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->damage:D

    :cond_1d
    iget-wide v5, v13, Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;->maxDamage:D

    cmpg-double v7, v9, v5

    if-gez v7, :cond_1e

    move-wide v9, v5

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_d

    :cond_1f
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    div-double/2addr v9, v1

    iget-wide v3, v0, Lcom/prineside/tdi2/systems/EnemySystem;->q:D

    cmpl-double v5, v9, v3

    if-lez v5, :cond_21

    iput-wide v9, v0, Lcom/prineside/tdi2/systems/EnemySystem;->q:D

    iget-object v5, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v5, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_20

    iget-object v7, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;

    invoke-interface {v7, v3, v4}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;->mdpsUpdated(D)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_20
    iget-object v3, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_21
    iget-object v3, v0, Lcom/prineside/tdi2/systems/EnemySystem;->s:[D

    if-eqz v3, :cond_22

    div-double/2addr v11, v1

    const-wide/16 v1, 0x0

    cmpl-double v4, v11, v1

    if-lez v4, :cond_22

    iget v1, v0, Lcom/prineside/tdi2/systems/EnemySystem;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/prineside/tdi2/systems/EnemySystem;->t:I

    aput-wide v11, v3, v1

    array-length v1, v3

    if-ne v2, v1, :cond_22

    const/4 v1, 0x0

    iput v1, v0, Lcom/prineside/tdi2/systems/EnemySystem;->t:I

    :cond_22
    return-void
.end method

.method public updateEnemyCurrentTile(Lcom/prineside/tdi2/Enemy;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/prineside/tdi2/Enemy;->disabled:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Path;->get(F)Lcom/prineside/tdi2/PathNode;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget v2, v0, Lcom/prineside/tdi2/PathNode;->x:I

    iget v0, v0, Lcom/prineside/tdi2/PathNode;->y:I

    invoke-virtual {v1, v2, v0}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/Map;->getTileByMapPos(FF)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/Tile;->unregisterEnemy(Lcom/prineside/tdi2/Enemy;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Tile;->registerEnemy(Lcom/prineside/tdi2/Enemy;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enemy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not on tile ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Enemy is not registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->flyingEnemy:[Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyDamageVulnerability:[[Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->d:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->k:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->p:[Lcom/prineside/tdi2/systems/EnemySystem$DpsCounter;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->q:D

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->u:[Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->lastDamageGiven:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem;->v:Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;

    const-class v1, Lcom/prineside/tdi2/systems/EnemySystem$_MapListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
