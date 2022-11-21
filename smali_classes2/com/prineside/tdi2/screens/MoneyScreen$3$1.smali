.class Lcom/prineside/tdi2/screens/MoneyScreen$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MoneyScreen$3;->run()V
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
.field public final synthetic a:Lcom/prineside/tdi2/screens/MoneyScreen$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MoneyScreen$3;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$3$1;->a:Lcom/prineside/tdi2/screens/MoneyScreen$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Ljava/lang/Boolean;)V
    .locals 5

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MoneyScreen$3$1;->a:Lcom/prineside/tdi2/screens/MoneyScreen$3;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MoneyScreen$3;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MoneyScreen;->g(Lcom/prineside/tdi2/screens/MoneyScreen;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->RVW:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getRegularRewardingAdItems(I)Lcom/prineside/tdi2/IssuedItems;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen$3$1;->a:Lcom/prineside/tdi2/screens/MoneyScreen$3;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MoneyScreen$3;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/screens/MoneyScreen;->h(Lcom/prineside/tdi2/screens/MoneyScreen;J)J

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/ItemStack;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->showNewlyIssuedPrizesPopup()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->RVV:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v0, "Something went wrong, please try again later"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$3$1;->a:Lcom/prineside/tdi2/screens/MoneyScreen$3;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MoneyScreen$3;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MoneyScreen;->i(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/MoneyScreen$3$1;->retrieved(Ljava/lang/Boolean;)V

    return-void
.end method
