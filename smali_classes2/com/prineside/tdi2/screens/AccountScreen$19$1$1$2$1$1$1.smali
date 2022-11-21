.class Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

.field public final synthetic b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;->a:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "restore_progress_to_date_confirm"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1$1;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->makeConfirmButtonDisabled(I)V

    return-void
.end method
