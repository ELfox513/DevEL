.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$5;
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
.field public final synthetic a:Lcom/prineside/tdi2/BasicLevel;

.field public final synthetic b:Lcom/prineside/tdi2/enums/DifficultyMode;

.field public final synthetic d:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/enums/DifficultyMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$5;->d:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$5;->a:Lcom/prineside/tdi2/BasicLevel;

    iput-object p3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$5;->b:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$5;->a:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v0}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->cpy()Lcom/prineside/tdi2/Map;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$5;->b:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyModeDiffMultiplier(Lcom/prineside/tdi2/enums/DifficultyMode;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Map;->multiplyPortalsDifficulty(F)V

    :try_start_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->wavesTimelineOverlay:Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    iget-object v3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$5;->a:Lcom/prineside/tdi2/BasicLevel;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Lcom/prineside/tdi2/managers/WaveManager;->generateWavesTimelineConfiguration(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/Map;I)Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->setConfiguration(Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->wavesTimelineOverlay:Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show wavesTimelineOverlay for level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$5;->a:Lcom/prineside/tdi2/BasicLevel;

    iget-object v3, v3, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
