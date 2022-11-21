package com.prineside.tdi2.systems;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.WaveProcessor;
import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.abilities.OverloadAbility;
import com.prineside.tdi2.actions.CallWaveAction;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.StateSystem;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.io.PrintStream;
import java.util.Arrays;
@REGS
/* loaded from: classes2.dex */
public class WaveSystem extends GameSystem {
    public static final int NEXT_WAVES_CACHE_SIZE = 10;
    public static final float ULTRA_DIFFICULT_MILESTONE_MULTIPLIER = 1.75f;
    public IntMap<BossType> bossWaves;

    /* renamed from: d */
    public float f11834d;

    /* renamed from: k */
    public float f11835k;

    /* renamed from: p */
    public float f11836p;
    public WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplates;

    /* renamed from: r */
    public boolean f11838r;

    /* renamed from: s */
    public int f11839s;
    public Status status;

    /* renamed from: t */
    public float f11840t;

    /* renamed from: u */
    public float f11841u;

    /* renamed from: w */
    public WaveGenerator f11843w;
    public Wave wave;

    /* renamed from: x */
    public static final Array<Enemy> f11829x = new Array<>();

    /* renamed from: y */
    public static final ObjectSet<EnemyType> f11830y = new ObjectSet<>();

    /* renamed from: z */
    public static final Array<SpawnTile> f11831z = new Array<>(SpawnTile.class);

    /* renamed from: A */
    public static final DelayedRemovalArray<Wave> f11828A = new DelayedRemovalArray<>(true, 1, Wave.class);

    /* renamed from: a */
    public WaveTemplates.WaveTemplate f11832a = null;
    public Mode mode = Mode.ENDLESS;

    /* renamed from: b */
    public DelayedRemovalArray<WaveProcessor> f11833b = new DelayedRemovalArray<>(WaveProcessor.class);
    @NAGS
    public boolean autoForceWaveEnabled = false;
    public WaveCache[] nextWavesCache = new WaveCache[10];
    public DelayedRemovalArray<Wave> wavesToNotifyAboutCompletion = new DelayedRemovalArray<>(true, 1, Wave.class);

    /* renamed from: q */
    public int f11837q = 0;

    /* renamed from: v */
    public int[] f11842v = new int[4];
    public ListenerGroup<WaveSystemListener> listeners = new ListenerGroup<>(WaveSystemListener.class);

    @REGS
    /* loaded from: classes2.dex */
    public enum Mode {
        ENDLESS,
        PREDEFINED
    }

    @REGS
    /* loaded from: classes2.dex */
    public enum Status {
        NOT_STARTED,
        SPAWNING,
        SPAWNED,
        ENDED
    }

    @REGS(arrayLevels = 1)
    /* loaded from: classes2.dex */
    public static class WaveCache implements KryoSerializable {
        public Wave wave;
        public int waveNumber;

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.wave);
            output.writeVarInt(this.waveNumber, true);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.wave = (Wave) kryo.readClassAndObject(input);
            this.waveNumber = input.readVarInt(true);
        }
    }

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface WaveGenerator {
        Wave generate(int i, Wave wave, GameSystemProvider gameSystemProvider, float f, int i2);
    }

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface WaveSystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static abstract class WaveSystemListenerAdapter implements WaveSystemListener {
            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
            public void forceWaveAvailabilityChanged() {
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
            public void nextWaveForced(int i, int i2, float f) {
            }

            @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
            public void statusChanged(Status status) {
            }

            @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
            public void waveCompleted(Wave wave) {
            }

            @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
            public void waveStarted() {
            }
        }

        void forceWaveAvailabilityChanged();

        void nextWaveForced(int i, int i2, float f);

        void statusChanged(Status status);

        void waveCompleted(Wave wave);

        void waveStarted();
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11846a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public boolean enemyReachedTarget(Enemy enemy, int i, TargetTile targetTile) {
            if (targetTile != null) {
                Wave wave = enemy.wave;
                if (wave != null) {
                    wave.passedEnemiesCount++;
                }
                if (this.f11846a.wave.isAutoForceWaveEnabled()) {
                    GameSystemProvider gameSystemProvider = this.f11846a;
                    if (gameSystemProvider.gameState.difficultyMode == DifficultyMode.EASY) {
                        gameSystemProvider.wave.setAutoForceWaveEnabled(false);
                    }
                }
            }
            return false;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 92236009;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11846a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11846a, GameSystemProvider.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            Wave wave = enemy.wave;
            if (wave != null) {
                int i = wave.killedEnemiesCount + 1;
                wave.killedEnemiesCount = i;
                int i2 = (int) (wave.killedEnemiesBountySum + enemy.bounty);
                wave.killedEnemiesBountySum = i2;
                if (i == wave.totalEnemiesCount) {
                    this.f11846a.gameState.addScore((wave.waveNumber * 10) + 100 + ((int) (i2 * 0.1f)), StatisticsType.SG_WCL);
                }
            }
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyTakeDamage(Enemy enemy, float f, Tower tower, DamageType damageType, Projectile projectile) {
            Wave wave = enemy.wave;
            if (wave != null) {
                wave.enemiesTookDamage += f;
            }
        }

        public _EnemySystemListener(GameSystemProvider gameSystemProvider) {
            this.f11846a = gameSystemProvider;
        }
    }

    public static Array<EnemyGroup> generateEnemyGroups(int i, Mode mode, int[] iArr, int i2, IntMap<BossType> intMap, Map map, long j, WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr) {
        boolean z;
        if (mode == Mode.ENDLESS) {
            int round = MathUtils.round(i2 * getDifficultWavesMultiplier(i, iArr));
            if (intMap != null && intMap.containsKey(i)) {
                return Game.f8589i.waveManager.createBossWaveProcessor(intMap.get(i)).generateEnemyGroups(i, round);
            }
            f11830y.clear();
            int i3 = 0;
            while (true) {
                Array<EnemyType> array = map.allowedEnemies;
                if (i3 >= array.size) {
                    break;
                }
                EnemyType enemyType = array.items[i3];
                int i4 = 0;
                while (true) {
                    Array<SpawnTile> array2 = map.spawnTiles;
                    if (i4 < array2.size) {
                        if (array2.items[i4].isEnemyAllowedOnWave(enemyType, i)) {
                            z = true;
                            break;
                        }
                        i4++;
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    f11830y.add(enemyType);
                }
                i3++;
            }
            Wave generateWave = Game.f8589i.waveManager.generateWave(i, round, j, f11830y);
            if (generateWave == null) {
                return null;
            }
            return generateWave.enemyGroups;
        } else if (intMap != null && intMap.containsKey(i)) {
            return Game.f8589i.waveManager.createBossWaveProcessor(intMap.get(i)).generateEnemyGroups(i, i2);
        } else {
            int i5 = i - 1;
            if (i5 >= predefinedWaveTemplateArr.length) {
                return null;
            }
            return Game.f8589i.waveManager.generateWave(i, i2, predefinedWaveTemplateArr[i5]).enemyGroups;
        }
    }

    public static float getDifficultWavesMultiplier(int i, int[] iArr) {
        int i2;
        float f;
        double d;
        double pow;
        double d2;
        double d3;
        float f2 = 1.0f;
        int i3 = 1;
        while (true) {
            i2 = 3;
            if (i3 > i) {
                break;
            }
            while (true) {
                if (i2 < 0) {
                    break;
                }
                int i4 = iArr[i2];
                if (i4 != 0 && i3 > i4) {
                    if (i2 == 0) {
                        d2 = f2;
                        d3 = 0.01d;
                        Double.isNaN(d2);
                    } else if (i2 == 1) {
                        d2 = f2;
                        d3 = 0.02d;
                        Double.isNaN(d2);
                    } else {
                        if (i2 == 2) {
                            d = f2;
                            pow = (StrictMath.pow(i3 - iArr[2], 1.15d) * 0.004d) + 0.03d;
                            Double.isNaN(d);
                        } else {
                            d = f2;
                            pow = (StrictMath.pow(i3 - iArr[2], 1.15d) * 0.005d) + 0.04d;
                            Double.isNaN(d);
                        }
                        f2 = (float) (d + pow);
                    }
                    f2 = (float) (d2 + d3);
                } else {
                    i2--;
                }
            }
            i3++;
        }
        while (true) {
            f = 0.04f;
            if (i2 < 0) {
                break;
            }
            int i5 = iArr[i2];
            if (i5 != 0 && i > i5) {
                if (i2 != 0) {
                    f = i2 == 1 ? 0.035f : i2 == 2 ? 0.025f : 0.015f;
                }
            } else {
                i2--;
            }
        }
        float sin = PMath.sin(i + 90) * f;
        if (sin < 0.0f) {
            return f2 + (sin * f2);
        }
        return f2;
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    public boolean allWavesSpawned() {
        return this.status == Status.ENDED;
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f11832a = null;
        this.wave = null;
        this.f11833b.clear();
        this.listeners.clear();
        Arrays.fill(this.nextWavesCache, (Object) null);
        this.predefinedWaveTemplates = null;
        f11829x.clear();
        super.dispose();
    }

    public void freezeTimeToNextWave(float f) {
        if (f < 0.0f) {
            this.f11836p = 0.0f;
        } else {
            this.f11836p += f;
        }
    }

    public int getCompletedWavesCount() {
        return this.f11837q;
    }

    public int[] getDifficultyGrowWaves() {
        return this.f11842v;
    }

    public int getForceWaveBonus() {
        return this.f11839s;
    }

    public int getImpossibleWaveNumber() {
        int i = this.f11842v[3];
        if (i < 5) {
            return 1500;
        }
        return (int) (i * 2.0f);
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Wave";
    }

    public float getTimeToNextWave() {
        return this.f11841u;
    }

    public WaveGenerator getWaveGenerator() {
        return this.f11843w;
    }

    public float getWaveStartInterval() {
        return this.f8844S.gameValue.getFloatValue(GameValueType.WAVE_INTERVAL);
    }

    public boolean isAutoForceWaveEnabled() {
        return this.autoForceWaveEnabled;
    }

    public boolean isForceWaveAvailable() {
        return this.f11838r;
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        setStatus(Status.NOT_STARTED);
    }

    public void setBossWaves(IntMap<BossType> intMap) {
        this.bossWaves = intMap;
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        GameSystemProvider gameSystemProvider = this.f8844S;
        gameSystemProvider.enemy.listeners.add(new _EnemySystemListener(gameSystemProvider));
    }

    public static Array<Enemy> getEnemiesToSpawn(float f, Array<EnemyGroup.SpawnEnemyGroup> array) {
        f11829x.clear();
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            EnemyGroup.SpawnEnemyGroup spawnEnemyGroup = array.items[i2];
            int spawnCountByTime = spawnEnemyGroup.getSpawnCountByTime(f);
            if (spawnCountByTime > spawnEnemyGroup.getSpawnedCount()) {
                for (int i3 = 0; i3 < spawnCountByTime - spawnEnemyGroup.getSpawnedCount(); i3++) {
                    Enemy obtain = Game.f8589i.enemyManager.getFactory(spawnEnemyGroup.type).obtain();
                    obtain.setMaxHealth(spawnEnemyGroup.health);
                    obtain.bounty = spawnEnemyGroup.bounty;
                    obtain.setKillExp(spawnEnemyGroup.killExp);
                    obtain.killScore = spawnEnemyGroup.killScore;
                    obtain.setSpeed(spawnEnemyGroup.speed);
                    obtain.setHealth(spawnEnemyGroup.health);
                    if (Game.f8589i.enemyManager.getMainEnemyType(obtain.type) == EnemyType.BOSS) {
                        obtain.ignorePathfinding = true;
                    }
                    f11829x.add(obtain);
                }
                spawnEnemyGroup.addSpawnedCount(spawnCountByTime - spawnEnemyGroup.getSpawnedCount());
            }
        }
        return f11829x;
    }

    public static void main(String[] strArr) {
        int[][] iArr = {new int[]{1001, 100, 15, 24, 39, 58}, new int[]{1002, 100, 21, 34, 45, 63}, new int[]{1003, 100, 19, 29, 40, 64}, new int[]{1004, 100, 20, 32, 41, 60}, new int[]{1005, 100, 18, 33, 43, 68}, new int[]{1006, 100, 19, 31, 41, 69}, new int[]{1007, 100, 20, 27, 39, 60}, new int[]{1008, 100, 21, 35, 45, 71}};
        for (int i = 0; i < 8; i++) {
            int[] iArr2 = iArr[i];
            int i2 = iArr2[5];
            int i3 = iArr2[4];
            float difficultWavesMultiplier = getDifficultWavesMultiplier(i2, new int[]{iArr2[2], iArr2[3], i3, (int) (i3 * 1.75f)});
            PrintStream printStream = System.out;
            printStream.println(iArr2[0] + ": " + MathUtils.round(iArr2[1] * difficultWavesMultiplier));
        }
    }

    /* renamed from: a */
    public final WaveCache m20871a(int i) {
        Wave generateWave;
        boolean z;
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        float difficultWavesMultiplier = getDifficultWavesMultiplier(i, this.f11842v);
        int round = MathUtils.round(this.f8844S.gameState.averageDifficulty * difficultWavesMultiplier);
        if (this.mode == Mode.ENDLESS) {
            IntMap<BossType> intMap = this.bossWaves;
            if (intMap != null && intMap.containsKey(i)) {
                generateWave = Game.f8589i.waveManager.generateBossWaveWithProcessor(this.bossWaves.get(i), this.f8844S, i, round);
            } else {
                WaveTemplates.WaveTemplate waveTemplate = this.f11832a;
                if (waveTemplate != null) {
                    generateWave = Game.f8589i.waveManager.generateWave(waveTemplate, i, round);
                } else {
                    f11830y.clear();
                    for (int i2 = 0; i2 < this.f8844S.map.getMap().allowedEnemies.size; i2++) {
                        EnemyType enemyType = this.f8844S.map.getMap().allowedEnemies.items[i2];
                        int i3 = 0;
                        while (true) {
                            if (i3 < this.f8844S.map.getMap().spawnTiles.size) {
                                if (this.f8844S.map.getMap().spawnTiles.items[i3].isEnemyAllowedOnWave(enemyType, i)) {
                                    z = true;
                                    break;
                                }
                                i3++;
                            } else {
                                z = false;
                                break;
                            }
                        }
                        if (z) {
                            f11830y.add(enemyType);
                        }
                    }
                    ObjectSet<EnemyType> objectSet = f11830y;
                    if (objectSet.size != 0) {
                        generateWave = Game.f8589i.waveManager.generateWave(i, round, this.f8844S.gameState.getSeed(), objectSet);
                    }
                    generateWave = null;
                }
            }
        } else {
            IntMap<BossType> intMap2 = this.bossWaves;
            if (intMap2 != null && intMap2.containsKey(i)) {
                GameSystemProvider gameSystemProvider = this.f8844S;
                generateWave = Game.f8589i.waveManager.generateBossWaveWithProcessor(this.bossWaves.get(i), gameSystemProvider, i, gameSystemProvider.gameState.averageDifficulty);
            } else {
                int i4 = i - 1;
                WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr = this.predefinedWaveTemplates;
                if (i4 < predefinedWaveTemplateArr.length) {
                    generateWave = Game.f8589i.waveManager.generateWave(i, this.f8844S.gameState.averageDifficulty, predefinedWaveTemplateArr[i4]);
                }
                generateWave = null;
            }
        }
        Wave wave = generateWave;
        WaveCache waveCache = new WaveCache();
        waveCache.waveNumber = i;
        WaveGenerator waveGenerator = this.f11843w;
        if (waveGenerator == null) {
            waveCache.wave = wave;
        } else {
            waveCache.wave = waveGenerator.generate(i, wave, this.f8844S, difficultWavesMultiplier, round);
        }
        return waveCache;
    }

    /* renamed from: b */
    public final Wave m20870b() {
        if (this.status == null) {
            return null;
        }
        m20869c(false);
        return this.nextWavesCache[0].wave;
    }

    /* renamed from: c */
    public final void m20869c(boolean z) {
        int i;
        int i2;
        boolean z2;
        Wave wave;
        int i3;
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        int i4 = 0;
        while (true) {
            if (i4 >= 10) {
                break;
            }
            WaveCache[] waveCacheArr = this.nextWavesCache;
            WaveCache waveCache = waveCacheArr[i4];
            Wave wave2 = this.wave;
            if (wave2 != null) {
                i3 = wave2.waveNumber + i4 + 1;
            } else {
                i3 = i4 + 1;
            }
            if (this.mode == Mode.PREDEFINED && i3 > this.predefinedWaveTemplates.length) {
                waveCacheArr[i4] = new WaveCache();
                this.nextWavesCache[i4].waveNumber = i3;
            } else if (z || waveCache == null || waveCache.waveNumber < i3) {
                if (i4 != 9) {
                    WaveCache waveCache2 = waveCacheArr[i4 + 1];
                    waveCacheArr[i4] = waveCache2;
                    if (waveCache2 == null) {
                        waveCacheArr[i4] = m20871a(i3);
                    }
                } else {
                    waveCacheArr[i4] = m20871a(i3);
                }
            }
            i4++;
        }
        Wave wave3 = this.wave;
        if (wave3 != null) {
            i2 = wave3.waveNumber;
        } else {
            i2 = 0;
        }
        if (this.f8844S.map.getMap() != null) {
            Array<SpawnTile> array = this.f8844S.map.getMap().spawnTiles;
            if (z) {
                z2 = false;
                break;
            }
            Array.ArrayIterator<SpawnTile> it = array.iterator();
            while (it.hasNext()) {
                if (it.next().enemySpawnQueuesFirstWave != i2) {
                    z2 = false;
                    break;
                }
            }
            z2 = true;
            if (!z2) {
                this.f8844S.gameState.checkGameplayUpdateAllowed();
                int i5 = 0;
                for (i = 10; i5 <= i; i = 10) {
                    Array.ArrayIterator<SpawnTile> it2 = array.iterator();
                    while (it2.hasNext()) {
                        it2.next().enemySpawnQueues.get(i5).clear();
                    }
                    if (i2 + i5 != 0) {
                        if (i5 == 0) {
                            wave = this.wave;
                        } else {
                            WaveCache waveCache3 = this.nextWavesCache[i5 - 1];
                            if (waveCache3 == null) {
                                wave = null;
                            } else {
                                wave = waveCache3.wave;
                            }
                        }
                        if (wave != null) {
                            Array.ArrayIterator<EnemyGroup> it3 = wave.enemyGroups.iterator();
                            while (it3.hasNext()) {
                                EnemyGroup next = it3.next();
                                EnemyType mainEnemyType = Game.f8589i.enemyManager.getMainEnemyType(next.type);
                                f11831z.clear();
                                if (wave.enemiesCanBeSplitBetweenSpawns) {
                                    Array.ArrayIterator<SpawnTile> it4 = array.iterator();
                                    while (it4.hasNext()) {
                                        SpawnTile next2 = it4.next();
                                        if (next2.isEnemyAllowedOnWave(mainEnemyType, wave.waveNumber)) {
                                            f11831z.add(next2);
                                        }
                                    }
                                } else {
                                    Array.ArrayIterator<SpawnTile> it5 = array.iterator();
                                    while (true) {
                                        if (!it5.hasNext()) {
                                            break;
                                        }
                                        SpawnTile next3 = it5.next();
                                        if (next3.isEnemyAllowedOnWave(mainEnemyType, wave.waveNumber)) {
                                            f11831z.add(next3);
                                            break;
                                        }
                                    }
                                }
                                int i6 = f11831z.size;
                                if (i6 == 0) {
                                    Logger.error("WaveSystem", "nowhere to spawn enemy group of type " + next.type.name());
                                } else {
                                    int i7 = next.count / i6;
                                    if (i7 < 1) {
                                        i7 = 1;
                                    }
                                    int i8 = 0;
                                    int i9 = 0;
                                    while (true) {
                                        Array<SpawnTile> array2 = f11831z;
                                        int i10 = array2.size;
                                        if (i8 >= i10) {
                                            break;
                                        }
                                        if (i8 == i10 - 1) {
                                            i7 += next.count % i10;
                                        }
                                        if (i7 != 0) {
                                            SpawnTile spawnTile = array2.items[i8];
                                            EnemyGroup.SpawnEnemyGroup createSpawnPortion = next.createSpawnPortion(i7);
                                            createSpawnPortion.health *= spawnTile.difficulty * 0.01f;
                                            spawnTile.enemySpawnQueues.get(i5).add(createSpawnPortion);
                                            i9 += i7;
                                            if (i9 >= next.count) {
                                                break;
                                            }
                                        }
                                        i8++;
                                    }
                                    if (i9 != next.count) {
                                        Logger.error("WaveSystem", "placed " + i9 + "/" + next.count + " enemies to spawns");
                                    }
                                }
                            }
                        }
                    }
                    i5++;
                }
                Array.ArrayIterator<SpawnTile> it6 = array.iterator();
                while (it6.hasNext()) {
                    it6.next().enemySpawnQueuesFirstWave = i2;
                }
            }
        }
        f11831z.clear();
    }

    public void resetNextWavesCache() {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        Arrays.fill(this.nextWavesCache, (Object) null);
    }

    public void setAutoForceWaveEnabled(boolean z) {
        String str;
        if (this.f8844S.gameValue.getBooleanValue(GameValueType.AUTO_WAVE_CALL) && this.autoForceWaveEnabled != z) {
            StringBuilder sb = new StringBuilder();
            sb.append("auto force wave ");
            if (z) {
                str = "enabled";
            } else {
                str = "disabled";
            }
            sb.append(str);
            Logger.log("WaveSystem", sb.toString());
            this.autoForceWaveEnabled = z;
            if (z && this.f11838r) {
                forceNextWaveAction();
            }
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).forceWaveAvailabilityChanged();
            }
            this.listeners.end();
        }
    }

    public void setDifficultyGrowWaves(int i, int i2, int i3) {
        int[] iArr = this.f11842v;
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = i3;
        iArr[3] = (int) (i3 * 1.75f);
    }

    public void setForcedTemplate(String str) {
        WaveTemplates.WaveTemplate waveTemplate;
        WaveTemplates.WaveTemplate[] waveTemplateArr = WaveTemplates.WAVE_TEMPLATES;
        int length = waveTemplateArr.length;
        int i = 0;
        while (true) {
            if (i < length) {
                waveTemplate = waveTemplateArr[i];
                if (waveTemplate.getWaveName().equals(str)) {
                    break;
                }
                i++;
            } else {
                waveTemplate = null;
                break;
            }
        }
        if (waveTemplate != null) {
            this.f11832a = waveTemplate;
            resetNextWavesCache();
            m20869c(true);
            return;
        }
        throw new IllegalArgumentException("Forced wave template '" + this.f11832a + "' not found");
    }

    public void setStatus(Status status) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        Status status2 = this.status;
        this.status = status;
        if (status == Status.SPAWNED) {
            this.f11835k = 0.0f;
        }
        m20869c(false);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).statusChanged(status2);
        }
        this.listeners.end();
    }

    public void setWaveGenerator(WaveGenerator waveGenerator) {
        this.f11843w = waveGenerator;
        resetNextWavesCache();
        m20869c(true);
    }

    public void startNextWave() {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        Wave m20870b = m20870b();
        if (m20870b != null) {
            this.wavesToNotifyAboutCompletion.add(m20870b);
            this.wave = m20870b;
            m20870b.started = true;
            this.f11834d = 0.0f;
            setStatus(Status.SPAWNING);
            WaveProcessor waveProcessor = this.wave.waveProcessor;
            if (waveProcessor != null) {
                this.f11833b.add(waveProcessor);
            }
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).waveStarted();
            }
            this.listeners.end();
            return;
        }
        throw new IllegalStateException("There's no next wave, current status is " + this.status.name());
    }

    public void stopSpawningCurrentWave(Tower tower, DamageType damageType) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (this.status == Status.SPAWNING) {
            Array<SpawnTile> array = this.f8844S.map.getMap().spawnTiles;
            for (int i = 0; i < array.size; i++) {
                SpawnTile spawnTile = array.get(i);
                for (int i2 = 0; i2 < spawnTile.enemySpawnQueues.get(0).size; i2++) {
                    Array.ArrayIterator<Enemy> it = getEnemiesToSpawn(9001.0f, spawnTile.enemySpawnQueues.get(0)).iterator();
                    while (it.hasNext()) {
                        Enemy next = it.next();
                        next.spawnTile = spawnTile;
                        Wave wave = this.wave;
                        next.wave = wave;
                        if (wave.enemiesCanHaveRandomSideShifts && next.canHaveRandomSideShift()) {
                            this.f8844S.enemy.register(next);
                        } else {
                            this.f8844S.enemy.register(next, 5);
                        }
                        this.f8844S.map.spawnEnemy(next);
                        next.setPosition(next.graphPath.getPosition(next.passedTiles, next.sideShiftIndex));
                        this.f8844S.enemy.killEnemy(next, tower, damageType, null, null);
                    }
                }
            }
            Logger.log("WaveSystem", "stopped spawning current wave");
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        DelayedRemovalArray<WaveProcessor> delayedRemovalArray;
        float f2;
        Wave wave;
        Wave wave2;
        int i;
        DelayedRemovalArray<Wave> delayedRemovalArray2;
        Wave wave3;
        DelayedRemovalArray<Wave> delayedRemovalArray3;
        int i2;
        boolean z;
        this.f11834d += f;
        StateSystem.ActionsArray currentUpdateActions = this.f8844S.gameState.getCurrentUpdateActions();
        boolean z2 = true;
        if (currentUpdateActions != null) {
            int i3 = 0;
            while (true) {
                if (i3 >= currentUpdateActions.size) {
                    break;
                } else if (currentUpdateActions.actions[i3].getType() == ActionType.CW && m20870b() != null) {
                    if (this.f11838r) {
                        if (this.status != Status.NOT_STARTED) {
                            z = true;
                        } else {
                            z = false;
                        }
                        float timeToNextWave = getTimeToNextWave();
                        int forceWaveBonus = getForceWaveBonus();
                        int i4 = (int) (this.f11840t * 50.0f);
                        if (z) {
                            this.f8844S.gameState.addScore(i4, StatisticsType.SG_WCA);
                            this.f8844S.gameState.addMoney(forceWaveBonus, true);
                            this.f8844S.statistics.addStatistic(StatisticsType.CG_WC, forceWaveBonus);
                        }
                        startNextWave();
                        if (z) {
                            this.listeners.begin();
                            int size = this.listeners.size();
                            for (int i5 = 0; i5 < size; i5++) {
                                this.listeners.get(i5).nextWaveForced(forceWaveBonus, i4, timeToNextWave);
                            }
                            this.listeners.end();
                        }
                    }
                } else {
                    i3++;
                }
            }
        }
        this.f11833b.begin();
        int i6 = 0;
        while (true) {
            delayedRemovalArray = this.f11833b;
            if (i6 >= delayedRemovalArray.size) {
                break;
            }
            delayedRemovalArray.items[i6].update(f);
            if (this.f11833b.items[i6].isDone()) {
                this.f11833b.removeIndex(i6);
            }
            i6++;
        }
        delayedRemovalArray.end();
        Array<SpawnTile> array = this.f8844S.map.getMap().spawnTiles;
        int i7 = 0;
        for (int i8 = 0; i8 < array.size; i8++) {
            SpawnTile spawnTile = array.get(i8);
            for (int i9 = 0; i9 < spawnTile.enemySpawnQueues.get(0).size; i9++) {
                EnemyGroup.SpawnEnemyGroup spawnEnemyGroup = spawnTile.enemySpawnQueues.get(0).get(i9);
                i7 += spawnEnemyGroup.count - spawnEnemyGroup.getSpawnedCount();
            }
        }
        Status status = this.status;
        if (status == Status.SPAWNING) {
            if (i7 == 0) {
                if (m20870b() != null) {
                    setStatus(Status.SPAWNED);
                } else {
                    setStatus(Status.ENDED);
                }
            } else {
                for (int i10 = 0; i10 < array.size; i10++) {
                    SpawnTile spawnTile2 = array.get(i10);
                    for (int i11 = 0; i11 < spawnTile2.enemySpawnQueues.get(0).size; i11++) {
                        Array.ArrayIterator<Enemy> it = getEnemiesToSpawn(this.f11834d, spawnTile2.enemySpawnQueues.get(0)).iterator();
                        while (it.hasNext()) {
                            Enemy next = it.next();
                            EnemySystem enemySystem = this.f8844S.enemy;
                            if (this.wave.enemiesCanHaveRandomSideShifts && next.canHaveRandomSideShift()) {
                                i2 = -1;
                            } else {
                                i2 = 5;
                            }
                            enemySystem.addEnemy(next, spawnTile2, i2, this.wave, 0.0f);
                        }
                    }
                }
            }
        } else if (status == Status.SPAWNED) {
            float f3 = this.f11836p;
            if (f3 == 0.0f) {
                int i12 = 0;
                while (true) {
                    DelayedRemovalArray<Ability> delayedRemovalArray4 = this.f8844S.ability.activeAbilities;
                    f2 = 1.0f;
                    if (i12 >= delayedRemovalArray4.size) {
                        break;
                    }
                    Ability ability = delayedRemovalArray4.items[i12];
                    if (ability.type == AbilityType.OVERLOAD) {
                        f2 = 1.0f + ((float) (((OverloadAbility) ability).enemiesSpeedGV.value * 0.009999999776482582d));
                        break;
                    }
                    i12++;
                }
                this.f11835k += f * f2;
            } else {
                float f4 = f3 - f;
                this.f11836p = f4;
                if (f4 < 0.0f) {
                    this.f11836p = 0.0f;
                }
            }
            if (getTimeToNextWave() == 0.0f && this.f8844S.gameState.difficultyMode != DifficultyMode.EASY && m20870b() != null) {
                startNextWave();
            }
        }
        if (this.wave != null && this.f8844S.gameState.getHealth() > 0 && this.f11837q < this.wave.waveNumber) {
            DelayedRemovalArray<Wave> delayedRemovalArray5 = f11828A;
            delayedRemovalArray5.clear();
            delayedRemovalArray5.addAll(this.wavesToNotifyAboutCompletion);
            if (this.status == Status.SPAWNING) {
                i = this.wave.waveNumber;
                int i13 = 0;
                while (true) {
                    DelayedRemovalArray<Wave> delayedRemovalArray6 = f11828A;
                    if (i13 >= delayedRemovalArray6.size) {
                        break;
                    } else if (delayedRemovalArray6.items[i13].waveNumber == this.wave.waveNumber) {
                        delayedRemovalArray6.removeIndex(i13);
                        break;
                    } else {
                        i13++;
                    }
                }
            } else {
                i = this.wave.waveNumber + 1;
            }
            int i14 = 0;
            while (true) {
                DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray7 = this.f8844S.map.spawnedEnemies;
                if (i14 >= delayedRemovalArray7.size) {
                    break;
                }
                Enemy enemy = delayedRemovalArray7.items[i14].enemy;
                if (enemy != null && (wave3 = enemy.wave) != null) {
                    int i15 = wave3.waveNumber;
                    if (i15 < i) {
                        i = i15;
                    }
                    f11828A.begin();
                    int i16 = 0;
                    while (true) {
                        delayedRemovalArray3 = f11828A;
                        if (i16 >= delayedRemovalArray3.size) {
                            break;
                        } else if (delayedRemovalArray3.items[i16].waveNumber == enemy.wave.waveNumber) {
                            delayedRemovalArray3.removeIndex(i16);
                            break;
                        } else {
                            i16++;
                        }
                    }
                    delayedRemovalArray3.end();
                }
                i14++;
            }
            int i17 = i - 1;
            if (i17 > this.f11837q) {
                this.f11837q = i17;
            }
            int i18 = 0;
            while (true) {
                delayedRemovalArray2 = f11828A;
                if (i18 >= delayedRemovalArray2.size) {
                    break;
                }
                Wave wave4 = delayedRemovalArray2.items[i18];
                wave4.completed = true;
                this.wavesToNotifyAboutCompletion.begin();
                int i19 = 0;
                while (true) {
                    DelayedRemovalArray<Wave> delayedRemovalArray8 = this.wavesToNotifyAboutCompletion;
                    if (i19 >= delayedRemovalArray8.size) {
                        break;
                    } else if (delayedRemovalArray8.items[i19].waveNumber == wave4.waveNumber) {
                        delayedRemovalArray8.removeIndex(i19);
                        break;
                    } else {
                        i19++;
                    }
                }
                this.wavesToNotifyAboutCompletion.end();
                this.listeners.begin();
                int size2 = this.listeners.size();
                for (int i20 = 0; i20 < size2; i20++) {
                    this.listeners.get(i20).waveCompleted(wave4);
                }
                this.listeners.end();
                i18++;
            }
            delayedRemovalArray2.clear();
        }
        boolean z3 = this.f11838r;
        if (m20870b() == null) {
            this.f11838r = false;
        } else {
            Status status2 = this.status;
            if (status2 == Status.NOT_STARTED) {
                this.f11838r = true;
            } else if (status2 == Status.SPAWNED) {
                if (this.wave != null) {
                    if (getCompletedWavesCount() < this.wave.waveNumber - 5) {
                        this.f11838r = false;
                    } else {
                        this.f11838r = true;
                    }
                } else {
                    throw new IllegalStateException("wave object not set while status is SPAWNED");
                }
            } else {
                this.f11838r = false;
            }
        }
        if (m20870b() == null) {
            this.f11841u = 0.0f;
        } else if (this.status == Status.SPAWNED) {
            float waveStartInterval = getWaveStartInterval();
            WaveProcessor waveProcessor = this.wave.waveProcessor;
            if (waveProcessor != null) {
                waveStartInterval *= waveProcessor.getNextWaveDelayMultiplier();
            }
            float f5 = waveStartInterval - this.f11835k;
            if (f5 < 0.0f) {
                this.f11841u = 0.0f;
            } else {
                this.f11841u = f5;
            }
        } else {
            this.f11841u = 0.0f;
        }
        if (this.status == Status.SPAWNED) {
            if (this.f11838r) {
                float waveStartInterval2 = (this.f11841u / getWaveStartInterval()) * ((wave2.killedEnemiesBountySum * 0.8f) + (this.wave.enemiesSumBounty * 0.2f)) * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.FORCED_WAVE_BONUS));
                this.f11840t = waveStartInterval2;
                this.f11839s = (int) StrictMath.ceil(waveStartInterval2);
            } else {
                this.f11839s = 0;
            }
        } else {
            this.f11839s = 0;
        }
        if (this.f11838r && isAutoForceWaveEnabled() && (wave = this.wave) != null && wave.killedEnemiesCount >= 1) {
            int i21 = 0;
            while (true) {
                DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray9 = this.f8844S.map.spawnedEnemies;
                if (i21 < delayedRemovalArray9.size) {
                    Enemy enemy2 = delayedRemovalArray9.items[i21].enemy;
                    if (enemy2 != null && enemy2.type != EnemyType.GENERIC && !enemy2.ignoredByAutoWaveCall) {
                        break;
                    }
                    i21++;
                } else {
                    z2 = false;
                    break;
                }
            }
            if (!z2) {
                forceNextWaveAction();
            }
        }
        if (this.f11838r != z3) {
            if (isAutoForceWaveEnabled() && this.f11838r && Game.f8589i.settingsManager.isInstantAutoWaveCallEnabled()) {
                forceNextWaveAction();
            }
            this.listeners.begin();
            int size3 = this.listeners.size();
            for (int i22 = 0; i22 < size3; i22++) {
                this.listeners.get(i22).forceWaveAvailabilityChanged();
            }
            this.listeners.end();
        }
    }

    public void forceNextWaveAction() {
        if (isForceWaveAvailable()) {
            this.f8844S.gameState.pushAction(new CallWaveAction());
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11832a = (WaveTemplates.WaveTemplate) kryo.readClassAndObject(input);
        this.mode = (Mode) kryo.readObject(input, Mode.class);
        this.status = (Status) kryo.readObjectOrNull(input, Status.class);
        this.wave = (Wave) kryo.readClassAndObject(input);
        this.f11833b = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f11834d = input.readFloat();
        this.f11835k = input.readFloat();
        this.f11836p = input.readFloat();
        this.nextWavesCache = (WaveCache[]) kryo.readObject(input, WaveCache[].class);
        this.wavesToNotifyAboutCompletion = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f11837q = input.readVarInt(true);
        this.f11838r = input.readBoolean();
        this.f11839s = input.readVarInt(true);
        this.f11840t = input.readFloat();
        this.f11841u = input.readFloat();
        this.f11842v = (int[]) kryo.readObject(input, int[].class);
        this.predefinedWaveTemplates = (WaveTemplates.PredefinedWaveTemplate[]) kryo.readClassAndObject(input);
        this.bossWaves = (IntMap) kryo.readObjectOrNull(input, IntMap.class);
        this.f11843w = (WaveGenerator) kryo.readClassAndObject(input);
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.f11832a);
        kryo.writeObject(output, this.mode);
        kryo.writeObjectOrNull(output, this.status, Status.class);
        kryo.writeClassAndObject(output, this.wave);
        kryo.writeObject(output, this.f11833b);
        output.writeFloat(this.f11834d);
        output.writeFloat(this.f11835k);
        output.writeFloat(this.f11836p);
        kryo.writeObject(output, this.nextWavesCache);
        kryo.writeObject(output, this.wavesToNotifyAboutCompletion);
        output.writeVarInt(this.f11837q, true);
        output.writeBoolean(this.f11838r);
        output.writeVarInt(this.f11839s, true);
        output.writeFloat(this.f11840t);
        output.writeFloat(this.f11841u);
        kryo.writeObject(output, this.f11842v);
        kryo.writeClassAndObject(output, this.predefinedWaveTemplates);
        kryo.writeObjectOrNull(output, this.bossWaves, IntMap.class);
        kryo.writeClassAndObject(output, this.f11843w);
        kryo.writeObject(output, this.listeners);
    }
}
