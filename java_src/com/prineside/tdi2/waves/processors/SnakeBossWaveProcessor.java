package com.prineside.tdi2.waves.processors;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.WaveProcessor;
import com.prineside.tdi2.enemies.bosses.SnakeBossHeadEnemy;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.managers.WaveManager;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.utils.EntityUtils;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class SnakeBossWaveProcessor extends WaveProcessor implements KryoSerializable {

    /* renamed from: a */
    public Wave f15216a;

    /* renamed from: b */
    public Enemy.EnemyReference f15217b;

    /* renamed from: d */
    public Array<Enemy.EnemyReference> f15218d;

    /* renamed from: k */
    public int f15219k;

    /* renamed from: p */
    public int f15220p;

    /* renamed from: q */
    public boolean f15221q;

    /* renamed from: r */
    public GameSystemProvider f15222r;

    /* renamed from: s */
    public _MapSystemListener f15223s;

    /* renamed from: t */
    public _EnemySystemListener f15224t;

    /* loaded from: classes2.dex */
    public static class SnakeBossWaveProcessorFactory extends WaveProcessor.WaveProcessorFactory<SnakeBossWaveProcessor> {
        public SnakeBossWaveProcessorFactory() {
            super(BossType.SNAKE);
        }

        @Override // com.prineside.tdi2.WaveProcessor.WaveProcessorFactory
        public SnakeBossWaveProcessor create() {
            return new SnakeBossWaveProcessor();
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public SnakeBossWaveProcessor f15225a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 768679001;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f15225a = (SnakeBossWaveProcessor) kryo.readObjectOrNull(input, SnakeBossWaveProcessor.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f15225a, SnakeBossWaveProcessor.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            if (enemy.wave == this.f15225a.f15216a && enemy.type == EnemyType.SNAKE_BOSS_HEAD) {
                this.f15225a.f15222r.wave.stopSpawningCurrentWave(tower, damageType);
                for (int i = this.f15225a.f15218d.size - 1; i >= 0; i--) {
                    Enemy enemy2 = ((Enemy.EnemyReference[]) this.f15225a.f15218d.items)[i].enemy;
                    if (enemy2 != null && enemy2 != enemy) {
                        this.f15225a.f15222r.enemy.killEnemy(enemy2, tower, damageType, ability, projectile);
                    }
                }
            }
        }

        public _EnemySystemListener(SnakeBossWaveProcessor snakeBossWaveProcessor) {
            this.f15225a = snakeBossWaveProcessor;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public SnakeBossWaveProcessor f15226a;

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 918800009;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f15226a = (SnakeBossWaveProcessor) kryo.readObjectOrNull(input, SnakeBossWaveProcessor.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f15226a, SnakeBossWaveProcessor.class);
        }

        @Deprecated
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void enemyDespawnedFromMap(Enemy enemy) {
            if (enemy.wave == this.f15226a.f15216a) {
                SnakeBossWaveProcessor.m19778f(this.f15226a);
                if (enemy == this.f15226a.f15217b.enemy) {
                    this.f15226a.f15217b = Enemy.EnemyReference.NULL;
                }
                for (int i = 0; i < this.f15226a.f15218d.size; i++) {
                    if (((Enemy.EnemyReference[]) this.f15226a.f15218d.items)[i].enemy == enemy) {
                        this.f15226a.f15218d.removeIndex(i);
                        return;
                    }
                }
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void enemySpawnedOnMap(Enemy enemy) {
            if (enemy.wave == this.f15226a.f15216a) {
                Enemy.EnemyReference reference = this.f15226a.f15222r.enemy.getReference(enemy);
                this.f15226a.f15218d.add(reference);
                if (enemy.type == EnemyType.SNAKE_BOSS_HEAD) {
                    this.f15226a.f15217b = reference;
                }
            }
        }

        public _MapSystemListener(SnakeBossWaveProcessor snakeBossWaveProcessor) {
            this.f15226a = snakeBossWaveProcessor;
        }
    }

    /* renamed from: f */
    public static /* synthetic */ int m19778f(SnakeBossWaveProcessor snakeBossWaveProcessor) {
        int i = snakeBossWaveProcessor.f15220p;
        snakeBossWaveProcessor.f15220p = i + 1;
        return i;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public boolean isDone() {
        return this.f15221q;
    }

    public SnakeBossWaveProcessor() {
        this.f15217b = Enemy.EnemyReference.NULL;
        this.f15218d = new Array<>(true, 8, Enemy.EnemyReference.class);
        this.f15220p = 0;
        this.f15221q = false;
    }

    /* renamed from: g */
    public final void m19777g() {
        this.f15222r.map.listeners.remove(this.f15223s);
        this.f15222r.enemy.listeners.remove(this.f15224t);
        this.f15222r = null;
        this.f15217b = Enemy.EnemyReference.NULL;
        this.f15218d.clear();
        this.f15216a = null;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public Array<EnemyGroup> generateEnemyGroups(int i, int i2) {
        Array<EnemyGroup> array = new Array<>();
        float waveValue = WaveManager.getWaveValue(i, i2);
        int floor = MathUtils.floor((((float) StrictMath.pow(i, 0.85d)) / 6.0f) + 10.0f);
        float calculateDefaultBossWaveCoinsSum = WaveProcessor.calculateDefaultBossWaveCoinsSum(i);
        float calculateDefaultBossWaveExpSum = WaveProcessor.calculateDefaultBossWaveExpSum(i);
        float calculateDefaultBossWaveScoreSum = WaveProcessor.calculateDefaultBossWaveScoreSum(i);
        float f = calculateDefaultBossWaveCoinsSum * 0.5f;
        float f2 = floor;
        float f3 = f / f2;
        float f4 = (calculateDefaultBossWaveExpSum * 0.7f) / f2;
        int round = StrictMath.round((calculateDefaultBossWaveScoreSum * 0.7f) / f2);
        double d = waveValue;
        Double.isNaN(d);
        float pow = ((((float) StrictMath.pow(d * 10.0d, 1.28d)) * 0.1f) + 8.0f) * 2.9f;
        float f5 = (pow / 3.0f) * (20.0f / f2);
        array.add(new EnemyGroup(EnemyType.SNAKE_BOSS_HEAD, 1.0f, pow, 1, 0.0f, 0.0f, f, calculateDefaultBossWaveExpSum * 0.3f, (int) (0.3f * calculateDefaultBossWaveScoreSum)));
        if (floor > 1) {
            array.add(new EnemyGroup(EnemyType.SNAKE_BOSS_BODY, 1.0f, f5, floor - 1, 0.37f, 0.37f, f3, f4, round));
        }
        array.add(new EnemyGroup(EnemyType.SNAKE_BOSS_TAIL, 1.0f, f5 * 2.0f, 1, f2 * 0.37f, 0.0f, f3, f4, round));
        return array;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f15216a = (Wave) kryo.readObjectOrNull(input, Wave.class);
        this.f15217b = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
        this.f15218d = (Array) kryo.readObject(input, Array.class);
        this.f15219k = input.readVarInt(true);
        this.f15220p = input.readVarInt(true);
        this.f15221q = input.readBoolean();
        this.f15222r = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        this.f15223s = (_MapSystemListener) kryo.readObjectOrNull(input, _MapSystemListener.class);
        this.f15224t = (_EnemySystemListener) kryo.readObjectOrNull(input, _EnemySystemListener.class);
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public Wave setup(GameSystemProvider gameSystemProvider, int i, int i2) {
        this.f15222r = gameSystemProvider;
        Array<EnemyGroup> generateEnemyGroups = generateEnemyGroups(i, i2);
        this.f15219k = 0;
        for (int i3 = 0; i3 < generateEnemyGroups.size; i3++) {
            this.f15219k += generateEnemyGroups.get(i3).count;
        }
        this.f15219k--;
        Wave wave = new Wave(i, i2, generateEnemyGroups);
        this.f15216a = wave;
        wave.enemiesCanBeSplitBetweenSpawns = false;
        wave.enemiesCanHaveRandomSideShifts = false;
        wave.waveMessage = Game.f8589i.localeManager.i18n.get("enemy_name_SNAKE_BOSS_HEAD");
        this.f15216a.waveProcessor = this;
        if (this.f15223s == null) {
            this.f15223s = new _MapSystemListener();
            this.f15224t = new _EnemySystemListener();
        }
        gameSystemProvider.map.listeners.add(this.f15223s);
        gameSystemProvider.enemy.listeners.add(this.f15224t);
        return this.f15216a;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public void update(float f) {
        if (this.f15221q) {
            return;
        }
        EntityUtils.removeNullRefs(this.f15218d);
        int i = 1;
        if (this.f15218d.size == 0 && this.f15216a.isFullySpawned()) {
            this.f15221q = true;
            m19777g();
            return;
        }
        Enemy enemy = this.f15217b.enemy;
        if (enemy == null) {
            int i2 = 0;
            while (true) {
                Array<Enemy.EnemyReference> array = this.f15218d;
                if (i2 < array.size) {
                    array.items[i2].enemy.setSpeed(1.0f);
                    i2++;
                } else {
                    return;
                }
            }
        } else {
            SnakeBossHeadEnemy snakeBossHeadEnemy = (SnakeBossHeadEnemy) enemy;
            float f2 = snakeBossHeadEnemy.defaultMinSpeed;
            int i3 = this.f15220p;
            int i4 = this.f15219k;
            float f3 = f2 + ((i3 / i4) * (snakeBossHeadEnemy.defaultMaxSpeed - f2));
            snakeBossHeadEnemy.damageResistance = 1.0f - (i3 / i4);
            int i5 = 1;
            float f4 = 0.0f;
            while (true) {
                Array<Enemy.EnemyReference> array2 = this.f15218d;
                if (i5 >= array2.size) {
                    break;
                }
                Enemy.EnemyReference[] enemyReferenceArr = array2.items;
                float f5 = (enemyReferenceArr[i5 - 1].enemy.passedTiles - enemyReferenceArr[i5].enemy.passedTiles) - 0.37f;
                if (f5 > 0.0f) {
                    f4 += f5;
                }
                i5++;
            }
            float f6 = f3 - f4;
            float f7 = snakeBossHeadEnemy.defaultMinSpeed;
            if (f6 < f7 * 0.5f) {
                f6 = f7 * 0.5f;
            }
            snakeBossHeadEnemy.setSpeed(f6);
            while (true) {
                Array<Enemy.EnemyReference> array3 = this.f15218d;
                if (i < array3.size) {
                    Enemy.EnemyReference[] enemyReferenceArr2 = array3.items;
                    Enemy enemy2 = enemyReferenceArr2[i].enemy;
                    Enemy enemy3 = enemyReferenceArr2[i - 1].enemy;
                    enemy2.setSpeed(f3);
                    float f8 = enemy3.passedTiles;
                    if (f8 - enemy2.passedTiles < 0.37f) {
                        float f9 = f8 - 0.37f;
                        enemy2.passedTiles = f9;
                        if (f9 < 0.0f) {
                            enemy2.passedTiles = 0.0f;
                        }
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.f15216a, Wave.class);
        kryo.writeObject(output, this.f15217b);
        kryo.writeObject(output, this.f15218d);
        output.writeVarInt(this.f15219k, true);
        output.writeVarInt(this.f15220p, true);
        output.writeBoolean(this.f15221q);
        kryo.writeObjectOrNull(output, this.f15222r, GameSystemProvider.class);
        kryo.writeObjectOrNull(output, this.f15223s, _MapSystemListener.class);
        kryo.writeObjectOrNull(output, this.f15224t, _EnemySystemListener.class);
    }
}
