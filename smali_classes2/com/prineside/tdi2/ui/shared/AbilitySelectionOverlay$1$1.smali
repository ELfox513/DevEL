.class Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1$1;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->values:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/AbilityManager;->getMaxPerGameGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/AbilityManager;->getMaxPerGameGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getAbilities(Lcom/prineside/tdi2/enums/AbilityType;)I

    move-result v7

    if-ge v7, v6, :cond_1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->addAbilities(Lcom/prineside/tdi2/enums/AbilityType;I)V

    const/4 v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const/4 v1, 0x0

    const-string v2, "ability_token"

    invoke-interface {v0, v1, v2, v4}, Lcom/prineside/tdi2/ActionResolver;->logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem;

    invoke-virtual {v0, v1, v4}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1$1;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->update()V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "all_abilities_are_already_purchased"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
