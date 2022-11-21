.class public Lcom/prineside/tdi2/modifiers/AttackSpeedModifier;
.super Lcom/prineside/tdi2/Modifier;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/modifiers/AttackSpeedModifier$AttackSpeedModifierFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Modifier;-><init>(Lcom/prineside/tdi2/enums/ModifierType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/modifiers/AttackSpeedModifier$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/modifiers/AttackSpeedModifier;-><init>()V

    return-void
.end method
