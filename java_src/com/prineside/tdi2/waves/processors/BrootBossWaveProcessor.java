package com.prineside.tdi2.waves.processors;

import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.WaveProcessor;
import com.prineside.tdi2.enemies.bosses.BrootEnemy;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.managers.WaveManager;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BrootBossWaveProcessor extends WaveProcessor implements KryoSerializable {

    /* renamed from: a */
    public Wave f15178a;

    /* renamed from: b */
    public Enemy.EnemyReference f15179b;

    /* renamed from: d */
    public boolean f15180d;

    /* renamed from: k */
    public _MapSystemListener f15181k;

    /* renamed from: p */
    public _EnemySystemListener f15182p;

    /* renamed from: q */
    public GameSystemProvider f15183q;

    /* loaded from: classes2.dex */
    public static class BrootBossWaveProcessorFactory extends WaveProcessor.WaveProcessorFactory<BrootBossWaveProcessor> {
        public BrootBossWaveProcessorFactory() {
            super(BossType.BROOT);
        }

        @Override // com.prineside.tdi2.WaveProcessor.WaveProcessorFactory
        public BrootBossWaveProcessor create() {
            return new BrootBossWaveProcessor();
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public BrootBossWaveProcessor f15184a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 5438790;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f15184a = (BrootBossWaveProcessor) kryo.readObjectOrNull(input, BrootBossWaveProcessor.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f15184a, BrootBossWaveProcessor.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyTakeDamage(Enemy enemy, float f, Tower tower, DamageType damageType, Projectile projectile) {
            if (this.f15184a.f15179b != null && enemy == this.f15184a.f15179b.enemy) {
                BrootEnemy brootEnemy = (BrootEnemy) enemy;
                if (brootEnemy.getHealth() / brootEnemy.maxHealth < 0.25f && !brootEnemy.wasInRage()) {
                    brootEnemy.startRage();
                }
                if (brootEnemy.isInRage()) {
                    float health = enemy.getHealth() + (f * 1.5f);
                    float f2 = enemy.maxHealth;
                    if (health > f2) {
                        health = f2;
                    }
                    enemy.setHealth(health);
                    brootEnemy.healthRestoredWithDamage();
                }
            }
        }

        public _EnemySystemListener(BrootBossWaveProcessor brootBossWaveProcessor) {
            this.f15184a = brootBossWaveProcessor;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public BrootBossWaveProcessor f15185a;

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 338800009;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f15185a = (BrootBossWaveProcessor) kryo.readObjectOrNull(input, BrootBossWaveProcessor.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f15185a, BrootBossWaveProcessor.class);
        }

        @Deprecated
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void enemySpawnedOnMap(Enemy enemy) {
            if (enemy.wave == this.f15185a.f15178a) {
                BrootBossWaveProcessor brootBossWaveProcessor = this.f15185a;
                brootBossWaveProcessor.f15179b = brootBossWaveProcessor.f15183q.enemy.getReference(enemy);
            }
        }

        public _MapSystemListener(BrootBossWaveProcessor brootBossWaveProcessor) {
            this.f15185a = brootBossWaveProcessor;
        }
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public float getNextWaveDelayMultiplier() {
        return 3.0f;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public boolean isDone() {
        return this.f15180d;
    }

    public BrootBossWaveProcessor() {
        this.f15180d = false;
    }

    /* renamed from: e */
    public final void m19804e() {
        this.f15183q.map.listeners.remove(this.f15181k);
        this.f15183q.enemy.listeners.remove(this.f15182p);
        this.f15183q = null;
        Logger.log("BrootBossWaveProcessor", "Disposed");
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f15178a = (Wave) kryo.readObjectOrNull(input, Wave.class);
        this.f15179b = (Enemy.EnemyReference) kryo.readObjectOrNull(input, Enemy.EnemyReference.class);
        this.f15180d = input.readBoolean();
        this.f15181k = (_MapSystemListener) kryo.readObjectOrNull(input, _MapSystemListener.class);
        this.f15182p = (_EnemySystemListener) kryo.readObjectOrNull(input, _EnemySystemListener.class);
        this.f15183q = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public Wave setup(GameSystemProvider gameSystemProvider, int i, int i2) {
        this.f15183q = gameSystemProvider;
        Wave wave = new Wave(i, i2, generateEnemyGroups(i, i2));
        this.f15178a = wave;
        wave.enemiesCanBeSplitBetweenSpawns = false;
        wave.enemiesCanHaveRandomSideShifts = false;
        wave.waveMessage = Game.f8589i.localeManager.i18n.get("enemy_name_BROOT_BOSS");
        this.f15178a.waveProcessor = this;
        if (this.f15181k == null) {
            this.f15181k = new _MapSystemListener();
            this.f15182p = new _EnemySystemListener();
        }
        gameSystemProvider.map.listeners.add(this.f15181k);
        gameSystemProvider.enemy.listeners.add(this.f15182p);
        Logger.log("BrootBossWaveProcessor", "Setup");
        return this.f15178a;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public void update(float f) {
        Enemy.EnemyReference enemyReference;
        if (!this.f15180d && (enemyReference = this.f15179b) != null) {
            Enemy enemy = enemyReference.enemy;
            if (enemy == null) {
                this.f15180d = true;
                m19804e();
                return;
            }
            ((BrootEnemy) enemy).updateRageState(f);
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.f15178a, Wave.class);
        kryo.writeObjectOrNull(output, this.f15179b, Enemy.EnemyReference.class);
        output.writeBoolean(this.f15180d);
        kryo.writeObjectOrNull(output, this.f15181k, _MapSystemListener.class);
        kryo.writeObjectOrNull(output, this.f15182p, _EnemySystemListener.class);
        kryo.writeObjectOrNull(output, this.f15183q, GameSystemProvider.class);
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public Array<EnemyGroup> generateEnemyGroups(int i, int i2) {
        float calculateDefaultBossWaveCoinsSum = WaveProcessor.calculateDefaultBossWaveCoinsSum(i);
        float calculateDefaultBossWaveExpSum = WaveProcessor.calculateDefaultBossWaveExpSum(i);
        float calculateDefaultBossWaveScoreSum = WaveProcessor.calculateDefaultBossWaveScoreSum(i);
        Array<EnemyGroup> array = new Array<>();
        double waveValue = WaveManager.getWaveValue(i, i2);
        Double.isNaN(waveValue);
        array.add(new EnemyGroup(EnemyType.BROOT_BOSS, 0.4f, (((float) StrictMath.pow(waveValue * 10.0d, 1.3d)) * 1.45f) + 100.0f, 1, 0.0f, 0.0f, calculateDefaultBossWaveCoinsSum, calculateDefaultBossWaveExpSum, (int) calculateDefaultBossWaveScoreSum));
        return array;
    }
}
