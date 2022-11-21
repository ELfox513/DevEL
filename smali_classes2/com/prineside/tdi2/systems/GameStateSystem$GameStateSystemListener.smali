.class public interface abstract Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/GameStateSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameStateSystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract gameOver()V
.end method

.method public abstract gamePaused()V
.end method

.method public abstract gameResumed()V
.end method

.method public abstract gameSpeedChanged()V
.end method

.method public abstract healthChanged(I)V
.end method

.method public abstract issuedItemsAdded(Lcom/prineside/tdi2/IssuedItems;Lcom/prineside/tdi2/ItemStack;FFI)V
.end method

.method public abstract moneyChanged(IZ)V
.end method

.method public abstract realUpdate(F)V
.end method

.method public abstract resourcesChanged(Lcom/prineside/tdi2/enums/ResourceType;IZ)V
.end method

.method public abstract scoreChanged(JZLcom/prineside/tdi2/enums/StatisticsType;)V
.end method

.method public abstract update(F)V
.end method
