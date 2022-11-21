.class Lcom/prineside/tdi2/ui/components/GameOverOverlay$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;->run()V
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
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Ljava/lang/Boolean;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/prineside/tdi2/IssuedItems;

    sget-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->REWARD_VIDEO:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->a(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->a(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e828f5c    # 0.255f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/StrictMath;->round(F)I

    move-result v3

    if-lez v3, :cond_1

    new-instance v4, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iget-object v2, p1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/ItemStack;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_6

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ItemStack;

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;

    iget-object v4, v4, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->f(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;

    iget-object v4, v4, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1;->a:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->f(Lcom/prineside/tdi2/ui/components/GameOverOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/actors/ItemCell;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/actors/ItemCell;->getCount()I

    move-result v5

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCount(I)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    const-string v7, "+25%"

    invoke-direct {v5, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v6, 0x42c00000    # 96.0f

    const/high16 v7, 0x42d80000    # 108.0f

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "something_wrong_try_later"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay$1$1;->retrieved(Ljava/lang/Boolean;)V

    return-void
.end method
