.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;->d:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->skipQuest(Lcom/prineside/tdi2/BasicLevelQuestConfig;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;->p:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;->M:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;->k:Lcom/prineside/tdi2/BasicLevel;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->f(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    return-void
.end method
