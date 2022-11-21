.class Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/enums/AbilityType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

.field public final synthetic b:Lcom/prineside/tdi2/enums/AbilityType;

.field public final synthetic d:Lcom/prineside/tdi2/Ability$Factory;

.field public final synthetic k:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/enums/AbilityType;Lcom/prineside/tdi2/Ability$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->k:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->b:Lcom/prineside/tdi2/enums/AbilityType;

    iput-object p4, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->d:Lcom/prineside/tdi2/Ability$Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->b:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getAbilities(Lcom/prineside/tdi2/enums/AbilityType;)I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->b:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AbilityManager;->getMaxPerGameGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->b:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getAbilities(Lcom/prineside/tdi2/enums/AbilityType;)I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->d:Lcom/prineside/tdi2/Ability$Factory;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInGreenPapers(I)I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "not_enough_green_papers"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v6

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->d:Lcom/prineside/tdi2/Ability$Factory;

    invoke-virtual {v7, v5, v0}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInResources(Lcom/prineside/tdi2/enums/ResourceType;I)I

    move-result v5

    if-ge v6, v5, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "not_enough_resources"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->b:Lcom/prineside/tdi2/enums/AbilityType;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/prineside/tdi2/managers/ProgressManager;->addAbilities(Lcom/prineside/tdi2/enums/AbilityType;I)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->d:Lcom/prineside/tdi2/Ability$Factory;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInGreenPapers(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->removeGreenPapers(I)Z

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->d:Lcom/prineside/tdi2/Ability$Factory;

    invoke-virtual {v6, v4, v0}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInResources(Lcom/prineside/tdi2/enums/ResourceType;I)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->removeResources(Lcom/prineside/tdi2/enums/ResourceType;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;->k:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->V:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->update()V

    return-void
.end method
