package com.prineside.tdi2.towers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Unit;
import com.prineside.tdi2.buffs.BurnBuff;
import com.prineside.tdi2.buffs.PoisonBuff;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.shapes.BulletSmokeMultiLine;
import com.prineside.tdi2.shapes.RangeCircle;
import com.prineside.tdi2.systems.GameValueSystem;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.tiles.RoadTile;
import com.prineside.tdi2.units.MicrogunUnit;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class MinigunTower extends Tower {
    @NAGS

    /* renamed from: M */
    public Vector2 f12329M;
    @NAGS

    /* renamed from: N */
    public Color f12330N;
    @NAGS

    /* renamed from: O */
    public float f12331O;
    @NAGS

    /* renamed from: P */
    public float f12332P;

    /* renamed from: Q */
    public boolean f12333Q;

    /* renamed from: R */
    public boolean f12334R;

    /* renamed from: T */
    public float f12335T;

    /* renamed from: U */
    public float f12336U;

    /* renamed from: V */
    public int f12337V;

    /* renamed from: W */
    public float f12338W;

    /* renamed from: X */
    public float f12339X;

    /* renamed from: Y */
    public float f12340Y;
    public float attackSpeed;
    public float damage;
    public float rotationSpeed;
    public static Color muzzleFlashColor = Color.WHITE.cpy();

    /* renamed from: Z */
    public static final Vector2 f12326Z = new Vector2();

    /* renamed from: a0 */
    public static final Array<RoadTile> f12327a0 = new Array<>(RoadTile.class);

    /* renamed from: b0 */
    public static final int[] f12328b0 = {4, 1, 2, 3, 5};

    /* renamed from: com.prineside.tdi2.towers.MinigunTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24321 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12341a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12341a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12341a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12341a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12341a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12341a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class MinigunTowerFactory extends Tower.Factory<MinigunTower> {
        public TextureRegion bulletTraceTexture;

        /* renamed from: i */
        public Array<TextureRegionConfig> f12342i;

        /* renamed from: j */
        public TextureRegion f12343j;

        /* renamed from: k */
        public TextureRegion f12344k;

        /* renamed from: l */
        public Array<RangeCircle> f12345l;

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 54;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.PURPLE.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24321.f12341a[generalizedTowerStatType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return i != 5 ? 0 : 2;
                        }
                        return 1;
                    }
                    return 4;
                }
                return 5;
            }
            return 4;
        }

        public MinigunTowerFactory() {
            super("tower-minigun", TowerType.MINIGUN);
            this.f12345l = new Array<>(RangeCircle.class);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public MinigunTower create() {
            return new MinigunTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.bulletTraceTexture = Game.f8589i.assetManager.getTextureRegion("bullet-trace-smoke");
            this.f12342i = Game.f8589i.towerManager.getTextureConfig(TowerType.MINIGUN, "weapon");
            this.f12343j = Game.f8589i.assetManager.getTextureRegion("tower-minigun-weapon-heat");
            this.f12344k = Game.f8589i.assetManager.getTextureRegion("tower-minigun-weapon-heat-heavy");
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-minigun-weapon-shadow"), 57.0f, 36.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_HEAVY_WEAPONS_DAMAGE), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_HEAVY_MECH_ACCELERATION), 2, true).toString();
            abilityConfigs[1].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_HEAVY_MECH_SPEED), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_FOUNDATION_ROTATION), 2, true).toString();
            String[] strArr = abilityConfigs[2].descriptionArgs;
            GameValueSystem gameValueSystem = gameSystemProvider.gameValue;
            GameValueType gameValueType = GameValueType.TOWER_MINIGUN_A_FOUNDATION_SPECIAL_BONUS;
            strArr[1] = StringFormatter.compactNumber(gameValueSystem.getFloatValue(gameValueType), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MINIGUN_A_HOT_DURATION), 2, true).toString();
            float floatValue = gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MINIGUN_A_HOT_DAMAGE);
            if (tower.isAbilityInstalled(2)) {
                floatValue += gameSystemProvider.gameValue.getFloatValue(gameValueType);
            }
            abilityConfigs[3].descriptionArgs[1] = StringFormatter.compactNumber(floatValue, 2, true).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MINIGUN_A_MICROGUN_BUILD_DELAY), 2, true).toString();
            abilityConfigs[4].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MINIGUN_A_MICROGUN_ATTACK_SPEED), 2, true).toString();
            abilityConfigs[4].descriptionArgs[2] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_MINIGUN_A_MICROGUN_RANGE), 2, true).toString();
            abilityConfigs[4].descriptionArgs[3] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_MINIGUN_A_MICROGUN_COUNT), false).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{""};
            abilityConfigArr[1].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[2].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[3].descriptionArgs = new String[]{"", ""};
            abilityConfigArr[4].descriptionArgs = new String[]{"", "", "", ""};
        }
    }

    public /* synthetic */ MinigunTower(C24321 c24321) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public float getScheduledUpdateInterval() {
        return 0.07f;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(0)) {
            return Game.f8589i.towerManager.f10174F.MINIGUN.getAbilityTextures(0);
        }
        return Game.f8589i.towerManager.f10174F.MINIGUN.f12342i;
    }

    public MinigunTower() {
        super(TowerType.MINIGUN);
        this.f12329M = new Vector2();
        this.f12330N = Color.WHITE.cpy();
        this.f12333Q = false;
        this.f12334R = false;
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        float f = this.f12335T / this.f12338W;
        if (f == 0.0f) {
            return Float.MAX_VALUE;
        }
        return 1.0f / (f * this.attackSpeed);
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.U_ACCELERATION && isAbilityInstalled(1)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_HEAVY_MECH_ACCELERATION);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == TowerStatType.DAMAGE && isAbilityInstalled(0)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_HEAVY_WEAPONS_DAMAGE);
            Double.isNaN(d2);
            statFromConfig = (float) (d2 * percentValueAsMultiplier2);
        }
        if (towerStatType == TowerStatType.ATTACK_SPEED && isAbilityInstalled(1)) {
            double d3 = statFromConfig;
            double percentValueAsMultiplier3 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_HEAVY_MECH_SPEED);
            Double.isNaN(d3);
            statFromConfig = (float) (d3 * percentValueAsMultiplier3);
        }
        if (towerStatType == TowerStatType.ROTATION_SPEED && isAbilityInstalled(2)) {
            double d4 = statFromConfig;
            double percentValueAsMultiplier4 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_FOUNDATION_ROTATION);
            Double.isNaN(d4);
            return (float) (d4 * percentValueAsMultiplier4);
        }
        return statFromConfig;
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        m21892e(f, this.rotationSpeed);
        this.f12336U += f;
        this.f12332P += f;
        this.f12340Y += f;
        if (isAbilityInstalled(4)) {
            int intValue = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_MINIGUN_A_MICROGUN_COUNT);
            float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_MINIGUN_A_MICROGUN_BUILD_DELAY);
            float f2 = this.f12339X + f;
            this.f12339X = f2;
            if (f2 > floatValue) {
                this.f12339X = 0.0f;
                int i = 0;
                int i2 = 0;
                while (true) {
                    DelayedRemovalArray<Unit> delayedRemovalArray = this.f8844S.map.spawnedUnits;
                    if (i >= delayedRemovalArray.size) {
                        break;
                    }
                    Unit unit = delayedRemovalArray.items[i];
                    if (unit.type == 3 && ((MicrogunUnit) unit).parent == this) {
                        i2++;
                    }
                    i++;
                }
                if (i2 < intValue) {
                    f12327a0.clear();
                    Array<Tile> tilesInRange = getTilesInRange();
                    int i3 = 0;
                    while (true) {
                        boolean z = true;
                        if (i3 >= tilesInRange.size) {
                            break;
                        }
                        Tile[] tileArr = tilesInRange.items;
                        if (tileArr[i3].type == TileType.ROAD) {
                            RoadTile roadTile = (RoadTile) tileArr[i3];
                            int i4 = 0;
                            while (true) {
                                DelayedRemovalArray<Unit> delayedRemovalArray2 = roadTile.units;
                                if (i4 < delayedRemovalArray2.size) {
                                    if (delayedRemovalArray2.items[i4].type == 3 || roadTile.enemies.size != 0) {
                                        break;
                                    }
                                    i4++;
                                } else {
                                    z = false;
                                    break;
                                }
                            }
                            if (!z) {
                                f12327a0.add(roadTile);
                            }
                        }
                        i3++;
                    }
                    Array<RoadTile> array = f12327a0;
                    int i5 = array.size;
                    if (i5 != 0) {
                        RoadTile roadTile2 = array.items[this.f8844S.gameState.randomInt(i5)];
                        MicrogunUnit create = Game.f8589i.unitManager.f10234F.MICROGUN.create();
                        Vector2 vector2 = roadTile2.center;
                        create.setup(this, vector2.f5527x, vector2.f5528y);
                        this.f8844S.unit.register(create);
                        this.f8844S.map.spawnUnit(create);
                        this.f8844S.unit.updateUnitCurrentTile(create);
                        SoundSystem soundSystem = this.f8844S._sound;
                        if (soundSystem != null) {
                            soundSystem.playStatic(StaticSoundType.BUILDING_BUILT);
                        }
                        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                            ParticleEffectPool.PooledEffect obtain = Game.f8589i.unitManager.f10234F.MICROGUN.highlightParticles.obtain();
                            Vector2 vector22 = roadTile2.center;
                            obtain.setPosition(vector22.f5527x, vector22.f5528y);
                            this.f8844S._particle.addParticle(obtain, true);
                        }
                    }
                    array.clear();
                }
            }
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public void attack(int i) {
        boolean z;
        Enemy target = getTarget();
        if (target == null) {
            return;
        }
        this.f12336U = 0.0f;
        if (this.f8844S._particle != null) {
            Vector2 vector2 = f12326Z;
            vector2.set(getTile().center);
            PMath.shiftPointByAngle(vector2, this.angle, 45.0f);
            this.f8844S._particle.addFlashParticle(Game.f8589i.assetManager.f9555TR.muzzleFlashSmall, vector2.f5527x, vector2.f5528y, 12.0f, 4.5f, 24.0f, 36.0f, this.angle);
        }
        this.f12329M.f5527x = target.getPosition().f5527x + (FastRandom.getFloat() * 4.0f);
        this.f12329M.f5528y = target.getPosition().f5528y + (FastRandom.getFloat() * 4.0f);
        if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate() && (PMath.getDistanceBetweenAngles(this.f12331O, this.angle) > 4.0f || this.f12332P > 0.2f)) {
            this.f12331O = this.angle;
            this.f12332P = 0.0f;
            BulletSmokeMultiLine obtain = Game.f8589i.shapeManager.f10141F.BULLET_SMOKE_MULTI_LINE.obtain();
            float f = getTile().center.f5527x;
            float f2 = getTile().center.f5528y;
            float f3 = this.angle;
            Vector2 vector22 = f12326Z;
            PMath.getPointByAngleFromPoint(f, f2, f3, 30.0f, vector22);
            TextureRegion textureRegion = Game.f8589i.towerManager.f10174F.MINIGUN.bulletTraceTexture;
            if (FastRandom.getFloat() < 0.5f) {
                z = true;
            } else {
                z = false;
            }
            obtain.setTexture(textureRegion, false, z);
            if (this.f12335T >= this.f12338W && isAbilityInstalled(3)) {
                if (isAbilityInstalled(2)) {
                    obtain.setColor(MaterialColor.LIGHT_GREEN.P500);
                } else {
                    obtain.setColor(MaterialColor.DEEP_ORANGE.P500);
                }
            } else {
                obtain.setColor(MaterialColor.PURPLE.P200);
            }
            obtain.maxSegmentWidth = 32.0f;
            obtain.nodesDisperseTime = 0.7f;
            obtain.maxAlpha = 0.56f;
            obtain.setup(vector22.f5527x, vector22.f5528y, target.getPosition().f5527x, target.getPosition().f5528y);
            this.f8844S._projectileTrail.addTrail(obtain);
        }
        if (this.f12340Y > 0.2f) {
            this.f12340Y = 0.0f;
            if (isAbilityInstalled(3) && this.f12335T >= this.f12338W) {
                float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_HOT_DAMAGE);
                if (isAbilityInstalled(2)) {
                    percentValueAsMultiplier += (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_FOUNDATION_SPECIAL_BONUS);
                }
                float f4 = percentValueAsMultiplier * this.attackSpeed * this.damage;
                float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_MINIGUN_A_HOT_DURATION);
                if (isAbilityInstalled(2)) {
                    PoisonBuff obtain2 = Game.f8589i.buffManager.f9699F.POISON.obtain();
                    obtain2.setup(this, floatValue, floatValue * 10.0f, f4, f4, null);
                    this.f8844S.buff.P_POISON.addBuff(target, obtain2);
                } else {
                    BurnBuff obtain3 = Game.f8589i.buffManager.f9699F.BURN.obtain();
                    obtain3.setup(this, floatValue, floatValue * 10.0f, f4, null);
                    this.f8844S.buff.P_BURN.addBuff(target, obtain3);
                }
            }
        }
        this.f8844S.enemy.giveDamage(target, this, i * this.damage, DamageType.BULLET, null, true, null);
        this.f12337V += i;
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playShotSound(StaticSoundType.SHOT_MINIGUN, this);
        }
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAttack() {
        boolean canAttack = super.canAttack();
        this.f12333Q = canAttack;
        return canAttack;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12328b0) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.MINIGUN.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        TextureRegion textureRegion;
        super.drawBatch(spriteBatch, f);
        if (getTile().visibleOnScreen) {
            float f2 = this.f12335T;
            if (f2 != 0.0f) {
                Color color = this.f12330N;
                color.f3889a = f2 / this.f12338W;
                spriteBatch.setColor(color);
                if (isAbilityInstalled(0)) {
                    textureRegion = Game.f8589i.towerManager.f10174F.MINIGUN.f12344k;
                } else {
                    textureRegion = Game.f8589i.towerManager.f10174F.MINIGUN.f12343j;
                }
                spriteBatch.draw(textureRegion, getTile().boundingBox.minX, getTile().boundingBox.minY, 64.0f, 64.0f, 128.0f, 128.0f, 1.0f, 1.0f, this.angle);
            }
        }
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_BUILDING_INFO) != 0.0d) {
            BitmapFont debugFont = Game.f8589i.assetManager.getDebugFont(false);
            debugFont.draw(spriteBatch, "S: " + ((Object) StringFormatter.compactNumber(this.f12335T / this.f12338W, 2)), getTile().boundingBox.minX, (getTile().boundingBox.minY - 20.0f) + 64.0f, 128.0f, 1, false);
            debugFont.setColor(Color.WHITE);
        }
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawSelectedRange(Batch batch, RangeCircle rangeCircle) {
        RangeCircle rangeCircle2;
        super.drawSelectedRange(batch, rangeCircle);
        Array array = Game.f8589i.towerManager.f10174F.MINIGUN.f12345l;
        int i = 0;
        while (true) {
            DelayedRemovalArray<Unit> delayedRemovalArray = this.f8844S.map.spawnedUnits;
            if (i < delayedRemovalArray.size) {
                Unit unit = delayedRemovalArray.items[i];
                if (unit.type == 3) {
                    MicrogunUnit microgunUnit = (MicrogunUnit) unit;
                    if (microgunUnit.parent == this) {
                        if (array.size < 1) {
                            rangeCircle2 = Game.f8589i.shapeManager.f10141F.RANGE_CIRCLE.obtain();
                            array.add(rangeCircle2);
                        } else {
                            rangeCircle2 = ((RangeCircle[]) array.items)[0];
                        }
                        microgunUnit.drawRange(batch, rangeCircle2);
                    }
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12333Q = input.readBoolean();
        this.f12334R = input.readBoolean();
        this.f12335T = input.readFloat();
        this.f12336U = input.readFloat();
        this.f12337V = input.readVarInt(true);
        this.damage = input.readFloat();
        this.attackSpeed = input.readFloat();
        this.rotationSpeed = input.readFloat();
        this.f12338W = input.readFloat();
        this.f12339X = input.readFloat();
        this.f12340Y = input.readFloat();
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        if (getTarget() == null) {
            this.f12333Q = false;
        }
        if (this.f12333Q) {
            if (this.f12334R) {
                float f2 = this.f12335T;
                float f3 = this.f12338W;
                if (f2 != f3) {
                    float f4 = f2 + f;
                    this.f12335T = f4;
                    if (f4 > f3) {
                        this.f12335T = f3;
                        return;
                    }
                    return;
                }
                return;
            }
            this.f12334R = true;
        } else if (!this.f12334R) {
            float f5 = this.f12335T;
            if (f5 != 0.0f) {
                float f6 = f5 - (f * 2.0f);
                this.f12335T = f6;
                if (f6 < 0.0f) {
                    this.f12335T = 0.0f;
                }
            }
        } else {
            this.f12334R = false;
        }
    }

    @Override // com.prineside.tdi2.Tower
    public void setTarget(Enemy enemy) {
        if (getTarget() != enemy && enemy != null) {
            this.f12335T *= 0.85f;
        }
        super.setTarget(enemy);
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.damage = getStatBuffed(TowerStatType.DAMAGE);
        this.attackSpeed = getStatBuffed(TowerStatType.ATTACK_SPEED);
        this.rotationSpeed = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12338W = (1.0f / getStatBuffed(TowerStatType.U_ACCELERATION)) * 100.0f;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.f12333Q);
        output.writeBoolean(this.f12334R);
        output.writeFloat(this.f12335T);
        output.writeFloat(this.f12336U);
        output.writeVarInt(this.f12337V, true);
        output.writeFloat(this.damage);
        output.writeFloat(this.attackSpeed);
        output.writeFloat(this.rotationSpeed);
        output.writeFloat(this.f12338W);
        output.writeFloat(this.f12339X);
        output.writeFloat(this.f12340Y);
    }
}
