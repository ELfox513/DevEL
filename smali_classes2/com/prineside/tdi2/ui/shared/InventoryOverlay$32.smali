.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$32;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iput v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->updateNativeNotifications()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v2, v0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getAcceleratorsRequiredToShortenTime(F)I

    move-result v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->removeAccelerators(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v3, "case_decryption"

    const-string v4, "accelerator"

    invoke-interface {v2, v3, v4, v0}, Lcom/prineside/tdi2/ActionResolver;->logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iput v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->updateNativeNotifications()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "not_enough_accelerators"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
