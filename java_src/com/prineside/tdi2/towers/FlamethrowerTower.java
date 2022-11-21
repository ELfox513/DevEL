package com.prineside.tdi2.towers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
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
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.BurnBuff;
import com.prineside.tdi2.buffs.FreezingBuff;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.SpecialDamageType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.systems.InputSystem;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.EntityUtils;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class FlamethrowerTower extends Tower {

    /* renamed from: b0 */
    public static ItemStack f12226b0;

    /* renamed from: M */
    public boolean f12229M;

    /* renamed from: N */
    public boolean f12230N;

    /* renamed from: O */
    public int f12231O;

    /* renamed from: P */
    public boolean f12232P;

    /* renamed from: Q */
    public float f12233Q;

    /* renamed from: R */
    public float f12234R;

    /* renamed from: T */
    public float f12235T;

    /* renamed from: U */
    public float f12236U;

    /* renamed from: V */
    public float f12237V;
    @NAGS

    /* renamed from: W */
    public ParticleEffectPool.PooledEffect f12238W;

    /* renamed from: X */
    public static final float[] f12222X = {1.0f, 0.6f, 0.1f};

    /* renamed from: Y */
    public static final float[] f12223Y = {0.1f, 0.6f, 1.0f};

    /* renamed from: Z */
    public static final Vector2 f12224Z = new Vector2();

    /* renamed from: a0 */
    public static final Array<Tile> f12225a0 = new Array<>(Tile.class);

    /* renamed from: c0 */
    public static final Vector2 f12227c0 = new Vector2();

    /* renamed from: d0 */
    public static final int[] f12228d0 = {4, 1, 2, 3, 5};

    /* renamed from: com.prineside.tdi2.towers.FlamethrowerTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24281 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12239a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12239a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12239a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12239a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12239a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12239a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class FlamethrowerTowerFactory extends Tower.Factory<FlamethrowerTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12240i;

        /* renamed from: j */
        public ParticleEffectPool f12241j;

        public FlamethrowerTowerFactory() {
            super("tower-flamethrower", TowerType.FLAMETHROWER);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 48;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.ORANGE.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24281.f12239a[generalizedTowerStatType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return i != 5 ? 0 : 2;
                        }
                        return 5;
                    }
                    return 4;
                }
                return 5;
            }
            return 2;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public FlamethrowerTower create() {
            return new FlamethrowerTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            this.f12240i = Game.f8589i.towerManager.getTextureConfig(TowerType.FLAMETHROWER, "weapon");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/flamethrower.prt"), Game.f8589i.assetManager.getTextureRegion("particle-flame").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f12241j = new ParticleEffectPool(particleEffect, 8, 1024);
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-flamethrower-weapon-shadow"), 64.0f, 29.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_PLASMA_DAMAGE), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_NAPALM_DURATION), 2, true).toString();
            abilityConfigs[1].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_FLAMETHROWER_A_NAPALM_FREEZING), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_COLD_DAMAGE), 2, true).toString();
            abilityConfigs[2].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_FLAMETHROWER_A_COLD_FREEZING), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_SUPPLY_RANGE), 2, true).toString();
            abilityConfigs[3].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_SUPPLY_ARC), 2, true).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(((FlamethrowerTower) tower).m20757g() * 100.0f, 2, true).toString();
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
            abilityConfigArr[4].descriptionArgs = new String[]{""};
        }
    }

    public /* synthetic */ FlamethrowerTower(C24281 c24281) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAttack() {
        return false;
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return 0.0f;
    }

    @Override // com.prineside.tdi2.Tower
    public float getScheduledUpdateInterval() {
        return 0.167f;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(0)) {
            return Game.f8589i.towerManager.f10174F.FLAMETHROWER.getAbilityTextures(0);
        }
        return Game.f8589i.towerManager.f10174F.FLAMETHROWER.f12240i;
    }

    public FlamethrowerTower() {
        super(TowerType.FLAMETHROWER);
        this.f12229M = false;
    }

    /* renamed from: f */
    public final void m20758f() {
        Array<ParticleEmitter> emitters = this.f12238W.getEmitters();
        float range = getRange() * 2.0f * 0.75f;
        ParticleEmitter particleEmitter = emitters.get(0);
        float f = 48.0f * range;
        particleEmitter.getXScale().setHigh(f);
        particleEmitter.getYScale().setHigh(f);
        float f2 = 4.0f * range;
        particleEmitter.getXScale().setLow(f2);
        particleEmitter.getYScale().setLow(f2);
        ParticleEmitter particleEmitter2 = emitters.get(1);
        float f3 = 20.0f * range;
        particleEmitter2.getXScale().setHigh(f3);
        particleEmitter2.getYScale().setHigh(f3);
        float f4 = 3.0f * range;
        particleEmitter2.getXScale().setLow(f4);
        particleEmitter2.getYScale().setLow(f4);
        particleEmitter.getVelocity().setHigh(170.0f * range, 230.0f * range);
        particleEmitter.getVelocity().setLow(60.0f * range);
        particleEmitter2.getVelocity().setHigh(120.0f * range, range * 150.0f);
        if (isAbilityInstalled(2)) {
            particleEmitter.getTint().setColors(f12223Y);
        } else {
            particleEmitter.getTint().setColors(f12222X);
        }
    }

    /* renamed from: g */
    public float m20757g() {
        float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_INSTAKILL_HP_MIN);
        return percentValueAsMultiplier + ((((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_INSTAKILL_HP_MAX)) - percentValueAsMultiplier) * (getUpgradeLevel() / 10.0f));
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        TowerStatType towerStatType2 = TowerStatType.DAMAGE;
        if (towerStatType == towerStatType2 && isAbilityInstalled(0)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_PLASMA_DAMAGE);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == towerStatType2 && isAbilityInstalled(2)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_COLD_DAMAGE);
            Double.isNaN(d2);
            statFromConfig = (float) (d2 * percentValueAsMultiplier2);
        }
        if (towerStatType == TowerStatType.U_BURNING_TIME && isAbilityInstalled(1)) {
            double d3 = statFromConfig;
            double percentValueAsMultiplier3 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_NAPALM_DURATION);
            Double.isNaN(d3);
            statFromConfig = (float) (d3 * percentValueAsMultiplier3);
        }
        if (towerStatType == TowerStatType.RANGE && isAbilityInstalled(3)) {
            double d4 = statFromConfig;
            double percentValueAsMultiplier4 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_SUPPLY_RANGE);
            Double.isNaN(d4);
            return (float) (d4 * percentValueAsMultiplier4);
        }
        return statFromConfig;
    }

    /* renamed from: h */
    public final void m20756h(float f) {
        float f2;
        Array<Tile> array;
        int i;
        int i2;
        Tile tile;
        boolean z;
        Enemy enemy;
        int i3;
        this.f12229M = false;
        if (isAbilityInstalled(4)) {
            f2 = m20757g();
        } else {
            f2 = -1.0f;
        }
        float f3 = this.f12234R * f;
        boolean isAbilityInstalled = isAbilityInstalled(2);
        Array<Tile> tilesInRange = getTilesInRange();
        Array<Tile> array2 = f12225a0;
        array2.clear();
        array2.addAll(tilesInRange);
        Vector2 vector2 = getTile().center;
        int i4 = 0;
        while (true) {
            array = f12225a0;
            float f4 = 0.0f;
            if (i4 >= array.size) {
                break;
            }
            Tile tile2 = array.items[i4];
            EntityUtils.removeNullRefs(tile2.enemies);
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = tile2.enemies;
            if (delayedRemovalArray.size != 0) {
                delayedRemovalArray.begin();
                int i5 = tile2.enemies.size;
                int i6 = 0;
                while (i6 < i5) {
                    Enemy enemy2 = tile2.enemies.items[i6].enemy;
                    if (enemy2 != null && vector2.dst2(enemy2.getPosition()) < this.rangeInPixelsSqr && canAttackEnemy(enemy2)) {
                        if (StrictMath.abs(PMath.getDistanceBetweenAngles(this.angle, PMath.getAngleBetweenPoints(vector2, enemy2.getPosition()))) < this.f12237V * 0.5f) {
                            if (enemy2.isVulnerableToSpecial(SpecialDamageType.INSTAKILL) && enemy2.getHealth() / enemy2.maxHealth < f2) {
                                TowerType towerType = TowerType.FLAMETHROWER;
                                DamageType damageType = DamageType.FIRE;
                                float buffedDamageMultiplier = enemy2.getBuffedDamageMultiplier(towerType, damageType);
                                if (buffedDamageMultiplier > f4) {
                                    float health = (enemy2.getHealth() / buffedDamageMultiplier) + 0.01f;
                                    Vector2 vector22 = f12227c0;
                                    vector22.set(enemy2.getPosition());
                                    int i7 = (int) (enemy2.bounty * 0.4f);
                                    if (i7 > 50) {
                                        i3 = 50;
                                    } else {
                                        i3 = i7;
                                    }
                                    i = i6;
                                    i2 = i5;
                                    tile = tile2;
                                    z = true;
                                    if (!this.f8844S.enemy.giveDamage(enemy2, this, health, damageType, null, false, null)) {
                                        this.f8844S.enemy.killEnemy(enemy2, this, damageType, null, null);
                                    }
                                    int i8 = this.f12231O + i3;
                                    this.f12231O = i8;
                                    if (i8 > 5) {
                                        int i9 = i8 % 5;
                                        if (f12226b0 == null) {
                                            f12226b0 = new ItemStack(Item.C1543D.GREEN_PAPER, 1);
                                        }
                                        f12226b0.setCount(this.f12231O - i9);
                                        InputSystem inputSystem = this.f8844S._input;
                                        if (inputSystem != null) {
                                            inputSystem.cameraController.mapToStage(vector22);
                                        }
                                        this.f8844S.gameState.addLootIssuedPrizes(f12226b0, vector22.f5527x, vector22.f5528y, 2);
                                        this.f12231O = i9;
                                    }
                                } else {
                                    i = i6;
                                    i2 = i5;
                                    tile = tile2;
                                    z = true;
                                }
                            } else {
                                i = i6;
                                i2 = i5;
                                tile = tile2;
                                z = true;
                                if (isAbilityInstalled) {
                                    float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_FLAMETHROWER_A_COLD_FREEZING);
                                    if (isAbilityInstalled(1)) {
                                        floatValue += this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_FLAMETHROWER_A_NAPALM_FREEZING);
                                    }
                                    FreezingBuff obtain = Game.f8589i.buffManager.f9699F.FREEZING.obtain();
                                    float f5 = this.f12236U;
                                    obtain.setup(this, 10.0f, floatValue, f5, f5 * 10.0f, 0.0f, 0.0f);
                                    enemy = enemy2;
                                    this.f8844S.buff.P_FREEZING.addBuff(enemy, obtain);
                                } else {
                                    enemy = enemy2;
                                    BurnBuff obtain2 = Game.f8589i.buffManager.f9699F.BURN.obtain();
                                    float f6 = this.f12236U;
                                    obtain2.setup(this, f6, f6 * 10.0f, this.f12234R, null);
                                    this.f8844S.buff.P_BURN.addBuff(enemy, obtain2);
                                }
                                this.f8844S.enemy.giveDamage(enemy, this, f3, DamageType.FIRE, null, true, null);
                            }
                            this.f12229M = z;
                            i6 = i + 1;
                            i5 = i2;
                            tile2 = tile;
                            f4 = 0.0f;
                        }
                    }
                    i = i6;
                    i2 = i5;
                    tile = tile2;
                    i6 = i + 1;
                    i5 = i2;
                    tile2 = tile;
                    f4 = 0.0f;
                }
                tile2.enemies.end();
            }
            i4++;
        }
        array.clear();
        if (!this.f12230N && this.f12229M) {
            this.shotCount++;
            SoundSystem soundSystem = this.f8844S._sound;
            if (soundSystem != null) {
                soundSystem.playShotSound(StaticSoundType.SHOT_FLAMETHROWER, this);
            }
        }
        boolean z2 = this.f12229M;
        this.f12230N = z2;
        if (z2) {
            this.f8915A = 0.0f;
        }
    }

    /* renamed from: i */
    public final void m20755i() {
        ParticleEffectPool.PooledEffect pooledEffect = this.f12238W;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f12238W = null;
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12228d0) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.FLAMETHROWER.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        super.drawBatch(spriteBatch, f);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_BUILDING_INFO) != 0.0d) {
            float f2 = this.angle;
            float f3 = this.f12237V;
            float f4 = f2 - (f3 * 0.5f);
            float f5 = f2 + (f3 * 0.5f);
            float f6 = getTile().center.f5527x;
            float f7 = getTile().center.f5528y;
            float f8 = this.rangeInPixels;
            Vector2 vector2 = f12224Z;
            PMath.getPointByAngleFromPoint(f6, f7, f4, f8, vector2);
            DrawUtils.texturedLine(spriteBatch, Game.f8589i.assetManager.getBlankWhiteTextureRegion(), getTile().center.f5527x, getTile().center.f5528y, vector2.f5527x, vector2.f5528y, 2.0f);
            PMath.getPointByAngleFromPoint(getTile().center.f5527x, getTile().center.f5528y, f5, this.rangeInPixels, vector2);
            DrawUtils.texturedLine(spriteBatch, Game.f8589i.assetManager.getBlankWhiteTextureRegion(), getTile().center.f5527x, getTile().center.f5528y, vector2.f5527x, vector2.f5528y, 2.0f);
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12229M = input.readBoolean();
        this.f12230N = input.readBoolean();
        this.f12231O = input.readVarInt(true);
        this.f12232P = input.readBoolean();
        this.f12233Q = input.readFloat();
        this.f12234R = input.readFloat();
        this.f12235T = input.readFloat();
        this.f12236U = input.readFloat();
        this.f12237V = input.readFloat();
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        boolean z;
        if (isOutOfOrder()) {
            m20755i();
            return;
        }
        if (this.f8844S._particle == null || !Game.f8589i.settingsManager.isParticlesDrawing() || this.f8844S._particle.willParticleBeSkipped() || !Game.f8589i.settingsManager.isProjectilesDrawing()) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            m20755i();
        }
        if (this.f12232P) {
            this.f12232P = false;
            m20755i();
            return;
        }
        m20756h(f);
        if (this.f12229M && !isOutOfOrder()) {
            if (this.f12238W == null && this.f8844S._particle != null && z) {
                this.f12238W = Game.f8589i.towerManager.f10174F.FLAMETHROWER.f12241j.obtain();
                m20758f();
                this.f8844S._particle.addParticle(this.f12238W, true);
                return;
            }
            return;
        }
        m20755i();
    }

    @Override // com.prineside.tdi2.Tower
    public void setAimStrategy(Tower.AimStrategy aimStrategy) {
        super.setAimStrategy(aimStrategy);
        this.f12232P = true;
        m20755i();
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        super.update(f);
        if (isOutOfOrder()) {
            return;
        }
        m21892e(f, this.f12235T);
        if (this.f8929s != 0) {
            float f2 = this.f12233Q + f;
            this.f12233Q = f2;
            if (f2 >= 0.5f) {
                this.f12233Q = f2 - 0.5f;
                setTarget(findTarget());
            }
        }
        if (this.f12238W != null) {
            Vector2 vector2 = Tower.f8913K;
            vector2.set(42.0f, 0.0f).rotateDeg(this.angle + 90.0f).add(getTile().center);
            this.f12238W.setPosition(vector2.f5527x, vector2.f5528y);
            Array<ParticleEmitter> emitters = this.f12238W.getEmitters();
            for (int i = 0; i < emitters.size; i++) {
                ParticleEmitter.ScaledNumericValue angle = emitters.get(i).getAngle();
                float f3 = this.f12237V;
                float f4 = this.angle;
                angle.setHigh(((-f3) * 0.5f) + f4 + 90.0f, (f3 * 0.5f) + f4 + 90.0f);
            }
        }
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12234R = getStatBuffed(TowerStatType.DAMAGE);
        this.f12235T = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12236U = getStatBuffed(TowerStatType.U_BURNING_TIME);
        this.f12237V = 20.0f;
        if (isAbilityInstalled(3)) {
            double d = this.f12237V;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_FLAMETHROWER_A_SUPPLY_ARC);
            Double.isNaN(d);
            this.f12237V = (float) (d * percentValueAsMultiplier);
        }
        ParticleEffectPool.PooledEffect pooledEffect = this.f12238W;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f12238W = null;
        }
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.f12229M);
        output.writeBoolean(this.f12230N);
        output.writeVarInt(this.f12231O, true);
        output.writeBoolean(this.f12232P);
        output.writeFloat(this.f12233Q);
        output.writeFloat(this.f12234R);
        output.writeFloat(this.f12235T);
        output.writeFloat(this.f12236U);
        output.writeFloat(this.f12237V);
    }
}
