.class public abstract Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener$AbilitySystemListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbilitySystemListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abilitiesConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public abilityApplied(Lcom/prineside/tdi2/Ability;II)V
    .locals 0

    return-void
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startedUsingAbility()V
    .locals 0

    return-void
.end method

.method public stoppedUsingAbility()V
    .locals 0

    return-void
.end method
