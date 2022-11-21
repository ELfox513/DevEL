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
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.SpecialDamageType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.explosions.GenericExplosion;
import com.prineside.tdi2.managers.TowerManager;
import com.prineside.tdi2.shapes.BulletSmokeMultiLine;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class SniperTower extends Tower {

    /* renamed from: W */
    public static final Color f12376W = Color.WHITE.cpy();

    /* renamed from: X */
    public static final Vector2 f12377X = new Vector2();

    /* renamed from: Y */
    public static final Vector2 f12378Y = new Vector2();

    /* renamed from: Z */
    public static final Vector2 f12379Z = new Vector2();

    /* renamed from: a0 */
    public static final Color f12380a0 = new Color();

    /* renamed from: b0 */
    public static final Array<Enemy.EnemyReference> f12381b0 = new Array<>(true, 8, Enemy.EnemyReference.class);

    /* renamed from: c0 */
    public static final int[] f12382c0 = {4, 1, 3, 5};

    /* renamed from: M */
    public Enemy.EnemyReference f12383M;

    /* renamed from: N */
    public float f12384N;

    /* renamed from: O */
    public int f12385O;

    /* renamed from: P */
    public float f12386P;

    /* renamed from: Q */
    public float f12387Q;

    /* renamed from: R */
    public float f12388R;

    /* renamed from: T */
    public float f12389T;

    /* renamed from: U */
    public float f12390U;

    /* renamed from: V */
    public float f12391V;

    /* renamed from: com.prineside.tdi2.towers.SniperTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24351 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12392a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12392a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12392a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12392a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12392a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12392a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class SniperTowerFactory extends Tower.Factory<SniperTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12393i;

        /* renamed from: j */
        public Array<TextureRegionConfig> f12394j;

        /* renamed from: k */
        public TextureRegion f12395k;

        /* renamed from: l */
        public TextureRegion f12396l;

        /* renamed from: m */
        public ParticleEffectPool f12397m;

        /* renamed from: n */
        public ParticleEffectPool f12398n;

        public SniperTowerFactory() {
            super("tower-sniper", TowerType.SNIPER);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 51;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.GREEN.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24351.f12392a[generalizedTowerStatType.ordinal()];
            if (i == 1 || i == 2) {
                return 5;
            }
            return (i == 3 || i == 4 || i == 5) ? 1 : 0;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public SniperTower create() {
            return new SniperTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            TowerManager towerManager = Game.f8589i.towerManager;
            TowerType towerType = TowerType.SNIPER;
            this.f12393i = towerManager.getTextureConfig(towerType, "weapon");
            this.f12394j = Game.f8589i.towerManager.getTextureConfig(towerType, "weapon-long-penetrating");
            this.f12396l = Game.f8589i.assetManager.getTextureRegion("bullet-trace-smoke");
            this.f12395k = Game.f8589i.assetManager.getTextureRegion("tower-aim");
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-sniper-weapon-shadow"), 57.0f, 33.0f, 128.0f);
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/crit-hit.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f12397m = new ParticleEffectPool(particleEffect, 16, 1024);
            ParticleEffect particleEffect2 = new ParticleEffect();
            particleEffect2.load(Gdx.files.external("particles/killshot.prt"), Game.f8589i.assetManager.getTextureRegion("particle-killshot").getAtlas());
            particleEffect2.setEmittersCleanUpBlendFunction(false);
            this.f12398n = new ParticleEffectPool(particleEffect2, 16, 1024);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_SNIPER_A_PENETRATION_DAMAGE), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SNIPER_A_HEAVY_DAMAGE), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SNIPER_A_LONG_RANGE), 2, true).toString();
            int intValue = gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_SNIPER_A_KILLSHOT_INTERVAL);
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_SNIPER_A_KILLSHOT_HP), false).toString();
            abilityConfigs[3].descriptionArgs[1] = Integer.toString(intValue);
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_SNIPER_A_ULTIMATE_DAMAGE), false).toString();
            abilityConfigs[4].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_SNIPER_A_ULTIMATE_EXPL_DAMAGE), 2, true).toString();
            abilityConfigs[4].descriptionArgs[2] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_SNIPER_A_ULTIMATE_EXPL_RANGE), 2, true).toString();
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
            abilityConfigArr[4].descriptionArgs = new String[]{"", "", ""};
        }
    }

    public /* synthetic */ SniperTower(C24351 c24351) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAttack() {
        return m20729f() && !this.attackDisabled && this.f12384N >= 1.0f;
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return this.f12391V;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(0)) {
            if (isAbilityInstalled(2)) {
                return Game.f8589i.towerManager.f10174F.SNIPER.f12394j;
            }
            return Game.f8589i.towerManager.f10174F.SNIPER.getAbilityTextures(0);
        } else if (isAbilityInstalled(2)) {
            return Game.f8589i.towerManager.f10174F.SNIPER.getAbilityTextures(2);
        } else {
            return Game.f8589i.towerManager.f10174F.SNIPER.f12393i;
        }
    }

    public SniperTower() {
        super(TowerType.SNIPER);
        this.f12383M = Enemy.EnemyReference.NULL;
        this.f12384N = 0.0f;
        this.f12385O = 0;
    }

    @Override // com.prineside.tdi2.Tower
    public void attack(int i) {
        Enemy enemy;
        int i2;
        boolean z;
        boolean z2;
        float f;
        boolean z3;
        ResourcePack.AtlasTextureRegion atlasTextureRegion;
        ResourcePack.AtlasTextureRegion atlasTextureRegion2;
        Enemy target = getTarget();
        if (target == null) {
            return;
        }
        Vector2 vector2 = f12378Y;
        vector2.set(target.getPosition());
        Color color = f12380a0;
        color.set(target.getColor());
        float f2 = target.maxHealth;
        if (Game.f8589i.settingsManager.isParticlesDrawing() && this.f8844S._particle != null) {
            Vector2 vector22 = f12377X;
            vector22.set(getTile().center);
            if (isAbilityInstalled(2)) {
                if (FastRandom.getFloat() < 0.5f) {
                    atlasTextureRegion2 = Game.f8589i.assetManager.f9555TR.muzzleFlashCompensator1;
                } else {
                    atlasTextureRegion2 = Game.f8589i.assetManager.f9555TR.muzzleFlashCompensator2;
                }
                PMath.shiftPointByAngle(vector22, this.angle, 43.0f);
                this.f8844S._particle.addFlashParticle(atlasTextureRegion2, vector22.f5527x, vector22.f5528y, 28.35f, 13.5f, 56.7f, 56.7f, this.angle);
            } else {
                if (FastRandom.getFloat() < 0.5f) {
                    atlasTextureRegion = Game.f8589i.assetManager.f9555TR.muzzleFlash1;
                } else {
                    atlasTextureRegion = Game.f8589i.assetManager.f9555TR.muzzleFlash1;
                }
                PMath.shiftPointByAngle(vector22, this.angle, 28.0f);
                this.f8844S._particle.addFlashParticle(atlasTextureRegion, vector22.f5527x, vector22.f5528y, 21.6f, 2.7f, 43.2f, 43.2f, this.angle);
            }
        }
        float f3 = this.f12386P * i;
        float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SNIPER_A_KILLSHOT_HP);
        int intValue = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_SNIPER_A_KILLSHOT_INTERVAL);
        TowerType towerType = TowerType.SNIPER;
        DamageType damageType = DamageType.BULLET;
        float buffedDamageMultiplier = target.getBuffedDamageMultiplier(towerType, damageType);
        Enemy enemy2 = null;
        boolean z4 = false;
        boolean z5 = true;
        if (isAbilityInstalled(3) && buffedDamageMultiplier != 0.0f && target.isVulnerableToSpecial(SpecialDamageType.KILLSHOT) && target.getHealth() < target.maxHealth * percentValueAsMultiplier && this.f12385O >= intValue) {
            vector2.set(target.getPosition());
            if (!this.f8844S.enemy.giveDamage(target, this, (target.getHealth() / buffedDamageMultiplier) + 0.01f, damageType, null, false, null)) {
                this.f8844S.enemy.killEnemy(target, this, damageType, null, null);
            }
            if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                ParticleEffectPool.PooledEffect obtain = Game.f8589i.towerManager.f10174F.SNIPER.f12398n.obtain();
                obtain.setPosition(vector2.f5527x, vector2.f5528y);
                this.f8844S._particle.addParticle(obtain, true);
            }
            this.f12385O = 0;
            enemy = null;
            i2 = 0;
            z = true;
        } else {
            if (isAbilityInstalled(4)) {
                float distanceBetweenPoints = (PMath.getDistanceBetweenPoints(getTile().center, target.getPosition()) / this.rangeInPixels) * (((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SNIPER_A_ULTIMATE_DAMAGE)) - 1.0f);
                if (distanceBetweenPoints > 0.0f) {
                    f3 *= distanceBetweenPoints + 1.0f;
                }
            }
            if (this.f8844S.gameState.randomFloat() < this.f12389T) {
                f3 *= this.f12390U * 0.01f;
                boolean giveDamage = this.f8844S.enemy.giveDamage(target, this, f3, damageType, null, true, null);
                if (giveDamage) {
                    this.f12385O++;
                } else {
                    enemy2 = target;
                }
                if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                    ParticleEffectPool.PooledEffect obtain2 = Game.f8589i.towerManager.f10174F.SNIPER.f12397m.obtain();
                    obtain2.setPosition(vector2.f5527x, vector2.f5528y);
                    ParticleEmitter.ScaledNumericValue angle = obtain2.getEmitters().first().getAngle();
                    float f4 = this.angle - 270.0f;
                    angle.setHigh(f4 - 15.0f, f4 + 15.0f);
                    ParticleEmitter.GradientColorValue tint = obtain2.getEmitters().first().getTint();
                    float[] colors = tint.getColors();
                    colors[0] = color.f3892r;
                    colors[1] = color.f3891g;
                    colors[2] = color.f3890b;
                    tint.setColors(colors);
                    this.f8844S._particle.addParticle(obtain2, true);
                }
                if (giveDamage && isAbilityInstalled(4)) {
                    float dst2 = getTile().center.dst2(vector2);
                    float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_SNIPER_A_ULTIMATE_EXPL_RANGE) * 128.0f;
                    if (dst2 < floatValue * floatValue) {
                        GenericExplosion obtain3 = Game.f8589i.explosionManager.f9791F.GENERIC.obtain();
                        obtain3.setup(this, vector2.f5527x, vector2.f5528y, f2 * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SNIPER_A_ULTIMATE_EXPL_DAMAGE)), 1.2f, 0, 0.0f, 0.0f, color, color);
                        this.f8844S.explosion.register(obtain3);
                        obtain3.explode();
                        this.f8844S.achievement.registerDelta(AchievementType.EXPLODE_ENEMY_WITH_BULLET, 1);
                    }
                }
                enemy = enemy2;
                i2 = 0;
                z = false;
                z4 = true;
            } else {
                if (this.f8844S.enemy.giveDamage(target, this, f3, damageType, null, true, null)) {
                    this.f12385O++;
                    enemy = null;
                } else {
                    enemy = target;
                }
                i2 = 0;
                z = false;
                z4 = false;
            }
        }
        if (isAbilityInstalled(i2)) {
            float f5 = getTile().center.f5527x;
            float f6 = getTile().center.f5528y;
            float f7 = this.angle;
            float f8 = this.rangeInPixels;
            Vector2 vector23 = f12377X;
            PMath.getPointByAngleFromPoint(f5, f6, f7, f8, vector23);
            Array<Enemy.EnemyReference> array = f12381b0;
            array.clear();
            this.f8844S.map.rayCastEnemies(array, vector2.f5527x, vector2.f5528y, vector23.f5527x, vector23.f5528y, 1.0f, true);
            int i3 = 0;
            while (true) {
                Array<Enemy.EnemyReference> array2 = f12381b0;
                if (i3 >= array2.size) {
                    break;
                }
                Enemy enemy3 = array2.get(i3).enemy;
                if (enemy3 != null && enemy3 != enemy) {
                    float percentValueAsMultiplier2 = f3 * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SNIPER_A_PENETRATION_DAMAGE));
                    if (isAbilityInstalled(4)) {
                        f = 1.0f;
                        float distanceBetweenPoints2 = (1.0f - (PMath.getDistanceBetweenPoints(getTile().center, enemy3.getPosition()) / this.rangeInPixels)) * 0.75f;
                        if (distanceBetweenPoints2 > 0.0f) {
                            percentValueAsMultiplier2 *= distanceBetweenPoints2 + 1.0f;
                        }
                    } else {
                        f = 1.0f;
                    }
                    Vector2 vector24 = f12379Z;
                    vector24.set(enemy3.getPosition());
                    if (this.f8844S.enemy.giveDamage(enemy3, this, percentValueAsMultiplier2, DamageType.BULLET, null, true, null)) {
                        this.f12385O++;
                    }
                    if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
                        BulletSmokeMultiLine obtain4 = Game.f8589i.shapeManager.f10141F.BULLET_SMOKE_MULTI_LINE.obtain();
                        obtain4.maxAlpha = f;
                        TextureRegion textureRegion = Game.f8589i.towerManager.f10174F.SNIPER.f12396l;
                        if (FastRandom.getFloat() < 0.5f) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        obtain4.setTexture(textureRegion, false, z3);
                        obtain4.setColor(MaterialColor.RED.P500);
                        Vector2 vector25 = f12378Y;
                        obtain4.setup(vector25.f5527x, vector25.f5528y, vector24.f5527x, vector24.f5528y);
                        this.f8844S._projectileTrail.addTrail(obtain4);
                    }
                } else {
                    i3++;
                }
            }
        }
        if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
            BulletSmokeMultiLine obtain5 = Game.f8589i.shapeManager.f10141F.BULLET_SMOKE_MULTI_LINE.obtain();
            float f9 = getTile().center.f5527x;
            float f10 = getTile().center.f5528y;
            float f11 = this.angle;
            Vector2 vector26 = f12377X;
            PMath.getPointByAngleFromPoint(f9, f10, f11, 30.0f, vector26);
            TextureRegion textureRegion2 = Game.f8589i.towerManager.f10174F.SNIPER.f12396l;
            if (FastRandom.getFloat() < 0.5f) {
                z2 = false;
            } else {
                z2 = false;
                z5 = false;
            }
            obtain5.setTexture(textureRegion2, z2, z5);
            if (z) {
                obtain5.maxAlpha = 0.56f;
                obtain5.setColor(MaterialColor.PURPLE.P500);
            } else if (z4) {
                obtain5.maxAlpha = 0.28f;
                obtain5.setColor(MaterialColor.DEEP_ORANGE.P500);
            } else {
                obtain5.setColor(Color.WHITE);
            }
            float f12 = vector26.f5527x;
            float f13 = vector26.f5528y;
            Vector2 vector27 = f12378Y;
            obtain5.setup(f12, f13, vector27.f5527x, vector27.f5528y);
            this.f8844S._projectileTrail.addTrail(obtain5);
        }
        this.shotCount += i;
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playShotSound(StaticSoundType.SHOT_SNIPER, this);
        }
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        if (towerStatType == TowerStatType.RANGE && isAbilityInstalled(2)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SNIPER_A_LONG_RANGE);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == TowerStatType.DAMAGE && isAbilityInstalled(1)) {
            double d2 = statFromConfig;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_SNIPER_A_HEAVY_DAMAGE);
            Double.isNaN(d2);
            return (float) (d2 * percentValueAsMultiplier2);
        }
        return statFromConfig;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12382c0) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.SNIPER.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        if (getTile().visibleOnScreen && getTarget() != null && m20729f()) {
            float f2 = this.f12384N;
            float f3 = ((1.0f - f2) * 120.0f) + 4.0f;
            Color color = f12376W;
            color.f3889a = f2;
            spriteBatch.setColor(color);
            float f4 = f3 / 2.0f;
            spriteBatch.draw(Game.f8589i.towerManager.f10174F.SNIPER.f12395k, getTile().center.f5527x - f4, getTile().center.f5528y, f4, 0.0f, f3, 128.0f, 1.0f, 1.0f, this.angle);
            spriteBatch.setColor(Color.WHITE);
        }
        super.drawBatch(spriteBatch, f);
    }

    /* renamed from: f */
    public final boolean m20729f() {
        Enemy target = getTarget();
        if (target == null) {
            return false;
        }
        if (StrictMath.abs(PMath.getDistanceBetweenAngles(this.angle, PMath.getAngleBetweenPoints(getTile().center, target.getPosition()))) >= 3.0f || this.f12383M.enemy != target) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12383M = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
        this.f12384N = input.readFloat();
        this.f12385O = input.readVarInt(true);
        this.f12386P = input.readFloat();
        this.f12387Q = input.readFloat();
        this.f12388R = input.readFloat();
        this.f12389T = input.readFloat();
        this.f12390U = input.readFloat();
        this.f12391V = input.readFloat();
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        super.setUnregistered();
        this.f12383M = Enemy.EnemyReference.NULL;
        f12381b0.clear();
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        Enemy target = getTarget();
        if (this.f12383M.enemy != target) {
            this.f12383M = this.f8844S.enemy.getReference(target);
            this.f12384N = 0.0f;
        }
        m21892e(f, this.f12387Q);
        if (target != null) {
            if (m20729f()) {
                float f2 = 0.15f;
                if (target.getCurrentTile() != null) {
                    Array<Tile> neighbourTilesAndThis = target.getCurrentTile().getNeighbourTilesAndThis();
                    int i = neighbourTilesAndThis.size;
                    int i2 = 0;
                    int i3 = 0;
                    for (int i4 = 0; i4 < i; i4++) {
                        DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = neighbourTilesAndThis.items[i4].enemies;
                        for (int i5 = 0; i5 < delayedRemovalArray.size; i5++) {
                            Enemy enemy = delayedRemovalArray.items[i5].enemy;
                            if (enemy != null && target.getPosition().dst2(enemy.getPosition()) < 16384.0f) {
                                i3++;
                            }
                        }
                    }
                    int i6 = i3 - 1;
                    if (i6 >= 0) {
                        i2 = i6;
                    }
                    float f3 = 1.0f - (i2 * 0.04f);
                    if (f3 >= 0.15f) {
                        f2 = f3;
                    }
                } else {
                    f2 = 1.0f;
                }
                float f4 = this.f12384N + (this.f12388R * f * f2);
                this.f12384N = f4;
                if (f4 > 1.0f) {
                    this.f12384N = 1.0f;
                }
            } else {
                this.f12384N = 0.0f;
            }
        } else {
            this.f12384N = 0.0f;
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12386P = getStatBuffed(TowerStatType.DAMAGE);
        this.f12387Q = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12388R = getStatBuffed(TowerStatType.AIM_SPEED) * 0.01f;
        this.f12389T = getStatBuffed(TowerStatType.U_CRIT_CHANCE) * 0.01f;
        this.f12390U = getStatBuffed(TowerStatType.U_CRIT_MULTIPLIER);
        this.f12391V = 1.0f / getStatBuffed(TowerStatType.ATTACK_SPEED);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.f12383M);
        output.writeFloat(this.f12384N);
        output.writeVarInt(this.f12385O, true);
        output.writeFloat(this.f12386P);
        output.writeFloat(this.f12387Q);
        output.writeFloat(this.f12388R);
        output.writeFloat(this.f12389T);
        output.writeFloat(this.f12390U);
        output.writeFloat(this.f12391V);
    }
}
