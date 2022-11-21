.class Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/GameOverOverlay;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->a(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->b(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->d(Lcom/prineside/tdi2/ui/components/GameOverOverlay;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->e(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->END_GAME:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    new-instance v2, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1$1;-><init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PurchaseManager;->showRewardingAd(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    :cond_0
    return-void
.end method
