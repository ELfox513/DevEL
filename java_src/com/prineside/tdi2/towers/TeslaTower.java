package com.prineside.tdi2.towers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Animation;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.projectiles.ChainLightningProjectile;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.units.BallLightningUnit;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class TeslaTower extends Tower {

    /* renamed from: R */
    public static final Array<Tile> f12417R = new Array<>();

    /* renamed from: T */
    public static final Vector2 f12418T = new Vector2();

    /* renamed from: U */
    public static final int[] f12419U = {4, 1, 2, 3, 5};

    /* renamed from: M */
    public float f12420M;

    /* renamed from: N */
    public float f12421N;

    /* renamed from: O */
    public float f12422O;

    /* renamed from: P */
    public float f12423P;

    /* renamed from: Q */
    public Tile f12424Q;
    public float attackDelay;
    public float damage;
    public float damageSinceLastBallLightning;

    /* renamed from: com.prineside.tdi2.towers.TeslaTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24371 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12425a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12425a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12425a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12425a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12425a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12425a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class TeslaTowerFactory extends Tower.Factory<TeslaTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12426i;

        /* renamed from: j */
        public Animation<ResourcePack.AtlasTextureRegion> f12427j;

        public TeslaTowerFactory() {
            super("tower-tesla", TowerType.TESLA);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 31;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.INDIGO.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24371.f12425a[generalizedTowerStatType.ordinal()];
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
        public TeslaTower create() {
            return new TeslaTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12426i = Game.f8589i.towerManager.getTextureConfig(TowerType.TESLA, "weapon");
            this.f12427j = Game.f8589i.unitManager.f10234F.BALL_LIGHTNING.getBallAnimation();
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-tesla-weapon-shadow"), 57.0f, 36.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_A_CURRENT_DAMAGE), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_A_BATTERIES_SPEED), 2, true).toString();
            abilityConfigs[1].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_A_BATTERIES_DAMAGE), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_A_VOLTAGE_LENGTH), 2, true).toString();
            abilityConfigs[2].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_TESLA_A_VOLTAGE_MIN_DAMAGE), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_TESLA_A_BALL_DAMAGE), false).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_TESLA_A_ULTIMATE_KILL_INTERVAL), false).toString();
            abilityConfigs[4].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_TESLA_A_ULTIMATE_DAMAGE), 2, true).toString();
            abilityConfigs[4].descriptionArgs[2] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_TESLA_A_ULTIMATE_DURATION), 2, true).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{""};
            abilityConfigArr[1].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[2].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[3].descriptionArgs = new String[]{""};
            abilityConfigArr[4].descriptionArgs = new String[]{"", "", ""};
        }
    }

    public /* synthetic */ TeslaTower(C24371 c24371) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return this.attackDelay;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(0)) {
            return Game.f8589i.towerManager.f10174F.TESLA.getAbilityTextures(0);
        }
        return Game.f8589i.towerManager.f10174F.TESLA.f12426i;
    }

    public TeslaTower() {
        super(TowerType.TESLA);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        if (this.f12424Q != null) {
            float f2 = this.f12423P;
            ResourcePack.AtlasTextureRegion keyFrame = Game.f8589i.towerManager.f10174F.TESLA.f12427j.getKeyFrame(f2, true);
            float regionWidth = keyFrame.getRegionWidth() * (f2 / 7.0f);
            Vector2 vector2 = this.f12424Q.center;
            float f3 = 0.5f * regionWidth;
            spriteBatch.draw(keyFrame, vector2.f5527x - f3, vector2.f5528y - f3, regionWidth, regionWidth);
        }
        super.drawBatch(spriteBatch, f);
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.U_CHAIN_LIGHTNING_LENGTH && isAbilityInstalled(2)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_A_VOLTAGE_LENGTH);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        TowerStatType towerStatType2 = TowerStatType.DAMAGE;
        if (towerStatType == towerStatType2 && isAbilityInstalled(0)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_A_CURRENT_DAMAGE);
            Double.isNaN(d2);
            statFromConfig = (float) (d2 * percentValueAsMultiplier2);
        }
        if (towerStatType == towerStatType2 && isAbilityInstalled(1)) {
            double d3 = statFromConfig;
            double percentValueAsMultiplier3 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_A_BATTERIES_DAMAGE);
            Double.isNaN(d3);
            statFromConfig = (float) (d3 * percentValueAsMultiplier3);
        }
        if (towerStatType == TowerStatType.ATTACK_SPEED && isAbilityInstalled(1)) {
            double d4 = statFromConfig;
            double percentValueAsMultiplier4 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_A_BATTERIES_SPEED);
            Double.isNaN(d4);
            return (float) (d4 * percentValueAsMultiplier4);
        }
        return statFromConfig;
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        boolean z;
        m21892e(f, this.f12420M);
        if (isAbilityInstalled(3)) {
            Array<Tile> tilesInRange = getTilesInRange();
            int i = 0;
            while (true) {
                if (i < tilesInRange.size) {
                    if (tilesInRange.items[i].enemies.size != 0) {
                        z = true;
                        break;
                    }
                    i++;
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                if (this.f12424Q == null) {
                    f12417R.clear();
                    float f2 = 0.0f;
                    for (int i2 = 0; i2 < tilesInRange.size; i2++) {
                        Tile tile = tilesInRange.items[i2];
                        if (!(tile instanceof SpawnTile)) {
                            float dst2 = tile.center.dst2(getTile().center);
                            Array<Tile> array = f12417R;
                            if (array.size == 0) {
                                array.add(tile);
                            } else if (StrictMath.abs(dst2 - f2) < 12.8f) {
                                array.add(tile);
                            } else if (dst2 < f2) {
                                array.clear();
                                array.add(tile);
                            }
                            f2 = dst2;
                        }
                    }
                    Array<Tile> array2 = f12417R;
                    int i3 = array2.size;
                    if (i3 != 0) {
                        this.f12424Q = array2.get(this.f8844S.gameState.randomInt(i3));
                    }
                }
                if (this.f12424Q != null) {
                    float f3 = this.f12423P + f;
                    this.f12423P = f3;
                    if (f3 >= 7.0f) {
                        BallLightningUnit create = Game.f8589i.unitManager.f10234F.BALL_LIGHTNING.create();
                        create.setup(this, this.damage * (1.0f / this.attackDelay) * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_A_BALL_DAMAGE)));
                        if (this.f8844S.unit.preparePathToRandomSpawn(create, this.f12424Q)) {
                            this.f8844S.unit.register(create);
                            this.f8844S.map.spawnUnit(create);
                        }
                        this.f12423P = 0.0f;
                        this.f12424Q = null;
                    }
                }
            } else {
                if (this.f8844S._particle != null && this.f12424Q != null && this.f12423P > 1.75f && Game.f8589i.settingsManager.isParticlesDrawing()) {
                    ParticleEffectPool.PooledEffect breakParticle = Game.f8589i.unitManager.f10234F.BALL_LIGHTNING.getBreakParticle();
                    Vector2 vector2 = this.f12424Q.center;
                    breakParticle.setPosition(vector2.f5527x, vector2.f5528y);
                    this.f8844S._particle.addParticle(breakParticle, true);
                }
                this.f12423P = 0.0f;
                this.f12424Q = null;
            }
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public void attack(int i) {
        double percentValueAsMultiplier;
        if (getTarget() == null) {
            return;
        }
        Vector2 vector2 = f12418T;
        PMath.getPointByAngleFromPoint(getTile().center.f5527x, getTile().center.f5528y, this.angle, 36.0f, vector2);
        ChainLightningProjectile chainLightningProjectile = (ChainLightningProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.CHAIN_LIGHTNING).obtain();
        this.f8844S.projectile.register(chainLightningProjectile);
        if (isAbilityInstalled(2)) {
            percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_A_VOLTAGE_MIN_DAMAGE);
        } else {
            percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_TESLA_CHAIN_MIN_DAMAGE);
        }
        float f = (float) percentValueAsMultiplier;
        Enemy target = getTarget();
        float f2 = this.damage;
        float f3 = i;
        chainLightningProjectile.setup(this, target, f2 * f3, f2 * f * f3, this.f12421N, this.f12422O, vector2);
        this.shotCount += i;
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playShotSound(StaticSoundType.SHOT_TESLA, this);
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12419U) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.TESLA.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.damage = input.readFloat();
        this.f12420M = input.readFloat();
        this.f12421N = input.readFloat();
        this.f12422O = input.readFloat();
        this.attackDelay = input.readFloat();
        this.f12423P = input.readFloat();
        this.f12424Q = (Tile) kryo.readClassAndObject(input);
        this.damageSinceLastBallLightning = input.readFloat();
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        super.setUnregistered();
        this.f12424Q = null;
        f12417R.clear();
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.damage = getStatBuffed(TowerStatType.DAMAGE);
        this.f12420M = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12421N = getStatBuffed(TowerStatType.CHAIN_LIGHTNING_DAMAGE) * 0.01f;
        this.f12422O = getStatBuffed(TowerStatType.U_CHAIN_LIGHTNING_LENGTH);
        this.attackDelay = 1.0f / getStatBuffed(TowerStatType.ATTACK_SPEED);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.damage);
        output.writeFloat(this.f12420M);
        output.writeFloat(this.f12421N);
        output.writeFloat(this.f12422O);
        output.writeFloat(this.attackDelay);
        output.writeFloat(this.f12423P);
        kryo.writeClassAndObject(output, this.f12424Q);
        output.writeFloat(this.damageSinceLastBallLightning);
    }
}
