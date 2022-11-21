package com.prineside.tdi2.managers;

import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.UserMap;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.WaveProcessor;
import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.p036ui.shared.WavesTimelineOverlay;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.waves.processors.BrootBossWaveProcessor;
import com.prineside.tdi2.waves.processors.ConstructorBossWaveProcessor;
import com.prineside.tdi2.waves.processors.MetaphorBossWaveProcessor;
import com.prineside.tdi2.waves.processors.MobchainBossWaveProcessor;
import com.prineside.tdi2.waves.processors.SnakeBossWaveProcessor;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class WaveManager extends Manager.ManagerAdapter {
    public static final float ENEMY_INTERVAL_DENSITY_HIGH = 0.25f;
    public static final float ENEMY_INTERVAL_DENSITY_LOW = 1.0f;
    public static final int WAVES_TIMELINE_MAX_WAVE = 100;

    /* renamed from: a */
    public final RandomXS128 f10239a = new RandomXS128(1337);

    /* renamed from: b */
    public long f10240b = 1337;

    /* renamed from: d */
    public ObjectMap<BossType, WaveProcessor.WaveProcessorFactory> f10241d;

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<WaveManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public WaveManager read() {
            return Game.f8589i.waveManager;
        }
    }

    public static float getWaveValue(int i, int i2) {
        return i * i2 * 0.01f;
    }

    /* renamed from: a */
    public final float m21447a(int i, long j) {
        if (i >= 1) {
            this.f10239a.setSeed(j);
            for (int i2 = 0; i2 < i; i2++) {
                this.f10239a.nextFloat();
            }
            return this.f10239a.nextFloat();
        }
        throw new IllegalArgumentException("Wave number can't be < 1");
    }

    public WaveProcessor createBossWaveProcessor(BossType bossType) {
        return this.f10241d.get(bossType).create();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public Wave generateBossWaveWithProcessor(BossType bossType, GameSystemProvider gameSystemProvider, int i, int i2) {
        return this.f10241d.get(bossType).create().setup(gameSystemProvider, i, i2);
    }

    public Wave generateWave(int i, int i2, WaveTemplates.PredefinedWaveTemplate predefinedWaveTemplate) {
        Array array = new Array();
        for (EnemyGroup enemyGroup : predefinedWaveTemplate.enemyGroups) {
            array.add(enemyGroup.cpy());
        }
        Wave wave = new Wave(i, i2, array);
        wave.waveMessage = predefinedWaveTemplate.waveMessage;
        return wave;
    }

    public WavesTimelineOverlay.WavesConfiguration generateWavesTimelineConfiguration(BasicLevel basicLevel, Map map, int i) {
        Array<SpawnTile.AllowedEnemyConfig> array;
        boolean z;
        int i2;
        int i3 = i;
        if (i3 < 1) {
            i3 = 1;
        }
        if (i3 > 10000) {
            i3 = 10000;
        }
        WavesTimelineOverlay.WavesConfiguration wavesConfiguration = new WavesTimelineOverlay.WavesConfiguration();
        wavesConfiguration.startWave = i3;
        int i4 = 0;
        while (true) {
            Array<SpawnTile> array2 = map.spawnTiles;
            if (i4 >= array2.size) {
                break;
            }
            Array<SpawnTile.AllowedEnemyConfig> allowedEnemies = array2.items[i4].getAllowedEnemies();
            for (int i5 = 0; i5 < allowedEnemies.size; i5++) {
                SpawnTile.AllowedEnemyConfig allowedEnemyConfig = allowedEnemies.items[i5];
                int i6 = 0;
                while (true) {
                    array = wavesConfiguration.enemyConfigs;
                    if (i6 >= array.size) {
                        z = false;
                        break;
                    }
                    SpawnTile.AllowedEnemyConfig allowedEnemyConfig2 = array.items[i6];
                    if (allowedEnemyConfig2.enemyType == allowedEnemyConfig.enemyType) {
                        int i7 = allowedEnemyConfig.firstWave;
                        if (i7 < allowedEnemyConfig2.firstWave) {
                            allowedEnemyConfig2.firstWave = i7;
                        }
                        int i8 = allowedEnemyConfig2.lastWave;
                        if (i8 >= 1 && ((i2 = allowedEnemyConfig.lastWave) > i8 || i2 < 1)) {
                            allowedEnemyConfig2.lastWave = i2;
                        }
                        z = true;
                    } else {
                        i6++;
                    }
                }
                if (!z) {
                    array.add(new SpawnTile.AllowedEnemyConfig(allowedEnemyConfig.enemyType, allowedEnemyConfig.firstWave, allowedEnemyConfig.lastWave));
                }
            }
            i4++;
        }
        WaveSystem.Mode mode = basicLevel.enemyWaves == null ? WaveSystem.Mode.ENDLESS : WaveSystem.Mode.PREDEFINED;
        int averageDifficulty = map.getAverageDifficulty();
        wavesConfiguration.enemyGroupsByWave.add(new Array<>());
        int i9 = i3;
        while (i9 < i3 + 100) {
            int[] iArr = new int[4];
            for (int i10 = 0; i10 < 3; i10++) {
                iArr[i10] = basicLevel.getComplexityWaveMilestones()[i10];
            }
            iArr[3] = (int) (iArr[2] * 1.75f);
            int i11 = i9;
            Array<EnemyGroup> generateEnemyGroups = WaveSystem.generateEnemyGroups(i9, mode, iArr, averageDifficulty, map.getBossWaves(), map, basicLevel.seed, basicLevel.enemyWaves);
            if (generateEnemyGroups != null) {
                wavesConfiguration.enemyGroupsByWave.add(generateEnemyGroups);
            }
            i9 = i11 + 1;
        }
        return wavesConfiguration;
    }

    public WaveProcessor.WaveProcessorFactory getWaveProcessorFactory(BossType bossType) {
        return this.f10241d.get(bossType);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        for (BossType bossType : BossType.values) {
            this.f10241d.get(bossType).setup();
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
        EnemyType[] enemyTypeArr;
        int[] iArr = new int[20];
        int[] iArr2 = new int[20];
        int[] iArr3 = new int[20];
        for (int i = 0; i < 20; i++) {
            iArr[i] = FastRandom.getFairInt(HttpStatus.SC_OK) + 1;
            iArr2[i] = FastRandom.getFairInt(100000) + 1;
            iArr3[i] = FastRandom.getFairInt(451) + 50;
        }
        float[][] fArr = (float[][]) java.lang.reflect.Array.newInstance(Float.TYPE, 2, 20);
        for (int i2 = 0; i2 < 2; i2++) {
            for (int i3 = 0; i3 < 20; i3++) {
                fArr[i2][i3] = m21447a(iArr[i3], iArr2[i3]);
            }
        }
        for (int i4 = 0; i4 < 20; i4++) {
            if (fArr[0][i4] != fArr[1][i4]) {
                throw new GdxRuntimeException("Seed multiplier generator works incorrectly");
            }
        }
        Logger.log("WaveManager", "Seed multiplier generator works OK");
        Array array = new Array();
        int i5 = 0;
        for (int i6 = 20; i5 < i6; i6 = 20) {
            ObjectSet objectSet = new ObjectSet();
            Array array2 = new Array();
            for (EnemyType enemyType : EnemyType.values) {
                if (Game.f8589i.enemyManager.getMainEnemyType(enemyType) != EnemyType.BOSS && enemyType != EnemyType.ICY && enemyType != EnemyType.LIGHT && enemyType != EnemyType.TOXIC) {
                    array2.add(enemyType);
                }
            }
            array2.shuffle();
            int fairInt = FastRandom.getFairInt(array2.size);
            for (int i7 = 0; i7 < fairInt; i7++) {
                array2.pop();
            }
            objectSet.addAll(array2);
            array.add(objectSet);
            i5++;
        }
        Wave[][] waveArr = (Wave[][]) java.lang.reflect.Array.newInstance(Wave.class, 2, 20);
        for (int i8 = 0; i8 < 2; i8++) {
            for (int i9 = 0; i9 < 20; i9++) {
                waveArr[i8][i9] = generateWave(iArr[i9], iArr3[i9], iArr2[i9], (ObjectSet) array.get(i9));
            }
        }
        for (int i10 = 0; i10 < 20; i10++) {
            DelayedRemovalArray<EnemyGroup> delayedRemovalArray = waveArr[0][i10].enemyGroups;
            DelayedRemovalArray<EnemyGroup> delayedRemovalArray2 = waveArr[1][i10].enemyGroups;
            for (int i11 = 0; i11 < delayedRemovalArray.size; i11++) {
                EnemyGroup enemyGroup = delayedRemovalArray.get(i11);
                EnemyGroup enemyGroup2 = delayedRemovalArray2.get(i11);
                float fairFloat = (FastRandom.getFairFloat() * 5.0f) + 0.1f;
                if (enemyGroup.count != enemyGroup2.count || enemyGroup.getSpawnedCount() != enemyGroup2.getSpawnedCount() || enemyGroup.killScore != enemyGroup2.killScore || enemyGroup.killExp != enemyGroup2.killExp || enemyGroup.bounty != enemyGroup2.bounty || enemyGroup.delay != enemyGroup2.delay || enemyGroup.health != enemyGroup2.health || enemyGroup.interval != enemyGroup2.interval || enemyGroup.speed != enemyGroup2.speed || enemyGroup.type != enemyGroup2.type || enemyGroup.getSpawnCountByTime(fairFloat) != enemyGroup2.getSpawnCountByTime(fairFloat)) {
                    throw new GdxRuntimeException("Wave generator works incorrectly");
                }
            }
        }
        Logger.log("WaveManager", "Wave generation works OK");
    }

    public WaveManager() {
        ObjectMap<BossType, WaveProcessor.WaveProcessorFactory> objectMap = new ObjectMap<>();
        this.f10241d = objectMap;
        objectMap.put(BossType.SNAKE, new SnakeBossWaveProcessor.SnakeBossWaveProcessorFactory());
        this.f10241d.put(BossType.BROOT, new BrootBossWaveProcessor.BrootBossWaveProcessorFactory());
        this.f10241d.put(BossType.CONSTRUCTOR, new ConstructorBossWaveProcessor.ConstructorBossWaveProcessorFactory());
        this.f10241d.put(BossType.MOBCHAIN, new MobchainBossWaveProcessor.MobchainBossWaveProcessorFactory());
        this.f10241d.put(BossType.METAPHOR, new MetaphorBossWaveProcessor.MetaphorBossWaveProcessorFactory());
        for (BossType bossType : BossType.values) {
            if (!this.f10241d.containsKey(bossType)) {
                throw new RuntimeException("Not all wave processor factories created");
            }
        }
        Logger.log("WaveManager", "loaded");
    }

    public Wave generateWave(int i, int i2, long j, ObjectSet<EnemyType> objectSet) {
        WaveTemplates.WaveTemplate[] waveTemplateArr;
        WaveTemplates.WaveTemplate waveTemplate;
        boolean z;
        float waveValue = getWaveValue(i, i2);
        float m21447a = m21447a(i, j);
        Array array = new Array();
        int i3 = 0;
        for (WaveTemplates.WaveTemplate waveTemplate2 : WaveTemplates.WAVE_TEMPLATES) {
            WaveTemplates.EnemyGroupConfig[] enemyGroupConfigs = waveTemplate2.getEnemyGroupConfigs();
            int length = enemyGroupConfigs.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    z = true;
                    break;
                } else if (!objectSet.contains(enemyGroupConfigs[i4].getEnemyType())) {
                    z = false;
                    break;
                } else {
                    i4++;
                }
            }
            if (z) {
                int probability = waveTemplate2.getProbability(i, i2, waveValue);
                waveTemplate2.currentProbability = probability;
                i3 += probability;
                if (probability >= 100) {
                    array.add(waveTemplate2);
                }
            } else {
                waveTemplate2.currentProbability = 0;
            }
        }
        int i5 = (int) (m21447a * i3);
        if (array.size != 0) {
            Array.ArrayIterator it = array.iterator();
            waveTemplate = null;
            while (it.hasNext()) {
                WaveTemplates.WaveTemplate waveTemplate3 = (WaveTemplates.WaveTemplate) it.next();
                if (waveTemplate == null || waveTemplate3.currentProbability > waveTemplate.currentProbability) {
                    waveTemplate = waveTemplate3;
                }
            }
        } else {
            WaveTemplates.WaveTemplate[] waveTemplateArr2 = WaveTemplates.WAVE_TEMPLATES;
            int length2 = waveTemplateArr2.length;
            int i6 = 0;
            while (true) {
                if (i6 >= length2) {
                    waveTemplate = null;
                    break;
                }
                WaveTemplates.WaveTemplate waveTemplate4 = waveTemplateArr2[i6];
                i5 -= waveTemplate4.currentProbability;
                if (i5 < 0) {
                    waveTemplate = waveTemplate4;
                    break;
                }
                i6++;
            }
        }
        if (waveTemplate == null) {
            return null;
        }
        return generateWave(waveTemplate, i, i2);
    }

    public Wave generateWave(WaveTemplates.WaveTemplate waveTemplate, int i, int i2) {
        WaveTemplates.EnemyGroupConfig[] enemyGroupConfigs;
        float waveValue = getWaveValue(i, i2);
        Array array = new Array();
        for (WaveTemplates.EnemyGroupConfig enemyGroupConfig : waveTemplate.getEnemyGroupConfigs()) {
            float f = i2;
            array.add(new EnemyGroup(enemyGroupConfig.getEnemyType(), enemyGroupConfig.getSpeed(i, f, waveValue), enemyGroupConfig.getHealth(i, f, waveValue), enemyGroupConfig.getCount(i, f, waveValue), enemyGroupConfig.getDelay(i, f, waveValue), enemyGroupConfig.getInterval(i, f, waveValue), enemyGroupConfig.getBounty(i, f, waveValue), enemyGroupConfig.getKillExp(i, f, waveValue), enemyGroupConfig.getKillScore(i, f, waveValue)));
        }
        Wave wave = new Wave(i, i2, array);
        wave.waveMessage = waveTemplate.getWaveMessage();
        return wave;
    }

    public WavesTimelineOverlay.WavesConfiguration generateWavesTimelineConfiguration(UserMap userMap, Map map, int i, IntMap<BossType> intMap) {
        Array<SpawnTile.AllowedEnemyConfig> array;
        boolean z;
        int i2;
        int i3 = i;
        if (i3 < 1) {
            i3 = 1;
        }
        if (i3 > 10000) {
            i3 = 10000;
        }
        WavesTimelineOverlay.WavesConfiguration wavesConfiguration = new WavesTimelineOverlay.WavesConfiguration();
        wavesConfiguration.startWave = i3;
        int i4 = 0;
        while (true) {
            Array<SpawnTile> array2 = map.spawnTiles;
            if (i4 >= array2.size) {
                break;
            }
            Array<SpawnTile.AllowedEnemyConfig> allowedEnemies = array2.items[i4].getAllowedEnemies();
            for (int i5 = 0; i5 < allowedEnemies.size; i5++) {
                SpawnTile.AllowedEnemyConfig allowedEnemyConfig = allowedEnemies.items[i5];
                int i6 = 0;
                while (true) {
                    array = wavesConfiguration.enemyConfigs;
                    if (i6 >= array.size) {
                        z = false;
                        break;
                    }
                    SpawnTile.AllowedEnemyConfig allowedEnemyConfig2 = array.items[i6];
                    if (allowedEnemyConfig2.enemyType == allowedEnemyConfig.enemyType) {
                        int i7 = allowedEnemyConfig.firstWave;
                        if (i7 < allowedEnemyConfig2.firstWave) {
                            allowedEnemyConfig2.firstWave = i7;
                        }
                        int i8 = allowedEnemyConfig2.lastWave;
                        if (i8 >= 1 && ((i2 = allowedEnemyConfig.lastWave) > i8 || i2 < 1)) {
                            allowedEnemyConfig2.lastWave = i2;
                        }
                        z = true;
                    } else {
                        i6++;
                    }
                }
                if (!z) {
                    array.add(new SpawnTile.AllowedEnemyConfig(allowedEnemyConfig.enemyType, allowedEnemyConfig.firstWave, allowedEnemyConfig.lastWave));
                }
            }
            i4++;
        }
        WaveSystem.Mode mode = WaveSystem.Mode.ENDLESS;
        int averageDifficulty = map.getAverageDifficulty();
        wavesConfiguration.enemyGroupsByWave.add(new Array<>());
        int generateSeed = map.generateSeed();
        int[] complexityWaveMilestones = map.getComplexityWaveMilestones();
        int i9 = i3;
        while (i9 < i3 + 100) {
            int[] iArr = new int[4];
            for (int i10 = 0; i10 < 3; i10++) {
                iArr[i10] = complexityWaveMilestones[i10];
            }
            iArr[3] = (int) (iArr[2] * 1.75f);
            int i11 = i9;
            Array<EnemyGroup> generateEnemyGroups = WaveSystem.generateEnemyGroups(i9, mode, iArr, averageDifficulty, intMap, map, generateSeed, null);
            if (generateEnemyGroups != null) {
                wavesConfiguration.enemyGroupsByWave.add(generateEnemyGroups);
            }
            i9 = i11 + 1;
        }
        return wavesConfiguration;
    }
}
