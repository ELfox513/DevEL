.class Lcom/prineside/tdi2/screens/AccountScreen$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$8;->run()V
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
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$8;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$8;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

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

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->r:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/AccountScreen;->d(Lcom/prineside/tdi2/screens/AccountScreen;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "unknown_error"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "nickname_already_exists"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "email_already_exists"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "too_many_sign_ups"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "password_is_too_short"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "nickname_is_invalid"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "email_is_invalid"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$8;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$8;->r:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/AccountScreen;->f(Lcom/prineside/tdi2/screens/AccountScreen;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$8$1;->retrieved(Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;)V

    return-void
.end method
