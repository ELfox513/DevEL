package com.prineside.tdi2.towers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.TowerManager;
import com.prineside.tdi2.projectiles.AirProjectile;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class AirTower extends Tower {

    /* renamed from: V */
    public static final int[] f12157V = {4, 1, 2, 3, 5};

    /* renamed from: M */
    public float f12158M;

    /* renamed from: N */
    public Vector2 f12159N;

    /* renamed from: O */
    public float f12160O;

    /* renamed from: P */
    public float f12161P;

    /* renamed from: Q */
    public float f12162Q;

    /* renamed from: R */
    public float f12163R;

    /* renamed from: T */
    public float f12164T;

    /* renamed from: U */
    public float f12165U;
    public boolean currentTargetIgnited;

    /* renamed from: com.prineside.tdi2.towers.AirTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24231 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12166a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12166a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12166a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12166a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12166a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12166a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class AirTowerFactory extends Tower.Factory<AirTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12167i;

        public AirTowerFactory() {
            super("tower-air", TowerType.AIR);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 52;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.CYAN.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24231.f12166a[generalizedTowerStatType.ordinal()];
            if (i == 1 || i == 2) {
                return 5;
            }
            if (i != 3) {
                if (i != 4) {
                    return i != 5 ? 0 : 3;
                }
                return 1;
            }
            return 4;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public AirTower create() {
            return new AirTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            TowerManager towerManager = Game.f8589i.towerManager;
            TowerType towerType = TowerType.AIR;
            this.f8944e = towerManager.getTextureConfig(towerType, "base");
            this.f12167i = Game.f8589i.towerManager.getTextureConfig(towerType, "weapon");
            this.f8945f = Game.f8589i.towerManager.getTextureConfig(towerType, "base-shadow");
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-air-weapon-shadow"), 56.0f, 28.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_AIR_A_HEAVY_WEAPONS_DAMAGE), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_AIR_A_FAST_MECHANISM_SPEED), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_AIR_A_FOUNDATION_SPEED), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_AIR_A_AIMED_DROP_DAMAGE) * 100.0d, false).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_AIR_A_ULTIMATE_DAMAGE), 2, true).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{""};
            abilityConfigArr[1].descriptionArgs = new String[]{""};
            abilityConfigArr[2].descriptionArgs = new String[]{""};
            abilityConfigArr[3].descriptionArgs = new String[]{""};
            abilityConfigArr[4].descriptionArgs = new String[]{""};
        }
    }

    public /* synthetic */ AirTower(C24231 c24231) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return this.f12165U;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(0)) {
            return Game.f8589i.towerManager.f10174F.AIR.getAbilityTextures(0);
        }
        return Game.f8589i.towerManager.f10174F.AIR.f12167i;
    }

    public AirTower() {
        super(TowerType.AIR);
        this.f12158M = 90.0f;
        this.f12159N = new Vector2();
    }

    @Override // com.prineside.tdi2.Tower
    public int getEnemyPriority(Enemy enemy) {
        if (enemy.hasBuffsByType(BuffType.BURN)) {
            if (enemy.lowAimPriority) {
                return -5;
            }
            return 5;
        }
        return super.getEnemyPriority(enemy);
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.DAMAGE && isAbilityInstalled(0)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_AIR_A_HEAVY_WEAPONS_DAMAGE);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == TowerStatType.ATTACK_SPEED && isAbilityInstalled(1)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_AIR_A_FAST_MECHANISM_SPEED);
            Double.isNaN(d2);
            statFromConfig = (float) (d2 * percentValueAsMultiplier2);
        }
        if ((towerStatType == TowerStatType.PROJECTILE_SPEED || towerStatType == TowerStatType.ROTATION_SPEED) && isAbilityInstalled(2)) {
            double d3 = statFromConfig;
            double percentValueAsMultiplier3 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_AIR_A_FOUNDATION_SPEED);
            Double.isNaN(d3);
            return (float) (d3 * percentValueAsMultiplier3);
        }
        return statFromConfig;
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        m21892e(f, this.f12164T);
        if (this.currentTargetIgnited) {
            this.currentTargetIgnited = false;
            Enemy findTarget = findTarget();
            if (getTarget() != findTarget) {
                setTarget(findTarget);
            }
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public void attack(int i) {
        if (getTarget() == null) {
            return;
        }
        this.f12158M = -this.f12158M;
        this.f12159N.set(getTile().center);
        PMath.shiftPointByAngle(this.f12159N, this.angle, 24.0f);
        PMath.shiftPointByAngle(this.f12159N, this.angle + this.f12158M, 5.0f);
        AirProjectile airProjectile = (AirProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.AIR).obtain();
        this.f8844S.projectile.register(airProjectile);
        airProjectile.setup(this, getTarget(), this.f12161P * i, this.f12159N, this.f12160O, this.f12162Q, this.f12163R, isAbilityInstalled(3));
        this.shotCount += i;
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playShotSound(StaticSoundType.SHOT_AIR, this);
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12157V) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.AIR.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12158M = input.readFloat();
        this.f12159N = (Vector2) kryo.readObject(input, Vector2.class);
        this.f12160O = input.readFloat();
        this.f12161P = input.readFloat();
        this.f12162Q = input.readFloat();
        this.f12163R = input.readFloat();
        this.f12164T = input.readFloat();
        this.f12165U = input.readFloat();
        this.currentTargetIgnited = input.readBoolean();
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12161P = getStatBuffed(TowerStatType.DAMAGE);
        this.f12160O = getStatBuffed(TowerStatType.PROJECTILE_SPEED);
        this.f12162Q = getStatBuffed(TowerStatType.U_BURN_CHANCE) * 0.01f;
        this.f12163R = getStatBuffed(TowerStatType.U_BURNING_TIME);
        this.f12164T = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12165U = 1.0f / getStatBuffed(TowerStatType.ATTACK_SPEED);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f12158M);
        kryo.writeObject(output, this.f12159N);
        output.writeFloat(this.f12160O);
        output.writeFloat(this.f12161P);
        output.writeFloat(this.f12162Q);
        output.writeFloat(this.f12163R);
        output.writeFloat(this.f12164T);
        output.writeFloat(this.f12165U);
        output.writeBoolean(this.currentTargetIgnited);
    }
}
