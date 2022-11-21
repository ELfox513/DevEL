.class Lcom/prineside/tdi2/screens/AccountScreen$16;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/screens/AccountScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$16;->o:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/AccountScreen$16;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/AccountScreen$16;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->getNickname()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/screens/AccountScreen$16$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/screens/AccountScreen$16$1;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$16;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager;->resetPassword(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/AuthManager;->getEmailHint()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "account_password_not_set_confirm"

    invoke-virtual {p2, p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance p3, Lcom/prineside/tdi2/screens/a;

    invoke-direct {p3, p0}, Lcom/prineside/tdi2/screens/a;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$16;)V

    invoke-virtual {p2, p1, p3}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method
