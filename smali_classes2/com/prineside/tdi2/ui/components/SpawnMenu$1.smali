.class Lcom/prineside/tdi2/ui/components/SpawnMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/SpawnMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/SpawnMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$1;->b:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/UiManager;->wavesTimelineOverlay:Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;

    iget-object v4, v0, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v5, v5, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    iget v5, v5, Lcom/prineside/tdi2/Wave;->waveNumber:I

    :goto_0
    invoke-virtual {v4, v0, v1, v5}, Lcom/prineside/tdi2/managers/WaveManager;->generateWavesTimelineConfiguration(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/Map;I)Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->setConfiguration(Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;)V

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/UiManager;->wavesTimelineOverlay:Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;

    iget-object v4, v1, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v6, v5, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    iget v6, v6, Lcom/prineside/tdi2/Wave;->waveNumber:I

    :goto_1
    iget-object v5, v5, Lcom/prineside/tdi2/systems/WaveSystem;->bossWaves:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v4, v0, v1, v6, v5}, Lcom/prineside/tdi2/managers/WaveManager;->generateWavesTimelineConfiguration(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/Map;ILcom/badlogic/gdx/utils/IntMap;)Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->setConfiguration(Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;)V

    :goto_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$1;->b:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->a(Lcom/prineside/tdi2/ui/components/SpawnMenu;F)F

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->wavesTimelineOverlay:Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->setVisible(Z)V

    :cond_3
    return-void
.end method
