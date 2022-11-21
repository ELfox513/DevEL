.class public Lcom/prineside/tdi2/managers/ModifierManager$Factories;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ModifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factories"
.end annotation


# instance fields
.field public ATTACK_SPEED:Lcom/prineside/tdi2/modifiers/AttackSpeedModifier$AttackSpeedModifierFactory;

.field public BALANCE:Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;

.field public BOUNTY:Lcom/prineside/tdi2/modifiers/BountyModifier$BountyModifierFactory;

.field public DAMAGE:Lcom/prineside/tdi2/modifiers/DamageModifier$DamageModifierFactory;

.field public EXPERIENCE:Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;

.field public MINING_SPEED:Lcom/prineside/tdi2/modifiers/MiningSpeedModifier$MiningSpeedModifierFactory;

.field public POWER:Lcom/prineside/tdi2/modifiers/PowerModifier$PowerModifierFactory;

.field public SEARCH:Lcom/prineside/tdi2/modifiers/SearchModifier$SearchModifierFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
