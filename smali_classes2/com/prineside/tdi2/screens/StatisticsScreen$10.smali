.class Lcom/prineside/tdi2/screens/StatisticsScreen$10;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/StatisticsScreen;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/screens/StatisticsScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/StatisticsScreen$10;->o:Lcom/prineside/tdi2/screens/StatisticsScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/screens/StatisticsScreen$10;->o:Lcom/prineside/tdi2/screens/StatisticsScreen;

    invoke-static {p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->g(Lcom/prineside/tdi2/screens/StatisticsScreen;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "copied_to_clipboard"

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, p3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void
.end method
