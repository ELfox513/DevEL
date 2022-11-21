.class Lcom/prineside/tdi2/ui/components/PauseMenu$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/PauseMenu;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/PauseMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$9;->a:Lcom/prineside/tdi2/ui/components/PauseMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->LOOT_MULTIPLIER:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    new-instance v2, Lcom/prineside/tdi2/ui/components/PauseMenu$9$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/components/PauseMenu$9$1;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PurchaseManager;->showRewardingAd(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method
