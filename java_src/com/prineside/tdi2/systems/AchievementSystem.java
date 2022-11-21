package com.prineside.tdi2.systems;

import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Unit;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.managers.AchievementManager;
import com.prineside.tdi2.projectiles.MultishotProjectile;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.TowerSystem;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class AchievementSystem extends GameSystem {

    /* renamed from: s */
    public static final EnemyType[] f11419s = {EnemyType.REGULAR, EnemyType.FAST, EnemyType.STRONG, EnemyType.HELI, EnemyType.JET, EnemyType.ARMORED, EnemyType.HEALER, EnemyType.TOXIC, EnemyType.ICY, EnemyType.FIGHTER, EnemyType.LIGHT};
    @NAGS

    /* renamed from: a */
    public float f11420a;
    @NAGS

    /* renamed from: d */
    public boolean f11422d;
    @NAGS

    /* renamed from: b */
    public int f11421b = 0;
    @NAGS

    /* renamed from: k */
    public int f11423k = 0;
    @NAGS

    /* renamed from: p */
    public int f11424p = 0;
    @NAGS

    /* renamed from: q */
    public int[] f11425q = new int[AchievementType.values.length];
    @NAGS

    /* renamed from: r */
    public IntArray f11426r = new IntArray(false, 8);

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11427a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 15005;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void mdpsUpdated(double d) {
            Game.f8589i.achievementManager.setProgress(AchievementType.MILLION_MDPS_ONE_GAME, (int) this.f11427a.enemy.getTowersMaxDps());
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11427a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11427a, GameSystemProvider.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            EnemyType enemyType = enemy.type;
            if (enemyType == EnemyType.BROOT_BOSS || enemyType == EnemyType.SNAKE_BOSS_HEAD || enemyType == EnemyType.METAPHOR_BOSS || enemyType == EnemyType.MOBCHAIN_BOSS_HEAD || enemyType == EnemyType.CONSTRUCTOR_BOSS) {
                if (enemy.existsTime <= 3.0f) {
                    Game.f8589i.achievementManager.setProgress(AchievementType.FAST_BOSS_KILL, 1);
                    Logger.log("AchievementSystem", "boss killed in " + enemy.existsTime);
                }
                if (enemy.hasBuffsByType(BuffType.BONUS_COINS)) {
                    Game.f8589i.achievementManager.setProgress(AchievementType.KILL_BOSS_BONUS_COINS, 1);
                }
            }
            if (enemy.hasBuffsByType(BuffType.THROW_BACK)) {
                this.f11427a.achievement.registerDelta(AchievementType.KILL_THROWN_BACK_ENEMIES, 1);
            }
            if (projectile != null && projectile.type == ProjectileType.MULTISHOT && ((MultishotProjectile) projectile).flyingBack) {
                this.f11427a.achievement.registerDelta(AchievementType.KILL_ENEMY_WITH_BACK_PROJECTILE, 1);
            }
            if (damageType == DamageType.FIRE) {
                GameSystemProvider gameSystemProvider = this.f11427a;
                gameSystemProvider.achievement.f11426r.add(gameSystemProvider.gameState.updateNumber);
                GameSystemProvider gameSystemProvider2 = this.f11427a;
                int i = gameSystemProvider2.gameState.updateNumber;
                int i2 = 0;
                for (int i3 = gameSystemProvider2.achievement.f11426r.size - 1; i3 >= 0; i3--) {
                    GameSystemProvider gameSystemProvider3 = this.f11427a;
                    if (i - gameSystemProvider3.achievement.f11426r.items[i3] <= gameSystemProvider3.gameValue.getTickRate()) {
                        i2++;
                    } else {
                        this.f11427a.achievement.f11426r.removeIndex(i3);
                    }
                }
                Game.f8589i.achievementManager.setProgress(AchievementType.MASS_BURN_ENEMIES, i2);
            }
        }

        public _EnemySystemListener(GameSystemProvider gameSystemProvider) {
            this.f11427a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _GameSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11428a;

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 15001;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11428a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void scoreChanged(long j, boolean z, StatisticsType statisticsType) {
            if (this.f11428a.achievement.isActive()) {
                Game.f8589i.achievementManager.setProgress(AchievementType.MILLION_SCORE_ONE_GAME, this.f11428a.gameState.getScore() >= 2147483647L ? Integer.MAX_VALUE : (int) this.f11428a.gameState.getScore());
            }
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11428a, GameSystemProvider.class);
        }

        @Deprecated
        public _GameSystemListener() {
        }

        public _GameSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11428a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _TowerSystemListener extends TowerSystem.TowerSystemListener.TowerSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11429a;

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 15015;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11429a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11429a, GameSystemProvider.class);
        }

        @Deprecated
        public _TowerSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerBuilt(Tower tower, int i) {
            if (i > 0) {
                this.f11429a.achievement.f11423k++;
                return;
            }
            AchievementSystem achievementSystem = this.f11429a.achievement;
            int i2 = achievementSystem.f11424p + 1;
            achievementSystem.f11424p = i2;
            Game.f8589i.achievementManager.setProgress(AchievementType.COPY_TOWERS_ONE_GAME, i2);
        }

        public _TowerSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11429a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _WaveSystemListener extends WaveSystem.WaveSystemListener.WaveSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11430a;

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 15010;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11430a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void waveCompleted(Wave wave) {
            Game.f8589i.achievementManager.setProgress(AchievementType.REACH_HIGH_WAVE_ONE_GAME, wave.waveNumber);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11430a, GameSystemProvider.class);
        }

        @Deprecated
        public _WaveSystemListener() {
        }

        public _WaveSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11430a = gameSystemProvider;
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Achievement";
    }

    public boolean isActive() {
        if (!this.f11422d) {
            GameStateSystem gameStateSystem = this.f8844S.gameState;
            if (gameStateSystem.difficultyMode == DifficultyMode.NORMAL && !gameStateSystem.replayMode) {
                return true;
            }
        }
        return false;
    }

    public void setEnabled(boolean z) {
        this.f11422d = !z;
    }

    public void registerDelta(AchievementType achievementType, int i) {
        int[] iArr = this.f11425q;
        int ordinal = achievementType.ordinal();
        iArr[ordinal] = iArr[ordinal] + i;
        if (isActive()) {
            Game.f8589i.achievementManager.setProgress(achievementType, this.f11425q[achievementType.ordinal()]);
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11420a = input.readFloat();
        this.f11421b = input.readVarInt(true);
        this.f11422d = input.readBoolean();
        this.f11423k = input.readVarInt(true);
        this.f11424p = input.readVarInt(true);
        this.f11425q = (int[]) kryo.readObject(input, int[].class);
        this.f11426r = (IntArray) kryo.readObject(input, IntArray.class);
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        if (isActive()) {
            GameSystemProvider gameSystemProvider = this.f8844S;
            gameSystemProvider.gameState.listeners.add(new _GameSystemListener(gameSystemProvider));
            GameSystemProvider gameSystemProvider2 = this.f8844S;
            gameSystemProvider2.enemy.listeners.add(new _EnemySystemListener(gameSystemProvider2));
            GameSystemProvider gameSystemProvider3 = this.f8844S;
            gameSystemProvider3.wave.listeners.add(new _WaveSystemListener(gameSystemProvider3));
            GameSystemProvider gameSystemProvider4 = this.f8844S;
            gameSystemProvider4.tower.listeners.add(new _TowerSystemListener(gameSystemProvider4));
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        String str;
        if (!isActive()) {
            return;
        }
        float f2 = this.f11420a + f;
        this.f11420a = f2;
        if (f2 > 0.1f) {
            this.f11420a = f2 - 0.1f;
            int i = 0;
            switch (this.f11421b) {
                case 0:
                    if (!Game.f8589i.achievementManager.isRequirementMet(AchievementType.EVERY_ENEMY_MET)) {
                        EnemyType[] enemyTypeArr = f11419s;
                        int length = enemyTypeArr.length;
                        int i2 = 0;
                        while (i < length) {
                            if (!Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(enemyTypeArr[i])) {
                                i2++;
                            }
                            i++;
                        }
                        Game.f8589i.achievementManager.setProgress(AchievementType.EVERY_ENEMY_MET, i2);
                        break;
                    }
                    break;
                case 1:
                    float f3 = 0.0f;
                    while (true) {
                        DelayedRemovalArray<Tower> delayedRemovalArray = this.f8844S.tower.towers;
                        if (i < delayedRemovalArray.size) {
                            float cachedStatBuffed = delayedRemovalArray.items[i].getCachedStatBuffed(TowerStatType.ATTACK_SPEED);
                            if (f3 < cachedStatBuffed) {
                                f3 = cachedStatBuffed;
                            }
                            i++;
                        } else {
                            Game.f8589i.achievementManager.setProgress(AchievementType.HUGE_TOWER_ATTACK_SPEED, (int) f3);
                            break;
                        }
                    }
                case 2:
                    AchievementManager achievementManager = Game.f8589i.achievementManager;
                    AchievementType achievementType = AchievementType.MASS_TOWERS_LEVEL_DEV;
                    if (!achievementManager.isRequirementMet(achievementType) && (str = this.f8844S.gameState.basicLevelName) != null && str.equals("dev")) {
                        Game.f8589i.achievementManager.setProgress(achievementType, this.f8844S.tower.towers.size);
                        break;
                    }
                    break;
                case 3:
                    Game.f8589i.achievementManager.setProgress(AchievementType.MASS_MINERS, this.f8844S.miner.miners.size);
                    break;
                case 4:
                    if (this.f11423k == 1) {
                        Game.f8589i.achievementManager.setProgress(AchievementType.BUILD_TOWER_FINISH_WITH_TEN, this.f8844S.tower.towers.size);
                        break;
                    }
                    break;
                case 5:
                    int i3 = 0;
                    while (true) {
                        DelayedRemovalArray<Unit> delayedRemovalArray2 = this.f8844S.map.spawnedUnits;
                        if (i < delayedRemovalArray2.size) {
                            if (delayedRemovalArray2.items[i].type == 4) {
                                i3++;
                            }
                            i++;
                        } else {
                            Game.f8589i.achievementManager.setProgress(AchievementType.PLACE_MINES_ONE_GAME, i3);
                            break;
                        }
                    }
                case 6:
                    Map map = this.f8844S.map.getMap();
                    int i4 = 0;
                    int i5 = 0;
                    while (true) {
                        DelayedRemovalArray<Tile> delayedRemovalArray3 = map.tilesArray;
                        if (i4 < delayedRemovalArray3.size) {
                            if (delayedRemovalArray3.items[i4].type == TileType.PLATFORM) {
                                i5++;
                            }
                            i4++;
                        } else {
                            int i6 = this.f8844S.tower.towers.size;
                            while (true) {
                                DelayedRemovalArray<Unit> delayedRemovalArray4 = this.f8844S.map.spawnedUnits;
                                if (i < delayedRemovalArray4.size) {
                                    if (delayedRemovalArray4.items[i].type == 3) {
                                        i6++;
                                    }
                                    i++;
                                } else {
                                    Game.f8589i.achievementManager.setProgress(AchievementType.PLACE_MICROGUNS, i6 - i5);
                                    break;
                                }
                            }
                        }
                    }
                case 7:
                    int i7 = 0;
                    while (true) {
                        DelayedRemovalArray<Ability> delayedRemovalArray5 = this.f8844S.ability.activeAbilities;
                        if (i < delayedRemovalArray5.size) {
                            if (delayedRemovalArray5.items[i].type == AbilityType.BALL_LIGHTNING) {
                                i7++;
                            }
                            i++;
                        } else {
                            Game.f8589i.achievementManager.setProgress(AchievementType.MASS_BALL_LIGHTNINGS, i7);
                            break;
                        }
                    }
                case 8:
                    int i8 = 0;
                    while (true) {
                        DelayedRemovalArray<Projectile> delayedRemovalArray6 = this.f8844S.projectile.projectiles;
                        if (i < delayedRemovalArray6.size) {
                            if (delayedRemovalArray6.items[i].type == ProjectileType.MISSILE) {
                                i8++;
                            }
                            i++;
                        } else {
                            Game.f8589i.achievementManager.setProgress(AchievementType.MASS_MISSILES, i8);
                            break;
                        }
                    }
                case 9:
                    int i9 = 0;
                    while (true) {
                        DelayedRemovalArray<Unit> delayedRemovalArray7 = this.f8844S.map.spawnedUnits;
                        if (i < delayedRemovalArray7.size) {
                            if (delayedRemovalArray7.items[i].type == 2) {
                                i9++;
                            }
                            i++;
                        } else {
                            Game.f8589i.achievementManager.setProgress(AchievementType.RECRUIT_ENEMIES, i9);
                            break;
                        }
                    }
                default:
                    this.f11421b = 0;
                    break;
            }
            this.f11421b++;
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f11420a);
        output.writeVarInt(this.f11421b, true);
        output.writeBoolean(this.f11422d);
        output.writeVarInt(this.f11423k, true);
        output.writeVarInt(this.f11424p, true);
        kryo.writeObject(output, this.f11425q);
        kryo.writeObject(output, this.f11426r);
    }
}
