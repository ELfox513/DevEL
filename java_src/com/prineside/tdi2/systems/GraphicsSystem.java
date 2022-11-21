package com.prineside.tdi2.systems;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.actors.GameBackground;
import com.prineside.tdi2.p036ui.actors.PanZoomTooltip;
import com.prineside.tdi2.p036ui.actors.ScreenBorderGradient;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.p036ui.components.AbilityMenu;
import com.prineside.tdi2.p036ui.components.BossTileMenu;
import com.prineside.tdi2.p036ui.components.BuildMenu;
import com.prineside.tdi2.p036ui.components.CoreMenu;
import com.prineside.tdi2.p036ui.components.FlyingItemsOverlay;
import com.prineside.tdi2.p036ui.components.GameOverOverlay;
import com.prineside.tdi2.p036ui.components.GameStateEditor;
import com.prineside.tdi2.p036ui.components.GameValueMenu;
import com.prineside.tdi2.p036ui.components.GateMenu;
import com.prineside.tdi2.p036ui.components.LiveLeaderboard;
import com.prineside.tdi2.p036ui.components.MainUi;
import com.prineside.tdi2.p036ui.components.MinerMenu;
import com.prineside.tdi2.p036ui.components.ModifierMenu;
import com.prineside.tdi2.p036ui.components.NewEnemyOverlay;
import com.prineside.tdi2.p036ui.components.PauseMenu;
import com.prineside.tdi2.p036ui.components.QuestList;
import com.prineside.tdi2.p036ui.components.RoadMenu;
import com.prineside.tdi2.p036ui.components.SpawnMenu;
import com.prineside.tdi2.p036ui.components.StatisticsChart;
import com.prineside.tdi2.p036ui.components.StorylineMessages;
import com.prineside.tdi2.p036ui.components.Subtitles;
import com.prineside.tdi2.p036ui.components.TargetMenu;
import com.prineside.tdi2.p036ui.components.Tooltip;
import com.prineside.tdi2.p036ui.components.TowerMenu;
import com.prineside.tdi2.p036ui.components.UiElementsEmphasizer;
import com.prineside.tdi2.p036ui.components.XmMusicTrackMenu;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.NAGS;
@NAGS
/* loaded from: classes2.dex */
public class GraphicsSystem extends GameSystem {
    public GameStateEditor _stateEditor;
    public StatisticsChart _statisticsChart;

    /* renamed from: a */
    public final _Game_StateSystemListener f11509a;
    public AbilityMenu abilityMenu;
    public BossTileMenu bossTileMenu;
    public BuildMenu buildMenu;
    public OrthographicCamera camera;
    public CoreMenu coreMenu;
    public FlyingItemsOverlay flyingItemsOverlay;
    public GameBackground gameBackground;
    public GameOverOverlay gameOverOverlay;
    public GameValueMenu gameValueMenu;
    public GateMenu gateMenu;
    public LiveLeaderboard liveLeaderboard;
    public MainUi mainUi;
    public MinerMenu minerMenu;
    public ModifierMenu modifierMenu;
    public NewEnemyOverlay newEnemyOverlay;
    public PanZoomTooltip panZoomTooltip;
    public PauseMenu pauseMenu;
    public QuestList questList;
    public RoadMenu roadMenu;
    public ScreenBorderGradient screenBorderGradient;
    public SideMenu sideMenu;
    public SpawnMenu spawnMenu;
    public StorylineMessages storylineMessages;
    public Subtitles subtitles;
    public TargetMenu targetMenu;
    public Tooltip tooltip;
    public TowerMenu towerMenu;
    public UiElementsEmphasizer uiElementsEmphasizer;
    public XmMusicTrackMenu xmMusicTrackMenu;

    /* loaded from: classes2.dex */
    public static class ScreenshotModeConfig {
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _Game_StateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter {
        public _Game_StateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void gamePaused() {
            GraphicsSystem.this.pauseMenu.setVisible(true);
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void gameResumed() {
            GraphicsSystem.this.pauseMenu.setVisible(false);
        }
    }

    public GraphicsSystem() {
        this.f11509a = new _Game_StateSystemListener();
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return false;
    }

    public void drawBackground(SpriteBatch spriteBatch, float f) {
        GameBackground gameBackground = this.gameBackground;
        if (gameBackground != null) {
            gameBackground.draw(spriteBatch, f);
        }
    }

    public MainUi getMainUi() {
        return this.mainUi;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Graphics";
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean profileUpdate() {
        return false;
    }

    public void setUiScreenshotMode(ScreenshotModeConfig screenshotModeConfig) {
        this.mainUi.setUiScreenshotMode(screenshotModeConfig);
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        GameBackground gameBackground = this.gameBackground;
        if (gameBackground != null) {
            gameBackground.dispose();
        }
        this.screenBorderGradient.dispose();
        this.pauseMenu.dispose();
        this.mainUi.dispose();
        this.sideMenu.dispose();
        this.abilityMenu.dispose();
        this.towerMenu.dispose();
        this.roadMenu.dispose();
        this.modifierMenu.dispose();
        this.minerMenu.dispose();
        this.buildMenu.dispose();
        this.spawnMenu.dispose();
        this.xmMusicTrackMenu.dispose();
        this.gateMenu.dispose();
        StatisticsChart statisticsChart = this._statisticsChart;
        if (statisticsChart != null) {
            statisticsChart.dispose();
        }
        GameStateEditor gameStateEditor = this._stateEditor;
        if (gameStateEditor != null) {
            gameStateEditor.dispose();
        }
        this.questList.dispose();
        this.liveLeaderboard.dispose();
        this.storylineMessages.dispose();
        this.subtitles.dispose();
        this.panZoomTooltip.dispose();
        this.flyingItemsOverlay.dispose();
        this.uiElementsEmphasizer.dispose();
        this.newEnemyOverlay.dispose();
        this.tooltip.dispose();
        this.gameOverOverlay.dispose();
        this.camera = null;
        this.gameBackground = null;
        this.screenBorderGradient = null;
        this.pauseMenu = null;
        this.mainUi = null;
        this.questList = null;
        this._statisticsChart = null;
        this._stateEditor = null;
        this.liveLeaderboard = null;
        this.abilityMenu = null;
        this.sideMenu = null;
        this.towerMenu = null;
        this.roadMenu = null;
        this.modifierMenu = null;
        this.minerMenu = null;
        this.buildMenu = null;
        this.spawnMenu = null;
        this.targetMenu = null;
        this.bossTileMenu = null;
        this.gameValueMenu = null;
        this.coreMenu = null;
        this.xmMusicTrackMenu = null;
        this.gateMenu = null;
        this.storylineMessages = null;
        this.subtitles = null;
        this.panZoomTooltip = null;
        this.flyingItemsOverlay = null;
        this.uiElementsEmphasizer = null;
        this.newEnemyOverlay = null;
        this.tooltip = null;
        this.gameOverOverlay = null;
        super.dispose();
    }

    public void draw(float f) {
        if (this.towerMenu.isVisible()) {
            this.towerMenu.draw(f);
        }
        if (this.modifierMenu.isVisible()) {
            this.modifierMenu.draw(f);
        }
        this.minerMenu.draw(f);
        this.mainUi.draw(f);
        this.abilityMenu.draw(f);
        this.targetMenu.draw(f);
        this.coreMenu.draw(f);
        this.subtitles.draw(f);
        StatisticsChart statisticsChart = this._statisticsChart;
        if (statisticsChart != null) {
            statisticsChart.draw(f);
        }
        GameStateEditor gameStateEditor = this._stateEditor;
        if (gameStateEditor != null) {
            gameStateEditor.draw(f);
        }
    }

    public void fadeOutUi() {
        this.mainUi.finalFadeOut();
        this.questList.finalFadeOut();
        this.liveLeaderboard.finalFadeOut();
        this.sideMenu.finalFadeOut();
        this.abilityMenu.finalFadeOut();
        this.subtitles.finalFadeOut();
        StatisticsChart statisticsChart = this._statisticsChart;
        if (statisticsChart != null) {
            statisticsChart.finalFadeOut();
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        this.mainUi.postSetup();
        this.buildMenu.postSetup();
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        this.f8844S.gameState.listeners.add(this.f11509a);
        this.pauseMenu = new PauseMenu(this.f8844S);
        this.mainUi = new MainUi(this.f8844S);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.BACKGROUND_ENABLED) != 0.0d) {
            this.gameBackground = new GameBackground(this.f8844S);
        }
        this.screenBorderGradient = new ScreenBorderGradient();
        this.sideMenu = new SideMenu();
        this.roadMenu = new RoadMenu(this.sideMenu, this.f8844S);
        this.towerMenu = new TowerMenu(this.sideMenu, this.f8844S);
        this.modifierMenu = new ModifierMenu(this.sideMenu, this.f8844S);
        this.minerMenu = new MinerMenu(this.sideMenu, this.f8844S);
        this.buildMenu = new BuildMenu(this.sideMenu, this.f8844S);
        this.spawnMenu = new SpawnMenu(this.sideMenu, this.f8844S);
        this.targetMenu = new TargetMenu(this.sideMenu, this.f8844S);
        this.bossTileMenu = new BossTileMenu(this.sideMenu, this.f8844S);
        this.coreMenu = new CoreMenu(this.sideMenu, this.f8844S);
        this.gameValueMenu = new GameValueMenu(this.sideMenu, this.f8844S);
        this.xmMusicTrackMenu = new XmMusicTrackMenu(this.sideMenu, this.f8844S);
        this.gateMenu = new GateMenu(this.sideMenu, this.f8844S);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-tile-menu-background"));
        image.setSize(600.0f, Game.f8589i.settingsManager.getScaledViewportHeight());
        image.setTouchable(Touchable.disabled);
        this.sideMenu.getBackgroundContainer().addActor(image);
        this.sideMenu.addOffscreenBackground();
        this.questList = new QuestList();
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.STATISTICS_CHART_ENABLED) != 0.0d) {
            this._statisticsChart = new StatisticsChart(this.f8844S);
        }
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.STATE_EDITOR_ENABLED) != 0.0d) {
            this._stateEditor = new GameStateEditor(this.f8844S);
        }
        this.liveLeaderboard = new LiveLeaderboard(this.f8844S);
        this.abilityMenu = new AbilityMenu(this.f8844S);
        this.storylineMessages = new StorylineMessages(this.f8844S);
        this.subtitles = new Subtitles();
        this.panZoomTooltip = new PanZoomTooltip();
        this.flyingItemsOverlay = new FlyingItemsOverlay(this.f8844S);
        this.uiElementsEmphasizer = new UiElementsEmphasizer(this.f8844S);
        this.newEnemyOverlay = new NewEnemyOverlay(this.f8844S);
        this.tooltip = new Tooltip();
        this.gameOverOverlay = new GameOverOverlay(this.f8844S);
    }

    public GraphicsSystem(boolean z) {
        this.f11509a = new _Game_StateSystemListener();
        this.camera = new OrthographicCamera(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
    }
}
