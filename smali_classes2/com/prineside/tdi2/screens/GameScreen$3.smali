.class Lcom/prineside/tdi2/screens/GameScreen$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;


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

    iput-object p1, p0, Lcom/prineside/tdi2/screens/GameScreen$3;->a:Lcom/prineside/tdi2/screens/GameScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$3;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/BasicLevel;->fastForwardFrame:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$3;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/GameScreen;->a(Lcom/prineside/tdi2/screens/GameScreen;)Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$3;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/WaveSystem;->startNextWave()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$3;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v2, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/BasicLevel;->fastForwardFrame:I

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->startFastForwarding(I)V

    :cond_0
    return-void
.end method

.method public startedTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V
    .locals 0

    return-void
.end method
