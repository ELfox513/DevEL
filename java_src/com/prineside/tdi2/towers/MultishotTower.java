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
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.projectiles.MultishotProjectile;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class MultishotTower extends Tower {

    /* renamed from: T */
    public static final Vector2 f12365T = new Vector2();

    /* renamed from: U */
    public static final Vector2 f12366U = new Vector2();

    /* renamed from: V */
    public static final int[] f12367V = {4, 1, 2, 3, 5};

    /* renamed from: M */
    public float f12368M;

    /* renamed from: N */
    public float f12369N;

    /* renamed from: O */
    public float f12370O;

    /* renamed from: P */
    public float f12371P;

    /* renamed from: Q */
    public float f12372Q;

    /* renamed from: R */
    public float f12373R;

    /* renamed from: com.prineside.tdi2.towers.MultishotTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24341 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12374a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12374a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12374a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12374a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12374a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12374a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class MultishotTowerFactory extends Tower.Factory<MultishotTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12375i;

        public MultishotTowerFactory() {
            super("tower-multishot", TowerType.MULTISHOT);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 34;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.YELLOW.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24341.f12374a[generalizedTowerStatType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return i != 5 ? 0 : 3;
                        }
                        return 4;
                    }
                    return 2;
                }
                return 3;
            }
            return 4;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public MultishotTower create() {
            return new MultishotTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12375i = Game.f8589i.towerManager.getTextureConfig(TowerType.MULTISHOT, "weapon");
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-multishot-weapon-shadow"), 57.0f, 40.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MULTISHOT_A_PENETRATING_DAMAGE), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MULTISHOT_A_COMPACT_ARC_SIZE), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MULTISHOT_A_COUNTER_DAMAGE), 2, true).toString();
            abilityConfigs[3].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MULTISHOT_A_COUNTER_SPEED), 2, true).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MULTISHOT_A_BACK_SHOT_DAMAGE), 2, true).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{""};
            abilityConfigArr[2].descriptionArgs = new String[]{""};
            abilityConfigArr[3].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[4].descriptionArgs = new String[]{""};
        }
    }

    public /* synthetic */ MultishotTower(C24341 c24341) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return this.f12373R;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(0)) {
            return Game.f8589i.towerManager.f10174F.MULTISHOT.getAbilityTextures(0);
        }
        return Game.f8589i.towerManager.f10174F.MULTISHOT.f12375i;
    }

    public MultishotTower() {
        super(TowerType.MULTISHOT);
    }

    @Override // com.prineside.tdi2.Tower
    public void attack(int i) {
        if (getTarget() == null) {
            return;
        }
        float f = this.f12372Q;
        int i2 = (int) f;
        if (f % 1.0f != 0.0f && this.f8844S.gameState.randomFloat() < this.f12372Q % 1.0f) {
            i2++;
        }
        int i3 = i2;
        float f2 = this.f12371P;
        float f3 = f2 / this.f12372Q;
        float f4 = this.angle - (f2 / 2.0f);
        for (int i4 = 0; i4 < i3; i4++) {
            Vector2 vector2 = f12365T;
            PMath.getPointByAngleFromPoint(getTile().center.f5527x, getTile().center.f5528y, f4, 12.0f, vector2);
            Vector2 vector22 = f12366U;
            PMath.getPointByAngleFromPoint(getTile().center.f5527x, getTile().center.f5528y, f4, this.rangeInPixels, vector22);
            MultishotProjectile multishotProjectile = (MultishotProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.MULTISHOT).obtain();
            this.f8844S.projectile.register(multishotProjectile);
            multishotProjectile.setup(this, this.f12368M * i, vector2, vector22, this.f12370O, isAbilityInstalled(0), isAbilityInstalled(1), isAbilityInstalled(3));
            f4 += f3;
        }
        if (isAbilityInstalled(4)) {
            float percentValueAsMultiplier = this.f12368M * i * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MULTISHOT_A_BACK_SHOT_DAMAGE));
            Vector2 vector23 = f12365T;
            PMath.getPointByAngleFromPoint(getTile().center.f5527x, getTile().center.f5528y, this.angle + 180.0f, 12.0f, vector23);
            Vector2 vector24 = f12366U;
            PMath.getPointByAngleFromPoint(getTile().center.f5527x, getTile().center.f5528y, this.angle + 180.0f, this.rangeInPixels, vector24);
            MultishotProjectile multishotProjectile2 = (MultishotProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.MULTISHOT).obtain();
            multishotProjectile2.flyingBack = true;
            this.f8844S.projectile.register(multishotProjectile2);
            multishotProjectile2.setup(this, percentValueAsMultiplier, vector23, vector24, this.f12370O, isAbilityInstalled(0), isAbilityInstalled(1), isAbilityInstalled(3));
        }
        this.shotCount += i;
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playShotSound(StaticSoundType.SHOT_MULTISHOT, this);
        }
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.U_SHOOT_ANGLE && isAbilityInstalled(2)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MULTISHOT_A_COMPACT_ARC_SIZE);
            Double.isNaN(d);
            return (float) (d * percentValueAsMultiplier);
        }
        return statFromConfig;
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        m21892e(f, this.f12369N);
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAttack() {
        if (getTarget() == null || this.attackDisabled) {
            return false;
        }
        Vector2 vector2 = f12366U;
        vector2.set(getTarget().getPosition());
        if (StrictMath.abs(PMath.getDistanceBetweenAngles(this.angle, PMath.getAngleBetweenPoints(getTile().center.f5527x, getTile().center.f5528y, vector2.f5527x, vector2.f5528y))) >= (this.f12371P / 2.0f) + 3.0f) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAttackEnemy(Enemy enemy) {
        if (enemy.isAir() && !isAbilityInstalled(1)) {
            return false;
        }
        return super.canAttackEnemy(enemy);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12367V) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.MULTISHOT.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12368M = input.readFloat();
        this.f12369N = input.readFloat();
        this.f12370O = input.readFloat();
        this.f12371P = input.readFloat();
        this.f12372Q = input.readFloat();
        this.f12373R = input.readFloat();
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12368M = getStatBuffed(TowerStatType.DAMAGE);
        this.f12369N = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12370O = getStatBuffed(TowerStatType.PROJECTILE_SPEED);
        this.f12371P = getStatBuffed(TowerStatType.U_SHOOT_ANGLE);
        this.f12372Q = getStatBuffed(TowerStatType.U_PROJECTILE_COUNT);
        this.f12373R = 1.0f / getStatBuffed(TowerStatType.ATTACK_SPEED);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f12368M);
        output.writeFloat(this.f12369N);
        output.writeFloat(this.f12370O);
        output.writeFloat(this.f12371P);
        output.writeFloat(this.f12372Q);
        output.writeFloat(this.f12373R);
    }
}
