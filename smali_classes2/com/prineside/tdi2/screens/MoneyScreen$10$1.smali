.class Lcom/prineside/tdi2/screens/MoneyScreen$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MoneyScreen$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final synthetic b:Lcom/prineside/tdi2/screens/MoneyScreen$10;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MoneyScreen$10;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->b:Lcom/prineside/tdi2/screens/MoneyScreen$10;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countChanged(I)V
    .locals 5

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->b:Lcom/prineside/tdi2/screens/MoneyScreen$10;

    iget v1, v1, Lcom/prineside/tdi2/screens/MoneyScreen$10;->b:I

    int-to-long v1, v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->getSelectedCount()I

    move-result v3

    int-to-long v3, v3

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "[#AAAAAA] / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->b:Lcom/prineside/tdi2/screens/MoneyScreen$10;

    iget v1, v1, Lcom/prineside/tdi2/screens/MoneyScreen$10;->a:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public selectionCanceled()V
    .locals 0

    return-void
.end method

.method public selectionConfirmed(I)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->b:Lcom/prineside/tdi2/screens/MoneyScreen$10;

    iget-object v2, v1, Lcom/prineside/tdi2/screens/MoneyScreen$10;->d:Lcom/prineside/tdi2/items/CaseKeyItem;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MoneyScreen$10;->k:Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/items/CaseItem;->getCasePriceInKeys()I

    move-result v1

    mul-int v1, v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->b:Lcom/prineside/tdi2/screens/MoneyScreen$10;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MoneyScreen$10;->k:Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->PURCHASE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->b:Lcom/prineside/tdi2/screens/MoneyScreen$10;

    iget-object v3, v3, Lcom/prineside/tdi2/screens/MoneyScreen$10;->k:Lcom/prineside/tdi2/items/CaseItem;

    invoke-direct {v2, v3, p1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->b:Lcom/prineside/tdi2/screens/MoneyScreen$10;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MoneyScreen$10;->k:Lcom/prineside/tdi2/items/CaseItem;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->openPack(Lcom/prineside/tdi2/Item;IZZ)Z

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->b:Lcom/prineside/tdi2/screens/MoneyScreen$10;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MoneyScreen$10;->p:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->b:Lcom/prineside/tdi2/screens/MoneyScreen$10;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MoneyScreen$10;->p:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->b:Lcom/prineside/tdi2/screens/MoneyScreen$10;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MoneyScreen$10;->k:Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/items/CaseItem;->getCasePriceInKeys()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/prineside/tdi2/ActionResolver;->logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$10$1;->b:Lcom/prineside/tdi2/screens/MoneyScreen$10;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MoneyScreen$10;->q:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MoneyScreen;->i(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "not_enough_items"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
