.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

.field public final synthetic b:I

.field public final synthetic d:Lcom/prineside/tdi2/BasicLevelQuestConfig;

.field public final synthetic k:Lcom/prineside/tdi2/BasicLevel;

.field public final synthetic p:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;ILcom/prineside/tdi2/BasicLevelQuestConfig;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;->p:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iput p3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;->b:I

    iput-object p4, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;->d:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iput-object p5, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;->k:Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "regular_quest_skip_confirm"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v2, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2$1;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method
