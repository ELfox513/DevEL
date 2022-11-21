package com.prineside.tdi2.waves.processors;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.WaveProcessor;
import com.prineside.tdi2.enemies.bosses.MetaphorBossCreepEnemy;
import com.prineside.tdi2.enemies.bosses.MetaphorBossEnemy;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.WaveManager;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.EntityUtils;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MetaphorBossWaveProcessor extends WaveProcessor implements KryoSerializable {

    /* renamed from: a */
    public Wave f15194a;

    /* renamed from: b */
    public Enemy.EnemyReference f15195b;

    /* renamed from: d */
    public Array<Enemy.EnemyReference> f15196d;

    /* renamed from: k */
    public boolean f15197k;

    /* renamed from: p */
    public Array<Tower> f15198p;

    /* renamed from: q */
    public Array<Tower> f15199q;

    /* renamed from: r */
    public GameSystemProvider f15200r;

    /* renamed from: s */
    public _MapSystemListener f15201s;

    /* renamed from: t */
    public _EnemySystemListener f15202t;

    /* loaded from: classes2.dex */
    public static class MetaphorBossWaveProcessorFactory extends WaveProcessor.WaveProcessorFactory<MetaphorBossWaveProcessor> {
        public MetaphorBossWaveProcessorFactory() {
            super(BossType.METAPHOR);
        }

        @Override // com.prineside.tdi2.WaveProcessor.WaveProcessorFactory
        public MetaphorBossWaveProcessor create() {
            return new MetaphorBossWaveProcessor();
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public MetaphorBossWaveProcessor f15203a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 80809010;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f15203a = (MetaphorBossWaveProcessor) kryo.readObjectOrNull(input, MetaphorBossWaveProcessor.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f15203a, MetaphorBossWaveProcessor.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            if (this.f15203a.f15195b != null && enemy == this.f15203a.f15195b.enemy) {
                for (int i = this.f15203a.f15196d.size - 1; i >= 0; i--) {
                    if (((Enemy.EnemyReference[]) this.f15203a.f15196d.items)[i].enemy != null) {
                        this.f15203a.f15200r.enemy.killEnemy(((Enemy.EnemyReference[]) this.f15203a.f15196d.items)[i].enemy, null, DamageType.BULLET, ability, projectile);
                    }
                }
            }
        }

        public _EnemySystemListener(MetaphorBossWaveProcessor metaphorBossWaveProcessor) {
            this.f15203a = metaphorBossWaveProcessor;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public MetaphorBossWaveProcessor f15204a;

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 431305509;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f15204a = (MetaphorBossWaveProcessor) kryo.readObjectOrNull(input, MetaphorBossWaveProcessor.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f15204a, MetaphorBossWaveProcessor.class);
        }

        @Deprecated
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void enemyDespawnedFromMap(Enemy enemy) {
            if (enemy.type == EnemyType.METAPHOR_BOSS_CREEP) {
                EntityUtils.removeByValue(this.f15204a.f15196d, enemy);
            }
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void enemySpawnedOnMap(Enemy enemy) {
            if (enemy.wave == this.f15204a.f15194a && enemy.type == EnemyType.METAPHOR_BOSS) {
                MetaphorBossWaveProcessor metaphorBossWaveProcessor = this.f15204a;
                metaphorBossWaveProcessor.f15195b = metaphorBossWaveProcessor.f15200r.enemy.getReference(enemy);
            } else if (enemy.wave == this.f15204a.f15194a && enemy.type == EnemyType.METAPHOR_BOSS_CREEP) {
                MetaphorBossCreepEnemy metaphorBossCreepEnemy = (MetaphorBossCreepEnemy) enemy;
                this.f15204a.f15196d.add(this.f15204a.f15200r.enemy.getReference(metaphorBossCreepEnemy));
                MetaphorBossCreepEnemy.Kind[] kindArr = MetaphorBossCreepEnemy.Kind.values;
                MetaphorBossCreepEnemy.Kind kind = kindArr[(this.f15204a.f15196d.size - 1) % kindArr.length];
                metaphorBossCreepEnemy.setKind(kind);
                if (kind == MetaphorBossCreepEnemy.Kind.HIGH_HP) {
                    float f = metaphorBossCreepEnemy.maxHealth * 3.0f;
                    metaphorBossCreepEnemy.setMaxHealth(f);
                    metaphorBossCreepEnemy.setHealth(f);
                } else if (kind == MetaphorBossCreepEnemy.Kind.LOW_HP) {
                    float f2 = metaphorBossCreepEnemy.maxHealth * 0.333f;
                    metaphorBossCreepEnemy.setMaxHealth(f2);
                    metaphorBossCreepEnemy.setHealth(f2);
                }
            }
        }

        public _MapSystemListener(MetaphorBossWaveProcessor metaphorBossWaveProcessor) {
            this.f15204a = metaphorBossWaveProcessor;
        }
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public float getNextWaveDelayMultiplier() {
        return 4.0f;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public boolean isDone() {
        return this.f15197k;
    }

    public MetaphorBossWaveProcessor() {
        this.f15196d = new Array<>(true, 8, Enemy.EnemyReference.class);
        this.f15197k = false;
        this.f15198p = new Array<>(Tower.class);
        this.f15199q = new Array<>(Tower.class);
    }

    /* renamed from: f */
    public final void m19793f() {
        Array<Tower> array;
        Array<Tower> array2;
        this.f15200r.map.listeners.remove(this.f15201s);
        this.f15200r.enemy.listeners.remove(this.f15202t);
        this.f15196d.clear();
        if (this.f15199q.size != 0) {
            int i = 0;
            while (true) {
                array2 = this.f15199q;
                if (i >= array2.size) {
                    break;
                }
                array2.items[i].outOfOrder = false;
                i++;
            }
            array2.clear();
        }
        if (this.f15198p.size != 0) {
            int i2 = 0;
            while (true) {
                array = this.f15198p;
                if (i2 >= array.size) {
                    break;
                }
                array.items[i2].outOfOrder = false;
                i2++;
            }
            array.clear();
        }
        this.f15200r = null;
        Logger.log("MetaphorBossWaveProcessor", "Disposed");
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f15194a = (Wave) kryo.readObjectOrNull(input, Wave.class);
        this.f15195b = (Enemy.EnemyReference) kryo.readObjectOrNull(input, Enemy.EnemyReference.class);
        this.f15196d = (Array) kryo.readObject(input, Array.class);
        this.f15197k = input.readBoolean();
        this.f15198p = (Array) kryo.readObject(input, Array.class);
        this.f15199q = (Array) kryo.readObject(input, Array.class);
        this.f15200r = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        this.f15201s = (_MapSystemListener) kryo.readObjectOrNull(input, _MapSystemListener.class);
        this.f15202t = (_EnemySystemListener) kryo.readObjectOrNull(input, _EnemySystemListener.class);
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public Wave setup(GameSystemProvider gameSystemProvider, int i, int i2) {
        this.f15200r = gameSystemProvider;
        Wave wave = new Wave(i, i2, generateEnemyGroups(i, i2));
        this.f15194a = wave;
        wave.enemiesCanBeSplitBetweenSpawns = false;
        wave.enemiesCanHaveRandomSideShifts = true;
        wave.waveMessage = Game.f8589i.localeManager.i18n.get("enemy_name_METAPHOR_BOSS");
        this.f15194a.waveProcessor = this;
        if (this.f15201s == null) {
            this.f15201s = new _MapSystemListener();
            this.f15202t = new _EnemySystemListener();
        }
        gameSystemProvider.map.listeners.add(this.f15201s);
        gameSystemProvider.enemy.listeners.add(this.f15202t);
        Logger.log("MetaphorBossWaveProcessor", "Setup");
        return this.f15194a;
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public void update(float f) {
        Enemy.EnemyReference enemyReference;
        Array<Tower> array;
        int i;
        Array<Tower> array2;
        Building building;
        if (!this.f15197k && (enemyReference = this.f15195b) != null) {
            Enemy enemy = enemyReference.enemy;
            if (enemy == null) {
                this.f15197k = true;
                m19793f();
                return;
            }
            MetaphorBossEnemy metaphorBossEnemy = (MetaphorBossEnemy) enemy;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                array = this.f15198p;
                if (i3 >= array.size) {
                    break;
                }
                Tower tower = array.items[i3];
                if (!this.f15199q.contains(tower, true)) {
                    tower.outOfOrder = false;
                }
                i3++;
            }
            array.clear();
            Array<Tile> neighbourTilesAndThis = metaphorBossEnemy.getCurrentTile().getNeighbourTilesAndThis();
            for (int i4 = 0; i4 < neighbourTilesAndThis.size; i4++) {
                Tile tile = neighbourTilesAndThis.items[i4];
                if (tile.type == TileType.PLATFORM && (building = ((PlatformTile) tile).building) != null && building.buildingType == BuildingType.TOWER) {
                    Tower tower2 = (Tower) building;
                    tower2.outOfOrder = true;
                    this.f15198p.add(tower2);
                }
            }
            double health = metaphorBossEnemy.getHealth() / metaphorBossEnemy.maxHealth;
            if (health < 0.25d) {
                i = 3;
            } else if (health < 0.5d) {
                i = 2;
            } else if (health < 0.75d) {
                i = 1;
            } else {
                i = 0;
            }
            if (i != 0) {
                for (int i5 = this.f15199q.size - 1; i5 >= 0; i5--) {
                    if (this.f15198p.contains(this.f15199q.items[i5], true)) {
                        this.f15199q.removeIndex(i5);
                    }
                }
                if (this.f15199q.size < i) {
                    Tower tower3 = null;
                    int i6 = 0;
                    while (true) {
                        DelayedRemovalArray<Tower> delayedRemovalArray = this.f15200r.tower.towers;
                        if (i6 >= delayedRemovalArray.size) {
                            break;
                        }
                        Tower tower4 = delayedRemovalArray.items[i6];
                        if (!tower4.outOfOrder && (tower3 == null || tower3.moneySpentOn.get() < tower4.moneySpentOn.get())) {
                            tower3 = tower4;
                        }
                        i6++;
                    }
                    if (tower3 != null) {
                        tower3.outOfOrder = true;
                        this.f15199q.add(tower3);
                    }
                }
            } else if (this.f15199q.size != 0) {
                int i7 = 0;
                while (true) {
                    array2 = this.f15199q;
                    if (i7 >= array2.size) {
                        break;
                    }
                    array2.items[i7].outOfOrder = false;
                    i7++;
                }
                array2.clear();
            }
            EntityUtils.removeNullRefs(this.f15196d);
            while (true) {
                Array<Enemy.EnemyReference> array3 = this.f15196d;
                int i8 = array3.size;
                if (i2 < i8) {
                    MetaphorBossCreepEnemy metaphorBossCreepEnemy = (MetaphorBossCreepEnemy) array3.items[i2].enemy;
                    float f2 = 0.2f;
                    float f3 = 1.2f;
                    if (metaphorBossCreepEnemy.getKind() == MetaphorBossCreepEnemy.Kind.FRONT) {
                        float f4 = metaphorBossCreepEnemy.passedTiles;
                        float f5 = metaphorBossEnemy.passedTiles;
                        if (f4 < 0.5f + f5) {
                            float speed = metaphorBossCreepEnemy.getSpeed() + (0.4f * f);
                            if (speed <= 1.2f) {
                                f3 = speed;
                            }
                            metaphorBossCreepEnemy.setSpeed(f3);
                        } else if (f4 > f5 + 2.0f) {
                            float speed2 = metaphorBossCreepEnemy.getSpeed() - (0.8f * f);
                            if (speed2 >= 0.2f) {
                                if (speed2 > 1.2f) {
                                    f2 = 1.2f;
                                } else {
                                    f2 = speed2;
                                }
                            }
                            metaphorBossCreepEnemy.setSpeed(f2);
                        }
                    } else if (metaphorBossCreepEnemy.getKind() == MetaphorBossCreepEnemy.Kind.REAR) {
                        float f6 = metaphorBossCreepEnemy.passedTiles;
                        float f7 = metaphorBossEnemy.passedTiles;
                        if (f6 < f7 - 2.0f) {
                            metaphorBossCreepEnemy.setSpeed(metaphorBossCreepEnemy.getSpeed() + (0.4f * f));
                        } else if (f6 > f7 - 0.5f) {
                            float speed3 = metaphorBossCreepEnemy.getSpeed() - (0.8f * f);
                            if (speed3 >= 0.2f) {
                                if (speed3 > 1.2f) {
                                    f2 = 1.2f;
                                } else {
                                    f2 = speed3;
                                }
                            }
                            metaphorBossCreepEnemy.setSpeed(f2);
                        }
                    } else if (metaphorBossCreepEnemy.getKind() == MetaphorBossCreepEnemy.Kind.RANDOM_SPEED) {
                        metaphorBossCreepEnemy.setSpeed((PMath.sin(metaphorBossCreepEnemy.existsTime) * 0.2f) + 0.48f);
                    }
                    i2++;
                } else {
                    metaphorBossEnemy.creepCount = i8;
                    return;
                }
            }
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.f15194a, Wave.class);
        kryo.writeObjectOrNull(output, this.f15195b, Enemy.EnemyReference.class);
        kryo.writeObject(output, this.f15196d);
        output.writeBoolean(this.f15197k);
        kryo.writeObject(output, this.f15198p);
        kryo.writeObject(output, this.f15199q);
        kryo.writeObjectOrNull(output, this.f15200r, GameSystemProvider.class);
        kryo.writeObjectOrNull(output, this.f15201s, _MapSystemListener.class);
        kryo.writeObjectOrNull(output, this.f15202t, _EnemySystemListener.class);
    }

    @Override // com.prineside.tdi2.WaveProcessor
    public Array<EnemyGroup> generateEnemyGroups(int i, int i2) {
        float calculateDefaultBossWaveCoinsSum = WaveProcessor.calculateDefaultBossWaveCoinsSum(i);
        float calculateDefaultBossWaveExpSum = WaveProcessor.calculateDefaultBossWaveExpSum(i);
        float calculateDefaultBossWaveScoreSum = WaveProcessor.calculateDefaultBossWaveScoreSum(i);
        Array<EnemyGroup> array = new Array<>();
        double waveValue = WaveManager.getWaveValue(i, i2);
        Double.isNaN(waveValue);
        float pow = ((((float) StrictMath.pow(waveValue * 10.0d, 1.3d)) * 1.5f) + 100.0f) * 0.3f;
        array.add(new EnemyGroup(EnemyType.METAPHOR_BOSS, 0.48f, pow, 1, 1.0f, 0.0f, calculateDefaultBossWaveCoinsSum * 0.5f, calculateDefaultBossWaveExpSum * 0.5f, (int) (0.041666668f * calculateDefaultBossWaveScoreSum)));
        int length = MetaphorBossCreepEnemy.Kind.values.length * 2;
        float f = 0.5f / length;
        array.add(new EnemyGroup(EnemyType.METAPHOR_BOSS_CREEP, 0.48f, pow * 0.2f, length, 0.0f, 0.25f, calculateDefaultBossWaveCoinsSum * f, calculateDefaultBossWaveExpSum * f, (int) (calculateDefaultBossWaveScoreSum * f)));
        return array;
    }
}
