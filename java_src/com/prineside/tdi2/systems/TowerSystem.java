package com.prineside.tdi2.systems;

import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.ScheduledUpdater;
import com.prineside.tdi2.SpaceTileBonus;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.actions.BuildTowerAction;
import com.prineside.tdi2.actions.ChangeTowerAimStrategyAction;
import com.prineside.tdi2.actions.CustomTowerButtonAction;
import com.prineside.tdi2.actions.GlobalUpgradeTowerAction;
import com.prineside.tdi2.actions.SelectGlobalTowerAbilityAction;
import com.prineside.tdi2.actions.SelectTowerAbilityAction;
import com.prineside.tdi2.actions.SellTowerAction;
import com.prineside.tdi2.actions.UpgradeTowerAction;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.SpaceTileBonusType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.GameValueSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.StateSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import java.lang.reflect.Array;
import java.util.Arrays;
@REGS
/* loaded from: classes2.dex */
public class TowerSystem extends GameSystem {

    /* renamed from: q */
    public static final boolean[][] f11817q = (boolean[][]) Array.newInstance(Boolean.TYPE, 6, 6);

    /* renamed from: a */
    public ScheduledUpdater f11818a;

    /* renamed from: b */
    public float f11819b;
    public boolean[][] canTowerAttackEnemy;

    /* renamed from: d */
    public int f11820d;

    /* renamed from: k */
    public float[] f11821k;
    public ListenerGroup<TowerSystemListener> listeners;
    @NAGS

    /* renamed from: p */
    public Tower.AimStrategy f11822p;
    public float[][] towerEnemyDamageMultiplier;
    public DelayedRemovalArray<Tower> towers;

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface TowerSystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static abstract class TowerSystemListenerAdapter implements TowerSystemListener {
            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
            public void customButtonPressed(Tower tower) {
            }

            @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
            public void defaultAimStrategyChanged() {
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
            public void towerAbilityChanged(Tower tower, int i, boolean z) {
            }

            @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
            public void towerAimStrategyChanged(Tower tower) {
            }

            @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
            public void towerBuilt(Tower tower, int i) {
            }

            @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
            public void towerExperienceChanged(Tower tower, float f) {
            }

            @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
            public void towerLeveledUp(Tower tower) {
            }

            @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
            public void towerPreSold(Tower tower, int i) {
            }

            @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
            public void towerSold(Tower tower, int i) {
            }

            @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
            public void towerUpgraded(Tower tower, int i) {
            }
        }

        void customButtonPressed(Tower tower);

        void defaultAimStrategyChanged();

        void towerAbilityChanged(Tower tower, int i, boolean z);

        void towerAimStrategyChanged(Tower tower);

        void towerBuilt(Tower tower, int i);

        void towerExperienceChanged(Tower tower, float f);

        void towerLeveledUp(Tower tower);

        void towerPreSold(Tower tower, int i);

        void towerSold(Tower tower, int i);

        void towerUpgraded(Tower tower, int i);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11823a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 28280090;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11823a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11823a, GameSystemProvider.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            if (tower != null) {
                this.f11823a.statistics.addStatistic(StatisticsType.XPG_EK, this.f11823a.tower.addExperienceBuffed(tower, enemy.getKillExp()));
                tower.enemiesKilled++;
            }
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyTakeDamage(Enemy enemy, float f, Tower tower, DamageType damageType, Projectile projectile) {
            if (tower != null && f > 0.0f) {
                this.f11823a.statistics.addStatistic(StatisticsType.XPG_EK, this.f11823a.tower.addExperienceBuffed(tower, (f / enemy.maxHealth) * enemy.getKillExp() * 2.0f));
                int i = 0;
                while (true) {
                    float[] fArr = tower.dpsDamage;
                    if (i < fArr.length) {
                        float f2 = fArr[i] + f;
                        fArr[i] = f2;
                        float f3 = f2 / 10.0f;
                        if (f3 > tower.mdps) {
                            tower.mdps = f3;
                        }
                        i++;
                    } else {
                        return;
                    }
                }
            }
        }

        public _EnemySystemListener(GameSystemProvider gameSystemProvider) {
            this.f11823a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _GameValueSystemListener implements GameValueSystem.GameValueSystemListener, KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11824a;

        @Deprecated
        public _GameValueSystemListener() {
        }

        @Override // com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 9188089;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11824a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.prineside.tdi2.systems.GameValueSystem.GameValueSystemListener
        public void recalculated(double[] dArr) {
            int i = 0;
            while (true) {
                DelayedRemovalArray<Tower> delayedRemovalArray = this.f11824a.tower.towers;
                if (i < delayedRemovalArray.size) {
                    delayedRemovalArray.items[i].updateCache();
                    i++;
                } else {
                    return;
                }
            }
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11824a, GameSystemProvider.class);
        }

        public _GameValueSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11824a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11825a;

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 8218444;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11825a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void towerPlacedOnMap(Tower tower) {
            this.f11825a.tower.m20875e(tower);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11825a, GameSystemProvider.class);
        }

        @Deprecated
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void buildingRemovedFromMap(Building building, PlatformTile platformTile) {
            if (building.buildingType == BuildingType.TOWER) {
                this.f11825a.tower.m20874f((Tower) building);
            }
        }

        public _MapSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11825a = gameSystemProvider;
        }
    }

    static {
        boolean z;
        for (int i = 0; i < 6; i++) {
            for (int i2 = 0; i2 < 6; i2++) {
                boolean[] zArr = f11817q[i];
                if (i2 != i) {
                    z = true;
                } else {
                    z = false;
                }
                zArr[i2] = z;
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    public void applyDrawInterpolation(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        int i = this.towers.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.towers.items[i2].applyDrawInterpolation(f);
        }
    }

    public Tower buildTower(TowerType towerType, Tower.AimStrategy aimStrategy, int i, int i2) {
        return buildTower(towerType, aimStrategy, i, i2, false);
    }

    public void buildTowerAction(TowerType towerType) {
        Tile selectedTile = this.f8844S.map.getSelectedTile();
        if (selectedTile != null) {
            buildTowerAction(towerType, this.f11822p, selectedTile.getX(), selectedTile.getY());
        }
    }

    public void customTowerButtonAction(Tower tower, int i, int i2) {
        this.f8844S.gameState.pushAction(new CustomTowerButtonAction(tower.getTile().getX(), tower.getTile().getY(), i, i2));
    }

    /* renamed from: d */
    public final void m20876d() {
        Arrays.fill(this.f11821k, Float.MIN_VALUE);
    }

    public Tower.AimStrategy getDefaultAimStrategy() {
        return this.f11822p;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Tower";
    }

    public void globalUpgradeTowerAction(TowerType towerType) {
        this.f8844S.gameState.pushAction(new GlobalUpgradeTowerAction(towerType));
    }

    public boolean isRegistered(Tower tower) {
        return tower.isRegistered();
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postStateRestore() {
        int i = 0;
        while (true) {
            DelayedRemovalArray<Tower> delayedRemovalArray = this.towers;
            if (i < delayedRemovalArray.size) {
                m20873g(delayedRemovalArray.items[i]);
                i++;
            } else {
                return;
            }
        }
    }

    public void selectGlobalTowerAbilityAction(Tower tower, int i) {
        selectGlobalTowerAbilityAction(tower.getTile().getX(), tower.getTile().getY(), i);
    }

    public void selectTowerAbilityAction(Tower tower, int i) {
        selectTowerAbilityAction(tower.getTile().getX(), tower.getTile().getY(), i);
    }

    public void setTowerAimStrategyAction(Tower tower, Tower.AimStrategy aimStrategy) {
        this.f8844S.gameState.pushAction(new ChangeTowerAimStrategyAction(tower.getTile().getX(), tower.getTile().getY(), aimStrategy));
    }

    public void upgradeTowerAction(Tower tower) {
        upgradeTowerAction(tower.getTile().getX(), tower.getTile().getY());
    }

    public float addExperienceBuffed(Tower tower, float f) {
        float f2 = f * tower.experienceMultiplier;
        addExperienceRaw(tower, f2);
        return f2;
    }

    public float addExperienceToMatchLevel(Tower tower, int i) {
        if (i <= 256) {
            if (tower.getLevel() < i) {
                float f = Tower.LEVEL_EXPERIENCE_MILESTONES[i] - tower.experience;
                addExperienceRaw(tower, f);
                return f;
            }
            return 0.0f;
        }
        throw new IllegalArgumentException("Max level is 256, " + i + " given");
    }

    public Tower buildTower(TowerType towerType, Tower.AimStrategy aimStrategy, int i, int i2, boolean z) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (!z && !Game.f8589i.towerManager.getFactory(towerType).isAvailable(this.f8844S.gameValue)) {
            Logger.error("TowerSystem", "buildTower - tower type " + towerType.name() + " is not available");
            return null;
        }
        Tile tile = this.f8844S.map.getMap().getTile(i, i2);
        if (tile == null) {
            Logger.error("TowerSystem", "buildTower - no tile at " + i + ":" + i2);
            return null;
        }
        if (aimStrategy == null) {
            aimStrategy = Tower.AimStrategy.FIRST;
        }
        if (tile.type == TileType.PLATFORM) {
            if (((PlatformTile) tile).building == null) {
                int buildPrice = z ? 0 : Game.f8589i.towerManager.getFactory(towerType).getBuildPrice(this.f8844S);
                if (this.f8844S.gameState.removeMoney(buildPrice)) {
                    Tower create = Game.f8589i.towerManager.getFactory(towerType).create();
                    create.moneySpentOn.set(buildPrice);
                    create.aimStrategy = aimStrategy;
                    int i3 = 0;
                    while (true) {
                        float[] fArr = create.dpsDamage;
                        if (i3 >= fArr.length) {
                            break;
                        }
                        fArr[i3] = 0.0f;
                        create.dpsTime[i3] = (i3 / 10.0f) * 10.0f;
                        i3++;
                    }
                    this.f8844S.map.setTower(tile.getX(), tile.getY(), create);
                    addExperienceToMatchLevel(create, create.getStartingLevel());
                    this.listeners.begin();
                    int size = this.listeners.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        this.listeners.get(i4).towerBuilt(create, buildPrice);
                    }
                    this.listeners.end();
                    if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                        ParticleEffectPool.PooledEffect obtain = Game.f8589i.towerManager.highlightParticles[create.type.ordinal()].obtain();
                        obtain.setPosition(create.getTile().center.f5527x, create.getTile().center.f5528y);
                        this.f8844S._particle.addParticle(obtain, true);
                    }
                    return create;
                }
                Logger.error("TowerSystem", "buildTower - not enough money");
                return null;
            }
            Logger.error("TowerSystem", "buildTower - tile " + i + ":" + i2 + " already has a tower");
            return null;
        }
        Logger.error("TowerSystem", "buildTower - tile type is " + tile.type.name());
        return null;
    }

    public void customTowerButtonAction(int i, int i2, int i3, int i4) {
        this.f8844S.gameState.pushAction(new CustomTowerButtonAction(i, i2, i3, i4));
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.listeners.clear();
        this.towers.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<Tower> delayedRemovalArray = this.towers;
            if (i < delayedRemovalArray.size) {
                delayedRemovalArray.get(i).setUnregistered();
                i++;
            } else {
                delayedRemovalArray.end();
                this.towers.clear();
                this.f11818a.clear();
                super.dispose();
                return;
            }
        }
    }

    public void drawBatch(SpriteBatch spriteBatch, float f) {
        this.towers.begin();
        int i = this.towers.size;
        for (int i2 = 0; i2 < i; i2++) {
            Tower tower = this.towers.items[i2];
            if (!tower.isOutOfOrder()) {
                tower.drawBatch(spriteBatch, f);
            }
        }
        this.towers.end();
        this.towers.begin();
        int i3 = this.towers.size;
        for (int i4 = 0; i4 < i3; i4++) {
            if (this.towers.items[i4].isOutOfOrder()) {
                this.towers.items[i4].drawGlitch(spriteBatch);
            }
        }
        this.towers.end();
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    public void drawBatchAdditive(SpriteBatch spriteBatch, float f) {
        this.towers.begin();
        int i = this.towers.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.towers.items[i2].drawBatchAdditive(spriteBatch, f);
        }
        this.towers.end();
    }

    public void drawWeapons(SpriteBatch spriteBatch, float f) {
        this.towers.begin();
        int i = this.towers.size;
        for (int i2 = 0; i2 < i; i2++) {
            Tower tower = this.towers.items[i2];
            tower.drawWeapon(spriteBatch, tower.getTile().boundingBox.minX, tower.getTile().boundingBox.minY, 128.0f, f);
        }
        this.towers.end();
    }

    /* renamed from: e */
    public final void m20875e(Tower tower) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (!tower.isRegistered()) {
            int i = this.f11820d;
            this.f11820d = i + 1;
            tower.f8924id = i;
            tower.setRegistered(this.f8844S);
            this.towers.add(tower);
            m20873g(tower);
            float scheduledUpdateInterval = tower.getScheduledUpdateInterval();
            if (scheduledUpdateInterval > 0.0f) {
                this.f11818a.add(tower, scheduledUpdateInterval);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tower is already registered");
    }

    /* renamed from: f */
    public final void m20874f(Tower tower) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (tower.isRegistered()) {
            tower.setUnregistered();
            this.towers.removeValue(tower, true);
            m20873g(tower);
            this.f11818a.remove(tower);
            return;
        }
        throw new IllegalArgumentException("Tower is not registered");
    }

    /* renamed from: g */
    public final void m20873g(Tower tower) {
        if (this.f8844S._particle == null) {
            return;
        }
        if (!tower.isRegistered()) {
            ParticleEffectPool.PooledEffect pooledEffect = tower.abilityAvailableParticleEffect;
            if (pooledEffect != null) {
                pooledEffect.allowCompletion();
                tower.abilityAvailableParticleEffect = null;
            }
        } else if (tower.abilityAvailableParticleEffect == null) {
            if (tower.canNewAbilityBeInstalled() && tower.getTile() != null) {
                ParticleEffectPool.PooledEffect obtain = Game.f8589i.towerManager.abilityAvailableParticleEffectPool.obtain();
                tower.abilityAvailableParticleEffect = obtain;
                obtain.setPosition(tower.getTile().center.f5527x + 32.0f, tower.getTile().center.f5528y - 42.24f);
                this.f8844S._particle.addParticle(tower.abilityAvailableParticleEffect, false);
            }
        } else if (!tower.canNewAbilityBeInstalled() || tower.getTile() == null) {
            tower.abilityAvailableParticleEffect.allowCompletion();
            tower.abilityAvailableParticleEffect = null;
        }
    }

    public int getGlobalUpgradePrice(TowerType towerType) {
        float upgradePriceMultiplier = Game.f8589i.towerManager.getUpgradePriceMultiplier(towerType);
        int i = 0;
        if (upgradePriceMultiplier == 1.0f) {
            int i2 = 0;
            while (true) {
                DelayedRemovalArray<Tower> delayedRemovalArray = this.towers;
                if (i < delayedRemovalArray.size) {
                    Tower tower = delayedRemovalArray.get(i);
                    if (tower.type == towerType && tower.getUpgradeLevel() < tower.getMaxUpgradeLevel()) {
                        i2 += getUpgradePrice(tower);
                    }
                    i++;
                } else {
                    return i2;
                }
            }
        } else {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                DelayedRemovalArray<Tower> delayedRemovalArray2 = this.towers;
                if (i3 < delayedRemovalArray2.size) {
                    Tower tower2 = delayedRemovalArray2.items[i3];
                    if (tower2.type == towerType && tower2.getUpgradeLevel() < tower2.getMaxUpgradeLevel()) {
                        int upgradeLevel = tower2.getUpgradeLevel() + 1;
                        int i5 = 0;
                        float f = 1.0f;
                        while (true) {
                            DelayedRemovalArray<Tower> delayedRemovalArray3 = this.towers;
                            if (i5 >= delayedRemovalArray3.size) {
                                break;
                            }
                            Tower tower3 = delayedRemovalArray3.items[i5];
                            if (tower3.type == towerType) {
                                int upgradeLevel2 = tower3.getUpgradeLevel();
                                if (i5 < i3 && upgradeLevel2 < tower3.getMaxUpgradeLevel()) {
                                    upgradeLevel2++;
                                }
                                if (upgradeLevel2 >= upgradeLevel) {
                                    f *= upgradePriceMultiplier;
                                }
                            }
                            i5++;
                        }
                        int baseUpgradePrice = (int) (getBaseUpgradePrice(tower2, upgradeLevel) * f);
                        if (tower2.getTile() != null) {
                            SpaceTileBonusType spaceTileBonusType = tower2.getTile().bonusType;
                            SpaceTileBonusType spaceTileBonusType2 = SpaceTileBonusType.UPGRADE_DISCOUNT;
                            if (spaceTileBonusType == spaceTileBonusType2 && tower2.getTile().bonusLevel > 0) {
                                baseUpgradePrice = (int) (baseUpgradePrice * SpaceTileBonus.getEffect(spaceTileBonusType2, tower2.getTile().bonusLevel));
                            }
                        }
                        i4 += baseUpgradePrice;
                    }
                    i3++;
                } else {
                    return i4;
                }
            }
        }
    }

    public float getMaxPossibleStat(TowerStatType towerStatType) {
        TowerType[] towerTypeArr;
        int i;
        if (this.f8844S != null) {
            if (this.f11821k[towerStatType.ordinal()] == Float.MIN_VALUE) {
                float f = 0.0f;
                TowerType[] towerTypeArr2 = TowerType.values;
                int length = towerTypeArr2.length;
                int i2 = 0;
                while (i2 < length) {
                    TowerType towerType = towerTypeArr2[i2];
                    if (Game.f8589i.towerManager.hasStat(towerType, towerStatType)) {
                        Tower create = Game.f8589i.towerManager.getFactory(towerType).create();
                        create.setRegistered(this.f8844S);
                        PlatformTile platformTile = (PlatformTile) Game.f8589i.tileManager.getFactory(TileType.PLATFORM).create();
                        for (SpaceTileBonusType spaceTileBonusType : SpaceTileBonusType.values) {
                            platformTile.bonusType = spaceTileBonusType;
                            create.setTile(platformTile);
                            float statBuffed = create.getStatBuffed(towerStatType);
                            if (statBuffed > f) {
                                f = statBuffed;
                            }
                        }
                        int[] iArr = Tower.LEVEL_EXPERIENCE_MILESTONES;
                        create.setExperience(iArr[iArr.length - 1] + 1.0f);
                        create.upgrade(10);
                        platformTile.bonusLevel = 5;
                        for (SpaceTileBonusType spaceTileBonusType2 : SpaceTileBonusType.values) {
                            platformTile.bonusType = spaceTileBonusType2;
                            create.setTile(platformTile);
                            boolean[][] zArr = f11817q;
                            int length2 = zArr.length;
                            int i3 = 0;
                            while (i3 < length2) {
                                boolean[] zArr2 = zArr[i3];
                                TowerType[] towerTypeArr3 = towerTypeArr2;
                                int i4 = length;
                                System.arraycopy(zArr2, 0, create.installedAbilities, 0, zArr2.length);
                                create.updateCache();
                                float statBuffed2 = create.getStatBuffed(towerStatType);
                                if (statBuffed2 > f) {
                                    f = statBuffed2;
                                }
                                i3++;
                                towerTypeArr2 = towerTypeArr3;
                                length = i4;
                            }
                        }
                        towerTypeArr = towerTypeArr2;
                        i = length;
                        create.setTile(null);
                        create.setUnregistered();
                    } else {
                        towerTypeArr = towerTypeArr2;
                        i = length;
                    }
                    i2++;
                    towerTypeArr2 = towerTypeArr;
                    length = i;
                }
                this.f11821k[towerStatType.ordinal()] = f;
            }
            return this.f11821k[towerStatType.ordinal()];
        }
        throw new IllegalStateException("System is not registered");
    }

    public void notifyTowerExperienceChanged(Tower tower, float f) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).towerExperienceChanged(tower, f);
        }
        this.listeners.end();
    }

    public void notifyTowerLeveledUp(Tower tower) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).towerLeveledUp(tower);
        }
        this.listeners.end();
        if (tower.getLevel() == 10) {
            this.listeners.begin();
            int size2 = this.listeners.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.listeners.get(i2).towerAbilityChanged(tower, 3, true);
            }
            this.listeners.end();
        }
        m20873g(tower);
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.towerManager.lvlUpParticles.obtain();
            obtain.setPosition(tower.getTile().center.f5527x, tower.getTile().center.f5528y);
            this.f8844S._particle.addParticle(obtain, true);
            ParticleEffectPool.PooledEffect obtain2 = Game.f8589i.towerManager.highlightParticles[tower.type.ordinal()].obtain();
            obtain2.setPosition(tower.getTile().center.f5527x, tower.getTile().center.f5528y);
            this.f8844S._particle.addParticle(obtain2, true);
        }
    }

    public float removeExperienceRaw(Tower tower, float f) {
        float f2 = tower.currentLevelExperience;
        if (f > f2) {
            f = f2;
        }
        tower.setExperience(tower.experience - f);
        notifyTowerExperienceChanged(tower, -f);
        return f;
    }

    public void selectGlobalTowerAbilityAction(int i, int i2, int i3) {
        this.f8844S.gameState.pushAction(new SelectGlobalTowerAbilityAction(i3, i, i2));
    }

    public void selectTowerAbilityAction(int i, int i2, int i3) {
        this.f8844S.gameState.pushAction(new SelectTowerAbilityAction(i3, i, i2));
    }

    public boolean sellTower(Tower tower) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        tower.onPreSell();
        int sellPrice = tower.getSellPrice();
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).towerPreSold(tower, sellPrice);
        }
        this.listeners.end();
        this.f8844S.gameState.addMoney(sellPrice, false);
        this.f8844S.map.removeBuilding(tower);
        this.listeners.begin();
        int size2 = this.listeners.size();
        for (int i2 = 0; i2 < size2; i2++) {
            this.listeners.get(i2).towerSold(tower, sellPrice);
        }
        this.listeners.end();
        return true;
    }

    public void setAbilityInstalled(Tower tower, int i, boolean z) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        boolean[] zArr = tower.installedAbilities;
        if (zArr[i] == z) {
            return;
        }
        zArr[i] = z;
        tower.updateCache();
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.listeners.get(i2).towerAbilityChanged(tower, i, z);
        }
        this.listeners.end();
        tower.onAbilitySet(i, z);
        m20873g(tower);
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.towerManager.upgradeParticles.obtain();
            obtain.setPosition(tower.getTile().center.f5527x, tower.getTile().center.f5528y);
            this.f8844S._particle.addParticle(obtain, true);
            ParticleEffectPool.PooledEffect obtain2 = Game.f8589i.towerManager.highlightParticles[tower.type.ordinal()].obtain();
            obtain2.setPosition(tower.getTile().center.f5527x, tower.getTile().center.f5528y);
            this.f8844S._particle.addParticle(obtain2, true);
        }
    }

    public void setDefaultAimStrategy(Tower.AimStrategy aimStrategy) {
        this.f11822p = aimStrategy;
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).defaultAimStrategyChanged();
        }
        this.listeners.end();
    }

    public void setTowerAimStrategy(Tower tower, Tower.AimStrategy aimStrategy) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        tower.setAimStrategy(aimStrategy);
        tower.setTarget(null);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).towerAimStrategyChanged(tower);
        }
        this.listeners.end();
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        Logger.log("TowerSystem", "loading default config");
        int i = 0;
        while (true) {
            boolean[][] zArr = Game.f8589i.towerManager.canTowerAttackEnemy;
            if (i >= zArr.length) {
                break;
            }
            boolean[] zArr2 = zArr[i];
            System.arraycopy(zArr2, 0, this.canTowerAttackEnemy[i], 0, zArr2.length);
            i++;
        }
        int i2 = 0;
        while (true) {
            float[][] fArr = Game.f8589i.towerManager.towerEnemyDamageMultiplier;
            if (i2 < fArr.length) {
                float[] fArr2 = fArr[i2];
                System.arraycopy(fArr2, 0, this.towerEnemyDamageMultiplier[i2], 0, fArr2.length);
                i2++;
            } else {
                GameSystemProvider gameSystemProvider = this.f8844S;
                gameSystemProvider.enemy.listeners.add(new _EnemySystemListener(gameSystemProvider));
                GameSystemProvider gameSystemProvider2 = this.f8844S;
                gameSystemProvider2.map.listeners.add(new _MapSystemListener(gameSystemProvider2));
                GameSystemProvider gameSystemProvider3 = this.f8844S;
                gameSystemProvider3.gameValue.listeners.add(new _GameValueSystemListener(gameSystemProvider3));
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        Building building;
        Building building2;
        Building building3;
        Building building4;
        Building building5;
        Building building6;
        StateSystem.ActionsArray currentUpdateActions = this.f8844S.gameState.getCurrentUpdateActions();
        if (currentUpdateActions != null) {
            for (int i = 0; i < currentUpdateActions.size; i++) {
                Action action = currentUpdateActions.actions[i];
                if (action.getType() == ActionType.BT) {
                    BuildTowerAction buildTowerAction = (BuildTowerAction) action;
                    buildTower(buildTowerAction.towerType, buildTowerAction.aimStrategy, buildTowerAction.f9073x, buildTowerAction.f9074y);
                } else if (action.getType() == ActionType.UT) {
                    UpgradeTowerAction upgradeTowerAction = (UpgradeTowerAction) action;
                    Tile tile = this.f8844S.map.getMap().getTile(upgradeTowerAction.f9102x, upgradeTowerAction.f9103y);
                    if (tile != null && tile.type == TileType.PLATFORM && (building6 = ((PlatformTile) tile).building) != null && building6.buildingType == BuildingType.TOWER) {
                        upgradeTower((Tower) building6);
                    }
                    this.f8844S.gameState.registerPlayerActivity();
                } else if (action.getType() == ActionType.GUT) {
                    GlobalUpgradeTowerAction globalUpgradeTowerAction = (GlobalUpgradeTowerAction) action;
                    int i2 = 0;
                    while (true) {
                        DelayedRemovalArray<Tower> delayedRemovalArray = this.towers;
                        if (i2 >= delayedRemovalArray.size) {
                            break;
                        }
                        Tower tower = delayedRemovalArray.get(i2);
                        if (tower.type == globalUpgradeTowerAction.towerType) {
                            upgradeTower(tower);
                        }
                        i2++;
                    }
                    this.f8844S.gameState.registerPlayerActivity();
                } else if (action.getType() == ActionType.ST) {
                    SellTowerAction sellTowerAction = (SellTowerAction) action;
                    Tile tile2 = this.f8844S.map.getMap().getTile(sellTowerAction.f9098x, sellTowerAction.f9099y);
                    if (tile2 != null && tile2.type == TileType.PLATFORM && (building5 = ((PlatformTile) tile2).building) != null && building5.buildingType == BuildingType.TOWER) {
                        Tower tower2 = (Tower) building5;
                        if (!tower2.isSellFullRefundStillActive() && tower2.getUpgradeLevel() > 0) {
                            this.f8844S.gameState.registerPlayerActivity();
                        }
                        sellTower(tower2);
                    }
                } else if (action.getType() == ActionType.CTAS) {
                    ChangeTowerAimStrategyAction changeTowerAimStrategyAction = (ChangeTowerAimStrategyAction) action;
                    Tile tile3 = this.f8844S.map.getMap().getTile(changeTowerAimStrategyAction.f9075x, changeTowerAimStrategyAction.f9076y);
                    if (tile3 != null && tile3.type == TileType.PLATFORM && (building4 = ((PlatformTile) tile3).building) != null && building4.buildingType == BuildingType.TOWER) {
                        setTowerAimStrategy((Tower) building4, changeTowerAimStrategyAction.aimStrategy);
                    }
                } else if (action.getType() == ActionType.STA) {
                    SelectTowerAbilityAction selectTowerAbilityAction = (SelectTowerAbilityAction) action;
                    Tile tile4 = this.f8844S.map.getMap().getTile(selectTowerAbilityAction.f9092x, selectTowerAbilityAction.f9093y);
                    if (tile4 != null && tile4.type == TileType.PLATFORM && (building3 = ((PlatformTile) tile4).building) != null && building3.buildingType == BuildingType.TOWER) {
                        Tower tower3 = (Tower) building3;
                        if (tower3.canAbilityBeInstalled(selectTowerAbilityAction.abilityIndex)) {
                            setAbilityInstalled(tower3, selectTowerAbilityAction.abilityIndex, true);
                            if (!tower3.isSellFullRefundStillActive() && tower3.getUpgradeLevel() > 0) {
                                this.f8844S.gameState.registerPlayerActivity();
                            }
                        }
                    }
                } else if (action.getType() == ActionType.SGTA) {
                    SelectGlobalTowerAbilityAction selectGlobalTowerAbilityAction = (SelectGlobalTowerAbilityAction) action;
                    Tile tile5 = this.f8844S.map.getMap().getTile(selectGlobalTowerAbilityAction.f9090x, selectGlobalTowerAbilityAction.f9091y);
                    if (tile5 != null && tile5.type == TileType.PLATFORM && (building2 = ((PlatformTile) tile5).building) != null && building2.buildingType == BuildingType.TOWER) {
                        Tower tower4 = (Tower) building2;
                        int i3 = 0;
                        while (true) {
                            DelayedRemovalArray<Tower> delayedRemovalArray2 = this.towers;
                            if (i3 < delayedRemovalArray2.size) {
                                Tower tower5 = delayedRemovalArray2.get(i3);
                                if (tower5.type == tower4.type && tower5.canAbilityBeInstalled(selectGlobalTowerAbilityAction.abilityIndex)) {
                                    setAbilityInstalled(tower5, selectGlobalTowerAbilityAction.abilityIndex, true);
                                    if (!tower5.isSellFullRefundStillActive() && tower5.getUpgradeLevel() > 0) {
                                        this.f8844S.gameState.registerPlayerActivity();
                                    }
                                }
                                i3++;
                            }
                        }
                    }
                } else if (action.getType() == ActionType.CTB) {
                    CustomTowerButtonAction customTowerButtonAction = (CustomTowerButtonAction) action;
                    Tile tile6 = this.f8844S.map.getMap().getTile(customTowerButtonAction.f9088x, customTowerButtonAction.f9089y);
                    if (tile6 != null && tile6.type == TileType.PLATFORM && (building = ((PlatformTile) tile6).building) != null && building.buildingType == BuildingType.TOWER) {
                        Tower tower6 = (Tower) building;
                        if (tower6.hasCustomButton()) {
                            tower6.customButtonAction(customTowerButtonAction.mapX, customTowerButtonAction.mapY);
                            this.listeners.begin();
                            int size = this.listeners.size();
                            for (int i4 = 0; i4 < size; i4++) {
                                this.listeners.get(i4).customButtonPressed(tower6);
                            }
                            this.listeners.end();
                        }
                    }
                }
            }
        }
        this.f11818a.process(f);
        this.f11819b += f;
        if (this.f8844S.gameState.isGameRealTimePasses() && this.f11819b > 1.0f) {
            this.f11819b = 0.0f;
            this.towers.begin();
            int i5 = this.towers.size;
            for (int i6 = 0; i6 < i5; i6++) {
                Tower tower7 = this.towers.items[i6];
                float f2 = tower7.experienceGeneration;
                if (f2 != 0.0f) {
                    if (this.f8844S.gameState.isDoubleSpeedActive()) {
                        f2 *= 2.0f;
                    }
                    addExperienceRaw(tower7, f2);
                    this.f8844S.statistics.addStatistic(StatisticsType.XPG_TG, f2);
                }
            }
            this.towers.end();
        }
        this.towers.begin();
        int i7 = this.towers.size;
        for (int i8 = 0; i8 < i7; i8++) {
            Tower tower8 = this.towers.items[i8];
            tower8.update(f);
            int i9 = 0;
            while (true) {
                float[] fArr = tower8.dpsTime;
                if (i9 < fArr.length) {
                    float f3 = fArr[i9] + f;
                    fArr[i9] = f3;
                    if (f3 >= 10.0f) {
                        fArr[i9] = 0.0f;
                        tower8.dpsDamage[i9] = 0.0f;
                    }
                    i9++;
                }
            }
        }
        this.towers.end();
    }

    public boolean upgradeTower(Tower tower) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (tower.getUpgradeLevel() >= tower.getMaxUpgradeLevel()) {
            return false;
        }
        int upgradePrice = getUpgradePrice(tower);
        if (!this.f8844S.gameState.removeMoney(upgradePrice)) {
            return false;
        }
        tower.moneySpentOn.add(upgradePrice);
        tower.upgrade();
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).towerUpgraded(tower, upgradePrice);
        }
        this.listeners.end();
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.towerManager.upgradeParticles.obtain();
            obtain.setPosition(tower.getTile().center.f5527x, tower.getTile().center.f5528y);
            this.f8844S._particle.addParticle(obtain, true);
            ParticleEffectPool.PooledEffect obtain2 = Game.f8589i.towerManager.highlightParticles[tower.type.ordinal()].obtain();
            obtain2.setPosition(tower.getTile().center.f5527x, tower.getTile().center.f5528y);
            this.f8844S._particle.addParticle(obtain2, true);
        }
        return true;
    }

    public void upgradeTowerAction(int i, int i2) {
        Building building;
        Tile tile = this.f8844S.map.getMap().getTile(i, i2);
        if (tile != null && tile.type == TileType.PLATFORM && (building = ((PlatformTile) tile).building) != null && building.buildingType == BuildingType.TOWER && m20877c((Tower) building)) {
            this.f8844S.gameState.pushAction(new UpgradeTowerAction(i, i2));
        }
    }

    public TowerSystem() {
        EnemyType[] enemyTypeArr = EnemyType.values;
        int length = enemyTypeArr.length;
        TowerType[] towerTypeArr = TowerType.values;
        this.canTowerAttackEnemy = (boolean[][]) Array.newInstance(Boolean.TYPE, length, towerTypeArr.length);
        this.towerEnemyDamageMultiplier = (float[][]) Array.newInstance(Float.TYPE, enemyTypeArr.length, towerTypeArr.length);
        this.towers = new DelayedRemovalArray<>(false, 8, Tower.class);
        this.f11818a = new ScheduledUpdater();
        this.f11820d = 1;
        this.f11821k = new float[TowerStatType.values.length];
        this.listeners = new ListenerGroup<>(TowerSystemListener.class);
        this.f11822p = Tower.AimStrategy.FIRST;
    }

    public void addExperienceRaw(Tower tower, float f) {
        if (!tower.isRegistered()) {
            return;
        }
        int level = tower.getLevel();
        tower.addExperience(f);
        notifyTowerExperienceChanged(tower, f);
        if (tower.getLevel() > level) {
            notifyTowerLeveledUp(tower);
        }
    }

    public void buildTowerAction(TowerType towerType, Tower.AimStrategy aimStrategy) {
        Tile selectedTile = this.f8844S.map.getSelectedTile();
        if (selectedTile != null) {
            buildTowerAction(towerType, aimStrategy, selectedTile.getX(), selectedTile.getY());
        }
    }

    /* renamed from: c */
    public final boolean m20877c(Tower tower) {
        if (tower.getUpgradeLevel() >= tower.getMaxUpgradeLevel()) {
            return false;
        }
        if (this.f8844S.gameState.getMoney() < getUpgradePrice(tower)) {
            return false;
        }
        return true;
    }

    public int getBaseUpgradePrice(Tower tower, int i) {
        if (i > tower.getMaxUpgradeLevel()) {
            return 0;
        }
        return Game.f8589i.towerManager.getUpgradePrice(tower.type, i, this.f8844S.gameValue);
    }

    public int getUpgradePrice(Tower tower) {
        int upgradeLevel = tower.getUpgradeLevel() + 1;
        int i = 0;
        if (upgradeLevel > tower.getMaxUpgradeLevel()) {
            return 0;
        }
        int upgradePrice = Game.f8589i.towerManager.getUpgradePrice(tower.type, upgradeLevel, this.f8844S.gameValue);
        float upgradePriceMultiplier = Game.f8589i.towerManager.getUpgradePriceMultiplier(tower.type);
        float f = 1.0f;
        if (upgradePriceMultiplier != 1.0f) {
            while (true) {
                DelayedRemovalArray<Tower> delayedRemovalArray = this.towers;
                if (i >= delayedRemovalArray.size) {
                    break;
                }
                Tower[] towerArr = delayedRemovalArray.items;
                if (towerArr[i].type == tower.type && towerArr[i].getUpgradeLevel() >= upgradeLevel) {
                    f *= upgradePriceMultiplier;
                }
                i++;
            }
            upgradePrice = (int) (upgradePrice * f);
        }
        if (tower.getTile() != null) {
            SpaceTileBonusType spaceTileBonusType = tower.getTile().bonusType;
            SpaceTileBonusType spaceTileBonusType2 = SpaceTileBonusType.UPGRADE_DISCOUNT;
            if (spaceTileBonusType == spaceTileBonusType2 && tower.getTile().bonusLevel > 0) {
                return (int) (upgradePrice * SpaceTileBonus.getEffect(spaceTileBonusType2, tower.getTile().bonusLevel));
            }
            return upgradePrice;
        }
        return upgradePrice;
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        m20876d();
        for (TowerStatType towerStatType : TowerStatType.values) {
            getMaxPossibleStat(towerStatType);
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.canTowerAttackEnemy = (boolean[][]) kryo.readObject(input, boolean[][].class);
        this.towerEnemyDamageMultiplier = (float[][]) kryo.readObject(input, float[][].class);
        this.towers = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f11818a = (ScheduledUpdater) kryo.readObject(input, ScheduledUpdater.class);
        this.f11819b = input.readFloat();
        this.f11820d = input.readVarInt(true);
        this.f11821k = (float[]) kryo.readObject(input, float[].class);
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
    }

    public void sellTowerAction(Tower tower) {
        if (tower.isOutOfOrder()) {
            return;
        }
        this.f8844S.gameState.pushAction(new SellTowerAction(tower.getTile().getX(), tower.getTile().getY()));
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.canTowerAttackEnemy);
        kryo.writeObject(output, this.towerEnemyDamageMultiplier);
        kryo.writeObject(output, this.towers);
        kryo.writeObject(output, this.f11818a);
        output.writeFloat(this.f11819b);
        output.writeVarInt(this.f11820d, true);
        kryo.writeObject(output, this.f11821k);
        kryo.writeObject(output, this.listeners);
    }

    public void buildTowerAction(TowerType towerType, Tower.AimStrategy aimStrategy, int i, int i2) {
        Tile tile;
        if (Game.f8589i.towerManager.getFactory(towerType).isAvailable(this.f8844S.gameValue) && (tile = this.f8844S.map.getMap().getTile(i, i2)) != null && tile.type == TileType.PLATFORM && ((PlatformTile) tile).building == null) {
            if (this.f8844S.gameState.getMoney() >= Game.f8589i.towerManager.getFactory(towerType).getBuildPrice(this.f8844S)) {
                this.f8844S.gameState.pushAction(new BuildTowerAction(towerType, aimStrategy, i, i2));
            }
        }
    }
}
