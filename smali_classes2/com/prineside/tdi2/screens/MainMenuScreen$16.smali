.class Lcom/prineside/tdi2/screens/MainMenuScreen$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MainMenuScreen;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MainMenuScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$16;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$16;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MainMenuScreen;->d(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dailyQuestOverlay:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$16;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->d(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->show(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V

    :cond_0
    return-void
.end method
