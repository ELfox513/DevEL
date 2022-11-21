package com.prineside.tdi2.waves.processors;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.WaveProcessor;
import com.prineside.tdi2.buffs.RegenerationBuff;
import com.prineside.tdi2.enemies.bosses.MobchainBossCreepEnemy;
import com.prineside.tdi2.enemies.bosses.MobchainBossHeadEnemy;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.WaveManager;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.utils.EntityUtils;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MobchainBossWaveProcessor extends WaveProcessor implements KryoSerializable {

    /* renamed from: a */
    public Wave f15205a;

    /* renamed from: b */
    public Enemy.EnemyReference f15206b;

    /* renamed from: d */
    public Array<Enemy.EnemyReference> f15207d;

    /* renamed from: k */
    public int f15208k;

    /* renamed from: p */
    public Array<Enemy.EnemyReference> f15209p;

    /* renamed from: q */
    public boolean f15210q;

    /* renamed from: r */
    public GameSystemProvider f15211r;

    /* renamed from: s */
    public _MapSystemListener f15212s;

    /* renamed from: t */
    public _EnemySystemListener f15213t;

    /* loaded from: classes2.dex */
    public static class MobchainBossWaveProcessorFactory extends WaveProcessor.WaveProcessorFactory<MobchainBossWaveProcessor> {
        public MobchainBossWaveProcessorFactory() {
            super(BossType.MOBCHAIN);
        }

        @Override // com.prineside.tdi2.WaveProcessor.WaveProcessorFactory
        public MobchainBossWaveProcessor create() {
            return new MobchainBossWaveProcessor();
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public MobchainBossWaveProcessor f15214a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 768079001;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f15214a = (MobchainBossWaveProcessor) kryo.readObjectOrNull(input, MobchainBossWaveProcessor.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f15214a, MobchainBossWaveProcessor.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            if (enemy.wave == this.f15214a.f15205a && enemy.type == EnemyType.MOBCHAIN_BOSS_HEAD) {
                this.f15214a.f15211r.wave.stopSpawningCurrentWave(tower, damageType);
                for (int i = this.f15214a.f15207d.size - 1; i >= 0; i--) {
                    Enemy enemy2 = ((Enemy.EnemyReference[]) this.f15214a.f15207d.items)[i].enemy;
                    if (enemy2 != null && enemy2 != enemy) {
                        this.f15214a.f15211r.enemy.killEnemy(enemy2, tower, damageType, ability, projectile);
                    }
                }
            }
        }

        public _EnemySystemListener(MobchainBossWaveProcessor mobchainBossWaveProcessor) {
            this.f15214a = mobchainBossWaveProcessor;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public MobchainBossWaveProcessor f15215a;

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 915500009;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f15215a = (MobchainBossWaveProcessor) kryo.readObjectOrNull(input, MobchainBossWaveProcessor.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f15215a, MobchainBossWaveProcessor.class);
        }

        @Deprecated
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void enemyDespawnedFromMap(Enemy enemy) {
            float f;
            if (enemy.wave == this.f15215a.f15205a) {
                EnemyType enemyType = enemy.type;
                if (enemyType != EnemyType.MOBCHAIN_BOSS_BODY && enemyType != EnemyType.MOBCHAIN_BOSS_HEAD) {
                    if (enemyType == EnemyType.MOBCHAIN_BOSS_CREEP) {
                        EntityUtils.removeByValue(this.f15215a.f15209p, enemy);
                        return;
                    }
                    return;
                }
                if (enemy == this.f15215a.f15206b.enemy) {
                    Logger.log("MobchainBossWaveProcessor", "head despawned");
                    this.f15215a.f15206b = Enemy.EnemyReference.NULL;
                    for (int i = this.f15215a.f15209p.size - 1; i >= 0; i--) {
                        Enemy enemy2 = ((Enemy.EnemyReference) this.f15215a.f15209p.get(i)).enemy;
                        if (enemy2 != null) {
                            this.f15215a.f15211r.enemy.killEnemy(enemy2, null, DamageType.BULLET, null, null);
                        }
                    }
                }
                EntityUtils.removeByValue(this.f15215a.f15207d, enemy);
                MobchainBossHeadEnemy mobchainBossHeadEnemy = (MobchainBossHeadEnemy) this.f15215a.f15206b.enemy;
                if (this.f15215a.f15207d.size == 1 && this.f15215a.f15208k == 0 && mobchainBossHeadEnemy != null) {
                    mobchainBossHeadEnemy.vulnerable = true;
                    Array array = new Array(TowerType.class);
                    for (int i2 = 0; i2 < this.f15215a.f15211r.tower.towers.size; i2++) {
                        Tower tower = this.f15215a.f15211r.tower.towers.items[i2];
                        TowerType towerType = tower.type;
                        if (towerType != TowerType.AIR && towerType != TowerType.FREEZING && !array.contains(towerType, true)) {
                            array.add(tower.type);
                        }
                    }
                    int i3 = 4;
                    if (array.size < 4) {
                        TowerType towerType2 = TowerType.BASIC;
                        if (!array.contains(towerType2, true)) {
                            array.add(towerType2);
                        }
                        TowerType towerType3 = TowerType.CANNON;
                        if (!array.contains(towerType3, true)) {
                            array.add(towerType3);
                        }
                        TowerType towerType4 = TowerType.SNIPER;
                        if (!array.contains(towerType4, true)) {
                            array.add(towerType4);
                        }
                        TowerType towerType5 = TowerType.MULTISHOT;
                        if (!array.contains(towerType5, true)) {
                            array.add(towerType5);
                        }
                    }
                    int floor = MathUtils.floor((((float) StrictMath.pow(this.f15215a.f15205a.waveNumber, 0.85d)) / 12.0f) + 2.0f);
                    if (floor <= 4) {
                        i3 = floor;
                    }
                    for (int i4 = 0; i4 < i3; i4++) {
                        TowerType towerType6 = ((TowerType[]) array.items)[this.f15215a.f15211r.gameState.randomInt(array.size)];
                        MobchainBossCreepEnemy mobchainBossCreepEnemy = (MobchainBossCreepEnemy) Game.f8589i.enemyManager.getFactory(EnemyType.MOBCHAIN_BOSS_CREEP).obtain();
                        mobchainBossCreepEnemy.setSpeed(0.5f);
                        float f2 = mobchainBossHeadEnemy.maxHealth * 0.1f;
                        mobchainBossCreepEnemy.maxHealth = f2;
                        mobchainBossCreepEnemy.setHealth(f2);
                        mobchainBossCreepEnemy.killScore = StrictMath.round(mobchainBossHeadEnemy.killScore * 0.1f);
                        mobchainBossCreepEnemy.bounty = 0.0f;
                        mobchainBossCreepEnemy.setKillExp(mobchainBossHeadEnemy.getKillExp() * 0.1f);
                        mobchainBossCreepEnemy.vulnerableTo = towerType6;
                        mobchainBossCreepEnemy.color = Game.f8589i.towerManager.getFactory(towerType6).getColor();
                        float f3 = (mobchainBossHeadEnemy.passedTiles - 0.5f) - (i4 * 0.5f);
                        if (f3 < 0.0f) {
                            f = 0.0f;
                        } else {
                            f = f3;
                        }
                        this.f15215a.f15211r.enemy.addEnemy(mobchainBossCreepEnemy, mobchainBossHeadEnemy.spawnTile, mobchainBossHeadEnemy.graphPath, -1, mobchainBossHeadEnemy.wave, f);
                    }
                }
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void enemySpawnedOnMap(Enemy enemy) {
            if (enemy.wave == this.f15215a.f15205a) {
                EnemyType enemyType = enemy.type;
                if (enemyType != EnemyType.MOBCHAIN_BOSS_BODY && enemyType != EnemyType.MOBCHAIN_BOSS_HEAD) {
                    if (enemyType == EnemyType.MOBCHAIN_BOSS_CREEP) {
                        this.f15215a.f15209p.add(this.f15215a.f15211r.enemy.getReference(enemy));
                        return;
                    }
                    return;
                }
                MobchainBossWaveProcessor.m19790c(this.f15215a);
                this.f15215a.f15207d.add(this.f15215a.f15211r.enemy.getReference(enemy));
                if (enemy.type == EnemyType.MOBCHAIN_BOSS_HEAD) {
                    MobchainBossWaveProcessor mobchainBossWaveProcessor = this.f15215a;
                    mobchainBossWaveProcessor.f15206b = mobchainBossWaveProcessor.f15211r.enemy.getReference(enemy);
                }
            }
        }

        public _MapSystemListener(MobchainBossWaveProcessor mobchainBossWaveProcessor) {
            this.f15215a = mobchainBossWaveProcessor;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ int m19790c(MobchainBossWaveProcessor mobchainBossWaveProcessor) {
        int i = mobchainBossWaveProcessor.f15208k;
        mobchainBossWaveProcessor.f15208k = i - 1;
        return i;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public boolean isDone() {
        return this.f15210q;
    }

    public MobchainBossWaveProcessor() {
        this.f15206b = Enemy.EnemyReference.NULL;
        this.f15207d = new Array<>(true, 8, Enemy.EnemyReference.class);
        this.f15209p = new Array<>(true, 8, Enemy.EnemyReference.class);
        this.f15210q = false;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public Array<EnemyGroup> generateEnemyGroups(int i, int i2) {
        Array<EnemyGroup> array = new Array<>(EnemyGroup.class);
        float waveValue = WaveManager.getWaveValue(i, i2);
        int floor = MathUtils.floor((((float) StrictMath.pow(i, 0.85d)) / 12.0f) + 4.0f);
        if (floor > 8) {
            floor = 8;
        }
        float calculateDefaultBossWaveCoinsSum = WaveProcessor.calculateDefaultBossWaveCoinsSum(i);
        float calculateDefaultBossWaveExpSum = WaveProcessor.calculateDefaultBossWaveExpSum(i);
        float calculateDefaultBossWaveScoreSum = WaveProcessor.calculateDefaultBossWaveScoreSum(i);
        float f = calculateDefaultBossWaveCoinsSum * 0.5f;
        float f2 = floor;
        int round = StrictMath.round((calculateDefaultBossWaveScoreSum * 0.7f) / f2);
        double d = waveValue;
        Double.isNaN(d);
        float pow = (((float) StrictMath.pow(d * 8.0d, 1.27d)) * 0.5f) + 30.0f;
        array.add(new EnemyGroup(EnemyType.MOBCHAIN_BOSS_HEAD, 0.8f, pow, 1, 0.0f, 0.0f, f, calculateDefaultBossWaveExpSum * 0.3f, (int) (0.3f * calculateDefaultBossWaveScoreSum)));
        array.add(new EnemyGroup(EnemyType.MOBCHAIN_BOSS_BODY, 0.8f, ((((0.2f * f2) + 1.0f) * pow) / f2) * 0.7f, floor - 1, 0.55f, 0.55f, f / f2, (calculateDefaultBossWaveExpSum * 0.7f) / f2, round));
        return array;
    }

    /* renamed from: i */
    public final void m19784i() {
        this.f15211r.map.listeners.remove(this.f15212s);
        this.f15211r.enemy.listeners.remove(this.f15213t);
        this.f15211r = null;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f15205a = (Wave) kryo.readObjectOrNull(input, Wave.class);
        this.f15206b = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
        this.f15207d = (Array) kryo.readObject(input, Array.class);
        this.f15208k = input.readVarInt(true);
        this.f15209p = (Array) kryo.readObject(input, Array.class);
        this.f15210q = input.readBoolean();
        this.f15211r = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        this.f15212s = (_MapSystemListener) kryo.readObjectOrNull(input, _MapSystemListener.class);
        this.f15213t = (_EnemySystemListener) kryo.readObjectOrNull(input, _EnemySystemListener.class);
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public Wave setup(GameSystemProvider gameSystemProvider, int i, int i2) {
        this.f15211r = gameSystemProvider;
        Array<EnemyGroup> generateEnemyGroups = generateEnemyGroups(i, i2);
        for (int i3 = 0; i3 < generateEnemyGroups.size; i3++) {
            this.f15208k += generateEnemyGroups.items[i3].count;
        }
        Wave wave = new Wave(i, i2, generateEnemyGroups);
        this.f15205a = wave;
        wave.enemiesCanBeSplitBetweenSpawns = false;
        wave.enemiesCanHaveRandomSideShifts = false;
        wave.waveMessage = Game.f8589i.localeManager.i18n.get("enemy_name_MOBCHAIN_BOSS_HEAD");
        this.f15205a.waveProcessor = this;
        if (this.f15212s == null) {
            this.f15212s = new _MapSystemListener();
            this.f15213t = new _EnemySystemListener();
        }
        gameSystemProvider.map.listeners.add(this.f15212s);
        gameSystemProvider.enemy.listeners.add(this.f15213t);
        return this.f15205a;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public void update(float f) {
        if (this.f15210q) {
            return;
        }
        EntityUtils.removeNullRefs(this.f15207d);
        EntityUtils.removeNullRefs(this.f15209p);
        int i = 1;
        if (this.f15207d.size == 0 && this.f15209p.size == 0 && this.f15205a.isFullySpawned()) {
            this.f15210q = true;
            Logger.log("MobchainBossWaveProcessor", "done");
            m19784i();
            return;
        }
        Enemy enemy = this.f15206b.enemy;
        if (enemy == null) {
            int i2 = 0;
            while (true) {
                Array<Enemy.EnemyReference> array = this.f15207d;
                if (i2 < array.size) {
                    array.items[i2].enemy.setSpeed(1.0f);
                    i2++;
                } else {
                    return;
                }
            }
        } else {
            int i3 = 1;
            float f2 = 0.0f;
            while (true) {
                Array<Enemy.EnemyReference> array2 = this.f15207d;
                if (i3 >= array2.size) {
                    break;
                }
                Enemy.EnemyReference[] enemyReferenceArr = array2.items;
                float f3 = (enemyReferenceArr[i3 - 1].enemy.passedTiles - enemyReferenceArr[i3].enemy.passedTiles) - 0.55f;
                if (f3 > 0.0f) {
                    f2 += f3;
                }
                i3++;
            }
            float f4 = 0.5f - f2;
            if (f4 < 0.2f) {
                f4 = 0.2f;
            }
            enemy.setSpeed(f4);
            while (true) {
                Array<Enemy.EnemyReference> array3 = this.f15207d;
                if (i >= array3.size) {
                    break;
                }
                Enemy.EnemyReference[] enemyReferenceArr2 = array3.items;
                Enemy enemy2 = enemyReferenceArr2[i].enemy;
                Enemy enemy3 = enemyReferenceArr2[i - 1].enemy;
                enemy2.setSpeed(0.5f);
                float f5 = enemy3.passedTiles;
                if (f5 - enemy2.passedTiles < 0.55f) {
                    float f6 = f5 - 0.55f;
                    enemy2.passedTiles = f6;
                    if (f6 < 0.0f) {
                        enemy2.passedTiles = 0.0f;
                    }
                }
                i++;
            }
            if (enemy.getHealth() < enemy.maxHealth * 0.5f) {
                DelayedRemovalArray[] delayedRemovalArrayArr = enemy.buffsByType;
                if (delayedRemovalArrayArr == null || delayedRemovalArrayArr[BuffType.REGENERATION.ordinal()].size == 0) {
                    Array<Enemy.EnemyReference> array4 = this.f15209p;
                    if (array4.size != 0) {
                        MobchainBossCreepEnemy mobchainBossCreepEnemy = (MobchainBossCreepEnemy) array4.first().enemy;
                        RegenerationBuff obtain = Game.f8589i.buffManager.f9699F.REGENERATION.obtain();
                        obtain.setup(0.75f, 7.5f, mobchainBossCreepEnemy.getHealth() * 0.75f, this.f15211r.enemy.getReference(mobchainBossCreepEnemy));
                        this.f15211r.buff.P_REGENERATION.addBuff(enemy, obtain);
                        this.f15211r.enemy.killEnemy(mobchainBossCreepEnemy, null, DamageType.BULLET, null, null);
                    }
                }
            }
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.f15205a, Wave.class);
        kryo.writeObject(output, this.f15206b);
        kryo.writeObject(output, this.f15207d);
        output.writeVarInt(this.f15208k, true);
        kryo.writeObject(output, this.f15209p);
        output.writeBoolean(this.f15210q);
        kryo.writeObjectOrNull(output, this.f15211r, GameSystemProvider.class);
        kryo.writeObjectOrNull(output, this.f15212s, _MapSystemListener.class);
        kryo.writeObjectOrNull(output, this.f15213t, _EnemySystemListener.class);
    }
}
