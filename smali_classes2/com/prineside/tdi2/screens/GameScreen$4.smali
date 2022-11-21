.class Lcom/prineside/tdi2/screens/GameScreen$4;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/GameScreen;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic r:Lcom/prineside/tdi2/screens/GameScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/GameScreen$4;->r:Lcom/prineside/tdi2/screens/GameScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/GameScreen$4;->q:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$4;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v1, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    new-instance v9, Lcom/prineside/tdi2/CameraController$BasicAnimation;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen$4;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    sget-object v8, Lcom/badlogic/gdx/math/Interpolation;->pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/prineside/tdi2/CameraController$BasicAnimation;-><init>(FFDFLcom/badlogic/gdx/math/Interpolation;)V

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/CameraController;->animate(Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game_over_reason_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen$4;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->gameOverReason:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen$4;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->tooltip:Lcom/prineside/tdi2/ui/components/Tooltip;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/components/Tooltip;->show(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->GAME_OVER:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method
