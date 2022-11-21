.class public Lcom/prineside/tdi2/managers/BuffManager$Factories;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/BuffManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factories"
.end annotation


# instance fields
.field public ARMOR:Lcom/prineside/tdi2/buffs/ArmorBuff$ArmorBuffFactory;

.field public BLIZZARD:Lcom/prineside/tdi2/buffs/BlizzardBuff$BlizzardBuffFactory;

.field public BONUS_COINS:Lcom/prineside/tdi2/buffs/BonusCoinsBuff$BonusCoinsBuffFactory;

.field public BONUS_XP:Lcom/prineside/tdi2/buffs/BonusXpBuff$BonusXpBuffFactory;

.field public BURN:Lcom/prineside/tdi2/buffs/BurnBuff$BurnBuffFactory;

.field public CHAIN_REACTION:Lcom/prineside/tdi2/buffs/ChainReactionBuff$ChainReactionBuffFactory;

.field public DEATH_EXPLOSION:Lcom/prineside/tdi2/buffs/DeathExplosionBuff$ExplosionChargeBuffFactory;

.field public FREEZING:Lcom/prineside/tdi2/buffs/FreezingBuff$FreezingBuffFactory;

.field public POISON:Lcom/prineside/tdi2/buffs/PoisonBuff$PoisonBuffFactory;

.field public REGENERATION:Lcom/prineside/tdi2/buffs/RegenerationBuff$RegenerationBuffFactory;

.field public SNOWBALL:Lcom/prineside/tdi2/buffs/SnowballBuff$SnowballBuffFactory;

.field public STUN:Lcom/prineside/tdi2/buffs/StunBuff$StunBuffFactory;

.field public THROW_BACK:Lcom/prineside/tdi2/buffs/ThrowBackBuff$BlastThrowBackBuffFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
