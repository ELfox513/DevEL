.class public Lcom/prineside/tdi2/managers/BuffManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/BuffManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/BuffManager$Factories;,
        Lcom/prineside/tdi2/managers/BuffManager$Serializer;
    }
.end annotation


# instance fields
.field public final F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

.field public final a:[Lcom/prineside/tdi2/Buff$Factory;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/BuffManager$Factories;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    sget-object v1, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v2, v1

    new-array v2, v2, [Lcom/prineside/tdi2/Buff$Factory;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/BuffManager;->a:[Lcom/prineside/tdi2/Buff$Factory;

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/FreezingBuff$FreezingBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/FreezingBuff$FreezingBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->FREEZING:Lcom/prineside/tdi2/buffs/FreezingBuff$FreezingBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->POISON:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/PoisonBuff$PoisonBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/PoisonBuff$PoisonBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->POISON:Lcom/prineside/tdi2/buffs/PoisonBuff$PoisonBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->BLIZZARD:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/BlizzardBuff$BlizzardBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/BlizzardBuff$BlizzardBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BLIZZARD:Lcom/prineside/tdi2/buffs/BlizzardBuff$BlizzardBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->SNOWBALL:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/SnowballBuff$SnowballBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/SnowballBuff$SnowballBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->SNOWBALL:Lcom/prineside/tdi2/buffs/SnowballBuff$SnowballBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/ThrowBackBuff$BlastThrowBackBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/ThrowBackBuff$BlastThrowBackBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->THROW_BACK:Lcom/prineside/tdi2/buffs/ThrowBackBuff$BlastThrowBackBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/StunBuff$StunBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/StunBuff$StunBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->STUN:Lcom/prineside/tdi2/buffs/StunBuff$StunBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->BURN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/BurnBuff$BurnBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/BurnBuff$BurnBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BURN:Lcom/prineside/tdi2/buffs/BurnBuff$BurnBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->REGENERATION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/RegenerationBuff$RegenerationBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/RegenerationBuff$RegenerationBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->REGENERATION:Lcom/prineside/tdi2/buffs/RegenerationBuff$RegenerationBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->ARMOR:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/ArmorBuff$ArmorBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/ArmorBuff$ArmorBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->ARMOR:Lcom/prineside/tdi2/buffs/ArmorBuff$ArmorBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->BONUS_COINS:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/BonusCoinsBuff$BonusCoinsBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/BonusCoinsBuff$BonusCoinsBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BONUS_COINS:Lcom/prineside/tdi2/buffs/BonusCoinsBuff$BonusCoinsBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->BONUS_XP:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/BonusXpBuff$BonusXpBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/BonusXpBuff$BonusXpBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BONUS_XP:Lcom/prineside/tdi2/buffs/BonusXpBuff$BonusXpBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->DEATH_EXPLOSION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/DeathExplosionBuff$ExplosionChargeBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/DeathExplosionBuff$ExplosionChargeBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->DEATH_EXPLOSION:Lcom/prineside/tdi2/buffs/DeathExplosionBuff$ExplosionChargeBuffFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->CHAIN_REACTION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/buffs/ChainReactionBuff$ChainReactionBuffFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/buffs/ChainReactionBuff$ChainReactionBuffFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->CHAIN_REACTION:Lcom/prineside/tdi2/buffs/ChainReactionBuff$ChainReactionBuffFactory;

    aput-object v4, v2, v3

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/BuffManager;->a:[Lcom/prineside/tdi2/Buff$Factory;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v4, v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all buff factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/Buff$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/BuffType;",
            ")",
            "Lcom/prineside/tdi2/Buff$Factory<",
            "+",
            "Lcom/prineside/tdi2/Buff;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BuffManager;->a:[Lcom/prineside/tdi2/Buff$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BuffManager;->a:[Lcom/prineside/tdi2/Buff$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Buff$Factory;->setup()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
