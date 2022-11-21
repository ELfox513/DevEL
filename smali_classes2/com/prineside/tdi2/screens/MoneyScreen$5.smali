.class Lcom/prineside/tdi2/screens/MoneyScreen$5;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MoneyScreen;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/screens/MoneyScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$5;->o:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget p2, p1, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I

    const/16 p3, 0x1f4

    if-lt p2, p3, :cond_0

    sub-int/2addr p2, p3

    iput p2, p1, Lcom/prineside/tdi2/managers/ProgressManager;->videosWatchedForDoubleGain:I

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->requireDelayedSave()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object p2, Lcom/prineside/tdi2/enums/ItemType;->DOUBLE_GAIN_SHARD:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;

    invoke-virtual {p1}, Lcom/prineside/tdi2/items/DoubleGainShardItem$DoubleGainShardItemFactory;->create()Lcom/prineside/tdi2/items/DoubleGainShardItem;

    move-result-object p1

    const p2, 0x127500

    iput p2, p1, Lcom/prineside/tdi2/items/DoubleGainShardItem;->duration:I

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    new-instance p2, Lcom/prineside/tdi2/IssuedItems;

    sget-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->REWARD_VIDEO:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget-object v0, p2, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v1, p1, p3}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->showNewlyIssuedPrizesPopup()V

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$5;->o:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MoneyScreen;->i(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    return-void
.end method
