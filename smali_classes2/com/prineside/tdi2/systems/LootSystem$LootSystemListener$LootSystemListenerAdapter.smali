.class public abstract Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener$LootSystemListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LootSystemListenerAdapter"
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

.method public enemyLootAdded(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Item;IZ)V
    .locals 0

    return-void
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public minerMinedItem(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/ItemStack;)V
    .locals 0

    return-void
.end method

.method public rewardingAdBecameAvailable()V
    .locals 0

    return-void
.end method

.method public rewardingAdRegistered()V
    .locals 0

    return-void
.end method
