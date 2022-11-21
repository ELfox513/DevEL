.class public interface abstract Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/AbilitySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AbilitySystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener$AbilitySystemListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract abilitiesConfigurationChanged()V
.end method

.method public abstract abilityApplied(Lcom/prineside/tdi2/Ability;II)V
.end method

.method public abstract startedUsingAbility()V
.end method

.method public abstract stoppedUsingAbility()V
.end method
