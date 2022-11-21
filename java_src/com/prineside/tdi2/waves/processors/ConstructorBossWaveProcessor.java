package com.prineside.tdi2.waves.processors;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ObjectSet;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.WaveProcessor;
import com.prineside.tdi2.enemies.bosses.ConstructorBossEnemy;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.managers.WaveManager;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ConstructorBossWaveProcessor extends WaveProcessor implements KryoSerializable {

    /* renamed from: a */
    public Wave f15186a;

    /* renamed from: b */
    public Enemy.EnemyReference f15187b;

    /* renamed from: d */
    public boolean f15188d;

    /* renamed from: k */
    public Array<EnemyType> f15189k;

    /* renamed from: p */
    public Array<EnemyType> f15190p;

    /* renamed from: q */
    public GameSystemProvider f15191q;

    /* renamed from: r */
    public _MapSystemListener f15192r;

    /* loaded from: classes2.dex */
    public static class ConstructorBossWaveProcessorFactory extends WaveProcessor.WaveProcessorFactory<ConstructorBossWaveProcessor> {
        public ConstructorBossWaveProcessorFactory() {
            super(BossType.CONSTRUCTOR);
        }

        @Override // com.prineside.tdi2.WaveProcessor.WaveProcessorFactory
        public ConstructorBossWaveProcessor create() {
            return new ConstructorBossWaveProcessor();
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public ConstructorBossWaveProcessor f15193a;

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 448800009;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f15193a = (ConstructorBossWaveProcessor) kryo.readObjectOrNull(input, ConstructorBossWaveProcessor.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f15193a, ConstructorBossWaveProcessor.class);
        }

        @Deprecated
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void enemySpawnedOnMap(Enemy enemy) {
            if (enemy.wave == this.f15193a.f15186a && enemy.type == EnemyType.CONSTRUCTOR_BOSS && this.f15193a.f15187b == null) {
                this.f15193a.m19799e((ConstructorBossEnemy) enemy);
            }
        }

        public _MapSystemListener(ConstructorBossWaveProcessor constructorBossWaveProcessor) {
            this.f15193a = constructorBossWaveProcessor;
        }
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public float getNextWaveDelayMultiplier() {
        return 4.0f;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public boolean isDone() {
        return this.f15188d;
    }

    public ConstructorBossWaveProcessor() {
        this.f15188d = false;
        this.f15189k = new Array<>(EnemyType.class);
        this.f15190p = new Array<>(EnemyType.class);
    }

    /* renamed from: d */
    public final void m19800d() {
        this.f15191q.map.listeners.remove(this.f15192r);
        this.f15191q = null;
    }

    /* renamed from: e */
    public final void m19799e(ConstructorBossEnemy constructorBossEnemy) {
        this.f15187b = this.f15191q.enemy.getReference(constructorBossEnemy);
        constructorBossEnemy.processor = this;
        this.f15189k.clear();
        Array<SpawnTile.AllowedEnemyConfig> allowedEnemies = constructorBossEnemy.spawnTile.getAllowedEnemies();
        for (int i = 0; i < allowedEnemies.size; i++) {
            this.f15189k.add(allowedEnemies.items[i].enemyType);
        }
        for (int i2 = this.f15189k.size - 1; i2 >= 0; i2--) {
            EnemyType enemyType = this.f15189k.items[i2];
            if (enemyType == EnemyType.ARMORED || enemyType == EnemyType.HEALER || Game.f8589i.enemyManager.getMainEnemyType(enemyType) == EnemyType.BOSS) {
                this.f15189k.removeIndex(i2);
            }
        }
        if (this.f15189k.size == 0) {
            Logger.log("ConstructorBossWaveProcessor", "no normal enemy types allowed, fallback");
            this.f15189k.add(EnemyType.REGULAR);
            this.f15189k.add(EnemyType.FAST);
            this.f15189k.add(EnemyType.STRONG);
        }
        ObjectSet<EnemyType> allowedEnemiesSet = constructorBossEnemy.spawnTile.getAllowedEnemiesSet();
        EnemyType enemyType2 = EnemyType.HEALER;
        if (allowedEnemiesSet.contains(enemyType2)) {
            this.f15190p.add(enemyType2);
        }
        ObjectSet<EnemyType> allowedEnemiesSet2 = constructorBossEnemy.spawnTile.getAllowedEnemiesSet();
        EnemyType enemyType3 = EnemyType.ARMORED;
        if (allowedEnemiesSet2.contains(enemyType3)) {
            this.f15190p.add(enemyType3);
        }
        if (this.f15190p.size == 0) {
            Logger.log("ConstructorBossWaveProcessor", "no aura enemy types allowed, fallback");
            this.f15190p.addAll(this.f15189k);
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f15186a = (Wave) kryo.readObjectOrNull(input, Wave.class);
        this.f15187b = (Enemy.EnemyReference) kryo.readObjectOrNull(input, Enemy.EnemyReference.class);
        this.f15188d = input.readBoolean();
        this.f15189k = (Array) kryo.readObject(input, Array.class);
        this.f15190p = (Array) kryo.readObject(input, Array.class);
        this.f15191q = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        this.f15192r = (_MapSystemListener) kryo.readObjectOrNull(input, _MapSystemListener.class);
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public Wave setup(GameSystemProvider gameSystemProvider, int i, int i2) {
        this.f15191q = gameSystemProvider;
        Wave wave = new Wave(i, i2, generateEnemyGroups(i, i2));
        this.f15186a = wave;
        wave.enemiesCanBeSplitBetweenSpawns = false;
        wave.enemiesCanHaveRandomSideShifts = false;
        wave.waveMessage = Game.f8589i.localeManager.i18n.get("enemy_name_CONSTRUCTOR_BOSS");
        this.f15186a.waveProcessor = this;
        if (this.f15192r == null) {
            this.f15192r = new _MapSystemListener();
        }
        gameSystemProvider.map.listeners.add(this.f15192r);
        return this.f15186a;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public void update(float f) {
        Enemy.EnemyReference enemyReference;
        if (!this.f15188d && (enemyReference = this.f15187b) != null) {
            Enemy enemy = enemyReference.enemy;
            if (enemy == null) {
                this.f15188d = true;
                m19800d();
                return;
            }
            ConstructorBossEnemy constructorBossEnemy = (ConstructorBossEnemy) enemy;
            float health = constructorBossEnemy.getHealth() / constructorBossEnemy.maxHealth;
            if (health <= 0.75f && !constructorBossEnemy.groupSpawned75hp) {
                for (int i = 0; i < 3; i++) {
                    Array<EnemyType> array = this.f15189k;
                    Enemy obtain = Game.f8589i.enemyManager.getFactory(array.items[this.f15191q.gameState.randomInt(array.size)]).obtain();
                    obtain.setSpeed(0.6f);
                    float f2 = constructorBossEnemy.maxHealth * 0.05f;
                    obtain.maxHealth = f2;
                    obtain.setHealth(f2);
                    obtain.killScore = StrictMath.round(constructorBossEnemy.killScore * 0.027777778f);
                    obtain.bounty = StrictMath.round(constructorBossEnemy.bounty * 0.027777778f);
                    obtain.setKillExp(constructorBossEnemy.getKillExp() * 0.027777778f);
                    constructorBossEnemy.enemiesToSpawn.add(obtain);
                }
                constructorBossEnemy.groupSpawned75hp = true;
            }
            if (health <= 0.5f && !constructorBossEnemy.groupSpawned50hp) {
                for (int i2 = 0; i2 < 4; i2++) {
                    Array<EnemyType> array2 = this.f15189k;
                    Enemy obtain2 = Game.f8589i.enemyManager.getFactory(array2.items[this.f15191q.gameState.randomInt(array2.size)]).obtain();
                    obtain2.setSpeed((i2 * 0.05f) + 0.6f);
                    float f3 = constructorBossEnemy.maxHealth * 0.05f;
                    obtain2.maxHealth = f3;
                    obtain2.setHealth(f3);
                    obtain2.killScore = StrictMath.round(constructorBossEnemy.killScore * 0.027777778f);
                    obtain2.bounty = StrictMath.round(constructorBossEnemy.bounty * 0.027777778f);
                    obtain2.setKillExp(constructorBossEnemy.getKillExp() * 0.027777778f);
                    constructorBossEnemy.enemiesToSpawn.add(obtain2);
                }
                for (int i3 = 0; i3 < 1; i3++) {
                    Array<EnemyType> array3 = this.f15190p;
                    Enemy obtain3 = Game.f8589i.enemyManager.getFactory(array3.items[this.f15191q.gameState.randomInt(array3.size)]).obtain();
                    obtain3.setSpeed(0.65f);
                    float f4 = constructorBossEnemy.maxHealth * 0.07f;
                    obtain3.maxHealth = f4;
                    obtain3.setHealth(f4);
                    obtain3.killScore = StrictMath.round(constructorBossEnemy.killScore * 0.027777778f);
                    obtain3.bounty = StrictMath.round(constructorBossEnemy.bounty * 0.027777778f);
                    obtain3.setKillExp(constructorBossEnemy.getKillExp() * 0.027777778f);
                    constructorBossEnemy.enemiesToSpawn.add(obtain3);
                }
                constructorBossEnemy.groupSpawned50hp = true;
            }
            if (health <= 0.25f && !constructorBossEnemy.groupSpawned25hp) {
                for (int i4 = 0; i4 < 5; i4++) {
                    Array<EnemyType> array4 = this.f15189k;
                    Enemy obtain4 = Game.f8589i.enemyManager.getFactory(array4.items[this.f15191q.gameState.randomInt(array4.size)]).obtain();
                    obtain4.setSpeed((i4 * 0.05f) + 0.6f);
                    float f5 = constructorBossEnemy.maxHealth * 0.05f;
                    obtain4.maxHealth = f5;
                    obtain4.setHealth(f5);
                    obtain4.killScore = StrictMath.round(constructorBossEnemy.killScore * 0.027777778f);
                    obtain4.bounty = StrictMath.round(constructorBossEnemy.bounty * 0.027777778f);
                    obtain4.setKillExp(constructorBossEnemy.getKillExp() * 0.027777778f);
                    constructorBossEnemy.enemiesToSpawn.add(obtain4);
                }
                for (int i5 = 0; i5 < 2; i5++) {
                    Array<EnemyType> array5 = this.f15190p;
                    Enemy obtain5 = Game.f8589i.enemyManager.getFactory(array5.items[this.f15191q.gameState.randomInt(array5.size)]).obtain();
                    obtain5.setSpeed(0.65f);
                    float f6 = constructorBossEnemy.maxHealth * 0.07f;
                    obtain5.maxHealth = f6;
                    obtain5.setHealth(f6);
                    obtain5.killScore = StrictMath.round(constructorBossEnemy.killScore * 0.027777778f);
                    obtain5.bounty = StrictMath.round(constructorBossEnemy.bounty * 0.027777778f);
                    obtain5.setKillExp(constructorBossEnemy.getKillExp() * 0.027777778f);
                    constructorBossEnemy.enemiesToSpawn.add(obtain5);
                }
                constructorBossEnemy.groupSpawned25hp = true;
            }
            if (constructorBossEnemy.enemiesToSpawn.size != 0) {
                constructorBossEnemy.spawnDelayAfterTime = 0.0f;
                constructorBossEnemy.invulnerable = true;
                constructorBossEnemy.changeSpeedTo(0.0f, f);
                float f7 = constructorBossEnemy.spawnDelayBeforeTime;
                if (f7 < 0.2f) {
                    constructorBossEnemy.spawnDelayBeforeTime = f7 + f;
                    return;
                }
                float f8 = constructorBossEnemy.spawningTime + f;
                constructorBossEnemy.spawningTime = f8;
                if (f8 >= 0.75f) {
                    Enemy pop = constructorBossEnemy.enemiesToSpawn.pop();
                    pop.ignorePathfinding = true;
                    this.f15191q.enemy.addEnemy(pop, constructorBossEnemy.spawnTile, constructorBossEnemy.graphPath, 5, constructorBossEnemy.wave, constructorBossEnemy.passedTiles);
                    constructorBossEnemy.timeSinceCreepSpawn = 0.0f;
                    constructorBossEnemy.spawningTime = 0.0f;
                    return;
                }
                return;
            }
            constructorBossEnemy.spawnDelayBeforeTime = 0.0f;
            float f9 = constructorBossEnemy.spawnDelayAfterTime;
            if (f9 < 1.0f) {
                constructorBossEnemy.spawnDelayAfterTime = f9 + f;
                return;
            }
            constructorBossEnemy.invulnerable = false;
            constructorBossEnemy.changeSpeedTo(0.65f, f);
            if (constructorBossEnemy.passedTiles < constructorBossEnemy.graphPath.getLengthInTiles() * 0.5f) {
                float f10 = constructorBossEnemy.timeSinceCreepSpawn + f;
                constructorBossEnemy.timeSinceCreepSpawn = f10;
                if (f10 >= 5.0f) {
                    Enemy obtain6 = Game.f8589i.enemyManager.getFactory(EnemyType.REGULAR).obtain();
                    obtain6.setSpeed(1.0f);
                    float f11 = constructorBossEnemy.maxHealth * 0.05f;
                    obtain6.maxHealth = f11;
                    obtain6.setHealth(f11);
                    obtain6.killScore = StrictMath.round(constructorBossEnemy.killScore * 0.027777778f);
                    obtain6.bounty = StrictMath.round(constructorBossEnemy.bounty * 0.027777778f);
                    obtain6.setKillExp(constructorBossEnemy.getKillExp() * 0.027777778f);
                    constructorBossEnemy.enemiesToSpawn.add(obtain6);
                    Enemy obtain7 = Game.f8589i.enemyManager.getFactory(EnemyType.FAST).obtain();
                    obtain7.setSpeed(1.15f);
                    float f12 = constructorBossEnemy.maxHealth * 0.05f * 0.85f;
                    obtain7.maxHealth = f12;
                    obtain7.setHealth(f12);
                    obtain7.killScore = StrictMath.round(constructorBossEnemy.killScore * 0.027777778f);
                    obtain7.bounty = StrictMath.round(constructorBossEnemy.bounty * 0.027777778f);
                    obtain7.setKillExp(constructorBossEnemy.getKillExp() * 0.027777778f);
                    constructorBossEnemy.enemiesToSpawn.add(obtain7);
                    Enemy obtain8 = Game.f8589i.enemyManager.getFactory(EnemyType.STRONG).obtain();
                    obtain8.setSpeed(0.8f);
                    float f13 = constructorBossEnemy.maxHealth * 0.05f * 1.15f;
                    obtain8.maxHealth = f13;
                    obtain8.setHealth(f13);
                    obtain8.killScore = StrictMath.round(constructorBossEnemy.killScore * 0.027777778f);
                    obtain8.bounty = StrictMath.round(constructorBossEnemy.bounty * 0.027777778f);
                    obtain8.setKillExp(constructorBossEnemy.getKillExp() * 0.027777778f);
                    constructorBossEnemy.enemiesToSpawn.add(obtain8);
                    constructorBossEnemy.spawningTime = 0.0f;
                }
            }
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.f15186a, Wave.class);
        kryo.writeObjectOrNull(output, this.f15187b, Enemy.EnemyReference.class);
        output.writeBoolean(this.f15188d);
        kryo.writeObject(output, this.f15189k);
        kryo.writeObject(output, this.f15190p);
        kryo.writeObjectOrNull(output, this.f15191q, GameSystemProvider.class);
        kryo.writeObjectOrNull(output, this.f15192r, _MapSystemListener.class);
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public Array<EnemyGroup> generateEnemyGroups(int i, int i2) {
        float calculateDefaultBossWaveCoinsSum = WaveProcessor.calculateDefaultBossWaveCoinsSum(i);
        float calculateDefaultBossWaveExpSum = WaveProcessor.calculateDefaultBossWaveExpSum(i);
        float calculateDefaultBossWaveScoreSum = WaveProcessor.calculateDefaultBossWaveScoreSum(i);
        Array<EnemyGroup> array = new Array<>();
        double waveValue = WaveManager.getWaveValue(i, i2);
        Double.isNaN(waveValue);
        array.add(new EnemyGroup(EnemyType.CONSTRUCTOR_BOSS, 0.65f, (((float) StrictMath.pow(waveValue * 9.0d, 1.25d)) * 1.45f) + 100.0f, 1, 0.0f, 0.0f, calculateDefaultBossWaveCoinsSum * 0.75f, calculateDefaultBossWaveExpSum * 0.75f, (int) (calculateDefaultBossWaveScoreSum * 0.75f)));
        return array;
    }
}
