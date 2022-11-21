.class Lcom/prineside/tdi2/ui/shared/DailyLootOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyLootCurrentQuest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_resetQuests"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->questPrestigeOverlay:Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;->show()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;->setVisible(Z)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getRegularQuestById(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelQuestConfig;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->level:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToLevelSelectScreen(Lcom/prineside/tdi2/BasicLevel;)V

    :goto_0
    return-void
.end method
