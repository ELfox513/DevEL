.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->o(Lcom/prineside/tdi2/BasicLevel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/Requirement;

.field public final synthetic b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/Requirement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$11;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$11;->a:Lcom/prineside/tdi2/Requirement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$11;->a:Lcom/prineside/tdi2/Requirement;

    iget-object v1, v0, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    sget-object v2, Lcom/prineside/tdi2/enums/RequirementType;->RESEARCH:Lcom/prineside/tdi2/enums/RequirementType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v0, v0, Lcom/prineside/tdi2/Requirement;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToResearchesScreen(Lcom/prineside/tdi2/enums/ResearchType;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/enums/RequirementType;->STARS:Lcom/prineside/tdi2/enums/RequirementType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v0, v0, Lcom/prineside/tdi2/Requirement;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$11;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->f(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$11;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->g(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;ZZ)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/prineside/tdi2/enums/RequirementType;->OPENED_LEVEL:Lcom/prineside/tdi2/enums/RequirementType;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v0, v0, Lcom/prineside/tdi2/Requirement;->openedLevelName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$11;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->f(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$11;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->g(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method
