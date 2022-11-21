.class Lcom/prineside/tdi2/screens/LanguageSelectScreen$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LanguageSelectScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/managers/LocaleManager$Locale;

.field public final synthetic p:Lcom/prineside/tdi2/screens/LanguageSelectScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LanguageSelectScreen;Lcom/prineside/tdi2/managers/LocaleManager$Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LanguageSelectScreen$2;->p:Lcom/prineside/tdi2/screens/LanguageSelectScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/LanguageSelectScreen$2;->o:Lcom/prineside/tdi2/managers/LocaleManager$Locale;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p0, Lcom/prineside/tdi2/screens/LanguageSelectScreen$2;->o:Lcom/prineside/tdi2/managers/LocaleManager$Locale;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager$Locale;->alias:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/managers/LocaleManager;->setLocale(Ljava/lang/String;Z)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMainMenu()V

    return-void
.end method
