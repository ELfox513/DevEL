.class public interface abstract Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MinerSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MinerSystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$MinerSystemListenerAdapter;,
        Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;
    }
.end annotation


# virtual methods
.method public abstract minerBuilt(Lcom/prineside/tdi2/Miner;I)V
.end method

.method public abstract minerResourcesChanged(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V
.end method

.method public abstract minerSold(Lcom/prineside/tdi2/Miner;I)V
.end method

.method public abstract minerUpgraded(Lcom/prineside/tdi2/Miner;I)V
.end method
