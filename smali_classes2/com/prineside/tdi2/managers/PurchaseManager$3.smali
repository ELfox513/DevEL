.class Lcom/prineside/tdi2/managers/PurchaseManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/PurchaseManager;->showRewardingAd(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

.field public final synthetic b:Lcom/prineside/tdi2/utils/ObjectRetriever;

.field public final synthetic c:Lcom/prineside/tdi2/managers/PurchaseManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PurchaseManager;Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$3;->c:Lcom/prineside/tdi2/managers/PurchaseManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$3;->a:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/PurchaseManager$3;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->RVW:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I

    iget v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForLuckyShot:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForLuckyShot:I

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->requireDelayedSave()V

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$3;->a:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/ActionResolver;->logRewardedVideoViewed(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$3;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-interface {v0, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager$3;->retrieved(Ljava/lang/Boolean;)V

    return-void
.end method
