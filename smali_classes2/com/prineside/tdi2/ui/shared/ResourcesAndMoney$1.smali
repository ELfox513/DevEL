.class Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$1;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic M:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$1;->M:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$1;->M:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->b(Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$1;->M:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->b(Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->REGULAR:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->canShowRewardingAd(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_0
    return-void
.end method
