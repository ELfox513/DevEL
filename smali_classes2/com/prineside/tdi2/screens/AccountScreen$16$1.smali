.class Lcom/prineside/tdi2/screens/AccountScreen$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$16;->clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/AuthManager$PasswordResetResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$16;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$16;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$16$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/AuthManager$PasswordResetResult;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/screens/AccountScreen$23;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "error"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "user_not_found"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "check_mail_for_password_reset"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$16$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$16;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$16;->o:Lcom/prineside/tdi2/screens/AccountScreen;

    sget-object v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->ACCOUNT:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    invoke-static {p1, v0}, Lcom/prineside/tdi2/screens/AccountScreen;->c(Lcom/prineside/tdi2/screens/AccountScreen;Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;)Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$16$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$16;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$16;->o:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/AccountScreen;->d(Lcom/prineside/tdi2/screens/AccountScreen;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/AuthManager$PasswordResetResult;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$16$1;->retrieved(Lcom/prineside/tdi2/managers/AuthManager$PasswordResetResult;)V

    return-void
.end method
