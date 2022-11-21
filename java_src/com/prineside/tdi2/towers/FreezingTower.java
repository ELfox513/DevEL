package com.prineside.tdi2.towers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
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
import com.prineside.tdi2.buffs.FreezingBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.ShapeManager;
import com.prineside.tdi2.shapes.Circle;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.units.SnowballUnit;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class FreezingTower extends Tower {
    public static final int ABILITY_COLD_EVAPORATION = 0;
    public static final int ABILITY_MONITORING_SYSTEM = 2;
    public static final int ABILITY_SLOW_FREEZING = 1;
    public static final float GAIN_EXP_COEFF = 0.02f;
    public static final float SNOWBALL_ACCUMULATION_TIME = 8.0f;

    /* renamed from: V */
    public static final Color f12242V = new Color(563540772);

    /* renamed from: W */
    public static final Array<Tile> f12243W = new Array<>(Tile.class);

    /* renamed from: X */
    public static final Array<Enemy> f12244X = new Array<>(true, 8, Enemy.class);

    /* renamed from: Y */
    public static final int[] f12245Y = {4, 0, 2, 3, 5};

    /* renamed from: M */
    public float f12246M;

    /* renamed from: N */
    public float f12247N;

    /* renamed from: O */
    public float f12248O;

    /* renamed from: P */
    public float f12249P;

    /* renamed from: Q */
    public float f12250Q;

    /* renamed from: R */
    public Tile f12251R;
    @NAGS

    /* renamed from: T */
    public ParticleEffectPool.PooledEffect f12252T;
    @NAGS

    /* renamed from: U */
    public Circle f12253U;

    /* renamed from: com.prineside.tdi2.towers.FreezingTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24291 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12254a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12254a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12254a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12254a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12254a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12254a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class FreezingTowerFactory extends Tower.Factory<FreezingTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12255i;

        /* renamed from: j */
        public TextureRegion f12256j;

        /* renamed from: k */
        public ParticleEffectPool f12257k;

        public FreezingTowerFactory() {
            super("tower-freezing", TowerType.FREEZING);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public boolean canKillEnemies() {
            return false;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 46;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.BLUE.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24291.f12254a[generalizedTowerStatType.ordinal()];
            if (i != 1) {
                return (i == 2 || i == 5) ? 5 : 0;
            }
            return 3;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public FreezingTower create() {
            return new FreezingTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12255i = Game.f8589i.towerManager.getTextureConfig(TowerType.FREEZING, "weapon");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/snowflakes.prt"), Game.f8589i.assetManager.getTextureRegion("particle-snowflake").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f12257k = new ParticleEffectPool(particleEffect, 8, 1024);
            this.f12256j = Game.f8589i.assetManager.getTextureRegion("unit-type-snowball");
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_FREEZING_A_EVAPORATION_DAMAGE), 2, true).toString();
            abilityConfigs[0].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_FREEZING_A_EVAPORATION_STACK), false).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FREEZING_A_SLOW_SPEED), 2, true).toString();
            abilityConfigs[1].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FREEZING_A_SLOW_PERCENT), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FREEZING_A_MONITORING_XP), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(((FreezingTower) tower).m20752h(), 1, true).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_FREEZING_A_ULTIMATE_SNOW_BONUS), 1, true).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[1].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[2].descriptionArgs = new String[]{""};
            abilityConfigArr[3].descriptionArgs = new String[]{""};
            abilityConfigArr[4].descriptionArgs = new String[]{""};
        }
    }

    public /* synthetic */ FreezingTower(C24291 c24291) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return false;
    }

    @Override // com.prineside.tdi2.Tower
    public float getScheduledUpdateInterval() {
        return 0.267f;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(1)) {
            return Game.f8589i.towerManager.f10174F.FREEZING.getAbilityTextures(1);
        }
        return Game.f8589i.towerManager.f10174F.FREEZING.f12255i;
    }

    public FreezingTower() {
        super(TowerType.FREEZING);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        ShapeManager shapeManager;
        if (this.f8844S._mapRendering.getDrawMode() == MapRenderingSystem.DrawMode.DETAILED) {
            if (this.f12253U == null && (shapeManager = Game.f8589i.shapeManager) != null) {
                this.f12253U = (Circle) shapeManager.getFactory(ShapeType.CIRCLE).obtain();
                m20753g();
            }
            Circle circle = this.f12253U;
            if (circle != null) {
                circle.draw(spriteBatch);
            }
        }
        if (this.f12251R != null) {
            float regionWidth = Game.f8589i.towerManager.f10174F.FREEZING.f12256j.getRegionWidth() * (this.f12250Q / 8.0f);
            TextureRegion textureRegion = Game.f8589i.towerManager.f10174F.FREEZING.f12256j;
            Vector2 vector2 = this.f12251R.center;
            float f2 = 0.5f * regionWidth;
            spriteBatch.draw(textureRegion, vector2.f5527x - f2, vector2.f5528y - f2, regionWidth, regionWidth);
        }
        super.drawBatch(spriteBatch, f);
    }

    /* renamed from: g */
    public final void m20753g() {
        Color color = MaterialColor.LIGHT_BLUE.P500;
        Color cpy = color.cpy();
        Color cpy2 = color.cpy();
        cpy.f3889a = 0.0f;
        cpy2.f3889a = 0.07f;
        Circle circle = this.f12253U;
        float f = getTile().center.f5527x;
        float f2 = getTile().center.f5528y;
        float f3 = this.rangeInPixels;
        circle.setup(f, f2, f3 * 0.5f, f3, 48, cpy.toFloatBits(), cpy2.toFloatBits());
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.FREEZE_PERCENT && isAbilityInstalled(1)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FREEZING_A_SLOW_PERCENT);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == TowerStatType.FREEZE_SPEED && isAbilityInstalled(1)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FREEZING_A_SLOW_SPEED);
            Double.isNaN(d2);
            return (float) (d2 * percentValueAsMultiplier2);
        }
        return statFromConfig;
    }

    /* renamed from: h */
    public final float m20752h() {
        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_FREEZING_A_SNOWBALL_MIN_DURATION);
        return floatValue + ((this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_FREEZING_A_SNOWBALL_MAX_DURATION) - floatValue) * (getUpgradeLevel() / 10.0f));
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        boolean z;
        this.angle = (this.angle + (f * 360.0f)) % 360.0f;
        if (this.f12252T == null && Game.f8589i.settingsManager.isParticlesDrawing() && this.f8844S._particle != null) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.towerManager.f10174F.FREEZING.f12257k.obtain();
            this.f12252T = obtain;
            obtain.setPosition(getTile().center.f5527x, getTile().center.f5528y);
            Array<ParticleEmitter> emitters = this.f12252T.getEmitters();
            float range = getRange() * 2.0f;
            ParticleEmitter particleEmitter = emitters.get(0);
            float f2 = 6.0f * range;
            float f3 = 12.0f * range;
            particleEmitter.getXScale().setHigh(f2, f3);
            particleEmitter.getYScale().setHigh(f2, f3);
            float f4 = 4.0f * range;
            particleEmitter.getXScale().setLow(f4);
            particleEmitter.getYScale().setLow(f4);
            float f5 = range * 8.0f;
            particleEmitter.getVelocity().setHigh(f5, 16.0f * range);
            particleEmitter.getVelocity().setLow(f5);
            float f6 = range * 140.0f;
            emitters.get(1).getXScale().setHigh(f6);
            emitters.get(1).getYScale().setHigh(f6);
            this.f8844S._particle.addParticle(this.f12252T, false);
        }
        if (isAbilityInstalled(3)) {
            float f7 = 1.0f;
            Array<Tile> tilesInRange = getTilesInRange();
            if (isAbilityInstalled(4)) {
                double d = 1.0f;
                double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FREEZING_A_ULTIMATE_SNOW_BONUS);
                Double.isNaN(d);
                f7 = (float) (d + percentValueAsMultiplier);
            } else {
                for (int i = 0; i < tilesInRange.size; i++) {
                    if (tilesInRange.items[i].enemies.size != 0) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z) {
                if (this.f12251R == null) {
                    f12243W.clear();
                    float f8 = 0.0f;
                    for (int i2 = 0; i2 < tilesInRange.size; i2++) {
                        Tile tile = tilesInRange.items[i2];
                        if (!(tile instanceof SpawnTile)) {
                            float dst2 = tile.center.dst2(getTile().center);
                            Array<Tile> array = f12243W;
                            if (array.size == 0) {
                                array.add(tile);
                            } else if (StrictMath.abs(dst2 - f8) < 12.8f) {
                                array.add(tile);
                            } else if (dst2 < f8) {
                                array.clear();
                                array.add(tile);
                            }
                            f8 = dst2;
                        }
                    }
                    Array<Tile> array2 = f12243W;
                    int i3 = array2.size;
                    if (i3 != 0) {
                        this.f12251R = array2.get(this.f8844S.gameState.randomInt(i3));
                    }
                }
                if (this.f12251R != null) {
                    float f9 = this.f12250Q + (f7 * f);
                    this.f12250Q = f9;
                    if (f9 >= 8.0f) {
                        SnowballUnit create = Game.f8589i.unitManager.f10234F.SNOWBALL.create();
                        create.setup(m20752h());
                        if (this.f8844S.unit.preparePathToRandomSpawn(create, this.f12251R)) {
                            this.f8844S.unit.register(create);
                            this.f8844S.map.spawnUnit(create);
                        } else if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                            ParticleEffectPool.PooledEffect breakParticle = Game.f8589i.unitManager.f10234F.SNOWBALL.getBreakParticle();
                            Vector2 vector2 = this.f12251R.center;
                            breakParticle.setPosition(vector2.f5527x, vector2.f5528y);
                            this.f8844S._particle.addParticle(breakParticle, true);
                        }
                        this.f12250Q = 0.0f;
                        this.f12251R = null;
                    }
                }
            } else {
                if (this.f8844S._particle != null && this.f12251R != null && this.f12250Q > 2.0f && Game.f8589i.settingsManager.isParticlesDrawing()) {
                    ParticleEffectPool.PooledEffect breakParticle2 = Game.f8589i.unitManager.f10234F.SNOWBALL.getBreakParticle();
                    Vector2 vector22 = this.f12251R.center;
                    breakParticle2.setPosition(vector22.f5527x, vector22.f5528y);
                    this.f8844S._particle.addParticle(breakParticle2, true);
                }
                this.f12250Q = 0.0f;
                this.f12251R = null;
            }
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12245Y) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.FREEZING.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12246M = input.readFloat();
        this.f12247N = input.readFloat();
        this.f12248O = input.readFloat();
        this.f12249P = input.readFloat();
        this.f12250Q = input.readFloat();
        this.f12251R = (Tile) kryo.readClassAndObject(input);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void removedFromMap() {
        super.removedFromMap();
        ParticleEffectPool.PooledEffect pooledEffect = this.f12252T;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        super.scheduledUpdate(f);
        if (!isOutOfOrder()) {
            Array<Enemy> array = f12244X;
            array.clear();
            this.f8844S.map.getEnemiesNearPoint(array, getTile().center.f5527x, getTile().center.f5528y, this.rangeInPixels);
            int i = 0;
            while (true) {
                Array<Enemy> array2 = f12244X;
                if (i < array2.size) {
                    Enemy enemy = array2.items[i];
                    if (canAttackEnemy(enemy)) {
                        DelayedRemovalArray buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.FREEZING);
                        FreezingBuff freezingBuff = null;
                        if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
                            int i2 = 0;
                            while (true) {
                                if (i2 >= buffsByTypeOrNull.size) {
                                    break;
                                }
                                FreezingBuff freezingBuff2 = (FreezingBuff) buffsByTypeOrNull.items[i2];
                                if (freezingBuff2.tower == this) {
                                    freezingBuff = freezingBuff2;
                                    break;
                                }
                                i2++;
                            }
                        }
                        float towerDamageMultiplier = enemy.getTowerDamageMultiplier(TowerType.FREEZING) * this.f12246M;
                        if (freezingBuff == null) {
                            FreezingBuff obtain = Game.f8589i.buffManager.f9699F.FREEZING.obtain();
                            obtain.setup(this, this.f12247N, towerDamageMultiplier, 0.5f, 5.0f, this.f12248O, this.f12249P);
                            obtain.copyDisabled = true;
                            this.f8844S.buff.P_FREEZING.addBuff(enemy, obtain);
                        } else {
                            freezingBuff.duration = 0.5f;
                            freezingBuff.speed = this.f12247N;
                            freezingBuff.maxPercent = towerDamageMultiplier;
                            freezingBuff.poisonDurationBonus = this.f12248O;
                            freezingBuff.lightningLengthBonus = this.f12249P;
                        }
                    }
                    i++;
                } else {
                    array2.clear();
                    return;
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        super.setUnregistered();
        this.f12251R = null;
        f12243W.clear();
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12246M = getStatBuffed(TowerStatType.FREEZE_PERCENT);
        this.f12247N = getStatBuffed(TowerStatType.FREEZE_SPEED);
        this.f12248O = getStatBuffed(TowerStatType.U_POISON_DURATION_BONUS);
        this.f12249P = getStatBuffed(TowerStatType.U_CHAIN_LIGHTNING_BONUS_LENGTH);
        if (this.f12253U != null && getTile() != null) {
            m20753g();
        }
        if (isAbilityInstalled(2)) {
            double d = this.experienceMultiplier;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FREEZING_A_MONITORING_XP);
            Double.isNaN(d);
            this.experienceMultiplier = (float) (d * percentValueAsMultiplier);
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f12246M);
        output.writeFloat(this.f12247N);
        output.writeFloat(this.f12248O);
        output.writeFloat(this.f12249P);
        output.writeFloat(this.f12250Q);
        kryo.writeClassAndObject(output, this.f12251R);
    }
}
