package com.prineside.tdi2.towers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.projectiles.LaserProjectile;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.systems.TowerSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
@REGS
/* loaded from: classes2.dex */
public class LaserTower extends Tower {

    /* renamed from: X */
    public static final Vector2 f12307X = new Vector2();

    /* renamed from: Y */
    public static final Vector2 f12308Y = new Vector2();

    /* renamed from: Z */
    public static final int[] f12309Z = {4, 0, 2, 3, 5};

    /* renamed from: M */
    public float f12310M;

    /* renamed from: N */
    public boolean f12311N;

    /* renamed from: O */
    public float f12312O;

    /* renamed from: P */
    public float f12313P;

    /* renamed from: Q */
    public float f12314Q;

    /* renamed from: R */
    public float f12315R;

    /* renamed from: T */
    public float f12316T;

    /* renamed from: U */
    public int f12317U;

    /* renamed from: V */
    public DelayedRemovalArray<ActiveLaserConfig> f12318V;

    /* renamed from: W */
    public _TowerSystemListener f12319W;
    public FloatArray ultDamageBonuses;

    /* renamed from: com.prineside.tdi2.towers.LaserTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24311 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12320a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12320a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12320a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12320a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12320a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12320a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class ActiveLaserConfig implements Pool.Poolable, KryoSerializable {

        /* renamed from: a */
        public LaserProjectile f12321a;

        /* renamed from: b */
        public float f12322b;

        /* renamed from: d */
        public float f12323d;

        /* renamed from: e */
        public static /* synthetic */ float m20736e(ActiveLaserConfig activeLaserConfig, float f) {
            float f2 = activeLaserConfig.f12322b - f;
            activeLaserConfig.f12322b = f2;
            return f2;
        }

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.f12321a = null;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f12321a = (LaserProjectile) kryo.readObject(input, LaserProjectile.class);
            this.f12322b = input.readFloat();
            this.f12323d = input.readFloat();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f12321a);
            output.writeFloat(this.f12322b);
            output.writeFloat(this.f12323d);
        }
    }

    /* loaded from: classes2.dex */
    public static class LaserTowerFactory extends Tower.Factory<LaserTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12324i;

        public LaserTowerFactory() {
            super("tower-laser", TowerType.LASER);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 53;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.LIGHT_BLUE.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24311.f12320a[generalizedTowerStatType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return i != 5 ? 0 : 1;
                        }
                        return 3;
                    }
                    return 5;
                }
                return 1;
            }
            return 5;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public LaserTower create() {
            return new LaserTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12324i = Game.f8589i.towerManager.getTextureConfig(TowerType.LASER, "weapon");
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-laser-weapon-shadow"), 57.0f, 34.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_HIGH_DAMAGE), 2, true).toString();
            abilityConfigs[0].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_LASER_A_HIGH_ENEMY_COUNT), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_LASER_A_MIRRORS_BEAM_COUNT), false).toString();
            abilityConfigs[1].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_MIRRORS_DAMAGE), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_LARGE_DURATION), 2, true).toString();
            abilityConfigs[2].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_LARGE_DAMAGE), 2, true).toString();
            abilityConfigs[2].descriptionArgs[2] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_LASER_A_LARGE_ROTATION_SPEED), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_LASER_A_IONIZATION_SPEED), 2, true).toString();
            abilityConfigs[3].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_LASER_A_IONIZATION_SPEED_REDUCTION), 2, true).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_LASER_A_ULTIMATE_DAMAGE_BONUS), 2, true).toString();
            abilityConfigs[4].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_LASER_A_ULTIMATE_DURATION), 2, true).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[1].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[2].descriptionArgs = new String[]{"", "", ""};
            abilityConfigArr[3].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[4].descriptionArgs = new String[]{"", ""};
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _TowerSystemListener extends TowerSystem.TowerSystemListener.TowerSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public LaserTower f12325a;

        public /* synthetic */ _TowerSystemListener(LaserTower laserTower, C24311 c24311) {
            this(laserTower);
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 8276511;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f12325a = (LaserTower) kryo.readObjectOrNull(input, LaserTower.class);
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerBuilt(Tower tower, int i) {
            this.f12325a.updateCache();
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerSold(Tower tower, int i) {
            LaserTower laserTower = this.f12325a;
            if (tower != laserTower) {
                laserTower.updateCache();
            }
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f12325a, LaserTower.class);
        }

        @Deprecated
        public _TowerSystemListener() {
        }

        public _TowerSystemListener(LaserTower laserTower) {
            this.f12325a = laserTower;
        }
    }

    public /* synthetic */ LaserTower(C24311 c24311) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    public float getUltDamageMultiplier() {
        if (!isAbilityInstalled(4)) {
            return 1.0f;
        }
        return (this.ultDamageBonuses.size * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_ULTIMATE_DAMAGE_BONUS))) + 1.0f;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(1)) {
            return Game.f8589i.towerManager.f10174F.LASER.getAbilityTextures(1);
        }
        return Game.f8589i.towerManager.f10174F.LASER.f12324i;
    }

    public LaserTower() {
        super(TowerType.LASER);
        this.ultDamageBonuses = new FloatArray(false, 4);
        this.f12318V = new DelayedRemovalArray<>(ActiveLaserConfig.class);
    }

    @Override // com.prineside.tdi2.Tower
    public void attack(int i) {
        int i2;
        int i3;
        int i4;
        if (getTarget() == null) {
            return;
        }
        this.f12311N = true;
        float f = 0.0f;
        this.f12312O = 0.0f;
        this.f12310M = 0.0f;
        if (isAbilityInstalled(0)) {
            i2 = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_LASER_A_HIGH_ENEMY_COUNT);
        } else {
            i2 = 1;
        }
        if (i2 < 1) {
            i3 = 1;
        } else {
            i3 = i2;
        }
        Pool pool = Pools.get(ActiveLaserConfig.class);
        float f2 = 6144.0f;
        if (isAbilityInstalled(1)) {
            int intValue = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_LASER_A_MIRRORS_BEAM_COUNT);
            if (intValue < 1) {
                i4 = 1;
            } else {
                i4 = intValue;
            }
            float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_LASER_A_MIRRORS_BEAM_ANGLE);
            float f3 = (-floatValue) * 0.5f;
            float f4 = floatValue / (i4 - 1);
            if (i4 == 1) {
                f3 = 0.0f;
            }
            float f5 = f3;
            int i5 = 0;
            while (i5 < i4) {
                LaserProjectile laserProjectile = (LaserProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.LASER).obtain();
                this.f8844S.projectile.register(laserProjectile);
                Vector2 vector2 = f12307X;
                vector2.set(f, 20.0f).rotate(this.angle).add(getTile().center);
                Vector2 vector22 = f12308Y;
                vector22.set(f, f2).rotate(this.angle + f5).add(getTile().center);
                float f6 = f5;
                laserProjectile.setup(this, this.f12316T, this.f12313P, vector2.f5527x, vector2.f5528y, vector22.f5527x, vector22.f5528y, i3);
                ActiveLaserConfig activeLaserConfig = (ActiveLaserConfig) pool.obtain();
                activeLaserConfig.f12321a = laserProjectile;
                activeLaserConfig.f12322b = this.f12316T;
                activeLaserConfig.f12323d = f6;
                this.f12318V.add(activeLaserConfig);
                f5 = f6 + f4;
                i5++;
                i4 = i4;
                f = 0.0f;
                f2 = 6144.0f;
            }
        } else {
            LaserProjectile laserProjectile2 = (LaserProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.LASER).obtain();
            this.f8844S.projectile.register(laserProjectile2);
            Vector2 vector23 = f12307X;
            vector23.set(0.0f, 20.0f).rotate(this.angle).add(getTile().center);
            Vector2 vector24 = f12308Y;
            vector24.set(0.0f, 6144.0f).rotate(this.angle).add(getTile().center);
            laserProjectile2.setup(this, this.f12316T, this.f12313P, vector23.f5527x, vector23.f5528y, vector24.f5527x, vector24.f5528y, i3);
            ActiveLaserConfig activeLaserConfig2 = (ActiveLaserConfig) pool.obtain();
            activeLaserConfig2.f12321a = laserProjectile2;
            activeLaserConfig2.f12322b = this.f12316T;
            activeLaserConfig2.f12323d = 0.0f;
            this.f12318V.add(activeLaserConfig2);
        }
        this.shotCount++;
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playShotSound(StaticSoundType.SHOT_LASER, this);
        }
    }

    @Override // com.prineside.tdi2.Tower
    public void fillTowerMenu(Group group, ObjectMap<String, Object> objectMap) {
        super.fillTowerMenu(group, objectMap);
        if (isAbilityInstalled(4)) {
            if (objectMap.size == 0 || !objectMap.get("state", -1).equals(1)) {
                group.clear();
                Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-damage"));
                image.setPosition(40.0f, 0.0f);
                image.setSize(48.0f, 48.0f);
                group.addActor(image);
                Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
                label.setPosition(102.0f, 24.0f);
                label.setSize(100.0f, 24.0f);
                group.addActor(label);
                Label label2 = new Label(Game.f8589i.localeManager.i18n.get("tower_ability_name_ultimate"), Game.f8589i.assetManager.getLabelStyle(21));
                label2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                label2.setPosition(102.0f, 0.0f);
                label2.setSize(100.0f, 20.0f);
                group.addActor(label2);
                objectMap.put("state", 1);
                objectMap.put("damageIcon", image);
                objectMap.put("bonusLabel", label);
            }
            Label label3 = (Label) objectMap.get("bonusLabel");
            Image image2 = (Image) objectMap.get("damageIcon");
            float ultDamageMultiplier = getUltDamageMultiplier();
            if (ultDamageMultiplier == 1.0f) {
                Color color = MaterialColor.GREY.P500;
                label3.setColor(color);
                image2.setColor(color);
            } else {
                Color color2 = MaterialColor.LIGHT_GREEN.P500;
                label3.setColor(color2);
                image2.setColor(color2);
            }
            StringBuilder stringBuilder = Tower.f8912J;
            stringBuilder.setLength(0);
            stringBuilder.append(SignatureVisitor.EXTENDS).append(Math.round((ultDamageMultiplier - 1.0f) * 100.0f)).append('%');
            label3.setText(stringBuilder);
            return;
        }
        group.clear();
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        if (this.f12311N) {
            return Float.MAX_VALUE;
        }
        return 100.0f / this.f12315R;
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.U_BATTERIES_CAPACITY && isAbilityInstalled(2)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_LARGE_DURATION);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        TowerStatType towerStatType2 = TowerStatType.DAMAGE;
        if (towerStatType == towerStatType2 && isAbilityInstalled(0)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_HIGH_DAMAGE);
            Double.isNaN(d2);
            statFromConfig = (float) (d2 * percentValueAsMultiplier2);
        }
        if (towerStatType == towerStatType2 && isAbilityInstalled(1)) {
            double d3 = statFromConfig;
            double percentValueAsMultiplier3 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_MIRRORS_DAMAGE);
            Double.isNaN(d3);
            statFromConfig = (float) (d3 * percentValueAsMultiplier3);
        }
        if (towerStatType == towerStatType2 && isAbilityInstalled(2)) {
            double d4 = statFromConfig;
            double percentValueAsMultiplier4 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_LARGE_DAMAGE);
            Double.isNaN(d4);
            statFromConfig = (float) (d4 * percentValueAsMultiplier4);
        }
        if (towerStatType == TowerStatType.CHARGING_SPEED && isAbilityInstalled(3)) {
            double d5 = statFromConfig;
            double d6 = this.f12317U;
            double percentValueAsMultiplier5 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_IONIZATION_SPEED_REDUCTION);
            Double.isNaN(d6);
            Double.isNaN(d5);
            return (float) (d5 * ((this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_IONIZATION_SPEED) + 1.0d) - (d6 * percentValueAsMultiplier5)));
        }
        return statFromConfig;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f8844S.tower.listeners.remove(this.f12319W);
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        DelayedRemovalArray<ActiveLaserConfig> delayedRemovalArray;
        this.f12318V.begin();
        int i = 0;
        int i2 = 0;
        while (true) {
            delayedRemovalArray = this.f12318V;
            if (i2 >= delayedRemovalArray.size) {
                break;
            }
            ActiveLaserConfig activeLaserConfig = delayedRemovalArray.items[i2];
            ActiveLaserConfig.m20736e(activeLaserConfig, f);
            if (activeLaserConfig.f12322b <= 0.0f) {
                Pools.free(this.f12318V.removeIndex(i2));
            }
            i2++;
        }
        delayedRemovalArray.end();
        float f2 = this.f12312O + f;
        this.f12312O = f2;
        if (this.f12311N && f2 < this.f12316T) {
            if (isAbilityInstalled(2)) {
                float f3 = this.angle;
                m21892e(f, this.f12314Q * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_LASER_A_LARGE_ROTATION_SPEED)));
                if (f3 != this.angle) {
                    while (true) {
                        DelayedRemovalArray<ActiveLaserConfig> delayedRemovalArray2 = this.f12318V;
                        if (i >= delayedRemovalArray2.size) {
                            break;
                        }
                        ActiveLaserConfig activeLaserConfig2 = delayedRemovalArray2.items[i];
                        Vector2 vector2 = f12307X;
                        vector2.set(0.0f, 20.0f).rotate(this.angle).add(getTile().center);
                        Vector2 vector22 = f12308Y;
                        vector22.set(0.0f, 6144.0f).rotate(this.angle + activeLaserConfig2.f12323d).add(getTile().center);
                        activeLaserConfig2.f12321a.setStartPos(vector2.f5527x, vector2.f5528y);
                        activeLaserConfig2.f12321a.setEndPos(vector22.f5527x, vector22.f5528y);
                        activeLaserConfig2.f12321a.handleCollisions(0.0f);
                        i++;
                    }
                }
            }
        } else {
            this.f12311N = false;
            if (!isOutOfOrder()) {
                float f4 = this.f12310M + (this.f12315R * f);
                this.f12310M = f4;
                if (f4 > 100.0f) {
                    this.f12310M = 100.0f;
                }
                m21892e(f, this.f12314Q);
            }
        }
        for (int i3 = this.ultDamageBonuses.size - 1; i3 >= 0; i3--) {
            FloatArray floatArray = this.ultDamageBonuses;
            float[] fArr = floatArray.items;
            float f5 = fArr[i3] - f;
            fArr[i3] = f5;
            if (f5 <= 0.0f) {
                floatArray.removeIndex(i3);
            }
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAttack() {
        boolean canAttack = super.canAttack();
        if (this.f12311N || isOutOfOrder() || !canAttack || this.f12310M < 100.0f) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12309Z) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.LASER.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        String str;
        super.drawBatch(spriteBatch, f);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_BUILDING_INFO) != 0.0d) {
            BitmapFont debugFont = Game.f8589i.assetManager.getDebugFont(false);
            StringBuilder sb = new StringBuilder();
            if (this.f12311N) {
                str = "+";
            } else {
                str = "-";
            }
            sb.append(str);
            sb.append(" ");
            sb.append((int) this.f12310M);
            debugFont.draw(spriteBatch, sb.toString(), getTile().center.f5527x - 50.0f, getTile().center.f5528y - 30.0f, 100.0f, 1, false);
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12310M = input.readFloat();
        this.f12311N = input.readBoolean();
        this.f12312O = input.readFloat();
        this.f12313P = input.readFloat();
        this.f12314Q = input.readFloat();
        this.f12315R = input.readFloat();
        this.f12316T = input.readFloat();
        this.f12317U = input.readVarInt(true);
        this.ultDamageBonuses = (FloatArray) kryo.readObject(input, FloatArray.class);
        this.f12318V = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f12319W = (_TowerSystemListener) kryo.readObjectOrNull(input, _TowerSystemListener.class);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Registrable
    public void setRegistered(GameSystemProvider gameSystemProvider) {
        super.setRegistered(gameSystemProvider);
        if (this.f12319W == null) {
            this.f12319W = new _TowerSystemListener(this, null);
        }
        this.f8844S.tower.listeners.add(this.f12319W);
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        Building building;
        if (getTile() != null && getTile().getMap() != null) {
            this.f12317U = 0;
            Array<Tile> neighbourTiles = getTile().getNeighbourTiles();
            for (int i = 0; i < neighbourTiles.size; i++) {
                Tile[] tileArr = neighbourTiles.items;
                if (tileArr[i].type == TileType.PLATFORM && (building = ((PlatformTile) tileArr[i]).building) != null && building.buildingType == BuildingType.TOWER) {
                    this.f12317U++;
                }
            }
        } else {
            this.f12317U = 0;
        }
        super.updateCache();
        this.f12313P = getStatBuffed(TowerStatType.DAMAGE);
        this.f12315R = getStatBuffed(TowerStatType.CHARGING_SPEED);
        this.f12314Q = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12316T = getStatBuffed(TowerStatType.U_BATTERIES_CAPACITY);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f12310M);
        output.writeBoolean(this.f12311N);
        output.writeFloat(this.f12312O);
        output.writeFloat(this.f12313P);
        output.writeFloat(this.f12314Q);
        output.writeFloat(this.f12315R);
        output.writeFloat(this.f12316T);
        output.writeVarInt(this.f12317U, true);
        kryo.writeObject(output, this.ultDamageBonuses);
        kryo.writeObject(output, this.f12318V);
        kryo.writeObjectOrNull(output, this.f12319W, _TowerSystemListener.class);
    }
}
