.class Lcom/prineside/tdi2/screens/AccountScreen$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final synthetic d:Lcom/prineside/tdi2/screens/AccountScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$10;->d:Lcom/prineside/tdi2/screens/AccountScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/AccountScreen$10;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iput-object p3, p0, Lcom/prineside/tdi2/screens/AccountScreen$10;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$10;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter;->VALID_EMAIL_ADDRESS_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "^[a-zA-Z0-9_]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "email_or_nickname_is_incorrect"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/screens/AccountScreen$10;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "requesting..."

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/AccountScreen$10;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/AccountScreen$10;->d:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/AccountScreen;->e(Lcom/prineside/tdi2/screens/AccountScreen;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v2, Lcom/prineside/tdi2/screens/AccountScreen$10$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/screens/AccountScreen$10$1;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$10;)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/managers/AuthManager;->resetPassword(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method
