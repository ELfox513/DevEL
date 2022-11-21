.class public Lcom/prineside/tdi2/systems/BuffSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# instance fields
.field public P_ARMOR:Lcom/prineside/tdi2/buffs/processors/ArmorBuffProcessor;

.field public P_BLIZZARD:Lcom/prineside/tdi2/buffs/processors/BlizzardBuffProcessor;

.field public P_BONUS_COINS:Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor;

.field public P_BONUS_XP:Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor;

.field public P_BURN:Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;

.field public P_CHAIN_REACTION:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;

.field public P_DEATH_EXPLOSION:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;

.field public P_FREEZING:Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;

.field public P_POISON:Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;

.field public P_REGENERATION:Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;

.field public P_SNOWBALL:Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;

.field public P_STUN:Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;

.field public P_THROW_BACK:Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;

.field public a:[Lcom/prineside/tdi2/BuffProcessor;

.field public b:Lcom/prineside/tdi2/ScheduledUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/BuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->a:[Lcom/prineside/tdi2/BuffProcessor;

    new-instance v0, Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-direct {v0}, Lcom/prineside/tdi2/ScheduledUpdater;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->b:Lcom/prineside/tdi2/ScheduledUpdater;

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->b:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ScheduledUpdater;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/BuffSystem;->a:[Lcom/prineside/tdi2/BuffProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/BuffSystem;->a:[Lcom/prineside/tdi2/BuffProcessor;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->a:[Lcom/prineside/tdi2/BuffProcessor;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Buff"

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, [Lcom/prineside/tdi2/BuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/BuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->a:[Lcom/prineside/tdi2/BuffProcessor;

    const-class v0, Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ScheduledUpdater;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->b:Lcom/prineside/tdi2/ScheduledUpdater;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_FREEZING:Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_POISON:Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BURN:Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/BlizzardBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/BlizzardBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BLIZZARD:Lcom/prineside/tdi2/buffs/processors/BlizzardBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/ArmorBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/ArmorBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_ARMOR:Lcom/prineside/tdi2/buffs/processors/ArmorBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_SNOWBALL:Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_REGENERATION:Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_THROW_BACK:Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_STUN:Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BONUS_COINS:Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BONUS_XP:Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_DEATH_EXPLOSION:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;

    const-class v0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_CHAIN_REACTION:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;

    return-void
.end method

.method public setup()V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/prineside/tdi2/systems/BuffSystem;->a:[Lcom/prineside/tdi2/BuffProcessor;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    invoke-virtual {v7, v4}, Lcom/prineside/tdi2/managers/BuffManager;->getFactory(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/Buff$Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Buff$Factory;->createProcessor()Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v4

    aput-object v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_FREEZING:Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->POISON:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_POISON:Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->BURN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BURN:Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->BLIZZARD:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/BlizzardBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BLIZZARD:Lcom/prineside/tdi2/buffs/processors/BlizzardBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->ARMOR:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/ArmorBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_ARMOR:Lcom/prineside/tdi2/buffs/processors/ArmorBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->SNOWBALL:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_SNOWBALL:Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->REGENERATION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_REGENERATION:Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_THROW_BACK:Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_STUN:Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->BONUS_COINS:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BONUS_COINS:Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->BONUS_XP:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BONUS_XP:Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->DEATH_EXPLOSION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_DEATH_EXPLOSION:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->CHAIN_REACTION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/BuffSystem;->getProcessor(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/BuffProcessor;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_CHAIN_REACTION:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->a:[Lcom/prineside/tdi2/BuffProcessor;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/BuffProcessor;->getUpdateInterval()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/prineside/tdi2/systems/BuffSystem;->b:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v3}, Lcom/prineside/tdi2/BuffProcessor;->getUpdateInterval()F

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/prineside/tdi2/ScheduledUpdater;->add(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;F)V

    :cond_1
    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public update(F)V
    .locals 12

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    sget-object v4, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    iget-object v8, v3, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v9, v9, -0x1

    :goto_2
    const/4 v10, -0x1

    if-le v9, v10, :cond_2

    iget-object v10, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/Buff;

    aget-object v10, v10, v9

    iget v11, v10, Lcom/prineside/tdi2/Buff;->duration:F

    sub-float/2addr v11, p1

    iput v11, v10, Lcom/prineside/tdi2/Buff;->duration:F

    const/4 v10, 0x0

    cmpg-float v10, v11, v10

    if-gtz v10, :cond_1

    iget-object v10, p0, Lcom/prineside/tdi2/systems/BuffSystem;->a:[Lcom/prineside/tdi2/BuffProcessor;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10, v3, v7, v9}, Lcom/prineside/tdi2/BuffProcessor;->removeBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/enums/BuffType;I)V

    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->b:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ScheduledUpdater;->process(F)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->a:[Lcom/prineside/tdi2/BuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->b:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_FREEZING:Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_POISON:Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BURN:Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BLIZZARD:Lcom/prineside/tdi2/buffs/processors/BlizzardBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_ARMOR:Lcom/prineside/tdi2/buffs/processors/ArmorBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_SNOWBALL:Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_REGENERATION:Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_THROW_BACK:Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_STUN:Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BONUS_COINS:Lcom/prineside/tdi2/buffs/processors/BonusCoinsBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BONUS_XP:Lcom/prineside/tdi2/buffs/processors/BonusXpBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_DEATH_EXPLOSION:Lcom/prineside/tdi2/buffs/processors/DeathExplosionBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/BuffSystem;->P_CHAIN_REACTION:Lcom/prineside/tdi2/buffs/processors/ChainReactionBuffProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
