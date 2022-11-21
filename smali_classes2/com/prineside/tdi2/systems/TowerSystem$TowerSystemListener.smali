.class public interface abstract Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/TowerSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TowerSystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract customButtonPressed(Lcom/prineside/tdi2/Tower;)V
.end method

.method public abstract defaultAimStrategyChanged()V
.end method

.method public abstract towerAbilityChanged(Lcom/prineside/tdi2/Tower;IZ)V
.end method

.method public abstract towerAimStrategyChanged(Lcom/prineside/tdi2/Tower;)V
.end method

.method public abstract towerBuilt(Lcom/prineside/tdi2/Tower;I)V
.end method

.method public abstract towerExperienceChanged(Lcom/prineside/tdi2/Tower;F)V
.end method

.method public abstract towerLeveledUp(Lcom/prineside/tdi2/Tower;)V
.end method

.method public abstract towerPreSold(Lcom/prineside/tdi2/Tower;I)V
.end method

.method public abstract towerSold(Lcom/prineside/tdi2/Tower;I)V
.end method

.method public abstract towerUpgraded(Lcom/prineside/tdi2/Tower;I)V
.end method
