.class Lcom/prineside/tdi2/managers/AuthManager$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager$8;->retrieved(Lcom/badlogic/gdx/utils/JsonValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager$8;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager$8;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$8$2;->a:Lcom/prineside/tdi2/managers/AuthManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$8$2;->a:Lcom/prineside/tdi2/managers/AuthManager$8;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager$8;->a:Lcom/prineside/tdi2/managers/AuthManager;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager;->h(Lcom/prineside/tdi2/managers/AuthManager;II)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "auto_saves_disabled_select_slot"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void
.end method
