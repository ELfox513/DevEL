.class Lcom/prineside/tdi2/screens/AccountScreen$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$20;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$20;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/screens/AccountScreen$23;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "unknown_error"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->d:Lcom/prineside/tdi2/screens/AccountScreen;

    sget-object v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->ACCOUNT:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    invoke-static {p1, v0}, Lcom/prineside/tdi2/screens/AccountScreen;->c(Lcom/prineside/tdi2/screens/AccountScreen;Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;)Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->d:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/AccountScreen;->d(Lcom/prineside/tdi2/screens/AccountScreen;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "nickname_already_exists"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "too_many_sign_ups"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "nickname_is_invalid"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$20;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$20;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$20$1;->retrieved(Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;)V

    return-void
.end method
