.class Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;
.super Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/GameScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_WaveSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/GameScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/GameScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;->a:Lcom/prineside/tdi2/screens/GameScreen;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/screens/GameScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/screens/GameScreen;)V

    return-void
.end method


# virtual methods
.method public forceWaveAvailabilityChanged()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/BasicLevel;->fastForwardFrame:I

    iget-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v2, v2, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    if-le v0, v2, :cond_0

    iget-object v0, v1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/WaveSystem;->isForceWaveAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;->a:Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/WaveSystem;->forceNextWaveAction()V

    :cond_0
    return-void
.end method
