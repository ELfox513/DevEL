.class public abstract Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener$TowerSystemListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TowerSystemListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public customButtonPressed(Lcom/prineside/tdi2/Tower;)V
    .locals 0

    return-void
.end method

.method public defaultAimStrategyChanged()V
    .locals 0

    return-void
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public towerAbilityChanged(Lcom/prineside/tdi2/Tower;IZ)V
    .locals 0

    return-void
.end method

.method public towerAimStrategyChanged(Lcom/prineside/tdi2/Tower;)V
    .locals 0

    return-void
.end method

.method public towerBuilt(Lcom/prineside/tdi2/Tower;I)V
    .locals 0

    return-void
.end method

.method public towerExperienceChanged(Lcom/prineside/tdi2/Tower;F)V
    .locals 0

    return-void
.end method

.method public towerLeveledUp(Lcom/prineside/tdi2/Tower;)V
    .locals 0

    return-void
.end method

.method public towerPreSold(Lcom/prineside/tdi2/Tower;I)V
    .locals 0

    return-void
.end method

.method public towerSold(Lcom/prineside/tdi2/Tower;I)V
    .locals 0

    return-void
.end method

.method public towerUpgraded(Lcom/prineside/tdi2/Tower;I)V
    .locals 0

    return-void
.end method
