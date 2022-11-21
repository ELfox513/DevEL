.class Lcom/prineside/tdi2/screens/GameScreen$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/GameScreen;->d(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/systems/GameStateSystem$GameMode;[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/GameScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/GameScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/GameScreen$2;->a:Lcom/prineside/tdi2/screens/GameScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$2;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->isFastForwarding()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->loadingOverlay:Lcom/prineside/tdi2/ui/shared/LoadingOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/LoadingOverlay;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$2;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MANUAL_GAME_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$2;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GraphicsSystem;->getMainUi()Lcom/prineside/tdi2/ui/components/MainUi;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/components/MainUi;->showGameSpeedButton(ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$2;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GraphicsSystem;->getMainUi()Lcom/prineside/tdi2/ui/components/MainUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MainUi;->hideGameSpeedButton()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$2;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0}, Lcom/prineside/tdi2/GameSystemProvider;->postSetupSystems()V

    return-void
.end method
