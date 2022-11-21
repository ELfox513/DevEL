.class public abstract Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$MinerSystemListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MinerSystemListenerAdapter"
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

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public minerBuilt(Lcom/prineside/tdi2/Miner;I)V
    .locals 0

    return-void
.end method

.method public minerResourcesChanged(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V
    .locals 0

    return-void
.end method

.method public minerSold(Lcom/prineside/tdi2/Miner;I)V
    .locals 0

    return-void
.end method

.method public minerUpgraded(Lcom/prineside/tdi2/Miner;I)V
    .locals 0

    return-void
.end method
