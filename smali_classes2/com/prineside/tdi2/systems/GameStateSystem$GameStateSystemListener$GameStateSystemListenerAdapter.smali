.class public abstract Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GameStateSystemListenerAdapter"
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

.method public gameOver()V
    .locals 0

    return-void
.end method

.method public gamePaused()V
    .locals 0

    return-void
.end method

.method public gameResumed()V
    .locals 0

    return-void
.end method

.method public gameSpeedChanged()V
    .locals 0

    return-void
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public healthChanged(I)V
    .locals 0

    return-void
.end method

.method public issuedItemsAdded(Lcom/prineside/tdi2/IssuedItems;Lcom/prineside/tdi2/ItemStack;FFI)V
    .locals 0

    return-void
.end method

.method public moneyChanged(IZ)V
    .locals 0

    return-void
.end method

.method public realUpdate(F)V
    .locals 0

    return-void
.end method

.method public resourcesChanged(Lcom/prineside/tdi2/enums/ResourceType;IZ)V
    .locals 0

    return-void
.end method

.method public scoreChanged(JZLcom/prineside/tdi2/enums/StatisticsType;)V
    .locals 0

    return-void
.end method

.method public update(F)V
    .locals 0

    return-void
.end method
