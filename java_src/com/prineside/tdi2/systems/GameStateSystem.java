package com.prineside.tdi2.systems;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.SpaceTileBonus;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.UserMap;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.SpaceTileBonusType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.DailyQuestManager;
import com.prineside.tdi2.managers.NetworkManager;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.p036ui.shared.AbilitySelectionOverlay;
import com.prineside.tdi2.screens.GameScreen;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.MinerSystem;
import com.prineside.tdi2.systems.StateSystem;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.utils.CheatSafeInt;
import com.prineside.tdi2.utils.CheatSafeLong;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
@REGS
/* loaded from: classes2.dex */
public class GameStateSystem extends StateSystem {
    public static final float NOT_COMPLETED_DAILY_QUEST_PRIZE_MULTIPLIER = 0.1f;
    public static final String SAVED_GAME_FILE_PATH = "cache/saved-game.bin";
    public static final float SLOW_MOTION_GAME_SPEED = 0.0667f;

    /* renamed from: X */
    public static final Input f11453X = new Input();

    /* renamed from: Y */
    public static final RandomXS128 f11454Y = new RandomXS128();
    @NAGS

    /* renamed from: B */
    public long f11456B;

    /* renamed from: G */
    public float f11461G;

    /* renamed from: H */
    public float f11462H;

    /* renamed from: I */
    public float f11463I;
    @NAGS

    /* renamed from: L */
    public byte[] f11466L;
    @NAGS

    /* renamed from: M */
    public int f11467M;
    @NAGS

    /* renamed from: O */
    public byte[] f11469O;
    @NAGS

    /* renamed from: P */
    public int f11470P;
    @NAGS

    /* renamed from: T */
    public float f11473T;
    @NAGS

    /* renamed from: U */
    public float f11474U;
    @NAGS

    /* renamed from: V */
    public float f11475V;
    @NAGS

    /* renamed from: W */
    public _LifecycleListener f11476W;
    public int averageDifficulty;
    public String basicLevelName;
    public boolean canLootCases;
    @NAGS
    public int continuedGameApproxStateHash;
    @NAGS
    public DailyQuestManager.DailyQuestLevel dailyQuestLevel;
    public DifficultyMode difficultyMode;
    public int encryptedChestsInInventory;
    @NAGS
    public boolean gameIsContinued;
    public GameMode gameMode;
    @NAGS
    public GameOverReason gameOverReason;
    @NAGS
    public boolean gameSavesDisabled;
    @NAGS
    public byte[] gameStartPreferencesSnapshot;
    @NAGS
    public ReplayManager.ReplayRecord headlessValidatedReplayRecord;
    public EnemyType lastEnemyReachedTarget;
    public boolean lootBoostEnabled;
    public int modeDifficultyMultiplier;
    @NAGS
    public float playRealTime;
    public boolean rarityBoostEnabled;
    @NAGS
    public String replayId;
    public long scoreWithEndlessTimeLimit;
    public AbilitySelectionOverlay.SelectedAbilitiesConfiguration startingAbilitiesConfiguration;

    /* renamed from: u */
    public IssuedItems f11482u;
    public String userMapId;
    public int userMapOriginalSeed;
    @NAGS
    public boolean validationFingerprintMismatchPrinted;
    @NAGS
    public int validationLastUpdateNumber;
    @NAGS
    public ObjectRetriever<ReplayValidationResult> validationResultHandler;

    /* renamed from: x */
    public RandomXS128 f11485x;
    public BossType[] allowedBossesForCustomMaps = null;

    /* renamed from: p */
    public long f11477p = -1;
    @NAGS
    public long gameStartTimestamp = -1;
    @NAGS
    public boolean snapshotSavesEnabled = true;

    /* renamed from: q */
    public CheatSafeLong f11478q = new CheatSafeLong(0, 0);

    /* renamed from: r */
    public CheatSafeInt f11479r = new CheatSafeInt(0, 0);

    /* renamed from: s */
    public CheatSafeInt f11480s = new CheatSafeInt(0, 0);

    /* renamed from: t */
    public CheatSafeInt[] f11481t = new CheatSafeInt[ResourceType.values.length];
    @NAGS

    /* renamed from: v */
    public Array<String> f11483v = new Array<>(String.class);
    @NAGS

    /* renamed from: w */
    public Array<IssuedItems> f11484w = new Array<>(IssuedItems.class);
    @NAGS

    /* renamed from: y */
    public boolean f11486y = false;
    @NAGS

    /* renamed from: z */
    public float f11487z = 1.0f;
    @NAGS

    /* renamed from: A */
    public float f11455A = 1.0f;

    /* renamed from: C */
    public boolean f11457C = false;

    /* renamed from: D */
    public int f11458D = 0;
    public int pxpExperience = 0;

    /* renamed from: E */
    public int f11459E = -13501;

    /* renamed from: F */
    public int f11460F = 0;
    @NAGS

    /* renamed from: J */
    public final Output f11464J = new Output(1024, -1);
    @NAGS

    /* renamed from: K */
    public final Output f11465K = new Output(1024, -1);
    @NAGS

    /* renamed from: N */
    public Output f11468N = new Output(1024, -1);
    @NAGS

    /* renamed from: Q */
    public final Object f11471Q = new Object();
    @NAGS
    public long validationStartTimestamp = -1;
    @NAGS

    /* renamed from: R */
    public boolean f11472R = false;
    public ListenerGroup<GameStateSystemListener> listeners = new ListenerGroup<>(GameStateSystemListener.class);

    /* loaded from: classes2.dex */
    public enum ContinueGameStatus {
        MAP_NOT_FOUND,
        MAP_CHANGED,
        GAME_VALUES_CHANGED,
        GAME_FROM_PREVIOUS_BUILD,
        OTHER_ERROR,
        SUCCESS;
        
        public static final ContinueGameStatus[] values = values();
    }

    @REGS
    /* loaded from: classes2.dex */
    public enum GameMode {
        BASIC_LEVELS,
        USER_MAPS;
        
        public static GameMode[] values = values();

        public static boolean isBasicLevel(GameMode gameMode) {
            return gameMode == BASIC_LEVELS;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public enum GameOverReason {
        MANUAL,
        ZERO_BASE_HEALTH,
        NO_ENEMIES_LEFT,
        QUEST_FAILED
    }

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface GameStateSystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static abstract class GameStateSystemListenerAdapter implements GameStateSystemListener {
            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
            public void gameOver() {
            }

            @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
            public void gamePaused() {
            }

            @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
            public void gameResumed() {
            }

            @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
            public void gameSpeedChanged() {
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
            public void healthChanged(int i) {
            }

            @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
            public void issuedItemsAdded(IssuedItems issuedItems, ItemStack itemStack, float f, float f2, int i) {
            }

            @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
            public void moneyChanged(int i, boolean z) {
            }

            @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
            public void realUpdate(float f) {
            }

            @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
            public void resourcesChanged(ResourceType resourceType, int i, boolean z) {
            }

            @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
            public void scoreChanged(long j, boolean z, StatisticsType statisticsType) {
            }

            @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
            public void update(float f) {
            }
        }

        void gameOver();

        void gamePaused();

        void gameResumed();

        void gameSpeedChanged();

        void healthChanged(int i);

        void issuedItemsAdded(IssuedItems issuedItems, ItemStack itemStack, float f, float f2, int i);

        void moneyChanged(int i, boolean z);

        void realUpdate(float f);

        void resourcesChanged(ResourceType resourceType, int i, boolean z);

        void scoreChanged(long j, boolean z, StatisticsType statisticsType);

        void update(float f);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11498a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 11774456;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11498a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11498a, GameSystemProvider.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public boolean enemyReachedTarget(Enemy enemy, int i, TargetTile targetTile) {
            if (targetTile != null) {
                GameSystemProvider gameSystemProvider = this.f11498a;
                if (gameSystemProvider._graphics != null) {
                    gameSystemProvider.map.getMap().targetTile.showHitEffect(enemy.getPosition());
                    this.f11498a._graphics.mainUi.showHealthDelta(i);
                }
                GameStateSystem gameStateSystem = this.f11498a.gameState;
                gameStateSystem.lastEnemyReachedTarget = enemy.type;
                if (i > 0) {
                    gameStateSystem.removeHealth(MathUtils.round(i));
                }
                if (this.f11498a.gameState.f11479r.get() <= 0) {
                    this.f11498a.gameState.triggerGameOver(GameOverReason.ZERO_BASE_HEALTH);
                    return false;
                }
                return false;
            }
            return false;
        }

        public _EnemySystemListener(GameSystemProvider gameSystemProvider) {
            this.f11498a = gameSystemProvider;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            ParticleSystem particleSystem;
            this.f11498a.gameState.addScore(MathUtils.round(enemy.getKillScore() * 1.75f), StatisticsType.SG_EK);
            float f = enemy.bounty;
            if (tower != null) {
                if (tower.bountyModifiersNearby != 0) {
                    tower.bonusCoinsBrought -= f;
                    f = 0.0f;
                } else if (tower.getTile() != null) {
                    SpaceTileBonusType spaceTileBonusType = tower.getTile().bonusType;
                    SpaceTileBonusType spaceTileBonusType2 = SpaceTileBonusType.BONUS_COINS;
                    if (spaceTileBonusType == spaceTileBonusType2 && tower.getTile().bonusLevel > 0) {
                        float effect = SpaceTileBonus.getEffect(spaceTileBonusType2, tower.getTile().bonusLevel);
                        tower.bonusCoinsBrought += (effect - 1.0f) * f;
                        f *= effect;
                    }
                }
            }
            if (ability != null) {
                f *= ability.getKilledEnemiesCoinMultiplier();
            }
            if (f != 0.0f) {
                int addMoney = this.f11498a.gameState.addMoney(f, true);
                this.f11498a.statistics.addStatistic(StatisticsType.CG_EK, addMoney);
                if (addMoney != 0 && (particleSystem = this.f11498a._particle) != null) {
                    particleSystem.addCoinParticle(enemy.getPosition().f5527x, enemy.getPosition().f5528y, addMoney);
                }
            }
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _LifecycleListener implements LifecycleListener {
        public _LifecycleListener() {
        }

        @Override // com.badlogic.gdx.LifecycleListener
        public void dispose() {
        }

        @Override // com.badlogic.gdx.LifecycleListener
        public void resume() {
        }

        @Override // com.badlogic.gdx.LifecycleListener
        public void pause() {
            if (!GameStateSystem.this.f8844S.gameState.f11457C) {
                GameStateSystem.this.pauseGame();
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MinerSystemListener extends MinerSystem.MinerSystemListener.MinerSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11500a;

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 7776251;
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
        public void minerResourcesChanged(Miner miner, ResourceType resourceType, int i, boolean z) {
            if (!z || i <= 0) {
                return;
            }
            this.f11500a.gameState.addScore(((resourceType.ordinal() * 5) + 10) * i, StatisticsType.SG_RM);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11500a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11500a, GameSystemProvider.class);
        }

        @Deprecated
        public _MinerSystemListener() {
        }

        public _MinerSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11500a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _WaveSystemListener extends WaveSystem.WaveSystemListener.WaveSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11501a;

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 2229194;
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void nextWaveForced(int i, int i2, float f) {
            if (f > 0.0f) {
                GameStateSystem.m21037d(this.f11501a.gameState, f);
            }
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11501a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11501a, GameSystemProvider.class);
        }

        @Deprecated
        public _WaveSystemListener() {
        }

        public _WaveSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11501a = gameSystemProvider;
        }
    }

    /* renamed from: d */
    public static /* synthetic */ float m21037d(GameStateSystem gameStateSystem, float f) {
        float f2 = gameStateSystem.f11463I + f;
        gameStateSystem.f11463I = f2;
        return f2;
    }

    public static void startReplay(ReplayManager.ReplayRecord replayRecord) {
        startReplay(replayRecord, false);
    }

    public void addCompletedQuest(String str) {
        this.f11483v.add(str);
    }

    public void addCompletedQuestIssuedPrizes(IssuedItems issuedItems, float f, float f2, int i) {
        if (!issuedItems.addedToIssuedItemsArray) {
            this.f11484w.add(issuedItems);
            issuedItems.addedToIssuedItemsArray = true;
            this.listeners.begin();
            float f3 = 0.0f;
            for (int i2 = 0; i2 < issuedItems.items.size; i2++) {
                int size = this.listeners.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ItemStack itemStack = issuedItems.items.items[i2];
                    if (itemStack.getItem() != Item.C1543D.GREEN_PAPER && itemStack.getItem() != Item.C1543D.STAR && itemStack.getItem() != Item.C1543D.ACCELERATOR) {
                        itemStack.covered = true;
                    }
                    this.listeners.get(i3).issuedItemsAdded(issuedItems, itemStack, f + f3, f2, i);
                }
                f3 += 108.4f;
            }
            this.listeners.end();
        }
    }

    public void animateSpeed(float f, float f2) {
        this.f11472R = true;
        this.f11474U = f2;
        this.f11475V = 0.0f;
        this.f11473T = f;
    }

    public Array<String> getCompletedQuests() {
        return this.f11483v;
    }

    public float getDoubleSpeedTimeLeft() {
        return this.f11463I;
    }

    public IssuedItems getGameLootIssuedItems() {
        return this.f11482u;
    }

    public int getHealth() {
        return this.f11479r.get();
    }

    public int getMoney() {
        return this.f11480s.get();
    }

    public Array<IssuedItems> getQuestsIssuedPrizes() {
        return this.f11484w;
    }

    public long getRandomState(int i) {
        return this.f11485x.getState(i);
    }

    public int getResources(ResourceType resourceType) {
        return this.f11481t[resourceType.ordinal()].get();
    }

    public long getScore() {
        return this.f11478q.get();
    }

    public long getSeed() {
        return this.f11477p;
    }

    public Output getStateBytes() {
        m21036e(false);
        return this.f11464J;
    }

    @Override // com.prineside.tdi2.systems.StateSystem, com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "GameState";
    }

    public boolean isDoubleSpeedActive() {
        return getDoubleSpeedTimeLeft() > 0.0f;
    }

    public boolean isGameOver() {
        return this.f11457C;
    }

    public boolean isMaxEndlessReplayTimeReached() {
        return DifficultyMode.isEndless(this.f8844S.gameState.difficultyMode) && this.f8844S.statistics.getStatistic(StatisticsType.PT) > 3600.0d;
    }

    public boolean isPaused() {
        return this.f11486y;
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean profileUpdate() {
        return false;
    }

    public void registerPlayerActivity() {
        this.f11459E = this.f11458D;
    }

    public boolean removeMoney(int i) {
        if (i <= 0) {
            return true;
        }
        checkGameplayUpdateAllowed();
        if (this.f11480s.get() < i) {
            return false;
        }
        int i2 = this.f11480s.get();
        this.f11480s.sub(i);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).moneyChanged(i2, false);
        }
        this.listeners.end();
        return true;
    }

    public void setSnapshotSavesEnabled(boolean z) {
        this.snapshotSavesEnabled = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0388 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:5:0x0016, B:7:0x003b, B:9:0x005c, B:11:0x0093, B:17:0x00c3, B:19:0x00fd, B:91:0x0359, B:98:0x0375, B:100:0x0388, B:102:0x03b0, B:104:0x03c4, B:119:0x0412, B:121:0x0428, B:123:0x0456, B:125:0x0462, B:127:0x0486, B:128:0x048e, B:130:0x0492, B:131:0x04a2, B:133:0x04b6, B:106:0x03d1, B:108:0x03d6, B:110:0x03e0, B:112:0x03e8, B:114:0x03f2, B:116:0x03fa, B:12:0x009d, B:14:0x00a1), top: B:143:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x03d1 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:5:0x0016, B:7:0x003b, B:9:0x005c, B:11:0x0093, B:17:0x00c3, B:19:0x00fd, B:91:0x0359, B:98:0x0375, B:100:0x0388, B:102:0x03b0, B:104:0x03c4, B:119:0x0412, B:121:0x0428, B:123:0x0456, B:125:0x0462, B:127:0x0486, B:128:0x048e, B:130:0x0492, B:131:0x04a2, B:133:0x04b6, B:106:0x03d1, B:108:0x03d6, B:110:0x03e0, B:112:0x03e8, B:114:0x03f2, B:116:0x03fa, B:12:0x009d, B:14:0x00a1), top: B:143:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0412 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:5:0x0016, B:7:0x003b, B:9:0x005c, B:11:0x0093, B:17:0x00c3, B:19:0x00fd, B:91:0x0359, B:98:0x0375, B:100:0x0388, B:102:0x03b0, B:104:0x03c4, B:119:0x0412, B:121:0x0428, B:123:0x0456, B:125:0x0462, B:127:0x0486, B:128:0x048e, B:130:0x0492, B:131:0x04a2, B:133:0x04b6, B:106:0x03d1, B:108:0x03d6, B:110:0x03e0, B:112:0x03e8, B:114:0x03f2, B:116:0x03fa, B:12:0x009d, B:14:0x00a1), top: B:143:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04b6 A[Catch: Exception -> 0x04be, TRY_LEAVE, TryCatch #2 {Exception -> 0x04be, blocks: (B:5:0x0016, B:7:0x003b, B:9:0x005c, B:11:0x0093, B:17:0x00c3, B:19:0x00fd, B:91:0x0359, B:98:0x0375, B:100:0x0388, B:102:0x03b0, B:104:0x03c4, B:119:0x0412, B:121:0x0428, B:123:0x0456, B:125:0x0462, B:127:0x0486, B:128:0x048e, B:130:0x0492, B:131:0x04a2, B:133:0x04b6, B:106:0x03d1, B:108:0x03d6, B:110:0x03e0, B:112:0x03e8, B:114:0x03f2, B:116:0x03fa, B:12:0x009d, B:14:0x00a1), top: B:143:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00fd A[Catch: Exception -> 0x04be, TRY_LEAVE, TryCatch #2 {Exception -> 0x04be, blocks: (B:5:0x0016, B:7:0x003b, B:9:0x005c, B:11:0x0093, B:17:0x00c3, B:19:0x00fd, B:91:0x0359, B:98:0x0375, B:100:0x0388, B:102:0x03b0, B:104:0x03c4, B:119:0x0412, B:121:0x0428, B:123:0x0456, B:125:0x0462, B:127:0x0486, B:128:0x048e, B:130:0x0492, B:131:0x04a2, B:133:0x04b6, B:106:0x03d1, B:108:0x03d6, B:110:0x03e0, B:112:0x03e8, B:114:0x03f2, B:116:0x03fa, B:12:0x009d, B:14:0x00a1), top: B:143:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x012b A[Catch: Exception -> 0x035e, TryCatch #1 {Exception -> 0x035e, blocks: (B:21:0x010f, B:25:0x0133, B:29:0x014a, B:31:0x015e, B:33:0x0183, B:35:0x0199, B:39:0x01a8, B:41:0x01ae, B:24:0x012b), top: B:142:0x010f }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x015e A[Catch: Exception -> 0x035e, TryCatch #1 {Exception -> 0x035e, blocks: (B:21:0x010f, B:25:0x0133, B:29:0x014a, B:31:0x015e, B:33:0x0183, B:35:0x0199, B:39:0x01a8, B:41:0x01ae, B:24:0x012b), top: B:142:0x010f }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0183 A[Catch: Exception -> 0x035e, TryCatch #1 {Exception -> 0x035e, blocks: (B:21:0x010f, B:25:0x0133, B:29:0x014a, B:31:0x015e, B:33:0x0183, B:35:0x0199, B:39:0x01a8, B:41:0x01ae, B:24:0x012b), top: B:142:0x010f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.prineside.tdi2.systems.GameStateSystem.ContinueGameStatus continueSavedGame() {
        /*
            Method dump skipped, instructions count: 1231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.systems.GameStateSystem.continueSavedGame():com.prineside.tdi2.systems.GameStateSystem$ContinueGameStatus");
    }

    public static void deleteSavedGame() {
        if (Config.isHeadless()) {
            return;
        }
        try {
            if (Gdx.files.local(SAVED_GAME_FILE_PATH).exists()) {
                Gdx.files.local(SAVED_GAME_FILE_PATH).delete();
            }
        } catch (Exception e) {
            Logger.error("GameStateSystem", "failed to delete saved game", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m21035f() {
        try {
            FileHandle local = Gdx.files.local(SAVED_GAME_FILE_PATH);
            synchronized (this.f11471Q) {
                local.writeBytes(this.f11469O, 0, this.f11470P, false);
            }
        } catch (Exception e) {
            Logger.error("GameStateSystem", "failed to save game state", e);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:6|7|8|9|10|(1:12)|13|(3:(1:15)(2:87|(8:89|17|18|19|20|(2:22|(2:24|25)(2:26|(1:31)(2:29|30)))(2:72|(2:74|(2:76|77)(2:78|(2:80|81)(1:82)))(1:83))|32|(3:34|35|(7:37|38|(1:40)|41|(1:43)(1:46)|44|45)(2:47|(2:49|50)(2:51|(2:53|54)(2:55|(2:57|58)(7:59|60|61|(1:63)|64|65|66)))))(2:67|68))(1:90))|32|(0)(0))|16|17|18|19|20|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x03a6, code lost:
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e9 A[Catch: Exception -> 0x03a6, TryCatch #2 {Exception -> 0x03a6, blocks: (B:21:0x00dc, B:23:0x00e9, B:25:0x00f5, B:27:0x010e, B:30:0x0114, B:32:0x014b, B:46:0x01be, B:49:0x01d9, B:52:0x021c, B:53:0x0229, B:55:0x025c, B:57:0x0261, B:56:0x025f, B:59:0x0276, B:61:0x027e, B:63:0x02b1, B:65:0x02bb, B:67:0x02ee, B:69:0x02f6, B:71:0x032b, B:33:0x015e, B:35:0x0162, B:37:0x016c, B:39:0x0185, B:41:0x018d, B:43:0x01a6), top: B:94:0x00dc }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x015e A[Catch: Exception -> 0x03a6, TryCatch #2 {Exception -> 0x03a6, blocks: (B:21:0x00dc, B:23:0x00e9, B:25:0x00f5, B:27:0x010e, B:30:0x0114, B:32:0x014b, B:46:0x01be, B:49:0x01d9, B:52:0x021c, B:53:0x0229, B:55:0x025c, B:57:0x0261, B:56:0x025f, B:59:0x0276, B:61:0x027e, B:63:0x02b1, B:65:0x02bb, B:67:0x02ee, B:69:0x02f6, B:71:0x032b, B:33:0x015e, B:35:0x0162, B:37:0x016c, B:39:0x0185, B:41:0x018d, B:43:0x01a6), top: B:94:0x00dc }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01be A[Catch: Exception -> 0x03a6, TRY_LEAVE, TryCatch #2 {Exception -> 0x03a6, blocks: (B:21:0x00dc, B:23:0x00e9, B:25:0x00f5, B:27:0x010e, B:30:0x0114, B:32:0x014b, B:46:0x01be, B:49:0x01d9, B:52:0x021c, B:53:0x0229, B:55:0x025c, B:57:0x0261, B:56:0x025f, B:59:0x0276, B:61:0x027e, B:63:0x02b1, B:65:0x02bb, B:67:0x02ee, B:69:0x02f6, B:71:0x032b, B:33:0x015e, B:35:0x0162, B:37:0x016c, B:39:0x0185, B:41:0x018d, B:43:0x01a6), top: B:94:0x00dc }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x039c A[Catch: Exception -> 0x03a4, TRY_LEAVE, TryCatch #3 {Exception -> 0x03a4, blocks: (B:73:0x0331, B:75:0x0340, B:76:0x0356, B:77:0x039c), top: B:95:0x01bc }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void headlessValidateGame(com.prineside.tdi2.managers.ReplayManager.ReplayRecord r29, com.prineside.tdi2.utils.ObjectRetriever<com.prineside.tdi2.systems.GameStateSystem.ReplayValidationResult> r30) {
        /*
            Method dump skipped, instructions count: 993
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.systems.GameStateSystem.headlessValidateGame(com.prineside.tdi2.managers.ReplayManager$ReplayRecord, com.prineside.tdi2.utils.ObjectRetriever):void");
    }

    public static boolean savedGameExists() {
        FileHandle local = Gdx.files.local(SAVED_GAME_FILE_PATH);
        if (!local.exists()) {
            return false;
        }
        try {
            byte[] readBytes = local.readBytes();
            Input input = f11453X;
            input.setPosition(0);
            input.setBuffer(readBytes);
            return Config.isCompatibleWithBuild(input.readVarInt(true));
        } catch (Exception e) {
            Logger.error("GameStateSystem", "savedGameExists - parsing failed, cleared saved game", e);
            deleteSavedGame();
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00de A[Catch: Exception -> 0x01e3, TryCatch #1 {Exception -> 0x01e3, blocks: (B:20:0x00c6, B:22:0x00de, B:24:0x00e8, B:42:0x0166, B:44:0x0172, B:46:0x019c, B:48:0x01a1, B:50:0x01bd, B:25:0x0102, B:26:0x0117, B:28:0x0123, B:30:0x012d, B:32:0x0139, B:35:0x0145, B:37:0x0151), top: B:63:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0117 A[Catch: Exception -> 0x01e3, TryCatch #1 {Exception -> 0x01e3, blocks: (B:20:0x00c6, B:22:0x00de, B:24:0x00e8, B:42:0x0166, B:44:0x0172, B:46:0x019c, B:48:0x01a1, B:50:0x01bd, B:25:0x0102, B:26:0x0117, B:28:0x0123, B:30:0x012d, B:32:0x0139, B:35:0x0145, B:37:0x0151), top: B:63:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0166 A[Catch: Exception -> 0x01e3, TryCatch #1 {Exception -> 0x01e3, blocks: (B:20:0x00c6, B:22:0x00de, B:24:0x00e8, B:42:0x0166, B:44:0x0172, B:46:0x019c, B:48:0x01a1, B:50:0x01bd, B:25:0x0102, B:26:0x0117, B:28:0x0123, B:30:0x012d, B:32:0x0139, B:35:0x0145, B:37:0x0151), top: B:63:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01d5 A[Catch: Exception -> 0x01f8, TryCatch #0 {Exception -> 0x01f8, blocks: (B:6:0x0033, B:8:0x0039, B:10:0x0082, B:16:0x00aa, B:53:0x01ca, B:54:0x01d5, B:11:0x008a, B:13:0x008e, B:57:0x01e7), top: B:62:0x0033 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void startReplay(com.prineside.tdi2.managers.ReplayManager.ReplayRecord r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.systems.GameStateSystem.startReplay(com.prineside.tdi2.managers.ReplayManager$ReplayRecord, boolean):void");
    }

    public int calculatePrizeGreenPapers() {
        long j;
        if (this.f8844S.wave.wave == null) {
            return 0;
        }
        long score = getScore();
        int i = 1;
        while (true) {
            long j2 = i * 50000;
            if (score <= j2) {
                break;
            }
            double d = score - j2;
            double d2 = i;
            Double.isNaN(d2);
            Double.isNaN(d);
            score = ((long) (d * (1.0d - (d2 * 0.025d)))) + j2;
            i++;
        }
        float currentGameStatistic = (float) this.f8844S.statistics.getCurrentGameStatistic(StatisticsType.PT);
        double currentGameStatistic2 = this.f8844S.statistics.getCurrentGameStatistic(StatisticsType.WCST);
        double completedWavesCount = this.f8844S.wave.getCompletedWavesCount();
        Double.isNaN(completedWavesCount);
        double d3 = currentGameStatistic2 * completedWavesCount;
        double d4 = this.f8844S.wave.wave.waveNumber;
        Double.isNaN(d4);
        float f = currentGameStatistic + ((float) (d3 / d4));
        long j3 = ((float) score) * 0.02f * this.averageDifficulty * 0.01f * 0.5f;
        int i2 = (int) (f * (((f / 60.0f) * 0.03f) + 1.0f) * 0.15f * 3.0f);
        if (this.gameMode == GameMode.USER_MAPS) {
            j = ((float) j3) * 0.6f;
            i2 = (int) (i2 * 1.2f);
        } else {
            j = ((float) j3) * 1.4f;
        }
        if (j > 2147483647L) {
            j = 2147483647L;
        }
        Double.isNaN(r0);
        long percentValueAsMultiplier = (long) (r0 * (this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.GREEN_PAPERS_BONUS) + 1.0d));
        if (percentValueAsMultiplier > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) percentValueAsMultiplier;
    }

    @Override // com.prineside.tdi2.systems.StateSystem, com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        _LifecycleListener _lifecyclelistener = this.f11476W;
        if (_lifecyclelistener != null) {
            Gdx.app.removeLifecycleListener(_lifecyclelistener);
        }
        this.dailyQuestLevel = null;
        this.startingAbilitiesConfiguration = null;
        this.f11482u = null;
        this.gameStartPreferencesSnapshot = null;
        this.headlessValidatedReplayRecord = null;
        this.validationResultHandler = null;
        this.listeners.clear();
        super.dispose();
    }

    /* renamed from: e */
    public final void m21036e(boolean z) {
        Output output = this.f11464J;
        NetworkManager.KryoForState kryoForState = Game.f8589i.networkManager.fullKryo;
        if (this.f11466L == null) {
            output.reset();
            kryoForState.writeObject(output, this.difficultyMode);
            output.writeLong(this.f11477p);
            output.writeVarInt(this.modeDifficultyMultiplier, true);
            kryoForState.writeObject(output, this.gameMode);
            kryoForState.writeObjectOrNull(output, this.startingAbilitiesConfiguration, AbilitySelectionOverlay.SelectedAbilitiesConfiguration.class);
            output.writeBoolean(this.canLootCases);
            output.writeInt(this.encryptedChestsInInventory);
            output.writeBoolean(this.lootBoostEnabled);
            output.writeBoolean(this.rarityBoostEnabled);
            if (GameMode.isBasicLevel(this.gameMode)) {
                output.writeString(this.basicLevelName);
            } else if (this.gameMode == GameMode.USER_MAPS) {
                output.writeString(this.userMapId);
                output.writeInt(this.userMapOriginalSeed);
                kryoForState.writeObjectOrNull(output, this.f8844S.gameState.allowedBossesForCustomMaps, BossType[].class);
            }
            output.writeLong(this.gameStartTimestamp);
            kryoForState.writeObject(output, this.f8844S.gameValue.getGlobalSnapshot());
            kryoForState.writeObject(output, this.f8844S.loot.inventoryStatistics);
            this.f11466L = output.toBytes();
        }
        output.reset();
        output.writeVarInt(184, true);
        output.writeBytes(this.f11466L);
        output.writeFloat(this.playRealTime);
        output.writeVarInt(this.updateNumber, true);
        output.writeInt(getApproxStateHash());
        output.writeVarInt(this.f11803k.size, true);
        while (true) {
            int i = this.f11467M;
            Array<StateSystem.ActionUpdatePair> array = this.f11803k;
            if (i >= array.size) {
                break;
            }
            kryoForState.writeObject(this.f11468N, array.items[i]);
            this.f11467M++;
        }
        output.writeBytes(this.f11468N.getBuffer(), 0, this.f11468N.position());
        if (z) {
            try {
                this.f11465K.reset();
                this.f8844S.serialize(this.f11465K);
                output.write(this.f11465K.getBuffer(), 0, this.f11465K.position());
            } catch (Exception e) {
                Logger.error("GameStateSystem", "failed to serialize state, forcing regular save", e);
                Logger.report("failed to serialize state", e);
                setSnapshotSavesEnabled(false);
            }
        }
    }

    public int getApproxStateHash() {
        int i = 0;
        int state = ((((((((((int) this.f11485x.getState(0)) + 31) * 31) + ((int) this.f11485x.getState(1))) * 31) + this.f11480s.get()) * 31) + ((int) this.f11478q.get())) * 31) + this.f11479r.get();
        while (true) {
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = this.f8844S.map.spawnedEnemies;
            if (i < delayedRemovalArray.size) {
                Enemy enemy = delayedRemovalArray.items[i].enemy;
                if (enemy != null) {
                    state = (((((((((((((state * 31) + enemy.type.ordinal()) * 31) + enemy.f8552id) * 31) + enemy.sideShiftIndex) * 31) + ((int) (enemy.angle * 1000.0f))) * 31) + ((int) (enemy.passedTiles * 1000.0f))) * 31) + ((int) (enemy.getPosition().f5527x * 1000.0f))) * 31) + ((int) (enemy.getPosition().f5528y * 1000.0f));
                }
                i++;
            } else {
                return state;
            }
        }
    }

    public float getGameSpeed() {
        float f;
        if (this.f11472R) {
            float f2 = this.f11475V / this.f11474U;
            if (f2 >= 1.0f) {
                this.f11472R = false;
                f2 = 1.0f;
            }
            float f3 = 1.0f - f2;
            float f4 = this.f11487z;
            f = f4 + ((this.f11473T - f4) * f3);
        } else {
            f = this.f11487z;
        }
        return Math.max(f, 0.0f);
    }

    public void higherGameSpeed() {
        float f = 2.0f;
        float f2 = 1.0f;
        if (!this.f8844S.gameState.replayMode) {
            if (StrictMath.abs(this.f11487z - 1.0f) >= 0.1d) {
                if (StrictMath.abs(this.f11487z - 2.0f) < 0.1d) {
                    f = 4.0f;
                } else {
                    f = -1.0f;
                }
            }
            if (f != -1.0f) {
                setGameSpeed(f);
                return;
            }
            return;
        }
        float f3 = this.f11487z;
        if (f3 >= 1.0f) {
            f2 = f3 * 2.0f;
        }
        setGameSpeed(f2);
    }

    public boolean isDailyQuestAndNotCompleted() {
        if (this.dailyQuestLevel == null || this.f11483v.size != 0) {
            return false;
        }
        return true;
    }

    public boolean isGameRealTimePasses() {
        WaveSystem waveSystem = this.f8844S.wave;
        WaveSystem.Status status = waveSystem.status;
        if (status == WaveSystem.Status.NOT_STARTED) {
            return false;
        }
        if (this.difficultyMode == DifficultyMode.EASY && status != WaveSystem.Status.SPAWNING && waveSystem.getTimeToNextWave() <= 0.0f && !this.f8844S.wave.allWavesSpawned()) {
            return false;
        }
        return true;
    }

    public void lowerGameSpeed() {
        if (this.f8844S.gameState.replayMode) {
            setGameSpeed(this.f11487z * 0.5f);
            return;
        }
        float f = this.f11487z;
        float f2 = 2.0f;
        if (f < 4.0f) {
            if (f >= 2.0f) {
                f2 = 1.0f;
            } else {
                f2 = -1.0f;
            }
        }
        if (f2 != -1.0f) {
            setGameSpeed(f2);
        }
    }

    public void pauseGame() {
        if (this.f11486y || this.f11457C) {
            return;
        }
        Logger.log("GameStateSystem", "pausing " + this);
        this.f11486y = true;
        this.f11455A = this.f11487z;
        this.f11487z = 0.0f;
        this.f11472R = false;
        saveGame();
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).gamePaused();
        }
        this.listeners.end();
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        this.f11487z = 1.0f;
        addMoney(this.f8844S.gameValue.getIntValue(GameValueType.STARTING_MONEY), false);
        addHealth(this.f8844S.gameValue.getIntValue(GameValueType.STARTING_HEALTH));
    }

    public int randomIntIndependent(int i, long j) {
        RandomXS128 randomXS128 = f11454Y;
        randomXS128.setSeed(j);
        return randomXS128.nextInt(i);
    }

    @Override // com.prineside.tdi2.systems.StateSystem, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.difficultyMode = (DifficultyMode) kryo.readObject(input, DifficultyMode.class);
        this.gameMode = (GameMode) kryo.readObject(input, GameMode.class);
        this.modeDifficultyMultiplier = input.readVarInt(true);
        this.replayId = input.readString();
        this.basicLevelName = (String) kryo.readObjectOrNull(input, String.class);
        this.userMapId = (String) kryo.readObjectOrNull(input, String.class);
        this.userMapOriginalSeed = input.readInt();
        this.allowedBossesForCustomMaps = (BossType[]) kryo.readObjectOrNull(input, BossType[].class);
        this.dailyQuestLevel = (DailyQuestManager.DailyQuestLevel) kryo.readObjectOrNull(input, DailyQuestManager.DailyQuestLevel.class);
        this.startingAbilitiesConfiguration = (AbilitySelectionOverlay.SelectedAbilitiesConfiguration) kryo.readObjectOrNull(input, AbilitySelectionOverlay.SelectedAbilitiesConfiguration.class);
        this.f11477p = input.readLong();
        this.canLootCases = input.readBoolean();
        this.encryptedChestsInInventory = input.readVarInt(true);
        this.lootBoostEnabled = input.readBoolean();
        this.rarityBoostEnabled = input.readBoolean();
        this.f11478q = (CheatSafeLong) kryo.readObject(input, CheatSafeLong.class);
        this.f11479r = (CheatSafeInt) kryo.readObject(input, CheatSafeInt.class);
        this.f11480s = (CheatSafeInt) kryo.readObject(input, CheatSafeInt.class);
        this.scoreWithEndlessTimeLimit = input.readVarLong(true);
        this.f11481t = (CheatSafeInt[]) kryo.readObject(input, CheatSafeInt[].class);
        this.f11483v = (Array) kryo.readObject(input, Array.class);
        this.f11482u = (IssuedItems) kryo.readObjectOrNull(input, IssuedItems.class);
        this.f11485x = (RandomXS128) kryo.readObjectOrNull(input, RandomXS128.class);
        this.averageDifficulty = input.readVarInt(true);
        this.playRealTime = input.readFloat();
        this.lastEnemyReachedTarget = (EnemyType) kryo.readObjectOrNull(input, EnemyType.class);
        this.f11457C = input.readBoolean();
        this.gameOverReason = (GameOverReason) kryo.readObjectOrNull(input, GameOverReason.class);
        this.gameStartPreferencesSnapshot = (byte[]) kryo.readObjectOrNull(input, byte[].class);
        this.f11458D = input.readVarInt(true);
        this.pxpExperience = input.readVarInt(true);
        this.f11459E = input.readVarInt(true);
        this.f11460F = input.readVarInt(true);
        this.f11461G = input.readFloat();
        this.f11462H = input.readFloat();
        this.f11463I = input.readFloat();
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
    }

    public void realUpdate(float f) {
        if (f >= 0.0f && !Float.isInfinite(f) && !Float.isNaN(f)) {
            if (f > 10.0f) {
                f = 10.0f;
            }
        } else {
            Logger.error("GameStateSystem", "realDeltaTime is " + f + ", reset to 0");
            f = 0.0f;
        }
        if (this.f11476W == null) {
            _LifecycleListener _lifecyclelistener = new _LifecycleListener();
            this.f11476W = _lifecyclelistener;
            Gdx.app.addLifecycleListener(_lifecyclelistener);
        }
        if (!isPaused() && getGameSpeed() > 0.0f) {
            this.playRealTime += f;
            this.f11475V += f;
        }
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).realUpdate(f);
        }
        this.listeners.end();
    }

    public void restartGame(boolean z) {
        if (this.dailyQuestLevel != null) {
            Game.f8589i.dailyQuestManager.startDailyLevel();
            return;
        }
        GameScreen gameScreen = null;
        if (z) {
            GameMode gameMode = this.gameMode;
            if (gameMode == GameMode.BASIC_LEVELS) {
                BasicLevel level = Game.f8589i.basicLevelManager.getLevel(this.basicLevelName);
                GameSystemProvider gameSystemProvider = this.f8844S;
                GameStateSystem gameStateSystem = gameSystemProvider.gameState;
                gameScreen = new GameScreen(level, gameStateSystem.difficultyMode, gameStateSystem.modeDifficultyMultiplier, this.startingAbilitiesConfiguration, gameStateSystem.canLootCases, gameStateSystem.encryptedChestsInInventory, gameStateSystem.lootBoostEnabled, gameStateSystem.rarityBoostEnabled, this.gameStartTimestamp, null, gameSystemProvider.loot.inventoryStatistics);
                gameScreen.f10670S.gameState.dailyQuestLevel = this.dailyQuestLevel;
            } else if (gameMode == GameMode.USER_MAPS) {
                UserMap userMap = Game.f8589i.userMapManager.getUserMap(this.userMapId);
                GameSystemProvider gameSystemProvider2 = this.f8844S;
                GameStateSystem gameStateSystem2 = gameSystemProvider2.gameState;
                gameScreen = new GameScreen(userMap, gameStateSystem2.difficultyMode, gameStateSystem2.modeDifficultyMultiplier, this.startingAbilitiesConfiguration, this.gameStartTimestamp, this.allowedBossesForCustomMaps, null, gameSystemProvider2.loot.inventoryStatistics);
            }
            if (gameScreen != null) {
                deleteSavedGame();
                Game.f8589i.screenManager.setScreen(gameScreen);
                return;
            }
            throw new RuntimeException("Not implemented for " + this.gameMode.name());
        }
        GameMode gameMode2 = this.gameMode;
        if (gameMode2 == GameMode.BASIC_LEVELS) {
            if (!Game.f8589i.basicLevelManager.getLevel(this.basicLevelName).getMap().targetTile.isDisableAbilities() && Game.f8589i.abilityManager.isAnyAbilityOpened()) {
                Game.f8589i.uiManager.abilitySelectionOverlay.show(new Runnable() { // from class: com.prineside.tdi2.systems.GameStateSystem.1
                    @Override // java.lang.Runnable
                    public void run() {
                    }
                }, new ObjectRetriever<AbilitySelectionOverlay.SelectedAbilitiesConfiguration>() { // from class: com.prineside.tdi2.systems.GameStateSystem.2
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public void retrieved(AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration) {
                        Game game = Game.f8589i;
                        game.screenManager.startNewBasicLevel(game.basicLevelManager.getLevel(GameStateSystem.this.basicLevelName), selectedAbilitiesConfiguration);
                    }
                });
                return;
            }
            Game game = Game.f8589i;
            game.screenManager.startNewBasicLevel(game.basicLevelManager.getLevel(this.basicLevelName), null);
        } else if (gameMode2 == GameMode.USER_MAPS) {
            if (!Game.f8589i.userMapManager.getUserMap(this.userMapId).map.targetTile.isDisableAbilities() && Game.f8589i.abilityManager.isAnyAbilityOpened()) {
                Game.f8589i.uiManager.abilitySelectionOverlay.show(new Runnable() { // from class: com.prineside.tdi2.systems.GameStateSystem.3
                    @Override // java.lang.Runnable
                    public void run() {
                    }
                }, new ObjectRetriever<AbilitySelectionOverlay.SelectedAbilitiesConfiguration>() { // from class: com.prineside.tdi2.systems.GameStateSystem.4
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public void retrieved(AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration) {
                        Game game2 = Game.f8589i;
                        game2.screenManager.startNewUserLevel(game2.userMapManager.getUserMap(GameStateSystem.this.userMapId), selectedAbilitiesConfiguration);
                    }
                });
                return;
            }
            Game game2 = Game.f8589i;
            game2.screenManager.startNewUserLevel(game2.userMapManager.getUserMap(this.userMapId), null);
        }
    }

    public void resumeGame() {
        if (this.f11486y) {
            this.f11486y = false;
            this.f11487z = this.f11455A;
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).gameResumed();
            }
            this.listeners.end();
        }
    }

    public void saveGame() {
        GameSystemProvider gameSystemProvider = this.f8844S;
        if (!gameSystemProvider.CFG.headless && !this.replayMode) {
            if (this.gameSavesDisabled) {
                Logger.error("GameStateSystem", "game saves disabled manually");
            } else if (gameSystemProvider.gameState.isFastForwarding()) {
                Logger.error("GameStateSystem", "game is fast-forwarding, save skipped");
            } else if (this.f8844S.gameValue.getBooleanValue(GameValueType.GAME_SAVES) && !this.f11457C && this.updateNumber != this.f11456B) {
                long realTickCount = Game.getRealTickCount();
                this.f11456B = this.updateNumber;
                m21036e(this.snapshotSavesEnabled);
                byte[] bArr = this.f11469O;
                if (bArr == null || bArr.length < this.f11464J.position()) {
                    this.f11469O = new byte[MathUtils.nextPowerOfTwo(this.f11464J.position())];
                }
                synchronized (this.f11471Q) {
                    System.arraycopy(this.f11464J.getBuffer(), 0, this.f11469O, 0, this.f11464J.position());
                    this.f11470P = this.f11464J.position();
                    Logger.log("GameStateSystem", "state: " + this.f11464J.position() + " bytes");
                }
                Thread thread = new Thread(new Runnable() { // from class: com.prineside.tdi2.systems.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        GameStateSystem.this.m21035f();
                    }
                }, "SaveGame");
                thread.setDaemon(true);
                thread.start();
                Logger.handleThreadExceptionsForgiving(thread);
                Logger.log("GameStateSystem", "game saved in " + (((float) (Game.getRealTickCount() - realTickCount)) / 1000.0f) + "ms for update #" + this.updateNumber);
            }
        }
    }

    public void setGameSpeed(float f) {
        if (this.f11487z != f) {
            this.f11472R = false;
            this.f11487z = f;
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).gameSpeedChanged();
            }
            this.listeners.end();
        }
    }

    public void setMoney(int i) {
        int i2 = this.f11480s.get();
        this.f11480s.set(i);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).moneyChanged(i2, false);
        }
        this.listeners.end();
    }

    public void setSeed(long j) {
        if (this.f11485x == null) {
            this.f11477p = j;
            this.f11485x = new RandomXS128(j);
            return;
        }
        throw new IllegalStateException("Seed is already set");
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        this.replayId = "R-" + FastRandom.generateUniqueDistinguishableId();
        if (this.gameStartTimestamp != -1) {
            for (int i = 0; i < ResourceType.values.length; i++) {
                this.f11481t[i] = new CheatSafeInt(0, 0);
            }
            this.gameStartPreferencesSnapshot = Game.f8589i.preferencesManager.saveSnapshot(new Array<>(new String[]{Config.PREFERENCES_NAME_PROGRESS})).toArray();
            GameSystemProvider gameSystemProvider = this.f8844S;
            gameSystemProvider.enemy.listeners.add(new _EnemySystemListener(gameSystemProvider));
            GameSystemProvider gameSystemProvider2 = this.f8844S;
            gameSystemProvider2.miner.listeners.add(new _MinerSystemListener(gameSystemProvider2));
            GameSystemProvider gameSystemProvider3 = this.f8844S;
            gameSystemProvider3.wave.listeners.add(new _WaveSystemListener(gameSystemProvider3));
            if (GameMode.isBasicLevel(this.gameMode)) {
                IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.GAME_OVER_BASIC_LEVEL, Game.getTimestampSeconds());
                this.f11482u = issuedItems;
                issuedItems.gameOverBasicLevel = this.basicLevelName;
                issuedItems.basicLevelGameMode = this.gameMode;
                return;
            } else if (this.gameMode == GameMode.USER_MAPS) {
                IssuedItems issuedItems2 = new IssuedItems(IssuedItems.IssueReason.GAME_OVER_USER_MAP, Game.getTimestampSeconds());
                this.f11482u = issuedItems2;
                String str = this.userMapId;
                issuedItems2.userMapId = str;
                issuedItems2.userMapHash = Game.f8589i.userMapManager.getUserMap(str).map.generateSeed();
                return;
            } else {
                throw new IllegalStateException("Game mode " + this.gameMode.name() + " not implemented");
            }
        }
        throw new IllegalStateException("Game start timestamp not set");
    }

    public void switchGameSpeed() {
        float f = 1.0f;
        if (StrictMath.abs(this.f11487z - 1.0f) < 0.1d) {
            f = 2.0f;
        } else if (StrictMath.abs(this.f11487z - 2.0f) < 0.1d) {
            f = 4.0f;
        }
        setGameSpeed(f);
    }

    public void togglePauseMenu() {
        if (this.f11486y) {
            resumeGame();
        } else {
            pauseGame();
        }
    }

    public void triggerGameOver(GameOverReason gameOverReason) {
        if (this.f11457C) {
            return;
        }
        Logger.log("GameStateSystem", "game over triggered");
        this.f11457C = true;
        this.gameOverReason = gameOverReason;
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).gameOver();
        }
        this.listeners.end();
        String str = this.basicLevelName;
        if (str != null && str.startsWith("0.")) {
            if (gameOverReason == GameOverReason.QUEST_FAILED || gameOverReason == GameOverReason.ZERO_BASE_HEALTH) {
                Game.f8589i.achievementManager.setProgress(AchievementType.FAIL_TUTORIAL, 1);
            }
        }
    }

    @Override // com.prineside.tdi2.systems.StateSystem, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.difficultyMode);
        kryo.writeObject(output, this.gameMode);
        output.writeVarInt(this.modeDifficultyMultiplier, true);
        output.writeString(this.replayId);
        kryo.writeObjectOrNull(output, this.basicLevelName, String.class);
        kryo.writeObjectOrNull(output, this.userMapId, String.class);
        output.writeInt(this.userMapOriginalSeed);
        kryo.writeObjectOrNull(output, this.allowedBossesForCustomMaps, BossType[].class);
        kryo.writeObjectOrNull(output, this.dailyQuestLevel, DailyQuestManager.DailyQuestLevel.class);
        kryo.writeObjectOrNull(output, this.startingAbilitiesConfiguration, AbilitySelectionOverlay.SelectedAbilitiesConfiguration.class);
        output.writeLong(this.f11477p);
        output.writeBoolean(this.canLootCases);
        output.writeVarInt(this.encryptedChestsInInventory, true);
        output.writeBoolean(this.lootBoostEnabled);
        output.writeBoolean(this.rarityBoostEnabled);
        kryo.writeObject(output, this.f11478q);
        kryo.writeObject(output, this.f11479r);
        kryo.writeObject(output, this.f11480s);
        output.writeVarLong(this.scoreWithEndlessTimeLimit, true);
        kryo.writeObject(output, this.f11481t);
        kryo.writeObject(output, this.f11483v);
        kryo.writeObjectOrNull(output, this.f11482u, IssuedItems.class);
        kryo.writeObjectOrNull(output, this.f11485x, RandomXS128.class);
        output.writeVarInt(this.averageDifficulty, true);
        output.writeFloat(this.playRealTime);
        kryo.writeObjectOrNull(output, this.lastEnemyReachedTarget, EnemyType.class);
        output.writeBoolean(this.f11457C);
        kryo.writeObjectOrNull(output, this.gameOverReason, GameOverReason.class);
        kryo.writeObjectOrNull(output, this.gameStartPreferencesSnapshot, byte[].class);
        output.writeVarInt(this.f11458D, true);
        output.writeVarInt(this.pxpExperience, true);
        output.writeVarInt(this.f11459E, true);
        output.writeVarInt(this.f11460F, true);
        output.writeFloat(this.f11461G);
        output.writeFloat(this.f11462H);
        output.writeFloat(this.f11463I);
        kryo.writeObject(output, this.listeners);
    }

    public void addHealth(int i) {
        checkGameplayUpdateAllowed();
        int i2 = this.f11479r.get();
        this.f11479r.add(i);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).healthChanged(i2);
        }
        this.listeners.end();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addLootIssuedPrizes(com.prineside.tdi2.ItemStack r10, float r11, float r12, int r13) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.systems.GameStateSystem.addLootIssuedPrizes(com.prineside.tdi2.ItemStack, float, float, int):void");
    }

    public int addMoney(float f, boolean z) {
        checkGameplayUpdateAllowed();
        int i = (int) f;
        float f2 = f - i;
        if (f2 > 0.001f && randomFloat() < f2) {
            i++;
        }
        if (i > 0) {
            int i2 = this.f11480s.get();
            this.f11480s.add(i);
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.listeners.get(i3).moneyChanged(i2, z);
            }
            this.listeners.end();
        }
        return i;
    }

    public int addResources(ResourceType resourceType, float f) {
        checkGameplayUpdateAllowed();
        int i = (int) f;
        float f2 = f - i;
        if (f2 > 0.001f && randomFloat() < f2) {
            i++;
        }
        int i2 = this.f11481t[resourceType.ordinal()].get();
        this.f11481t[resourceType.ordinal()].add(i);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).resourcesChanged(resourceType, i2, true);
        }
        this.listeners.end();
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addScore(long r5, com.prineside.tdi2.enums.StatisticsType r7) {
        /*
            r4 = this;
            r4.checkGameplayUpdateAllowed()
            com.prineside.tdi2.enums.StatisticsType r0 = com.prineside.tdi2.enums.StatisticsType.SG_EK
            r1 = 1065353216(0x3f800000, float:1.0)
            if (r7 != r0) goto L15
            com.prineside.tdi2.GameSystemProvider r0 = r4.f8844S
            com.prineside.tdi2.systems.GameValueSystem r0 = r0.gameValue
            com.prineside.tdi2.enums.GameValueType r2 = com.prineside.tdi2.enums.GameValueType.SCORE_ENEMIES_KILLED
            double r2 = r0.getPercentValueAsMultiplier(r2)
        L13:
            float r0 = (float) r2
            goto L44
        L15:
            com.prineside.tdi2.enums.StatisticsType r0 = com.prineside.tdi2.enums.StatisticsType.SG_WCA
            if (r7 != r0) goto L24
            com.prineside.tdi2.GameSystemProvider r0 = r4.f8844S
            com.prineside.tdi2.systems.GameValueSystem r0 = r0.gameValue
            com.prineside.tdi2.enums.GameValueType r2 = com.prineside.tdi2.enums.GameValueType.SCORE_WAVE_CALLS
            double r2 = r0.getPercentValueAsMultiplier(r2)
            goto L13
        L24:
            com.prineside.tdi2.enums.StatisticsType r0 = com.prineside.tdi2.enums.StatisticsType.SG_RM
            if (r7 != r0) goto L33
            com.prineside.tdi2.GameSystemProvider r0 = r4.f8844S
            com.prineside.tdi2.systems.GameValueSystem r0 = r0.gameValue
            com.prineside.tdi2.enums.GameValueType r2 = com.prineside.tdi2.enums.GameValueType.SCORE_MINING
            double r2 = r0.getPercentValueAsMultiplier(r2)
            goto L13
        L33:
            com.prineside.tdi2.enums.StatisticsType r0 = com.prineside.tdi2.enums.StatisticsType.SG_WCL
            if (r7 != r0) goto L42
            com.prineside.tdi2.GameSystemProvider r0 = r4.f8844S
            com.prineside.tdi2.systems.GameValueSystem r0 = r0.gameValue
            com.prineside.tdi2.enums.GameValueType r2 = com.prineside.tdi2.enums.GameValueType.SCORE_CLEARED_WAVES
            double r2 = r0.getPercentValueAsMultiplier(r2)
            goto L13
        L42:
            r0 = 1065353216(0x3f800000, float:1.0)
        L44:
            float r5 = (float) r5
            float r0 = r0 * r5
            int r5 = java.lang.Math.round(r0)
            long r5 = (long) r5
            int r0 = r4.averageDifficulty
            r2 = 100
            if (r0 >= r2) goto L59
            float r0 = (float) r0
            r1 = 1008981770(0x3c23d70a, float:0.01)
            float r1 = r1 * r0
            goto L61
        L59:
            if (r0 <= r2) goto L61
            int r0 = r0 - r2
            float r0 = (float) r0
            r2 = 1137180672(0x43c80000, float:400.0)
            float r0 = r0 / r2
            float r1 = r1 + r0
        L61:
            double r0 = (double) r1
            com.prineside.tdi2.GameSystemProvider r2 = r4.f8844S
            com.prineside.tdi2.systems.GameValueSystem r2 = r2.gameValue
            com.prineside.tdi2.enums.GameValueType r3 = com.prineside.tdi2.enums.GameValueType.SCORE
            double r2 = r2.getPercentValueAsMultiplier(r3)
            java.lang.Double.isNaN(r0)
            double r0 = r0 * r2
            float r0 = (float) r0
            float r5 = (float) r5
            float r5 = r5 * r0
            long r5 = (long) r5
            r0 = 0
            int r2 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r2 > 0) goto L7d
            return
        L7d:
            com.prineside.tdi2.utils.CheatSafeLong r0 = r4.f11478q
            long r0 = r0.get()
            com.prineside.tdi2.utils.CheatSafeLong r2 = r4.f11478q
            r2.add(r5)
            boolean r5 = r4.isMaxEndlessReplayTimeReached()
            if (r5 != 0) goto L96
            com.prineside.tdi2.utils.CheatSafeLong r5 = r4.f11478q
            long r5 = r5.get()
            r4.scoreWithEndlessTimeLimit = r5
        L96:
            com.prineside.tdi2.ListenerGroup<com.prineside.tdi2.systems.GameStateSystem$GameStateSystemListener> r5 = r4.listeners
            r5.begin()
            r5 = 0
            com.prineside.tdi2.ListenerGroup<com.prineside.tdi2.systems.GameStateSystem$GameStateSystemListener> r6 = r4.listeners
            int r6 = r6.size()
        La2:
            if (r5 >= r6) goto Lb3
            com.prineside.tdi2.ListenerGroup<com.prineside.tdi2.systems.GameStateSystem$GameStateSystemListener> r2 = r4.listeners
            com.prineside.tdi2.GameListener r2 = r2.get(r5)
            com.prineside.tdi2.systems.GameStateSystem$GameStateSystemListener r2 = (com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener) r2
            r3 = 1
            r2.scoreChanged(r0, r3, r7)
            int r5 = r5 + 1
            goto La2
        Lb3:
            com.prineside.tdi2.ListenerGroup<com.prineside.tdi2.systems.GameStateSystem$GameStateSystemListener> r5 = r4.listeners
            r5.end()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.systems.GameStateSystem.addScore(long, com.prineside.tdi2.enums.StatisticsType):void");
    }

    public String getStateStr(boolean z) {
        m21036e(z);
        return StringFormatter.toCompactBase64(this.f11464J.getBuffer(), 0, this.f11464J.position());
    }

    public float randomFloat() {
        checkGameplayUpdateAllowed();
        return this.f11485x.nextFloat();
    }

    public int randomInt(int i) {
        checkGameplayUpdateAllowed();
        return this.f11485x.nextInt(i);
    }

    public void removeHealth(int i) {
        checkGameplayUpdateAllowed();
        int i2 = this.f11479r.get();
        this.f11479r.sub(i);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).healthChanged(i2);
        }
        this.listeners.end();
    }

    public boolean removeResources(ResourceType resourceType, int i) {
        checkGameplayUpdateAllowed();
        if (this.f11481t[resourceType.ordinal()].get() < i) {
            return false;
        }
        int i2 = this.f11481t[resourceType.ordinal()].get();
        this.f11481t[resourceType.ordinal()].sub(i);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).resourcesChanged(resourceType, i2, false);
        }
        this.listeners.end();
        return true;
    }

    public void setHealth(int i) {
        checkGameplayUpdateAllowed();
        int i2 = this.f11479r.get();
        this.f11479r.set(i);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).healthChanged(i2);
        }
        this.listeners.end();
    }

    public void setResources(ResourceType resourceType, int i) {
        checkGameplayUpdateAllowed();
        int i2 = this.f11481t[resourceType.ordinal()].get();
        this.f11481t[resourceType.ordinal()].set(i);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.listeners.get(i3).resourcesChanged(resourceType, i2, false);
        }
        this.listeners.end();
    }

    public void setScore(long j) {
        checkGameplayUpdateAllowed();
        long j2 = this.f11478q.get();
        this.f11478q.set(j);
        if (!isMaxEndlessReplayTimeReached()) {
            this.scoreWithEndlessTimeLimit = j;
        }
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).scoreChanged(j2, false, null);
        }
        this.listeners.end();
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        GameSystemProvider gameSystemProvider;
        float f2;
        int i;
        boolean z = true;
        if (isGameRealTimePasses()) {
            float f3 = this.f11463I - f;
            this.f11463I = f3;
            if (f3 < 0.0f) {
                this.f11463I = 0.0f;
            }
            if (this.pxpExperience < 1333 && !isMaxEndlessReplayTimeReached()) {
                int i2 = this.f11458D + 1;
                this.f11458D = i2;
                if (i2 - this.f11459E > 13500) {
                    this.f11460F = i2;
                } else {
                    if (DifficultyMode.isEndless(this.difficultyMode)) {
                        i = Config.PLAYER_XP_ISSUE_INTERVAL_ENDLESS;
                    } else {
                        i = Config.PLAYER_XP_ISSUE_INTERVAL;
                    }
                    int i3 = this.f11458D;
                    if (i3 - this.f11460F == i) {
                        this.pxpExperience++;
                        this.f11460F = i3;
                    }
                }
            }
            float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.COINS_GENERATION) / 60.0f;
            if (floatValue > 0.0f) {
                this.f11462H += f;
                if (isDoubleSpeedActive()) {
                    floatValue *= 2.0f;
                    f2 = 0.5f;
                } else {
                    f2 = 1.0f;
                }
                float f4 = this.f11461G + (floatValue * f);
                this.f11461G = f4;
                float f5 = this.f11462H;
                if (f5 >= f2) {
                    this.f11462H = f5 - f2;
                    if (f4 >= 1.0f) {
                        int i4 = (int) f4;
                        float f6 = i4;
                        addMoney(f6, true);
                        this.f8844S.statistics.addStatistic(StatisticsType.CG_PG, i4);
                        this.f11461G -= f6;
                    }
                }
            }
        }
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.listeners.get(i5).update(f);
        }
        this.listeners.end();
        int i6 = 0;
        while (true) {
            gameSystemProvider = this.f8844S;
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = gameSystemProvider.map.spawnedEnemies;
            if (i6 < delayedRemovalArray.size) {
                if (delayedRemovalArray.items[i6].enemy != null) {
                    break;
                }
                i6++;
            } else {
                z = false;
                break;
            }
        }
        if (gameSystemProvider.wave.status == WaveSystem.Status.ENDED && !z) {
            triggerGameOver(GameOverReason.NO_ENEMIES_LEFT);
        }
        if (this.headlessValidatedReplayRecord != null && isMaxEndlessReplayTimeReached()) {
            triggerGameOver(GameOverReason.MANUAL);
        }
    }

    /* loaded from: classes2.dex */
    public static class ReplayValidationResult {

        /* renamed from: S */
        public GameSystemProvider f11495S;
        public String cheatingReason;
        public int enemiesKilled;
        public long realScore;
        public int realWaves;
        public ReplayManager.ReplayRecord replayRecord;
        public int resourcesMined;
        public Result result;
        public float timeSpent;
        public int updates;
        public int updatesPerSecond;

        /* renamed from: xp */
        public int f11496xp;

        /* loaded from: classes2.dex */
        public enum Result {
            INVALID_RECORD,
            MODIFIED_GAME,
            VALID,
            INVALID
        }

        public ReplayValidationResult(Result result, float f, int i, int i2, int i3, long j, ReplayManager.ReplayRecord replayRecord) {
            this.result = result;
            this.timeSpent = f;
            this.updatesPerSecond = i;
            this.updates = i2;
            this.replayRecord = replayRecord;
            this.realWaves = i3;
            this.realScore = j;
        }

        public ReplayValidationResult(Result result, float f, int i, int i2, int i3, long j, ReplayManager.ReplayRecord replayRecord, String str) {
            this(result, f, i, i2, i3, j, replayRecord);
            this.cheatingReason = str;
        }
    }
}
