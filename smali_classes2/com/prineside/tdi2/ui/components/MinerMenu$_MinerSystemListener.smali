.class Lcom/prineside/tdi2/ui/components/MinerMenu$_MinerSystemListener;
.super Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$MinerSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MinerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MinerSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MinerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MinerMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MinerSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$MinerSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/ui/components/MinerMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/MinerMenu$_MinerSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MinerMenu;)V

    return-void
.end method


# virtual methods
.method public minerResourcesChanged(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V
    .locals 0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MinerSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/components/MinerMenu;->d(Lcom/prineside/tdi2/ui/components/MinerMenu;)Lcom/prineside/tdi2/Miner;

    move-result-object p2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MinerSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MinerMenu;->c(Lcom/prineside/tdi2/ui/components/MinerMenu;)V

    :cond_0
    return-void
.end method

.method public minerUpgraded(Lcom/prineside/tdi2/Miner;I)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MinerSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MinerMenu;->c(Lcom/prineside/tdi2/ui/components/MinerMenu;)V

    return-void
.end method
