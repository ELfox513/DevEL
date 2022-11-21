.class Lcom/prineside/tdi2/screens/MoneyScreen$11;
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
.field public final synthetic a:Lcom/prineside/tdi2/items/CaseKeyItem;

.field public final synthetic b:Lcom/prineside/tdi2/items/CaseItem;

.field public final synthetic d:Lcom/prineside/tdi2/enums/CaseType;

.field public final synthetic k:Lcom/prineside/tdi2/screens/MoneyScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/items/CaseKeyItem;Lcom/prineside/tdi2/items/CaseItem;Lcom/prineside/tdi2/enums/CaseType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->k:Lcom/prineside/tdi2/screens/MoneyScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->a:Lcom/prineside/tdi2/items/CaseKeyItem;

    iput-object p3, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->b:Lcom/prineside/tdi2/items/CaseItem;

    iput-object p4, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->d:Lcom/prineside/tdi2/enums/CaseType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->a:Lcom/prineside/tdi2/items/CaseKeyItem;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->b:Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/items/CaseItem;->getCasePriceInKeys()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->b:Lcom/prineside/tdi2/items/CaseItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->PURCHASE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->b:Lcom/prineside/tdi2/items/CaseItem;

    invoke-direct {v3, v4, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->b:Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->openPack(Lcom/prineside/tdi2/Item;IZZ)Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->d:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_case"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->d:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->b:Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/items/CaseItem;->getCasePriceInKeys()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/prineside/tdi2/ActionResolver;->logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen$11;->k:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MoneyScreen;->i(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "not_enough_items"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
