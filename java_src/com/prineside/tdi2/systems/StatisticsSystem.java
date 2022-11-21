package com.prineside.tdi2.systems;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.MinerSystem;
import com.prineside.tdi2.systems.TowerSystem;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.utils.EnumKeyArray;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class StatisticsSystem extends GameSystem {
    @NAGS

    /* renamed from: d */
    public ReplayManager.ReplayRecord f11806d;
    @NAGS

    /* renamed from: k */
    public boolean f11807k;

    /* renamed from: p */
    public boolean f11808p;

    /* renamed from: q */
    public float f11809q;
    @NAGS

    /* renamed from: r */
    public boolean f11810r;
    public int replayChartFrameCounter;
    @EnumKeyArray(enumerator = StatisticsType.class)

    /* renamed from: a */
    public double[] f11804a = new double[StatisticsType.values.length];

    /* renamed from: b */
    public ReplayManager.ReplayRecord.ChartFrames f11805b = new ReplayManager.ReplayRecord.ChartFrames();
    @NAGS
    public ListenerGroup<StatisticsSystemListener> listeners = new ListenerGroup<>(StatisticsSystemListener.class);

    /* renamed from: com.prineside.tdi2.systems.StatisticsSystem$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23321 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f11811a;

        static {
            int[] iArr = new int[DamageType.values().length];
            f11811a = iArr;
            try {
                iArr[DamageType.BULLET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11811a[DamageType.FIRE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11811a[DamageType.POISON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11811a[DamageType.EXPLOSION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11811a[DamageType.ELECTRICITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11811a[DamageType.LASER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface StatisticsSystemListener extends GameListener {
        void bestReplayLoadedFromServer();
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11812a;

        public /* synthetic */ _EnemySystemListener(GameSystemProvider gameSystemProvider, C23321 c23321) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public boolean enemyReachedTarget(Enemy enemy, int i, TargetTile targetTile) {
            if (targetTile != null) {
                this.f11812a.statistics.addStatistic(StatisticsType.EP, 1.0d);
                return false;
            }
            return false;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 526521;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11812a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11812a, GameSystemProvider.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            this.f11812a.statistics.addStatistic(StatisticsType.EK, 1.0d);
            if (tower != null) {
                this.f11812a.statistics.addStatistic(StatisticsType.TEK, 1.0d);
                this.f11812a.statistics.addStatistic(Game.f8589i.towerManager.getEnemiesKilledStatisticsType(tower.type), 1.0d);
            }
            if (ability != null) {
                this.f11812a.statistics.addStatistic(StatisticsType.KEW_A, 1.0d);
            }
            switch (C23321.f11811a[damageType.ordinal()]) {
                case 1:
                    this.f11812a.statistics.addStatistic(StatisticsType.KEW_B, 1.0d);
                    return;
                case 2:
                    this.f11812a.statistics.addStatistic(StatisticsType.KEW_F, 1.0d);
                    return;
                case 3:
                    this.f11812a.statistics.addStatistic(StatisticsType.KEW_P, 1.0d);
                    return;
                case 4:
                    this.f11812a.statistics.addStatistic(StatisticsType.KEW_E, 1.0d);
                    return;
                case 5:
                    this.f11812a.statistics.addStatistic(StatisticsType.KEW_EL, 1.0d);
                    return;
                case 6:
                    this.f11812a.statistics.addStatistic(StatisticsType.KEW_L, 1.0d);
                    return;
                default:
                    return;
            }
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyTakeDamage(Enemy enemy, float f, Tower tower, DamageType damageType, Projectile projectile) {
            if (tower != null) {
                double d = f;
                this.f11812a.statistics.addStatistic(StatisticsType.TDD, d);
                this.f11812a.statistics.addStatistic(Game.f8589i.towerManager.getDamageDealtStatisticType(tower.type), d);
            }
        }

        public _EnemySystemListener(GameSystemProvider gameSystemProvider) {
            this.f11812a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _Game_StateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11813a;

        public /* synthetic */ _Game_StateSystemListener(GameSystemProvider gameSystemProvider, C23321 c23321) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void gameOver() {
            this.f11813a.statistics.f11805b.addFrame(this.f11813a);
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 8117266;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11813a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11813a, GameSystemProvider.class);
        }

        @Deprecated
        public _Game_StateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void moneyChanged(int i, boolean z) {
            if (z && this.f11813a.gameState.getMoney() > i) {
                GameSystemProvider gameSystemProvider = this.f11813a;
                gameSystemProvider.statistics.addStatistic(StatisticsType.CG, gameSystemProvider.gameState.getMoney() - i);
            }
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void resourcesChanged(ResourceType resourceType, int i, boolean z) {
            if (z && this.f11813a.gameState.getResources(resourceType) > i) {
                double resources = this.f11813a.gameState.getResources(resourceType) - i;
                this.f11813a.statistics.addStatistic(StatisticsType.RG, resources);
                this.f11813a.statistics.addStatistic(Game.f8589i.resourceManager.getGainedCountStatistic(resourceType), resources);
            }
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void scoreChanged(long j, boolean z, StatisticsType statisticsType) {
            if (z && this.f11813a.gameState.getScore() > j) {
                double score = this.f11813a.gameState.getScore() - j;
                this.f11813a.statistics.addStatistic(StatisticsType.SG, score);
                if (statisticsType != null) {
                    this.f11813a.statistics.addStatistic(statisticsType, score);
                }
            }
        }

        public _Game_StateSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11813a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MinerSystemListener extends MinerSystem.MinerSystemListener.MinerSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11814a;

        public /* synthetic */ _MinerSystemListener(GameSystemProvider gameSystemProvider, C23321 c23321) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 12387521;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11814a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11814a, GameSystemProvider.class);
        }

        @Deprecated
        public _MinerSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
        public void minerBuilt(Miner miner, int i) {
            this.f11814a.statistics.addStatistic(StatisticsType.MB, 1.0d);
            this.f11814a.statistics.addStatistic(Game.f8589i.minerManager.getBuiltStatisticType(miner.type), 1.0d);
            double d = i;
            this.f11814a.statistics.addStatistic(StatisticsType.MMS, d);
            this.f11814a.statistics.addStatistic(Game.f8589i.minerManager.getMoneySpentStatisticType(miner.type), d);
            StatisticsSystem statisticsSystem = this.f11814a.statistics;
            StatisticsType statisticsType = StatisticsType.MBS;
            double statistic = statisticsSystem.getStatistic(statisticsType);
            GameSystemProvider gameSystemProvider = this.f11814a;
            int i2 = gameSystemProvider.miner.miners.size;
            if (statistic < i2) {
                gameSystemProvider.statistics.setStatistic(statisticsType, i2);
            }
        }

        @Override // com.prineside.tdi2.systems.MinerSystem.MinerSystemListener.MinerSystemListenerAdapter, com.prineside.tdi2.systems.MinerSystem.MinerSystemListener
        public void minerUpgraded(Miner miner, int i) {
            this.f11814a.statistics.addStatistic(StatisticsType.MU, 1.0d);
            this.f11814a.statistics.addStatistic(Game.f8589i.minerManager.getUpgradedStatisticType(miner.type), 1.0d);
            double d = i;
            this.f11814a.statistics.addStatistic(StatisticsType.MMS, d);
            this.f11814a.statistics.addStatistic(Game.f8589i.minerManager.getMoneySpentStatisticType(miner.type), d);
        }

        public _MinerSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11814a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _TowerSystemListener extends TowerSystem.TowerSystemListener.TowerSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11815a;

        public /* synthetic */ _TowerSystemListener(GameSystemProvider gameSystemProvider, C23321 c23321) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 9172382;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11815a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11815a, GameSystemProvider.class);
        }

        @Deprecated
        public _TowerSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerBuilt(Tower tower, int i) {
            this.f11815a.statistics.addStatistic(StatisticsType.TB, 1.0d);
            this.f11815a.statistics.addStatistic(Game.f8589i.towerManager.getBuiltStatisticType(tower.type), 1.0d);
            double d = i;
            this.f11815a.statistics.addStatistic(StatisticsType.TMS, d);
            this.f11815a.statistics.addStatistic(Game.f8589i.towerManager.getMoneySpentStatisticType(tower.type), d);
            StatisticsSystem statisticsSystem = this.f11815a.statistics;
            StatisticsType statisticsType = StatisticsType.TBS;
            double statistic = statisticsSystem.getStatistic(statisticsType);
            GameSystemProvider gameSystemProvider = this.f11815a;
            int i2 = gameSystemProvider.tower.towers.size;
            if (statistic < i2) {
                gameSystemProvider.statistics.setStatistic(statisticsType, i2);
            }
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerUpgraded(Tower tower, int i) {
            double d = i;
            this.f11815a.statistics.addStatistic(StatisticsType.TMS, d);
            this.f11815a.statistics.addStatistic(Game.f8589i.towerManager.getMoneySpentStatisticType(tower.type), d);
            this.f11815a.statistics.addStatistic(StatisticsType.TU, 1.0d);
            this.f11815a.statistics.addStatistic(Game.f8589i.towerManager.getUpgradedStatisticType(tower.type), 1.0d);
        }

        public _TowerSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11815a = gameSystemProvider;
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerSold(Tower tower, int i) {
            if (!tower.isSellFullRefundStillActive()) {
                this.f11815a.statistics.addStatistic(StatisticsType.TS, 1.0d);
                this.f11815a.statistics.addStatistic(Game.f8589i.towerManager.getSoldStatisticType(tower.type), 1.0d);
                this.f11815a.statistics.addStatistic(Game.f8589i.towerManager.getMoneySpentStatisticType(tower.type), -i);
                return;
            }
            this.f11815a.statistics.addStatistic(StatisticsType.TB, -1.0d);
            this.f11815a.statistics.addStatistic(Game.f8589i.towerManager.getBuiltStatisticType(tower.type), -1.0d);
            double d = -i;
            this.f11815a.statistics.addStatistic(StatisticsType.TMS, d);
            this.f11815a.statistics.addStatistic(Game.f8589i.towerManager.getMoneySpentStatisticType(tower.type), d);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _WaveSystemListener extends WaveSystem.WaveSystemListener.WaveSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11816a;

        public /* synthetic */ _WaveSystemListener(GameSystemProvider gameSystemProvider, C23321 c23321) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 787815210;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11816a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void waveCompleted(Wave wave) {
            this.f11816a.statistics.addStatistic(StatisticsType.WD, 1.0d);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11816a, GameSystemProvider.class);
        }

        @Deprecated
        public _WaveSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void nextWaveForced(int i, int i2, float f) {
            this.f11816a.statistics.addStatistic(StatisticsType.WC, 1.0d);
            if (f > 0.0f) {
                this.f11816a.statistics.addStatistic(StatisticsType.WCST, f);
            }
            this.f11816a.statistics.addStatistic(StatisticsType.WCGC, i);
            this.f11816a.statistics.addStatistic(StatisticsType.WCGS, i2);
        }

        public _WaveSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11816a = gameSystemProvider;
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        super.dispose();
    }

    public double getCurrentGameStatistic(StatisticsType statisticsType) {
        return this.f11804a[statisticsType.ordinal()];
    }

    public double[] getCurrentGameStatistics() {
        return this.f11804a;
    }

    public ReplayManager.ReplayRecord.ChartFrames getCurrentReplayChart() {
        return this.f11805b;
    }

    public ReplayManager.ReplayRecord.ChartFrames.FrameValues getCurrentReplayChartValues() {
        return ReplayManager.ReplayRecord.ChartFrames.generateFrameValues(this.f8844S);
    }

    public double getStatistic(StatisticsType statisticsType) {
        return this.f11804a[statisticsType.ordinal()];
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Statistics";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m20881d(ReplayManager.ReplayRecord replayRecord) {
        Logger.log("StatisticsSystem", "loaded best replay from server: " + replayRecord.f10052id);
        this.f11806d = replayRecord;
        this.listeners.begin();
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).bestReplayLoadedFromServer();
        }
        this.listeners.end();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m20880e(final ReplayManager.ReplayRecord replayRecord) {
        if (replayRecord != null) {
            ReplayManager.ReplayRecord replayRecord2 = this.f11806d;
            if (replayRecord2 != null && replayRecord.f10052id.equals(replayRecord2.f10052id)) {
                return;
            }
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.systems.m
                @Override // java.lang.Runnable
                public final void run() {
                    StatisticsSystem.this.m20881d(replayRecord);
                }
            });
        }
    }

    public void addStatistic(StatisticsType statisticsType, double d) {
        if (!this.f11808p) {
            double[] dArr = this.f11804a;
            int ordinal = statisticsType.ordinal();
            dArr[ordinal] = dArr[ordinal] + d;
            return;
        }
        throw new IllegalStateException("Statistics are already flushed");
    }

    public void flushStatistics() {
        StatisticsType[] statisticsTypeArr;
        if (!this.f11808p) {
            for (StatisticsType statisticsType : StatisticsType.values) {
                Game.f8589i.statisticsManager.registerDelta(statisticsType, this.f11804a[statisticsType.ordinal()]);
                Game.f8589i.statisticsManager.registerMaxOneGame(statisticsType, this.f11804a[statisticsType.ordinal()]);
            }
            this.f11808p = true;
            return;
        }
        throw new IllegalStateException("Statistics are already flushed");
    }

    public ReplayManager.ReplayRecord getBestReplay() {
        String str;
        if (!this.f11810r) {
            this.f11810r = true;
            GameStateSystem gameStateSystem = this.f8844S.gameState;
            if (gameStateSystem.gameMode == GameStateSystem.GameMode.BASIC_LEVELS && gameStateSystem.difficultyMode == DifficultyMode.NORMAL) {
                Game.f8589i.replayManager.loadAndStoreBestReplayFromServer(gameStateSystem.basicLevelName, new ObjectRetriever() { // from class: com.prineside.tdi2.systems.l
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public final void retrieved(Object obj) {
                        StatisticsSystem.this.m20880e((ReplayManager.ReplayRecord) obj);
                    }
                });
            }
        }
        ReplayManager.ReplayRecord replayRecord = this.f11806d;
        if (replayRecord != null) {
            return replayRecord;
        }
        if (this.f11807k) {
            return null;
        }
        if (GameStateSystem.GameMode.isBasicLevel(this.f8844S.gameState.gameMode)) {
            str = this.f8844S.gameState.basicLevelName;
        } else {
            GameStateSystem gameStateSystem2 = this.f8844S.gameState;
            if (gameStateSystem2.gameMode == GameStateSystem.GameMode.USER_MAPS) {
                str = gameStateSystem2.userMapId;
            } else {
                str = "";
            }
        }
        Array<String> allRecordIds = Game.f8589i.replayManager.getAllRecordIds();
        ReplayManager.ReplayRecord replayRecord2 = null;
        for (int i = 0; i < allRecordIds.size; i++) {
            try {
                ReplayManager.ReplayRecord record = Game.f8589i.replayManager.getRecord(allRecordIds.items[i]);
                GameStateSystem.GameMode gameMode = record.gameMode;
                GameStateSystem gameStateSystem3 = this.f8844S.gameState;
                if (gameMode == gameStateSystem3.gameMode && record.difficultyMode == gameStateSystem3.difficultyMode && record.chartFrames.version == 2 && str.equals(record.levelName) && (replayRecord2 == null || replayRecord2.score < record.score)) {
                    replayRecord2 = record;
                }
            } catch (Exception e) {
                Logger.error("StatisticsSystem", "failed to get best replay", e);
            }
        }
        if (replayRecord2 == null) {
            this.f11807k = true;
            return null;
        }
        this.f11806d = replayRecord2;
        return replayRecord2;
    }

    public void setStatistic(StatisticsType statisticsType, double d) {
        if (!this.f11808p) {
            this.f11804a[statisticsType.ordinal()] = d;
            return;
        }
        throw new IllegalStateException("Statistics are already flushed");
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        GameSystemProvider gameSystemProvider = this.f8844S;
        gameSystemProvider.gameState.listeners.add(new _Game_StateSystemListener(gameSystemProvider, null));
        GameSystemProvider gameSystemProvider2 = this.f8844S;
        gameSystemProvider2.enemy.listeners.add(new _EnemySystemListener(gameSystemProvider2, null));
        GameSystemProvider gameSystemProvider3 = this.f8844S;
        gameSystemProvider3.tower.listeners.add(new _TowerSystemListener(gameSystemProvider3, null));
        GameSystemProvider gameSystemProvider4 = this.f8844S;
        gameSystemProvider4.miner.listeners.add(new _MinerSystemListener(gameSystemProvider4, null));
        GameSystemProvider gameSystemProvider5 = this.f8844S;
        gameSystemProvider5.wave.listeners.add(new _WaveSystemListener(gameSystemProvider5, null));
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        float f2;
        if (this.f8844S.gameState.isGameRealTimePasses()) {
            float f3 = this.f11809q + f;
            this.f11809q = f3;
            if (f3 > 1.0f) {
                addStatistic(StatisticsType.PT, 1.0d);
                if (this.f8844S.loot.canGiveEncryptedChests()) {
                    addStatistic(StatisticsType.PTCL, 1.0d);
                }
                if (DifficultyMode.isEndless(this.f8844S.gameState.difficultyMode)) {
                    int i = this.f8844S.gameState.averageDifficulty;
                    if (i <= 100) {
                        f2 = (float) StrictMath.pow(i / 100.0f, 1.75d);
                    } else {
                        f2 = (((i - 100.0f) / 400.0f) * 0.75f) + 1.0f;
                    }
                    addStatistic(StatisticsType.PTEMWD, f2);
                }
                this.f11809q -= 1.0f;
            }
            int i2 = this.replayChartFrameCounter + 1;
            this.replayChartFrameCounter = i2;
            if (i2 % Config.REPLAY_CHARTS_INTERVAL == 0) {
                this.f11805b.addFrame(this.f8844S);
            }
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11804a = (double[]) kryo.readObject(input, double[].class);
        this.f11805b = (ReplayManager.ReplayRecord.ChartFrames) kryo.readObject(input, ReplayManager.ReplayRecord.ChartFrames.class);
        this.replayChartFrameCounter = input.readVarInt(true);
        this.f11808p = input.readBoolean();
        this.f11809q = input.readFloat();
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.f11804a);
        kryo.writeObject(output, this.f11805b);
        output.writeVarInt(this.replayChartFrameCounter, true);
        output.writeBoolean(this.f11808p);
        output.writeFloat(this.f11809q);
    }
}
