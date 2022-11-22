package com.prineside.tdi2.screens;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.Timer;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.lib.jse.CoerceJavaToLua;
import com.prineside.luaj.lib.jse.JavaInstance;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.BasicLevelQuestConfig;
import com.prineside.tdi2.CameraController;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueConfig;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.MapPrestigeConfig;
import com.prineside.tdi2.Screen;
import com.prineside.tdi2.UserMap;
import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.DailyQuestManager;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.managers.ScriptManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.StatisticsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.components.GameOverOverlay;
import com.prineside.tdi2.p036ui.shared.AbilitySelectionOverlay;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.GraphicsSystem;
import com.prineside.tdi2.systems.InputSystem;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.QuestSystem;
import com.prineside.tdi2.systems.ScriptSystem;
import com.prineside.tdi2.systems.StatisticsSystem;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.utils.GameSyncLoader;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.StringFormatter;
/* loaded from: classes2.dex */
public class GameScreen extends Screen {

    /* renamed from: o */
    public static final StringBuilder f10668o = new StringBuilder();

    /* renamed from: p */
    public static final StringBuilder f10669p = new StringBuilder();

    /* renamed from: S */
    public GameSystemProvider f10670S;

    /* renamed from: a */
    public final Output f10671a;

    /* renamed from: b */
    public boolean f10672b;

    /* renamed from: c */
    public float f10673c;

    /* renamed from: d */
    public float f10674d;

    /* renamed from: e */
    public boolean f10675e;

    /* renamed from: f */
    public float f10676f;

    /* renamed from: g */
    public float f10677g;

    /* renamed from: h */
    public float f10678h;

    /* renamed from: i */
    public float f10679i;

    /* renamed from: j */
    public final _WaveSystemListener f10680j;

    /* renamed from: k */
    public final _GameStateSystemListener f10681k;

    /* renamed from: l */
    public LuaValue f10682l;
    public final GameSyncLoader loader;

    /* renamed from: m */
    public float[] f10683m;

    /* renamed from: n */
    public int f10684n;
    public GameSystemProvider validationS;

    /* loaded from: classes2.dex */
    public class _GameStateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter {
        public _GameStateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void gameSpeedChanged() {
            GameScreen.this.f10673c = 0.0f;
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _WaveSystemListener extends WaveSystem.WaveSystemListener.WaveSystemListenerAdapter {
        public _WaveSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void forceWaveAvailabilityChanged() {
            String str = GameScreen.this.f10670S.gameState.basicLevelName;
            if (str != null) {
                int i = Game.f8589i.basicLevelManager.getLevel(str).fastForwardFrame;
                GameSystemProvider gameSystemProvider = GameScreen.this.f10670S;
                if (i > gameSystemProvider.gameState.updateNumber && gameSystemProvider.wave.isForceWaveAvailable()) {
                    GameScreen.this.f10670S.wave.forceNextWaveAction();
                }
            }
        }
    }

    public GameScreen(BasicLevel basicLevel, DifficultyMode difficultyMode, int i, AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration, long j, GameValueManager.GameValuesSnapshot gameValuesSnapshot) {
        this(basicLevel, difficultyMode, i, basicLevel.getMap().targetTile.isDisableAbilities() ? basicLevel.getMap().getMaxedAbilitiesConfiguration() : selectedAbilitiesConfiguration, Game.f8589i.progressManager.getEncryptedCasesCount() < Game.f8589i.progressManager.getMaxEncryptedCasesInInventory(), Game.f8589i.progressManager.getEncryptedCasesCount(), Game.f8589i.progressManager.getLootBoostTimeLeft() > 0.0f, Game.f8589i.progressManager.getItemsCount(Item.C1543D.RARITY_BOOST) > 0, j, gameValuesSnapshot, null);
    }

    public static void configureSystemsBeforeSetup(GameSystemProvider gameSystemProvider, AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration, boolean z, int i, boolean z2, boolean z3, long j, BasicLevel basicLevel, UserMap userMap, DifficultyMode difficultyMode, int i2, GameStateSystem.GameMode gameMode, BossType[] bossTypeArr, GameValueManager.GameValuesSnapshot gameValuesSnapshot, ProgressManager.InventoryStatistics inventoryStatistics) {
        ProgressManager.InventoryStatistics inventoryStatistics2;
        if (gameValuesSnapshot != null) {
            int i3 = 0;
            while (true) {
                Array<Manager> array = Game.f8589i.managers;
                if (i3 >= array.size) {
                    break;
                }
                array.get(i3).clearPools();
                i3++;
            }
            GameStateSystem gameStateSystem = gameSystemProvider.gameState;
            gameStateSystem.inUpdateStage = true;
            gameStateSystem.startingAbilitiesConfiguration = selectedAbilitiesConfiguration;
            gameStateSystem.canLootCases = z;
            gameStateSystem.encryptedChestsInInventory = i;
            gameStateSystem.lootBoostEnabled = z2;
            gameStateSystem.rarityBoostEnabled = z3;
            gameStateSystem.gameStartTimestamp = j;
            gameStateSystem.difficultyMode = difficultyMode;
            gameStateSystem.modeDifficultyMultiplier = ProgressManager.clampModeDifficulty(difficultyMode, i2, gameValuesSnapshot);
            GameStateSystem gameStateSystem2 = gameSystemProvider.gameState;
            gameStateSystem2.gameMode = gameMode;
            gameStateSystem2.basicLevelName = basicLevel == null ? null : basicLevel.name;
            gameStateSystem2.userMapId = userMap != null ? userMap.f8950id : null;
            gameStateSystem2.userMapOriginalSeed = userMap == null ? 0 : userMap.map.generateSeed();
            if (basicLevel != null) {
                WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr = basicLevel.enemyWaves;
                if (predefinedWaveTemplateArr != null) {
                    WaveSystem waveSystem = gameSystemProvider.wave;
                    waveSystem.mode = WaveSystem.Mode.PREDEFINED;
                    waveSystem.predefinedWaveTemplates = predefinedWaveTemplateArr;
                }
                gameSystemProvider.gameState.setSeed(basicLevel.seed);
                Map cpy = basicLevel.getMap().cpy();
                cpy.multiplyPortalsDifficulty(gameSystemProvider.gameState.modeDifficultyMultiplier * 0.01f);
                gameSystemProvider.gameState.averageDifficulty = cpy.getAverageDifficulty();
                gameSystemProvider.map.setMap(cpy);
                int[] complexityWaveMilestones = basicLevel.getComplexityWaveMilestones();
                gameSystemProvider.wave.setDifficultyGrowWaves(complexityWaveMilestones[0], complexityWaveMilestones[1], complexityWaveMilestones[2]);
                gameSystemProvider.wave.setBossWaves(cpy.getBossWaves());
                basicLevel.gameStartsCount++;
                Game.f8589i.basicLevelManager.save();
                gameSystemProvider.statistics.addStatistic(StatisticsType.GS, 1.0d);
            } else if (userMap != null) {
                Map cpy2 = userMap.map.cpy();
                cpy2.multiplyPortalsDifficulty(gameSystemProvider.gameState.modeDifficultyMultiplier * 0.01f);
                int[] complexityWaveMilestones2 = cpy2.getComplexityWaveMilestones();
                gameSystemProvider.wave.setDifficultyGrowWaves(complexityWaveMilestones2[0], complexityWaveMilestones2[1], complexityWaveMilestones2[2]);
                IntMap<BossType> bossWaves = cpy2.getBossWaves();
                if (bossWaves == null && bossTypeArr != null) {
                    bossWaves = new IntMap<>();
                    int i4 = 40;
                    loop1: while (true) {
                        int i5 = 0;
                        while (i4 < 2000) {
                            bossWaves.put(i4, bossTypeArr[i5]);
                            i4 += 20;
                            i5++;
                            if (i5 == bossTypeArr.length) {
                                break;
                            }
                        }
                    }
                    gameSystemProvider.gameState.allowedBossesForCustomMaps = bossTypeArr;
                }
                gameSystemProvider.wave.setBossWaves(bossWaves);
                gameSystemProvider.map.setMap(cpy2);
                gameSystemProvider.gameState.averageDifficulty = cpy2.getAverageDifficulty();
                gameSystemProvider.gameState.setSeed(cpy2.generateSeed());
                gameSystemProvider.statistics.addStatistic(StatisticsType.GS, 1.0d);
                gameSystemProvider.statistics.addStatistic(StatisticsType.GSUM, 1.0d);
            }
            gameSystemProvider.gameValue.setGlobalSnapshot(gameValuesSnapshot);
            if (inventoryStatistics == null) {
                Logger.log("GameScreen", "inventoryStatistics not specified, generating with manager");
                inventoryStatistics2 = Game.f8589i.progressManager.getInventoryStatistics();
            } else {
                inventoryStatistics2 = inventoryStatistics;
            }
            gameSystemProvider.loot.inventoryStatistics = inventoryStatistics2;
            if (DifficultyMode.isEndless(difficultyMode) && basicLevel != null && basicLevel.hasLeaderboards) {
                gameSystemProvider.map.getMap().targetTile.getGameValues().add(new GameValueConfig(GameValueType.ENEMIES_WALK_ON_PLATFORMS, 1.0d, true, false));
                gameSystemProvider.map.getMap().targetTile.getGameValues().add(new GameValueConfig(GameValueType.ENEMIES_MAX_PATH_SEARCHES, 2.0d, true, false));
                return;
            }
            return;
        }
        throw new IllegalStateException("gvSnapshot not specified");
    }

    /* renamed from: d */
    public final void m21321d(AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration, boolean z, int i, boolean z2, boolean z3, long j, BasicLevel basicLevel, UserMap userMap, DifficultyMode difficultyMode, int i2, GameStateSystem.GameMode gameMode, BossType[] bossTypeArr, GameValueManager.GameValuesSnapshot gameValuesSnapshot, ProgressManager.InventoryStatistics inventoryStatistics) {
        GameValueManager.GameValuesSnapshot gameValuesSnapshot2;
        GameScreen gameScreen;
        Map map;
        Game.f8589i.researchManager.updateAndValidateStarBranch();
        boolean z4 = false;
        if (gameValuesSnapshot == null) {
            Logger.log("GameScreen", "gvSnapshot not specified, generating with manager");
            if (basicLevel != null) {
                map = basicLevel.getMap();
            } else {
                map = userMap.map;
            }
            gameValuesSnapshot2 = Game.f8589i.gameValueManager.createSnapshot(null, difficultyMode, true, basicLevel, map.targetTile.isUseStockGameValues(), userMap != null);
        } else {
            gameValuesSnapshot2 = gameValuesSnapshot;
        }
        GameSystemProvider.SystemsConfig.Setup setup = GameSystemProvider.SystemsConfig.Setup.GAME;
        GameSystemProvider gameSystemProvider = new GameSystemProvider(new GameSystemProvider.SystemsConfig(setup, Config.isHeadless()));
        this.f10670S = gameSystemProvider;
        gameSystemProvider.createSystems();
        configureSystemsBeforeSetup(this.f10670S, selectedAbilitiesConfiguration, z, i, z2, z3, j, basicLevel, userMap, difficultyMode, i2, gameMode, bossTypeArr, gameValuesSnapshot2, inventoryStatistics);
        if (basicLevel != null && basicLevel.hasLeaderboards) {
            z4 = true;
        }
        if (Config.isHeadless() || Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_SYNC_VALIDATION) == 0.0d || !z4) {
            gameScreen = this;
        } else {
            GameSystemProvider gameSystemProvider2 = new GameSystemProvider(new GameSystemProvider.SystemsConfig(setup, true));
            this.validationS = gameSystemProvider2;
            gameSystemProvider2.createSystems();
            GameStateSystem gameStateSystem = this.f10670S.gameState;
            GameSystemProvider gameSystemProvider3 = this.validationS;
            gameStateSystem.duplicateActionsTo = gameSystemProvider3.gameState;
            gameScreen = this;
            configureSystemsBeforeSetup(gameSystemProvider3, selectedAbilitiesConfiguration, z, i, z2, z3, j, basicLevel, userMap, difficultyMode, i2, gameMode, bossTypeArr, gameValuesSnapshot2, inventoryStatistics);
            gameScreen.validationS.setupSystems();
            gameScreen.validationS.postSetupSystems();
            Game game = Game.f8589i;
            game.uiManager.notifications.add("Synchronization check enabled, thanks for helping us to make Infinitode 2 better!", game.assetManager.getDrawable("icon-check"), MaterialColor.GREEN.P800, null);
            Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.screens.GameScreen.1
                @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                public void run() {
                    Game game2 = Game.f8589i;
                    game2.uiManager.notifications.add("It affects performance and can be turned off in Settings -> Advanced -> \"Desync check\".", game2.assetManager.getDrawable("icon-check"), MaterialColor.LIGHT_BLUE.P800, null);
                }
            }, 3.0f);
        }
        Config.isHeadless();
        if (!Config.isHeadless()) {
            if (gameScreen.f10670S.map.getMap().xmMusicTrackTile != null && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.IGNORE_MAP_MUSIC) == 0.0d) {
                Game.f8589i.musicManager.setVolume(0.0f, 1.0f, true);
            }
            UiManager uiManager = Game.f8589i.uiManager;
            if (uiManager != null) {
                uiManager.hideAllComponents();
                Game.f8589i.uiManager.loadingOverlay.show();
            }
        }
        gameScreen.f10670S.setupSystems();
        gameScreen.loader.addTask(new GameSyncLoader.Task("Initialization", new Runnable() { // from class: com.prineside.tdi2.screens.GameScreen.2
            @Override // java.lang.Runnable
            public void run() {
                UiManager uiManager2;
                if (!GameScreen.this.f10670S.gameState.isFastForwarding() && (uiManager2 = Game.f8589i.uiManager) != null) {
                    uiManager2.loadingOverlay.hide();
                }
                GameSystemProvider gameSystemProvider4 = GameScreen.this.f10670S;
                if (gameSystemProvider4._graphics != null) {
                    if (gameSystemProvider4.gameValue.getBooleanValue(GameValueType.MANUAL_GAME_SPEED)) {
                        GameScreen.this.f10670S._graphics.getMainUi().showGameSpeedButton(false, null);
                    } else {
                        GameScreen.this.f10670S._graphics.getMainUi().hideGameSpeedButton();
                    }
                }
                GameScreen.this.f10670S.postSetupSystems();
            }
        }));
        gameScreen.loader.addListener(new GameSyncLoader.SyncExecutionListener() { // from class: com.prineside.tdi2.screens.GameScreen.3
            @Override // com.prineside.tdi2.utils.GameSyncLoader.SyncExecutionListener
            public void startedTask(GameSyncLoader.Task task, GameSyncLoader.Task task2) {
            }

            @Override // com.prineside.tdi2.utils.GameSyncLoader.SyncExecutionListener
            public void done() {
                String str = GameScreen.this.f10670S.gameState.basicLevelName;
                if (str != null && Game.f8589i.basicLevelManager.getLevel(str).fastForwardFrame > 0) {
                    GameScreen gameScreen2 = GameScreen.this;
                    gameScreen2.f10670S.wave.listeners.add(gameScreen2.f10680j);
                    GameScreen.this.f10670S.wave.startNextWave();
                    GameStateSystem gameStateSystem2 = GameScreen.this.f10670S.gameState;
                    gameStateSystem2.startFastForwarding(Game.f8589i.basicLevelManager.getLevel(gameStateSystem2.basicLevelName).fastForwardFrame);
                }
            }
        });
        gameScreen.f10670S.gameState.listeners.add(gameScreen.f10681k);
    }

    /* renamed from: c */
    public final void m21322c() {
        GraphicsSystem graphicsSystem;
        GameStateSystem.ReplayValidationResult.Result result;
        GameSystemProvider gameSystemProvider = this.f10670S;
        if ((gameSystemProvider.CFG.headless && gameSystemProvider.gameState.headlessValidatedReplayRecord == null) || this.f10672b) {
            return;
        }
        this.f10672b = true;
        gameSystemProvider.gameState.inUpdateStage = true;
        QuestSystem questSystem = gameSystemProvider._quest;
        if (questSystem != null) {
            questSystem.update(gameSystemProvider.gameValue.getTickRateDeltaTime());
        }
        GameStateSystem gameStateSystem = this.f10670S.gameState;
        if (gameStateSystem.headlessValidatedReplayRecord != null) {
            long timestampMillis = Game.getTimestampMillis();
            GameStateSystem gameStateSystem2 = this.f10670S.gameState;
            float f = ((float) (timestampMillis - gameStateSystem2.validationStartTimestamp)) * 0.001f;
            int i = (int) (gameStateSystem2.updateNumber / f);
            if (gameStateSystem2.isMaxEndlessReplayTimeReached()) {
                Logger.log("GameScreen", "max duration of endless replay reached");
                result = GameStateSystem.ReplayValidationResult.Result.VALID;
            } else {
                GameSystemProvider gameSystemProvider2 = this.f10670S;
                if (gameSystemProvider2.gameState.headlessValidatedReplayRecord.defeatedWaves != gameSystemProvider2.wave.getCompletedWavesCount()) {
                    result = GameStateSystem.ReplayValidationResult.Result.INVALID;
                } else {
                    GameStateSystem gameStateSystem3 = this.f10670S.gameState;
                    if (gameStateSystem3.headlessValidatedReplayRecord.score != gameStateSystem3.getScore()) {
                        result = GameStateSystem.ReplayValidationResult.Result.INVALID;
                    } else if (this.f10670S.gameState.validationFingerprintMismatchPrinted) {
                        result = GameStateSystem.ReplayValidationResult.Result.INVALID;
                    } else {
                        result = GameStateSystem.ReplayValidationResult.Result.VALID;
                    }
                }
            }
            GameStateSystem.ReplayValidationResult.Result result2 = result;
            GameSystemProvider gameSystemProvider3 = this.f10670S;
            GameStateSystem.ReplayValidationResult replayValidationResult = new GameStateSystem.ReplayValidationResult(result2, f, i, gameSystemProvider3.gameState.updateNumber, gameSystemProvider3.wave.getCompletedWavesCount(), this.f10670S.gameState.getScore(), this.f10670S.gameState.headlessValidatedReplayRecord);
            GameSystemProvider gameSystemProvider4 = this.f10670S;
            replayValidationResult.f11496xp = gameSystemProvider4.gameState.pxpExperience;
            replayValidationResult.enemiesKilled = (int) gameSystemProvider4.statistics.getStatistic(StatisticsType.EK);
            replayValidationResult.resourcesMined = (int) this.f10670S.statistics.getStatistic(StatisticsType.RG);
            GameSystemProvider gameSystemProvider5 = this.f10670S;
            replayValidationResult.f11495S = gameSystemProvider5;
            gameSystemProvider5.gameState.validationResultHandler.retrieved(replayValidationResult);
            return;
        }
        if (!gameStateSystem.replayMode) {
            GameStateSystem.deleteSavedGame();
        }
        if (this.f10670S.wave.status == WaveSystem.Status.NOT_STARTED) {
            Game.f8589i.screenManager.goToMainMenu();
        } else {
            Logger.log("GameScreen", "Game Over ========");
            Logger.log("GameScreen", "Reason: " + this.f10670S.gameState.gameOverReason.name());
            Logger.log("GameScreen", "Updates count: " + this.f10670S.gameState.updateNumber);
            Logger.log("GameScreen", "Random state: " + this.f10670S.gameState.getRandomState(0) + " " + this.f10670S.gameState.getRandomState(1));
            if (this.f10670S.gameState.isPaused() && (graphicsSystem = this.f10670S._graphics) != null) {
                graphicsSystem.pauseMenu.setVisible(false);
            }
            Game.f8589i.uiManager.dialog.hide();
            final GameSystemProvider gameSystemProvider6 = this.f10670S;
            float gameSpeed = gameSystemProvider6.gameState.getGameSpeed();
            this.f10677g = gameSpeed;
            if (gameSpeed > 2.0f) {
                this.f10677g = 2.0f;
            }
            float f2 = 0.0f;
            gameSystemProvider6.gameState.setGameSpeed(0.0f);
            gameSystemProvider6._input.enableOnlyStage();
            Game.f8589i.musicManager.setVolume(0.0f, 1.0f, true);
            gameSystemProvider6._graphics.fadeOutUi();
            this.f10676f = 0.15f;
            GameStateSystem.GameOverReason gameOverReason = gameSystemProvider6.gameState.gameOverReason;
            if (gameOverReason != GameStateSystem.GameOverReason.NO_ENEMIES_LEFT && gameOverReason != GameStateSystem.GameOverReason.MANUAL) {
                gameSystemProvider6.map.getMap().targetTile.startExplosionEffect();
            }
            if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
                f2 = 1.5f;
            }
            Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.screens.GameScreen.4
                @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                public void run() {
                    float f3;
                    GameSystemProvider gameSystemProvider7 = gameSystemProvider6;
                    InputSystem inputSystem = gameSystemProvider7._input;
                    if (inputSystem == null) {
                        return;
                    }
                    CameraController cameraController = inputSystem.cameraController;
                    float f4 = gameSystemProvider7.map.getMap().targetTile.center.f5527x;
                    float f5 = gameSystemProvider6.map.getMap().targetTile.center.f5528y;
                    if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
                        f3 = 1.0f;
                    } else {
                        f3 = 0.0f;
                    }
                    cameraController.animate(new CameraController.BasicAnimation(f4, f5, 1.0d, f3, Interpolation.pow2));
                    gameSystemProvider6._graphics.tooltip.show(Game.f8589i.localeManager.i18n.get("game_over_reason_" + gameSystemProvider6.gameState.gameOverReason.name()));
                    Game.f8589i.soundManager.playStatic(StaticSoundType.GAME_OVER);
                }
            }, 0.5f * f2);
            Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.screens.GameScreen.5
                @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                public void run() {
                    ResourceType[] resourceTypeArr;
                    MapPrestigeConfig mapPrestigeConfig;
                    int i2;
                    boolean z;
                    boolean z2;
                    boolean z3;
                    boolean z4;
                    boolean z5;
                    boolean z6;
                    GameStateSystem gameStateSystem4 = gameSystemProvider6.gameState;
                    if (gameStateSystem4.replayMode) {
                        gameSystemProvider6._graphics.gameOverOverlay.show(new Array<>(GameOverOverlay.GameOverItemStack.class), null);
                        return;
                    }
                    Array array = new Array(gameStateSystem4.getQuestsIssuedPrizes());
                    IssuedItems gameLootIssuedItems = gameSystemProvider6.gameState.getGameLootIssuedItems();
                    array.add(gameLootIssuedItems);
                    StatisticsManager statisticsManager = Game.f8589i.statisticsManager;
                    StatisticsType statisticsType = StatisticsType.AFPTG;
                    int allTime = (int) statisticsManager.getAllTime(statisticsType);
                    if (((int) Game.f8589i.statisticsManager.getAllTime(StatisticsType.PRT)) >= (allTime * ((StrictMath.min(allTime, 20) * 15) + 600)) + 600) {
                        Game.f8589i.statisticsManager.registerDelta(statisticsType, 1.0d);
                        gameLootIssuedItems.items.add(new ItemStack(Item.C1543D.ACCELERATOR, 1));
                    }
                    float f3 = 1.0f;
                    if (gameSystemProvider6.gameState.isDailyQuestAndNotCompleted()) {
                        f3 = 0.1f;
                    }
                    int calculatePrizeGreenPapers = (int) (gameSystemProvider6.gameState.calculatePrizeGreenPapers() * f3);
                    if (calculatePrizeGreenPapers > 0) {
                        ProgressManager.addItemToStacksArray(gameLootIssuedItems.items, Item.C1543D.GREEN_PAPER, calculatePrizeGreenPapers);
                    }
                    for (ResourceType resourceType : ResourceType.values) {
                        int resources = (int) (gameSystemProvider6.gameState.getResources(resourceType) * f3);
                        if (resources != 0) {
                            ProgressManager.addItemToStacksArray(gameLootIssuedItems.items, Item.C1543D.F_RESOURCE.create(resourceType), resources);
                        }
                    }
                    Array<GameOverOverlay.GameOverItemStack> array2 = new Array<>(GameOverOverlay.GameOverItemStack.class);
                    boolean isDoubleGainEnabled = Game.f8589i.progressManager.isDoubleGainEnabled();
                    for (int i3 = 0; i3 < array.size; i3++) {
                        IssuedItems issuedItems = (IssuedItems) array.get(i3);
                        int i4 = 0;
                        while (true) {
                            Array<ItemStack> array3 = issuedItems.items;
                            if (i4 < array3.size) {
                                ItemStack itemStack = array3.get(i4);
                                if (isDoubleGainEnabled && itemStack.getItem().isAffectedByDoubleGain()) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                if (z5) {
                                    itemStack.setCount(PMath.multiplyWithoutOverflow(itemStack.getCount(), 2));
                                }
                                int i5 = 0;
                                while (true) {
                                    if (i5 < array2.size) {
                                        GameOverOverlay.GameOverItemStack gameOverItemStack = array2.get(i5);
                                        if (gameOverItemStack.covered == itemStack.covered && gameOverItemStack.isDoubled == z5 && gameOverItemStack.getItem().sameAs(itemStack.getItem())) {
                                            array2.get(i5).setCount(PMath.addWithoutOverflow(gameOverItemStack.getCount(), itemStack.getCount()));
                                            z6 = true;
                                            break;
                                        }
                                        i5++;
                                    } else {
                                        z6 = false;
                                        break;
                                    }
                                }
                                if (!z6) {
                                    GameOverOverlay.GameOverItemStack gameOverItemStack2 = new GameOverOverlay.GameOverItemStack(itemStack);
                                    if (z5) {
                                        gameOverItemStack2.isDoubled = true;
                                    }
                                    array2.add(gameOverItemStack2);
                                }
                                i4++;
                            }
                        }
                    }
                    StatisticsSystem statisticsSystem = gameSystemProvider6.statistics;
                    StatisticsType statisticsType2 = StatisticsType.GPG;
                    if (Game.f8589i.progressManager.isDoubleGainEnabled()) {
                        calculatePrizeGreenPapers *= 2;
                    }
                    statisticsSystem.addStatistic(statisticsType2, calculatePrizeGreenPapers);
                    float f4 = gameSystemProvider6.gameState.playRealTime;
                    if (f4 >= 0.0f && !Float.isNaN(f4) && !Float.isInfinite(f4)) {
                        if (f4 > 86400.0f) {
                            f4 = 86400.0f;
                        }
                    } else {
                        f4 = 0.0f;
                    }
                    gameSystemProvider6.statistics.addStatistic(StatisticsType.PRT, f4);
                    for (int i6 = 0; i6 < array.size; i6++) {
                        IssuedItems issuedItems2 = (IssuedItems) array.get(i6);
                        int i7 = 0;
                        while (true) {
                            Array<ItemStack> array4 = issuedItems2.items;
                            if (i7 < array4.size) {
                                Game.f8589i.progressManager.addItems(array4.get(i7));
                                i7++;
                            }
                        }
                    }
                    GameStateSystem gameStateSystem5 = gameSystemProvider6.gameState;
                    String str = gameStateSystem5.basicLevelName;
                    if (str != null && gameStateSystem5.difficultyMode == DifficultyMode.NORMAL) {
                        Game.f8589i.authManager.localXpPlayedLevels.add(str);
                    }
                    ReplayManager replayManager = Game.f8589i.replayManager;
                    GameSystemProvider gameSystemProvider7 = gameSystemProvider6;
                    Game.f8589i.replayManager.sendReplayToServer(replayManager.saveReplay(gameSystemProvider7, gameSystemProvider7.gameState.gameStartPreferencesSnapshot, true), new ObjectRetriever<ReplayManager.ReplaySendStatus>() { // from class: com.prineside.tdi2.screens.GameScreen.5.1
                        @Override // com.prineside.tdi2.utils.ObjectRetriever
                        public void retrieved(ReplayManager.ReplaySendStatus replaySendStatus) {
                            int i8 = replaySendStatus.regularXpGained;
                            if (i8 > 0) {
                                Game.f8589i.uiManager.profileSummary.showXpGained(i8, replaySendStatus.bonusXpGained, replaySendStatus.bonusXpLeft, replaySendStatus.regularXpLeft);
                            }
                            Game.f8589i.replayManager.sendUnsentReplaysToTheServer();
                        }
                    });
                    if (gameSystemProvider6.gameState.gameMode == GameStateSystem.GameMode.USER_MAPS && Game.f8589i.gameValueManager.getSnapshot().getBooleanValue(GameValueType.PRESTIGE_MODE)) {
                        int[] iArr = gameSystemProvider6.ability.abilitiesUsed;
                        int length = iArr.length;
                        int i8 = 0;
                        while (true) {
                            if (i8 < length) {
                                if (iArr[i8] != 0) {
                                    z2 = false;
                                    break;
                                }
                                i8++;
                            } else {
                                z2 = true;
                                break;
                            }
                        }
                        TargetTile targetTile = gameSystemProvider6.map.getMap().targetTile;
                        double percentValueAsMultiplier = Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.PRESTIGE_DUST_DROP_RATE);
                        GameSystemProvider gameSystemProvider8 = gameSystemProvider6;
                        String str2 = gameSystemProvider8.gameState.userMapId;
                        double prestigeScore = gameSystemProvider8.map.getMap().getPrestigeScore() * percentValueAsMultiplier;
                        int i9 = gameSystemProvider6.gameState.averageDifficulty;
                        boolean isUseStockGameValues = targetTile.isUseStockGameValues();
                        boolean isWalkableTiles = targetTile.isWalkableTiles();
                        if (gameSystemProvider6.modifier.modifiersBuiltByTypeAllTime[ModifierType.BOUNTY.ordinal()] == 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (gameSystemProvider6.statistics.getStatistic(StatisticsType.MB) == 0.0d) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        mapPrestigeConfig = new MapPrestigeConfig(str2, prestigeScore, i9, z2, isUseStockGameValues, isWalkableTiles, z3, z4, gameSystemProvider6.gameState.getScore());
                    } else {
                        mapPrestigeConfig = null;
                    }
                    Array<String> completedQuests = gameSystemProvider6.gameState.getCompletedQuests();
                    if (completedQuests.size > 0) {
                        if (gameSystemProvider6.gameState.basicLevelName != null) {
                            for (int i10 = 0; i10 < completedQuests.size; i10++) {
                                String str3 = completedQuests.get(i10);
                                int i11 = 0;
                                while (true) {
                                    if (i11 >= Game.f8589i.basicLevelManager.getLevel(gameSystemProvider6.gameState.basicLevelName).quests.size) {
                                        break;
                                    }
                                    BasicLevelQuestConfig basicLevelQuestConfig = Game.f8589i.basicLevelManager.getLevel(gameSystemProvider6.gameState.basicLevelName).quests.items[i11];
                                    if (basicLevelQuestConfig.f8469id.equals(str3)) {
                                        basicLevelQuestConfig.setCompleted(true);
                                        Logger.log("GameScreen", "saving quest " + str3);
                                        break;
                                    }
                                    i11++;
                                }
                                int i12 = 0;
                                while (true) {
                                    if (i12 < Game.f8589i.basicLevelManager.getLevel(gameSystemProvider6.gameState.basicLevelName).waveQuests.size) {
                                        BasicLevel.WaveQuest waveQuest = Game.f8589i.basicLevelManager.getLevel(gameSystemProvider6.gameState.basicLevelName).waveQuests.items[i12];
                                        if (waveQuest.f8465id.equals(str3)) {
                                            waveQuest.setCompleted(true);
                                            Logger.log("GameScreen", "saving quest " + str3);
                                            break;
                                        }
                                        i12++;
                                    }
                                }
                            }
                        }
                        if (gameSystemProvider6.gameState.dailyQuestLevel != null) {
                            Logger.log("GameScreen", "saved today's daily quest as completed");
                            gameSystemProvider6.gameState.dailyQuestLevel.setCompleted();
                        }
                        String dailyLootCurrentQuest = Game.f8589i.dailyQuestManager.getDailyLootCurrentQuest();
                        int i13 = 0;
                        while (true) {
                            if (i13 >= completedQuests.size) {
                                break;
                            } else if (completedQuests.items[i13].equals(dailyLootCurrentQuest)) {
                                IssuedItems dailyLootQuestCompleted = Game.f8589i.dailyQuestManager.setDailyLootQuestCompleted();
                                if (dailyLootQuestCompleted != null) {
                                    for (int i14 = 0; i14 < dailyLootQuestCompleted.items.size; i14++) {
                                        GameOverOverlay.GameOverItemStack gameOverItemStack3 = new GameOverOverlay.GameOverItemStack(dailyLootQuestCompleted.items.items[i14]);
                                        gameOverItemStack3.isDailyLoot = true;
                                        array2.add(gameOverItemStack3);
                                    }
                                }
                            } else {
                                i13++;
                            }
                        }
                    }
                    gameSystemProvider6._graphics.gameOverOverlay.show(array2, mapPrestigeConfig);
                    GameSystemProvider gameSystemProvider9 = gameSystemProvider6;
                    if (gameSystemProvider9.gameState.gameMode == GameStateSystem.GameMode.BASIC_LEVELS) {
                        int completedWavesCount = gameSystemProvider9.wave.getCompletedWavesCount();
                        if (completedWavesCount > Game.f8589i.basicLevelManager.getLevel(gameSystemProvider6.gameState.basicLevelName).maxReachedWave) {
                            Game.f8589i.basicLevelManager.getLevel(gameSystemProvider6.gameState.basicLevelName).maxReachedWave = completedWavesCount;
                        }
                        if (gameSystemProvider6.gameState.getScore() > Game.f8589i.basicLevelManager.getLevel(gameSystemProvider6.gameState.basicLevelName).maxScore) {
                            Game.f8589i.basicLevelManager.getLevel(gameSystemProvider6.gameState.basicLevelName).maxScore = gameSystemProvider6.gameState.getScore();
                        }
                        int currentGameStatistic = (int) gameSystemProvider6.statistics.getCurrentGameStatistic(StatisticsType.PRT);
                        if (currentGameStatistic > Game.f8589i.basicLevelManager.getLevel(gameSystemProvider6.gameState.basicLevelName).maxPlayingTime) {
                            Game.f8589i.basicLevelManager.getLevel(gameSystemProvider6.gameState.basicLevelName).maxPlayingTime = currentGameStatistic;
                        }
                        gameSystemProvider6._quest.saveBasicLevelQuestValues();
                    }
                    gameSystemProvider6.statistics.flushStatistics();
                    Game.f8589i.researchManager.checkResearchesStatus(true);
                    for (int i15 = 0; i15 < array.size; i15++) {
                        Array<? extends ItemStack> array5 = new Array<>();
                        Array<ItemStack> array6 = ((IssuedItems) array.get(i15)).items;
                        for (int i16 = 0; i16 < array6.size; i16++) {
                            ItemStack itemStack2 = array6.get(i16);
                            int i17 = 0;
                            while (true) {
                                if (i17 < array5.size) {
                                    if (array5.get(i17).getItem().sameAs(itemStack2.getItem())) {
                                        array5.get(i17).setCount(PMath.addWithoutOverflow(array5.get(i17).getCount(), itemStack2.getCount()));
                                        z = true;
                                        break;
                                    }
                                    i17++;
                                } else {
                                    z = false;
                                    break;
                                }
                            }
                            if (!z) {
                                array5.add(new ItemStack(itemStack2));
                            }
                        }
                        ((IssuedItems) array.get(i15)).items.clear();
                        ((IssuedItems) array.get(i15)).items.addAll(array5);
                        Game.f8589i.progressManager.addIssuedPrizes((IssuedItems) array.get(i15), true);
                    }
                    GameSystemProvider gameSystemProvider10 = gameSystemProvider6;
                    if (gameSystemProvider10.gameState.dailyQuestLevel == null && !gameSystemProvider10.map.getMap().targetTile.isDisableAbilities()) {
                        AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration = gameSystemProvider6.ability.abilitiesConfiguration;
                        int i18 = 0;
                        while (true) {
                            AbilityType[] abilityTypeArr = selectedAbilitiesConfiguration.slots;
                            if (i18 >= abilityTypeArr.length) {
                                break;
                            }
                            AbilityType abilityType = abilityTypeArr[i18];
                            if (abilityType != null && (i2 = -gameSystemProvider6.ability.abilitiesUsed[i18]) < 0) {
                                int i19 = -i2;
                                if (!Game.f8589i.progressManager.removeAbilities(abilityType, i19)) {
                                    Logger.error("GameScreen", "removeAbilities false " + i19);
                                }
                            }
                            i18++;
                        }
                        if (gameSystemProvider6.gameState.rarityBoostEnabled) {
                            Game.f8589i.actionResolver.logCurrencySpent(null, "rarity_boost", 1);
                            Game.f8589i.progressManager.removeItems(Item.C1543D.RARITY_BOOST, 1);
                        }
                    }
                    Game.f8589i.achievementManager.updateGlobal();
                    Game.f8589i.progressManager.save();
                    Game.f8589i.basicLevelManager.save();
                    Game.f8589i.userMapManager.save();
                    Game.f8589i.statisticsManager.save();
                    Game.f8589i.authManager.handleAutoSave();
                }
            }, f2 * 2.0f);
        }
        Game.f8589i.researchManager.checkResearchesStatus(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0157, code lost:
        r2 = r17.f10670S.gameState;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0161, code lost:
        if (r2.updateNumber < r2.getFastForwardUpdateNumber()) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0163, code lost:
        r17.f10670S.gameState.stopFastForwarding();
        r2 = r17.f10670S.gameState.basicLevelName;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0170, code lost:
        if (r2 == null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x017c, code lost:
        if (com.prineside.tdi2.Game.f8589i.basicLevelManager.getLevel(r2).fastForwardFrame <= 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x017e, code lost:
        r17.f10670S.gameState.setGameSpeed(1.0f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0186, code lost:
        r17.f10670S.gameState.setGameSpeed(0.0f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x018e, code lost:
        if (r1 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0190, code lost:
        com.prineside.tdi2.Game.f8589i.uiManager.loadingOverlay.hide();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0199, code lost:
        r1 = new java.lang.StringBuilder();
        r1.append("fast forward to update ");
        r1.append(r17.f10670S.gameState.getFastForwardUpdateNumber());
        r1.append(" done, frame ");
        r1.append(r17.f10670S.gameState.updateNumber);
        r1.append(", continued game state hash ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01cf, code lost:
        if (r17.f10670S.gameState.getApproxStateHash() != r17.f10670S.gameState.continuedGameApproxStateHash) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01d1, code lost:
        r2 = "matches :)";
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01d4, code lost:
        r2 = "differs :( " + r17.f10670S.gameState.getApproxStateHash() + " " + r17.f10670S.gameState.continuedGameApproxStateHash;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01fb, code lost:
        r1.append(r2);
        com.prineside.tdi2.Logger.log("GameScreen", r1.toString());
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0302 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0303  */
    @Override // com.prineside.tdi2.Screen
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(float r18) {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.screens.GameScreen.draw(float):void");
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void show() {
        UiManager uiManager = Game.f8589i.uiManager;
        if (uiManager != null) {
            uiManager.stage.setScrollFocus(null);
        }
    }

    public void updateDraw(float f, float f2) {
        Color color;
        ScriptManager.ScriptEnvironment scriptEnvironment;
        ScriptManager.ScriptEnvironment scriptEnvironment2;
        ScriptManager.ScriptEnvironment scriptEnvironment3;
        ScriptManager.ScriptEnvironment scriptEnvironment4;
        ScriptManager.ScriptEnvironment scriptEnvironment5;
        ScriptManager.ScriptEnvironment scriptEnvironment6;
        ScriptManager.ScriptEnvironment scriptEnvironment7;
        if (this.f10670S.CFG.headless) {
            return;
        }
        float f3 = 10.0f;
        float f4 = 0.0f;
        if (f >= 0.0f && !Float.isInfinite(f) && !Float.isNaN(f)) {
            if (f <= 10.0f) {
                f3 = f;
            }
        } else {
            f3 = 0.0f;
        }
        float f5 = 1.0f;
        if (this.f10670S.gameState.isGameOver()) {
            float f6 = this.f10676f + (0.5f * f2);
            this.f10676f = f6;
            if (f6 > 1.0f) {
                this.f10676f = 1.0f;
            }
        }
        float f7 = this.f10676f * f2;
        float f8 = this.f10674d;
        if (f8 > this.f10670S.gameValue.getTickRateDeltaTime()) {
            f8 = this.f10670S.gameValue.getTickRateDeltaTime();
        }
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.GRAPHICS_INTERPOLATION_ENABLED) == 0.0d) {
            f8 = 0.0f;
        }
        if (this.f10670S.gameState.isGameOver()) {
            float f9 = this.f10677g;
            float f10 = (f2 * f9) + this.f10678h;
            this.f10678h = f10;
            float f11 = f9 - ((5.0f * f2) * f9);
            this.f10677g = f11;
            if (f11 < 0.0f) {
                this.f10677g = 0.0f;
            }
            f8 = f10;
        }
        if (f8 < 0.0f) {
            f8 = 0.0f;
        }
        long realTickCount = Game.getRealTickCount();
        SpriteBatch spriteBatch = Game.f8589i.renderingManager.batch;
        spriteBatch.setProjectionMatrix(this.f10670S._graphics.camera.combined);
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        LuaValue luaValue = this.f10682l;
        if (luaValue == null) {
            this.f10682l = CoerceJavaToLua.coerce(spriteBatch);
        } else if (((JavaInstance) luaValue).m_instance != spriteBatch) {
            this.f10682l = CoerceJavaToLua.coerce(spriteBatch);
        }
        ScriptSystem scriptSystem = this.f10670S.script;
        if (scriptSystem != null && (scriptEnvironment7 = scriptSystem.scriptEnvironment) != null) {
            scriptEnvironment7.triggerEvent("BeginRender", this.f10682l, PMath.cachedLuaDouble1(f3));
        }
        long realTickCount2 = Game.getRealTickCount();
        this.f10670S._graphics.drawBackground(spriteBatch, f7);
        Game.f8589i.debugManager.registerFrameJob("Graphics-drawBackground", Game.getRealTickCount() - realTickCount2);
        ScriptSystem scriptSystem2 = this.f10670S.script;
        if (scriptSystem2 != null && (scriptEnvironment6 = scriptSystem2.scriptEnvironment) != null) {
            scriptEnvironment6.triggerEvent("PostBackgroundRender", this.f10682l, PMath.cachedLuaDouble1(f3));
        }
        long realTickCount3 = Game.getRealTickCount();
        GameSystemProvider gameSystemProvider = this.f10670S;
        gameSystemProvider._mapRendering.drawTiles(gameSystemProvider._graphics.camera);
        Game.f8589i.debugManager.registerFrameJob("MapRendering-drawTiles", Game.getRealTickCount() - realTickCount3);
        if (Game.f8589i.settingsManager.isStainsEnabled()) {
            spriteBatch.begin();
            long realTickCount4 = Game.getRealTickCount();
            this.f10670S._mapRendering.drawStains(spriteBatch);
            Game.f8589i.debugManager.registerFrameJob("MapRendering-drawStains", Game.getRealTickCount() - realTickCount4);
            spriteBatch.end();
        }
        long realTickCount5 = Game.getRealTickCount();
        GameSystemProvider gameSystemProvider2 = this.f10670S;
        gameSystemProvider2._mapRendering.drawTilesExtras(gameSystemProvider2._graphics.camera);
        Game.f8589i.debugManager.registerFrameJob("MapRendering-drawTilesExtras", Game.getRealTickCount() - realTickCount5);
        ScriptSystem scriptSystem3 = this.f10670S.script;
        if (scriptSystem3 != null && (scriptEnvironment5 = scriptSystem3.scriptEnvironment) != null) {
            scriptEnvironment5.triggerEvent("PostMapTilesRender", this.f10682l, PMath.cachedLuaDouble1(f3));
        }
        spriteBatch.begin();
        long realTickCount6 = Game.getRealTickCount();
        this.f10670S._mapRendering.drawBatch(spriteBatch, f3);
        Game.f8589i.debugManager.registerFrameJob("MapRendering-drawBatch", Game.getRealTickCount() - realTickCount6);
        ScriptSystem scriptSystem4 = this.f10670S.script;
        if (scriptSystem4 != null && (scriptEnvironment4 = scriptSystem4.scriptEnvironment) != null) {
            scriptEnvironment4.triggerEvent("PostMapRender", this.f10682l, PMath.cachedLuaDouble1(f3));
        }
        spriteBatch.end();
        long realTickCount7 = Game.getRealTickCount();
        GameSystemProvider gameSystemProvider3 = this.f10670S;
        gameSystemProvider3._mapRendering.drawTowers(gameSystemProvider3._graphics.camera);
        Game.f8589i.debugManager.registerFrameJob("MapRendering-drawTowers", Game.getRealTickCount() - realTickCount7);
        spriteBatch.begin();
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        Color color2 = Config.WHITE_COLOR_CACHED_FLOAT_BITS;
        spriteBatch.setColor(color2);
        if (f8 < 0.0f) {
            f8 = 0.0f;
        }
        if (f8 > 1.0f) {
            f8 = 1.0f;
        }
        this.f10670S.tower.applyDrawInterpolation(f8);
        long realTickCount8 = Game.getRealTickCount();
        if (this.f10670S._mapRendering.getDrawMode() == MapRenderingSystem.DrawMode.DETAILED) {
            spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.21f);
        }
        this.f10670S.tower.drawWeapons(spriteBatch, f3);
        spriteBatch.setColor(Color.WHITE);
        Game.f8589i.debugManager.registerFrameJob("Tower-drawWeapons", Game.getRealTickCount() - realTickCount8);
        long realTickCount9 = Game.getRealTickCount();
        this.f10670S.tower.drawBatch(spriteBatch, f3);
        Game.f8589i.debugManager.registerFrameJob("Tower-drawBatch", Game.getRealTickCount() - realTickCount9);
        long realTickCount10 = Game.getRealTickCount();
        this.f10670S.miner.drawBatch(spriteBatch, f3);
        Game.f8589i.debugManager.registerFrameJob("Miner-drawBatch", Game.getRealTickCount() - realTickCount10);
        long realTickCount11 = Game.getRealTickCount();
        this.f10670S.modifier.drawBatch(spriteBatch, f3);
        Game.f8589i.debugManager.registerFrameJob("Modifier-drawBatch", Game.getRealTickCount() - realTickCount11);
        ScriptSystem scriptSystem5 = this.f10670S.script;
        if (scriptSystem5 != null && (scriptEnvironment3 = scriptSystem5.scriptEnvironment) != null) {
            color = color2;
            scriptEnvironment3.triggerEvent("PostBuildingsRender", this.f10682l, PMath.cachedLuaDouble1(f3), PMath.cachedLuaDouble2(f8));
        } else {
            color = color2;
        }
        long realTickCount12 = Game.getRealTickCount();
        this.f10670S._pathRendering.draw(spriteBatch, f7);
        Game.f8589i.debugManager.registerFrameJob("PathRendering-draw", Game.getRealTickCount() - realTickCount12);
        long realTickCount13 = Game.getRealTickCount();
        if (f8 < 0.0f) {
            f8 = 0.0f;
        }
        if (f8 > 1.0f) {
            f8 = 1.0f;
        }
        this.f10670S.unit.drawGrounded(spriteBatch, f3, f8);
        Game.f8589i.debugManager.registerFrameJob("Unit-drawGrounded", Game.getRealTickCount() - realTickCount13);
        long realTickCount14 = Game.getRealTickCount();
        if (f8 < 0.0f) {
            f8 = 0.0f;
        }
        if (f8 > 1.0f) {
            f8 = 1.0f;
        }
        this.f10670S.enemy.draw(spriteBatch, f3, f8);
        Game.f8589i.debugManager.registerFrameJob("Enemy-draw", Game.getRealTickCount() - realTickCount14);
        long realTickCount15 = Game.getRealTickCount();
        if (f8 < 0.0f) {
            f8 = 0.0f;
        }
        if (f8 > 1.0f) {
            f8 = 1.0f;
        }
        this.f10670S.unit.drawFlying(spriteBatch, f3, f8);
        Game.f8589i.debugManager.registerFrameJob("Unit-drawFlying", Game.getRealTickCount() - realTickCount15);
        ScriptSystem scriptSystem6 = this.f10670S.script;
        if (scriptSystem6 != null && (scriptEnvironment2 = scriptSystem6.scriptEnvironment) != null) {
            scriptEnvironment2.triggerEvent("PostUnitsRender", this.f10682l, PMath.cachedLuaDouble1(f3), PMath.cachedLuaDouble2(f8));
        }
        spriteBatch.flush();
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
        long realTickCount16 = Game.getRealTickCount();
        this.f10670S.tower.drawBatchAdditive(spriteBatch, f3);
        Game.f8589i.debugManager.registerFrameJob("Tower-drawBatchAdditive", Game.getRealTickCount() - realTickCount16);
        long realTickCount17 = Game.getRealTickCount();
        this.f10670S.modifier.drawBatchAdditive(spriteBatch, f3);
        Game.f8589i.debugManager.registerFrameJob("Modifier-drawBatchAdditive", Game.getRealTickCount() - realTickCount17);
        long realTickCount18 = Game.getRealTickCount();
        this.f10670S.ability.drawBatchAdditive(spriteBatch, f3);
        Game.f8589i.debugManager.registerFrameJob("Ability-drawBatchAdditive", Game.getRealTickCount() - realTickCount18);
        long realTickCount19 = Game.getRealTickCount();
        this.f10670S._particle.draw(spriteBatch, f7, f3);
        Game.f8589i.debugManager.registerFrameJob("Particle-draw", Game.getRealTickCount() - realTickCount19);
        spriteBatch.flush();
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        Color color3 = color;
        spriteBatch.setColor(color3);
        long realTickCount20 = Game.getRealTickCount();
        this.f10670S.map.drawBatch(spriteBatch, f3);
        Game.f8589i.debugManager.registerFrameJob("Map-drawBatch", Game.getRealTickCount() - realTickCount20);
        spriteBatch.flush();
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
        long realTickCount21 = Game.getRealTickCount();
        this.f10670S._projectileTrail.draw(spriteBatch, f3, f7);
        Game.f8589i.debugManager.registerFrameJob("ProjectileTrail-draw", Game.getRealTickCount() - realTickCount21);
        long realTickCount22 = Game.getRealTickCount();
        if (f8 < 0.0f) {
            f8 = 0.0f;
        }
        if (f8 <= 1.0f) {
            f5 = f8;
        }
        this.f10670S.projectile.draw(spriteBatch, f3, f5);
        Game.f8589i.debugManager.registerFrameJob("Projectile-draw", Game.getRealTickCount() - realTickCount22);
        ScriptSystem scriptSystem7 = this.f10670S.script;
        if (scriptSystem7 != null && (scriptEnvironment = scriptSystem7.scriptEnvironment) != null) {
            scriptEnvironment.triggerEvent("PostProjectilesRender", this.f10682l, PMath.cachedLuaDouble1(f3), PMath.cachedLuaDouble2(f5));
        }
        spriteBatch.flush();
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        long realTickCount23 = Game.getRealTickCount();
        this.f10670S._mapRendering.postDrawBatch(spriteBatch, f3);
        Game.f8589i.debugManager.registerFrameJob("MapRendering-postDrawBatch", Game.getRealTickCount() - realTickCount23);
        long realTickCount24 = Game.getRealTickCount();
        this.f10670S.ability.draw(spriteBatch, f3);
        Game.f8589i.debugManager.registerFrameJob("Ability-draw", Game.getRealTickCount() - realTickCount24);
        long realTickCount25 = Game.getRealTickCount();
        GameSystemProvider gameSystemProvider4 = this.f10670S;
        if (gameSystemProvider4._input.cameraController.zoom < 2.5d) {
            gameSystemProvider4.enemy.drawEnemyHealth(spriteBatch, f3);
        }
        Game.f8589i.debugManager.registerFrameJob("Enemy-drawHealth", Game.getRealTickCount() - realTickCount25);
        long realTickCount26 = Game.getRealTickCount();
        this.f10670S._input.draw(spriteBatch, f3, f7);
        Game.f8589i.debugManager.registerFrameJob("Input-draw", Game.getRealTickCount() - realTickCount26);
        long realTickCount27 = Game.getRealTickCount();
        this.f10670S._quest.draw(f3, f7);
        Game.f8589i.debugManager.registerFrameJob("Quest-draw", Game.getRealTickCount() - realTickCount27);
        long realTickCount28 = Game.getRealTickCount();
        this.f10670S.script.draw(spriteBatch, f3);
        Game.f8589i.debugManager.registerFrameJob("Script-draw", Game.getRealTickCount() - realTickCount28);
        spriteBatch.setColor(color3);
        spriteBatch.end();
        long realTickCount29 = Game.getRealTickCount();
        this.f10670S._graphics.draw(f7);
        Game.f8589i.debugManager.registerFrameJob("Graphics-draw", Game.getRealTickCount() - realTickCount29);
        this.f10670S._sound.draw(f7);
        this.f10674d += f3;
        if (!this.f10670S.CFG.headless && !Config.isHeadless() && !this.f10670S.gameState.isFastForwarding() && !this.f10670S.gameState.isGameOver()) {
            this.f10679i += f7;
            float customValue = ((float) Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.STATE_AUTO_SAVE_INTERVAL)) * 60.0f;
            if (customValue > 0.0f && this.f10679i > customValue) {
                this.f10670S.gameState.saveGame();
                this.f10679i = 0.0f;
            }
        }
        float realTickCount30 = ((float) (Game.getRealTickCount() - realTickCount)) * 0.001f;
        float[] fArr = this.f10683m;
        int i = this.f10684n;
        fArr[i] = realTickCount30;
        int i2 = i + 1;
        this.f10684n = i2;
        if (i2 == fArr.length) {
            this.f10684n = 0;
        }
        if (Game.f8589i.debugManager.isEnabled()) {
            for (float f12 : this.f10683m) {
                f4 += f12;
            }
            Game.f8589i.debugManager.registerValue("Drawing time").append(StringFormatter.compactNumber(realTickCount30, 2)).append("ms / ").append(StringFormatter.compactNumber(f4 / this.f10683m.length, 2)).append("ms");
        }
    }

    public void updateSystems() {
        String str;
        GameSystemProvider.DEBUG = false;
        String str2 = this.f10670S.gameState.basicLevelName;
        if (str2 != null) {
            boolean z = Game.f8589i.basicLevelManager.getLevel(str2).hasLeaderboards;
        }
        this.f10670S.updateSystems();
        this.f10674d = 0.0f;
        GameSystemProvider gameSystemProvider = this.validationS;
        if (gameSystemProvider != null) {
            gameSystemProvider.updateSystems();
            StringBuilder stringBuilder = f10669p;
            stringBuilder.setLength(0);
            try {
                this.validationS.compareSync(this.f10670S, stringBuilder, false);
                if (stringBuilder.length != 0) {
                    Logger.error("GameScreen", stringBuilder.toString());
                    ReplayManager.ReplayRecord replayRecord = this.f10670S.gameState.headlessValidatedReplayRecord;
                    if (replayRecord == null) {
                        str = Game.getTimestampSeconds() + "";
                    } else {
                        str = replayRecord.f10052id;
                    }
                    Gdx.files.external("desync-report-" + str + ".txt").writeString(stringBuilder.toString(), false, "UTF-8");
                    this.validationS.dispose();
                    this.validationS = null;
                    if (!Config.isHeadless()) {
                        Logger.report("Sync check - desync\n" + stringBuilder.toString());
                        Game game = Game.f8589i;
                        game.uiManager.notifications.add("Desynchronization spotted!", game.assetManager.getDrawable("icon-exclamation-triangle"), MaterialColor.ORANGE.P800, StaticSoundType.WARNING);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                this.validationS = null;
                if (!Config.isHeadless()) {
                    Logger.report("Sync check - exception", e);
                    Game game2 = Game.f8589i;
                    game2.uiManager.notifications.add("Synchronization check disabled", game2.assetManager.getDrawable("icon-exclamation-triangle"), MaterialColor.ORANGE.P800, StaticSoundType.WARNING);
                }
            }
        }
        Game.f8589i.debugManager.registerGameStateUpdate();
    }

    @Override // com.prineside.tdi2.Screen, com.badlogic.gdx.Screen
    public void dispose() {
        super.dispose();
        GameSystemProvider gameSystemProvider = this.f10670S;
        if (gameSystemProvider != null) {
            gameSystemProvider.dispose();
            this.f10670S = null;
        }
        GameSystemProvider gameSystemProvider2 = this.validationS;
        if (gameSystemProvider2 != null) {
            gameSystemProvider2.dispose();
            this.validationS = null;
        }
        UiManager uiManager = Game.f8589i.uiManager;
        this.f10675e = true;
    }

    public GameScreen(DailyQuestManager.DailyQuestLevel dailyQuestLevel) {
        this(Game.f8589i.basicLevelManager.getLevel(dailyQuestLevel.getLevelName()), DifficultyMode.NORMAL, 100, Game.f8589i.basicLevelManager.getLevel(dailyQuestLevel.getLevelName()).getMap().getMaxedAbilitiesConfiguration(), false, Game.f8589i.progressManager.getEncryptedCasesCount(), false, false, -1L, null, null);
        this.f10670S.gameState.dailyQuestLevel = dailyQuestLevel;
    }

    public GameScreen(GameSystemProvider gameSystemProvider, long j) {
        Game game;
        this.loader = new GameSyncLoader();
        this.f10671a = new Output(65536, -1);
        int i = 0;
        this.f10672b = false;
        this.f10675e = false;
        this.f10676f = 1.0f;
        this.f10680j = new _WaveSystemListener();
        this.f10681k = new _GameStateSystemListener();
        this.f10683m = new float[600];
        while (true) {
            game = Game.f8589i;
            Array<Manager> array = game.managers;
            if (i >= array.size) {
                break;
            }
            array.get(i).clearPools();
            i++;
        }
        game.uiManager.hideAllComponents();
        this.f10670S = gameSystemProvider;
        GameStateSystem gameStateSystem = gameSystemProvider.gameState;
        gameStateSystem.gameStartTimestamp = j;
        gameStateSystem.setGameSpeed(0.0f);
        if (gameSystemProvider.gameState.listeners.contains(this.f10681k)) {
            return;
        }
        gameSystemProvider.gameState.listeners.add(this.f10681k);
    }

    public GameScreen(BasicLevel basicLevel, DifficultyMode difficultyMode, int i, AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration, boolean z, int i2, boolean z2, boolean z3, long j, GameValueManager.GameValuesSnapshot gameValuesSnapshot, ProgressManager.InventoryStatistics inventoryStatistics) {
        this.loader = new GameSyncLoader();
        this.f10671a = new Output(65536, -1);
        this.f10672b = false;
        this.f10675e = false;
        this.f10676f = 1.0f;
        this.f10680j = new _WaveSystemListener();
        this.f10681k = new _GameStateSystemListener();
        this.f10683m = new float[600];
        long timestampMillis = j == -1 ? Game.getTimestampMillis() : j;
        DifficultyMode difficultyMode2 = basicLevel.forcedDifficulty;
        DifficultyMode difficultyMode3 = difficultyMode2 != null ? difficultyMode2 : difficultyMode;
        Logger.log("GameScreen", "starting level " + basicLevel.name + " " + difficultyMode3.name());
        m21321d(selectedAbilitiesConfiguration, z, i2, z2, z3, timestampMillis, basicLevel, null, difficultyMode3, i, GameStateSystem.GameMode.BASIC_LEVELS, null, gameValuesSnapshot, inventoryStatistics);
    }

    public GameScreen(UserMap userMap, DifficultyMode difficultyMode, int i, AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration, long j, BossType[] bossTypeArr, GameValueManager.GameValuesSnapshot gameValuesSnapshot, ProgressManager.InventoryStatistics inventoryStatistics) {
        this.loader = new GameSyncLoader();
        this.f10671a = new Output(65536, -1);
        this.f10672b = false;
        this.f10675e = false;
        this.f10676f = 1.0f;
        this.f10680j = new _WaveSystemListener();
        this.f10681k = new _GameStateSystemListener();
        this.f10683m = new float[600];
        long timestampMillis = j == -1 ? Game.getTimestampMillis() : j;
        boolean z = Game.f8589i.progressManager.getItemsCount(Item.C1543D.RARITY_BOOST) > 0;
        m21321d(userMap.map.targetTile.isDisableAbilities() ? userMap.map.getMaxedAbilitiesConfiguration() : selectedAbilitiesConfiguration, Game.f8589i.progressManager.getEncryptedCasesCount() < Game.f8589i.progressManager.getMaxEncryptedCasesInInventory(), Game.f8589i.progressManager.getEncryptedCasesCount(), Game.f8589i.progressManager.getLootBoostTimeLeft() > 0.0f, z, timestampMillis, null, userMap, difficultyMode, i, GameStateSystem.GameMode.USER_MAPS, bossTypeArr, gameValuesSnapshot, inventoryStatistics);
        if (this.f10670S.achievement.isActive()) {
            Game.f8589i.achievementManager.setProgress(AchievementType.HUNDRED_TILE_CUSTOM_MAP, userMap.map.tilesArray.size);
            Game.f8589i.achievementManager.setProgress(AchievementType.FIVE_HUNDRED_TILE_CUSTOM_MAP, userMap.map.tilesArray.size);
        }
    }
}
