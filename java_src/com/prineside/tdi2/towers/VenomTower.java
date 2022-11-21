package com.prineside.tdi2.towers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.PoisonBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.projectiles.VenomProjectile;
import com.prineside.tdi2.shapes.Circle;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class VenomTower extends Tower {
    public static final int ABILITY_FAST_SHELLS = 2;

    /* renamed from: Z */
    public static final Vector2 f12428Z = new Vector2();

    /* renamed from: a0 */
    public static final Array<Tile> f12429a0 = new Array<>(Tile.class);

    /* renamed from: b0 */
    public static final int[] f12430b0 = {4, 2, 1, 3, 5};
    @NAGS

    /* renamed from: M */
    public Circle f12431M;
    @NAGS

    /* renamed from: N */
    public ParticleEffectPool.PooledEffect f12432N;

    /* renamed from: O */
    public boolean f12433O;

    /* renamed from: P */
    public float f12434P;

    /* renamed from: Q */
    public float f12435Q;

    /* renamed from: R */
    public float f12436R;

    /* renamed from: T */
    public boolean f12437T;

    /* renamed from: U */
    public float f12438U;

    /* renamed from: V */
    public float f12439V;

    /* renamed from: W */
    public float f12440W;

    /* renamed from: X */
    public float f12441X;

    /* renamed from: Y */
    public float f12442Y;

    /* renamed from: com.prineside.tdi2.towers.VenomTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24381 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12443a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12443a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12443a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12443a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12443a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12443a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class VenomTowerFactory extends Tower.Factory<VenomTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12444i;

        /* renamed from: j */
        public ParticleEffectPool f12445j;

        public VenomTowerFactory() {
            super("tower-venom", TowerType.VENOM);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 29;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.LIGHT_GREEN.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24381.f12443a[generalizedTowerStatType.ordinal()];
            int i2 = 3;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        i2 = 4;
                        if (i != 4) {
                            return i != 5 ? 0 : 2;
                        }
                    }
                    return i2;
                }
                return 2;
            }
            return 3;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public VenomTower create() {
            return new VenomTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12444i = Game.f8589i.towerManager.getTextureConfig(TowerType.VENOM, "weapon");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/poison-cloud.prt"), Game.f8589i.assetManager.getTextureRegion("small-circle").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f12445j = new ParticleEffectPool(particleEffect, 16, 1024);
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-venom-weapon-shadow"), 57.0f, 26.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_VENOM_A_CONCENTRATE_DAMAGE), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_VENOM_A_HARD_DAMAGE), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_VENOM_A_FAST_SPEED), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_VENOM_A_CLOUD_RANGE), 2, true).toString();
            abilityConfigs[3].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_VENOM_A_CLOUD_DAMAGE_COEFF), 2, true).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_VENOM_A_CHAIN_DURATION), 2, true).toString();
            abilityConfigs[4].descriptionArgs[1] = StringFormatter.compactNumber(((VenomTower) tower).getUltimateChance() * 100.0f, 2, true).toString();
            abilityConfigs[4].descriptionArgs[2] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_VENOM_A_CHAIN_RANGE), 2, true).toString();
            abilityConfigs[4].descriptionArgs[3] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_VENOM_A_CHAIN_PROLONG), 2, true).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{""};
            abilityConfigArr[1].descriptionArgs = new String[]{""};
            abilityConfigArr[2].descriptionArgs = new String[]{""};
            abilityConfigArr[3].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[4].descriptionArgs = new String[]{"", "", "", ""};
        }
    }

    public /* synthetic */ VenomTower(C24381 c24381) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return this.f12436R;
    }

    public float getPoisonousCloudRange() {
        return this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_VENOM_A_CLOUD_RANGE);
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(0)) {
            return Game.f8589i.towerManager.f10174F.VENOM.getAbilityTextures(0);
        }
        return Game.f8589i.towerManager.f10174F.VENOM.f12444i;
    }

    public VenomTower() {
        super(TowerType.VENOM);
        this.f12437T = false;
    }

    /* renamed from: f */
    public final void m20728f() {
        if (this.f12437T && isRegistered() && this.f8844S._particle != null && isAbilityInstalled(3) && Game.f8589i.settingsManager.isParticlesDrawing()) {
            if (this.f12432N == null && !this.f8844S._particle.willParticleBeSkipped()) {
                ParticleEffectPool.PooledEffect obtain = Game.f8589i.towerManager.f10174F.VENOM.f12445j.obtain();
                this.f12432N = obtain;
                this.f8844S._particle.addParticle(obtain, true);
                this.f12432N.setPosition(getTile().center.f5527x, getTile().center.f5528y);
                return;
            }
            return;
        }
        ParticleEffectPool.PooledEffect pooledEffect = this.f12432N;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f12432N = null;
        }
    }

    @Override // com.prineside.tdi2.Tower
    public int getEnemyPriority(Enemy enemy) {
        if (enemy.hasBuffsByType(BuffType.POISON)) {
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
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_VENOM_A_CONCENTRATE_DAMAGE);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == TowerStatType.PROJECTILE_SPEED && isAbilityInstalled(2)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_VENOM_A_FAST_SPEED);
            Double.isNaN(d2);
            return (float) (d2 * percentValueAsMultiplier2);
        }
        return statFromConfig;
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        int i;
        int i2;
        m21892e(f, this.f12438U);
        float poisonousCloudRange = getPoisonousCloudRange() * 128.0f;
        float f2 = poisonousCloudRange * poisonousCloudRange;
        float f3 = this.f12434P + f;
        this.f12434P = f3;
        if (f3 > 0.33f) {
            if (isAbilityInstalled(3)) {
                float percentValueAsMultiplier = this.f12434P * this.f12442Y * this.f12435Q * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_VENOM_A_CLOUD_DAMAGE_COEFF));
                Array<Tile> tilesInRange = getTilesInRange();
                Array<Tile> array = f12429a0;
                array.clear();
                array.addAll(tilesInRange);
                int i3 = array.size;
                for (int i4 = 0; i4 < i3; i4++) {
                    DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = f12429a0.items[i4].enemies;
                    delayedRemovalArray.begin();
                    int i5 = delayedRemovalArray.size;
                    int i6 = 0;
                    while (i6 < i5) {
                        Enemy enemy = delayedRemovalArray.items[i6].enemy;
                        if (enemy != null) {
                            DamageType damageType = DamageType.POISON;
                            if (enemy.isVulnerableTo(damageType) && enemy.getPosition().dst2(getTile().center) < f2) {
                                i = i6;
                                i2 = i5;
                                this.f8844S.enemy.giveDamage(enemy, this, percentValueAsMultiplier, damageType, null, true, null);
                                i6 = i + 1;
                                i5 = i2;
                            }
                        }
                        i = i6;
                        i2 = i5;
                        i6 = i + 1;
                        i5 = i2;
                    }
                    delayedRemovalArray.end();
                }
                f12429a0.clear();
            }
            this.f12434P = 0.0f;
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public void attack(int i) {
        if (getTarget() == null) {
            return;
        }
        Vector2 vector2 = f12428Z;
        PMath.getPointByAngleFromPoint(getTile().center.f5527x, getTile().center.f5528y, this.angle, 12.0f, vector2);
        VenomProjectile venomProjectile = (VenomProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.VENOM).obtain();
        this.f8844S.projectile.register(venomProjectile);
        PoisonBuff obtain = Game.f8589i.buffManager.f9699F.POISON.obtain();
        float f = this.f12440W;
        obtain.setup(this, f, f * 10.0f, this.f12441X * i, this.f12442Y, null);
        venomProjectile.setup(this, getTarget(), obtain, vector2, this.f12439V);
        if (!this.f12433O) {
            setTarget(null);
        }
        this.shotCount += i;
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playShotSound(StaticSoundType.SHOT_VENOM, this);
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12430b0) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.VENOM.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        super.drawBatch(spriteBatch, f);
        if (this.f8844S._mapRendering.getDrawMode() == MapRenderingSystem.DrawMode.DETAILED) {
            if (isAbilityInstalled(3) && this.f12431M == null && Game.f8589i.shapeManager != null) {
                float poisonousCloudRange = getPoisonousCloudRange() * 128.0f;
                this.f12431M = (Circle) Game.f8589i.shapeManager.getFactory(ShapeType.CIRCLE).obtain();
                Color color = MaterialColor.LIGHT_GREEN.P500;
                Color cpy = color.cpy();
                cpy.f3889a = 0.0f;
                Color cpy2 = color.cpy();
                cpy2.f3889a = 0.07f;
                this.f12431M.setup(getTile().center.f5527x, getTile().center.f5528y, 0.67f * poisonousCloudRange, poisonousCloudRange, 32, cpy.toFloatBits(), cpy2.toFloatBits());
            }
            Circle circle = this.f12431M;
            if (circle != null) {
                circle.draw(spriteBatch);
            }
        }
    }

    @Override // com.prineside.tdi2.Tower
    public Enemy findTarget() {
        boolean z;
        Enemy findTarget = super.findTarget();
        if (findTarget != null) {
            DelayedRemovalArray[] delayedRemovalArrayArr = findTarget.buffsByType;
            if (delayedRemovalArrayArr != null && delayedRemovalArrayArr[BuffType.POISON.ordinal()].size != 0) {
                z = true;
            } else {
                z = false;
            }
            this.f12433O = z;
        }
        return findTarget;
    }

    public float getUltimateChance() {
        float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_VENOM_A_CHAIN_CHANCE_MIN);
        return percentValueAsMultiplier + ((((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_VENOM_A_CHAIN_CHANCE_MAX)) - percentValueAsMultiplier) * (getUpgradeLevel() / 10.0f));
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void placedOnMap() {
        super.placedOnMap();
        this.f12437T = true;
        m20728f();
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12433O = input.readBoolean();
        this.f12434P = input.readFloat();
        this.f12435Q = input.readFloat();
        this.f12436R = input.readFloat();
        this.f12437T = input.readBoolean();
        this.f12438U = input.readFloat();
        this.f12439V = input.readFloat();
        this.f12440W = input.readFloat();
        this.f12441X = input.readFloat();
        this.f12442Y = input.readFloat();
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void removedFromMap() {
        super.removedFromMap();
        ParticleEffectPool.PooledEffect pooledEffect = this.f12432N;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f12432N = null;
        }
        Circle circle = this.f12431M;
        if (circle != null) {
            circle.free();
            this.f12431M = null;
        }
        this.f12437T = false;
    }

    @Override // com.prineside.tdi2.Tower
    public void setExperience(float f) {
        super.setExperience(f);
        m20728f();
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12438U = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12439V = getStatBuffed(TowerStatType.PROJECTILE_SPEED);
        this.f12440W = getStatBuffed(TowerStatType.U_POISON_DURATION);
        float statBuffed = getStatBuffed(TowerStatType.DAMAGE);
        this.f12442Y = statBuffed;
        this.f12441X = statBuffed;
        if (isAbilityInstalled(1)) {
            this.f12441X = this.f12442Y * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_VENOM_A_HARD_DAMAGE));
        }
        float statBuffed2 = getStatBuffed(TowerStatType.ATTACK_SPEED);
        this.f12435Q = statBuffed2;
        this.f12436R = 1.0f / statBuffed2;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.f12433O);
        output.writeFloat(this.f12434P);
        output.writeFloat(this.f12435Q);
        output.writeFloat(this.f12436R);
        output.writeBoolean(this.f12437T);
        output.writeFloat(this.f12438U);
        output.writeFloat(this.f12439V);
        output.writeFloat(this.f12440W);
        output.writeFloat(this.f12441X);
        output.writeFloat(this.f12442Y);
    }
}
