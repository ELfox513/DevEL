.class Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/CustomMapSelectScreen;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/UserMap;

.field public final synthetic b:Lcom/prineside/tdi2/screens/CustomMapSelectScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen;Lcom/prineside/tdi2/UserMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3;->b:Lcom/prineside/tdi2/screens/CustomMapSelectScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3;->a:Lcom/prineside/tdi2/UserMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$1;-><init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3;)V

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->savedGameExists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "saved_game_will_be_lost_confirm"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$2;

    invoke-direct {v3, p0, v0}, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3$2;-><init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen$3;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
