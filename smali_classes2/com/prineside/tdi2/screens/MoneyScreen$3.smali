.class Lcom/prineside/tdi2/screens/MoneyScreen$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MoneyScreen;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MoneyScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$3;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MoneyScreen$3;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MoneyScreen;->e(Lcom/prineside/tdi2/screens/MoneyScreen;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->REGULAR:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->canShowRewardingAd(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen$3;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/prineside/tdi2/screens/MoneyScreen;->f(Lcom/prineside/tdi2/screens/MoneyScreen;J)J

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    new-instance v2, Lcom/prineside/tdi2/screens/MoneyScreen$3$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/screens/MoneyScreen$3$1;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PurchaseManager;->showRewardingAd(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen$3;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-virtual {v0}, Lcom/prineside/tdi2/screens/MoneyScreen;->s()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "ad_is_not_loaded_yet"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
