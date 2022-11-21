.class Lcom/prineside/tdi2/ui/shared/DeveloperConsole$8;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->p(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)Lcom/prineside/tdi2/ui/shared/DeveloperConsole$LogLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$8;->p:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$8;->o:Ljava/lang/String;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$8;->o:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    const-string p2, "Copied to the clipboard!"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, p3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void
.end method
