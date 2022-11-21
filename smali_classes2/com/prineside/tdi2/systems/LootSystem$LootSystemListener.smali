.class public interface abstract Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/LootSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LootSystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener$LootSystemListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract enemyLootAdded(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Item;IZ)V
.end method

.method public abstract minerMinedItem(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/ItemStack;)V
.end method

.method public abstract rewardingAdBecameAvailable()V
.end method

.method public abstract rewardingAdRegistered()V
.end method
