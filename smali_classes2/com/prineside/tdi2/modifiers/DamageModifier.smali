.class public Lcom/prineside/tdi2/modifiers/DamageModifier;
.super Lcom/prineside/tdi2/Modifier;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/modifiers/DamageModifier$DamageModifierFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->DAMAGE:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Modifier;-><init>(Lcom/prineside/tdi2/enums/ModifierType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/modifiers/DamageModifier$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/modifiers/DamageModifier;-><init>()V

    return-void
.end method
