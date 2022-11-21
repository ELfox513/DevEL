package com.prineside.tdi2.towers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.NumberUtils;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.Pools;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.BonusCoinsBuff;
import com.prineside.tdi2.buffs.DeathExplosionBuff;
import com.prineside.tdi2.buffs.StunBuff;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.enums.SpecialDamageType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.explosions.GenericExplosion;
import com.prineside.tdi2.managers.ShapeManager;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.PieChartActor;
import com.prineside.tdi2.shapes.BulletSmokeMultiLine;
import com.prineside.tdi2.shapes.MultiLine;
import com.prineside.tdi2.shapes.PieChart;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import com.prineside.tdi2.utils.TextureRegionConfig;
import java.util.Locale;
import net.bytebuddy.pool.TypePool;
@REGS
/* loaded from: classes2.dex */
public class GaussTower extends Tower {

    /* renamed from: h0 */
    public static final Array<Enemy.EnemyReference> f12258h0 = new Array<>(true, 8, Enemy.EnemyReference.class);

    /* renamed from: i0 */
    public static final Vector2 f12259i0 = new Vector2();

    /* renamed from: j0 */
    public static final Vector2 f12260j0 = new Vector2();

    /* renamed from: k0 */
    public static final Color f12261k0 = new Color();

    /* renamed from: l0 */
    public static final StringBuilder f12262l0 = new StringBuilder();

    /* renamed from: m0 */
    public static final int[] f12263m0 = {4, 1, 2, 3, 5};

    /* renamed from: M */
    public float f12264M;

    /* renamed from: N */
    public float f12265N;

    /* renamed from: O */
    public int f12266O;

    /* renamed from: P */
    public float f12267P;

    /* renamed from: Q */
    public float f12268Q;

    /* renamed from: R */
    public boolean f12269R;

    /* renamed from: T */
    public float f12270T;

    /* renamed from: U */
    public float f12271U;

    /* renamed from: V */
    public int f12272V;

    /* renamed from: W */
    public float f12273W;

    /* renamed from: X */
    public float f12274X;

    /* renamed from: Y */
    public boolean f12275Y;

    /* renamed from: Z */
    public float f12276Z;

    /* renamed from: a0 */
    public int f12277a0;
    @NAGS

    /* renamed from: b0 */
    public float f12278b0;
    @NAGS

    /* renamed from: c0 */
    public Vector2 f12279c0;
    @NAGS

    /* renamed from: d0 */
    public MultiLine f12280d0;
    @NAGS

    /* renamed from: e0 */
    public float f12281e0;
    @NAGS

    /* renamed from: f0 */
    public MultiLine f12282f0;
    @NAGS

    /* renamed from: g0 */
    public DelayedRemovalArray<Trail> f12283g0;

    /* renamed from: com.prineside.tdi2.towers.GaussTower$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C24301 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12284a;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f12284a = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12284a[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12284a[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12284a[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12284a[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class GaussTowerFactory extends Tower.Factory<GaussTower> {

        /* renamed from: i */
        public Array<TextureRegionConfig> f12285i;

        /* renamed from: j */
        public TextureRegion f12286j;

        /* renamed from: k */
        public TextureRegion f12287k;

        /* renamed from: l */
        public TextureRegion f12288l;

        /* renamed from: m */
        public TextureRegion[] f12289m;

        /* renamed from: n */
        public ParticleEffectPool f12290n;

        @Override // com.prineside.tdi2.Tower.Factory
        public int getBuildHotKey() {
            return 51;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Color getColor() {
            return MaterialColor.AMBER.P500;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public int getGeneralizedStat(GeneralizedTowerStatType generalizedTowerStatType) {
            int i = C24301.f12284a[generalizedTowerStatType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return i != 5 ? 0 : 1;
                        }
                        return 4;
                    }
                    return 5;
                }
                return 1;
            }
            return 5;
        }

        public GaussTowerFactory() {
            super("tower-gauss", TowerType.GAUSS);
            this.f12289m = new TextureRegion[ResourceType.values.length];
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public GaussTower create() {
            return new GaussTower(null);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setupAssets() {
            ResourceType[] resourceTypeArr;
            this.f12285i = Game.f8589i.towerManager.getTextureConfig(TowerType.GAUSS, "weapon");
            this.f12286j = Game.f8589i.assetManager.getTextureRegion("tower-gauss-weapon-glow");
            this.f12287k = Game.f8589i.assetManager.getTextureRegion("dashed-line");
            this.f12288l = Game.f8589i.assetManager.getTextureRegion("bullet-trace-smoke");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/gauss-shot.prt"), Game.f8589i.assetManager.getTextureRegion("particle-default").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f12290n = new ParticleEffectPool(particleEffect, 4, 128);
            for (ResourceType resourceType : ResourceType.values) {
                this.f12289m[resourceType.ordinal()] = Game.f8589i.assetManager.getTextureRegion("resource-orb-" + resourceType.name().toLowerCase(Locale.ENGLISH));
            }
            this.weaponShadowTexture = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("tower-gauss-weapon-shadow"), 60.0f, 39.0f, 128.0f);
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public Tower.AbilityConfig[] getAbilityConfigs(GameSystemProvider gameSystemProvider, Tower tower) {
            Tower.AbilityConfig[] abilityConfigs = super.getAbilityConfigs(gameSystemProvider, tower);
            abilityConfigs[0].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_GAUSS_A_NANO_DAMAGE), 2, true).toString();
            abilityConfigs[0].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_NANO_HP), 2, true).toString();
            abilityConfigs[1].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_IMPROVEMENT_BURN), 2, true).toString();
            abilityConfigs[1].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_IMPROVEMENT_DAMAGE), 2, true).toString();
            abilityConfigs[1].descriptionArgs[2] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_IMPROVEMENT_XP), 2, true).toString();
            abilityConfigs[2].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_CONDUCTORS_COINS), 2, true).toString();
            abilityConfigs[2].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_CONDUCTORS_DURATION), 2, true).toString();
            abilityConfigs[3].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getIntValue(GameValueType.TOWER_GAUSS_A_OVERLOAD_SHOTS), false).toString();
            abilityConfigs[3].descriptionArgs[1] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_OVERLOAD_DURATION), 2, true).toString();
            abilityConfigs[3].descriptionArgs[2] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_OVERLOAD_DAMAGE), 2, true).toString();
            abilityConfigs[4].descriptionArgs[0] = StringFormatter.compactNumber(gameSystemProvider.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_ULTIMATE_MINING_TIME), 2, true).toString();
            return abilityConfigs;
        }

        @Override // com.prineside.tdi2.Tower.Factory
        public void setup() {
            super.setup();
            Tower.AbilityConfig[] abilityConfigArr = this.f8946g;
            abilityConfigArr[0].descriptionArgs = new String[]{"2", "10"};
            abilityConfigArr[1].descriptionArgs = new String[]{"", "", ""};
            abilityConfigArr[2].descriptionArgs = new String[]{"50", "5"};
            abilityConfigArr[3].descriptionArgs = new String[]{"5", "10", "10"};
            abilityConfigArr[4].descriptionArgs = new String[]{""};
        }
    }

    /* loaded from: classes2.dex */
    public static class Trail {

        /* renamed from: m */
        public static float f12291m = 0.6f;

        /* renamed from: n */
        public static float f12292n = 8000.0f;

        /* renamed from: o */
        public static float f12293o = 18.0f;

        /* renamed from: p */
        public static float f12294p = 4.0f;

        /* renamed from: a */
        public float f12295a;

        /* renamed from: b */
        public float f12296b;

        /* renamed from: c */
        public float f12297c;

        /* renamed from: g */
        public TextureRegion f12301g;

        /* renamed from: i */
        public int f12303i;

        /* renamed from: j */
        public int f12304j;

        /* renamed from: d */
        public Vector2 f12298d = new Vector2();

        /* renamed from: e */
        public Vector2 f12299e = new Vector2();

        /* renamed from: f */
        public Vector2 f12300f = new Vector2();

        /* renamed from: h */
        public float[] f12302h = new float[0];

        /* renamed from: k */
        public float[] f12305k = new float[0];

        /* renamed from: l */
        public float[] f12306l = new float[0];

        /* renamed from: e */
        public final boolean m20742e() {
            return this.f12297c >= f12291m;
        }

        /* renamed from: d */
        public final void m20743d(SpriteBatch spriteBatch, float f) {
            float f2;
            float f3 = this.f12297c / f12291m;
            if (f3 < 0.04f) {
                f2 = f3 / 0.04f;
            } else {
                f2 = 1.0f - (f3 - 0.041666668f);
            }
            for (int i = 0; i < this.f12304j; i++) {
                Vector2 vector2 = this.f12298d;
                float f4 = this.f12305k[i];
                float f5 = vector2.f5527x * f * f4;
                float f6 = vector2.f5528y * f * f4;
                float[] fArr = this.f12306l;
                float f7 = fArr[i] + (f4 * f);
                fArr[i] = f7;
                float f8 = 0.0f;
                if (f7 < this.f12296b) {
                    GaussTower.f12261k0.set(NumberUtils.floatToIntColor(this.f12302h[(i * 20) + 2]));
                    GaussTower.f12261k0.f3889a = f2;
                    f8 = GaussTower.f12261k0.toFloatBits();
                }
                for (int i2 = 0; i2 < 4; i2++) {
                    int i3 = (i * 20) + (i2 * 5);
                    float[] fArr2 = this.f12302h;
                    fArr2[i3] = fArr2[i3] + f5;
                    int i4 = i3 + 1;
                    fArr2[i4] = fArr2[i4] + f6;
                    fArr2[i3 + 2] = f8;
                }
            }
            spriteBatch.draw(this.f12301g.getTexture(), this.f12302h, 0, this.f12303i);
            this.f12297c += f;
        }

        /* renamed from: f */
        public final void m20741f(float f, float f2, float f3, float f4) {
            this.f12298d.set(f3, f4).sub(f, f2).nor();
            this.f12299e.set(f3, f4).sub(f, f2);
            this.f12300f.set(this.f12298d).rotate90(-1).scl(f12294p);
            this.f12295a = PMath.getAngleBetweenPoints(f, f2, f3, f4);
            this.f12297c = 0.0f;
            this.f12301g = Game.f8589i.assetManager.getTextureRegion("particle-default-long");
            float cosDeg = MathUtils.cosDeg(this.f12295a);
            float sinDeg = MathUtils.sinDeg(this.f12295a);
            float f5 = cosDeg * (-4.8f);
            float f6 = f5 - (sinDeg * (-19.2f));
            float f7 = (-4.8f) * sinDeg;
            float f8 = ((-19.2f) * cosDeg) + f7;
            float f9 = sinDeg * 19.2f;
            float f10 = f5 - f9;
            float f11 = 19.2f * cosDeg;
            float f12 = f7 + f11;
            float f13 = (cosDeg * 4.8f) - f9;
            float f14 = (sinDeg * 4.8f) + f11;
            float u = this.f12301g.getU();
            float v2 = this.f12301g.getV2();
            float u2 = this.f12301g.getU2();
            float v = this.f12301g.getV();
            float floatBits = Color.ORANGE.toFloatBits();
            float[] fArr = {f6 + 4.8f, f8, floatBits, u, v2, f10 + 4.8f, f12, floatBits, u, v, f13 + 4.8f, f14, floatBits, u2, v, (f13 - f10) + f6 + 4.8f, f14 - (f12 - f8), floatBits, u2, v2};
            float distanceBetweenPoints = PMath.getDistanceBetweenPoints(f, f2, f3, f4);
            this.f12296b = distanceBetweenPoints;
            int ceil = MathUtils.ceil((distanceBetweenPoints / 128.0f) * f12293o);
            this.f12304j = ceil;
            int i = ceil * 20;
            this.f12303i = i;
            if (this.f12302h.length < i) {
                this.f12302h = new float[MathUtils.nextPowerOfTwo(i)];
            }
            int length = this.f12305k.length;
            int i2 = this.f12304j;
            if (length < i2) {
                this.f12305k = new float[MathUtils.nextPowerOfTwo(i2)];
                this.f12306l = new float[MathUtils.nextPowerOfTwo(this.f12304j)];
            }
            int i3 = 0;
            for (int i4 = 0; i4 < this.f12304j; i4++) {
                float f15 = FastRandom.getFloat();
                GaussTower.f12261k0.set(-12582657).lerp(0.2f, 0.0f, 1.0f, 1.0f, f15);
                float floatBits2 = GaussTower.f12261k0.toFloatBits();
                float f16 = (FastRandom.getFloat() * 2.0f) - 1.0f;
                Vector2 vector2 = this.f12300f;
                float f17 = vector2.f5527x * f16;
                float f18 = vector2.f5528y * f16;
                Vector2 vector22 = this.f12299e;
                float f19 = (vector22.f5527x * f15) + f + f17;
                float f20 = f2 + (vector22.f5528y * f15) + f18;
                int i5 = 0;
                int i6 = 0;
                while (i5 < 4) {
                    float[] fArr2 = this.f12302h;
                    int i7 = i3 + 1;
                    int i8 = i6 + 1;
                    fArr2[i3] = fArr[i6] + f19;
                    int i9 = i7 + 1;
                    fArr2[i7] = fArr[i8] + f20;
                    int i10 = i9 + 1;
                    fArr2[i9] = floatBits2;
                    int i11 = i8 + 1 + 1;
                    int i12 = i10 + 1;
                    int i13 = i11 + 1;
                    fArr2[i10] = fArr[i11];
                    fArr2[i12] = fArr[i13];
                    i5++;
                    i3 = i12 + 1;
                    i6 = i13 + 1;
                }
                this.f12305k[i4] = f12292n * ((FastRandom.getFloat() * 0.9f) + 0.1f);
                this.f12306l[i4] = f15 * this.f12296b;
            }
        }
    }

    public /* synthetic */ GaussTower(C24301 c24301) {
        this();
    }

    @Override // com.prineside.tdi2.Tower
    public void addExperience(float f) {
        if (isAbilityInstalled(1)) {
            float m20750g = m20750g();
            float percentValueAsMultiplier = ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_GAUSS_A_IMPROVEMENT_BURN)) * f;
            this.f12271U += percentValueAsMultiplier;
            while (true) {
                float f2 = this.f12271U;
                if (f2 >= m20750g) {
                    this.f12272V++;
                    this.f12271U = f2 - m20750g;
                    updateCache();
                } else {
                    super.addExperience(f - percentValueAsMultiplier);
                    return;
                }
            }
        } else {
            super.addExperience(f);
        }
    }

    @Override // com.prineside.tdi2.Tower
    public void attack(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            m20748i();
        }
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAim() {
        return false;
    }

    @Override // com.prineside.tdi2.Tower
    public boolean canAttack() {
        return false;
    }

    @Override // com.prineside.tdi2.Tower
    public void customButtonAction(int i, int i2) {
        this.f12270T = PMath.getAngleBetweenPoints(getTile().center.f5527x, getTile().center.f5528y, i, i2);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        super.drawBatch(spriteBatch, f);
    }

    @Override // com.prineside.tdi2.Tower
    public float getAttackDelay() {
        return 0.0f;
    }

    @Override // com.prineside.tdi2.Tower
    public float getRange() {
        return 0.0f;
    }

    @Override // com.prineside.tdi2.Tower
    public Array<TextureRegionConfig> getWeaponTextures() {
        if (isAbilityInstalled(0)) {
            return Game.f8589i.towerManager.f10174F.GAUSS.getAbilityTextures(0);
        }
        return Game.f8589i.towerManager.f10174F.GAUSS.f12285i;
    }

    @Override // com.prineside.tdi2.Tower
    public boolean hasCustomButton() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower
    public boolean isCustomButtonNeedMapPoint() {
        return true;
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        super.setUnregistered();
    }

    public GaussTower() {
        super(TowerType.GAUSS);
        this.f12279c0 = new Vector2();
        this.f12281e0 = -1000.0f;
        this.f12283g0 = new DelayedRemovalArray<>(Trail.class);
    }

    @Override // com.prineside.tdi2.Tower
    public void drawBatchAdditive(SpriteBatch spriteBatch, float f) {
        if (this.f12280d0 == null) {
            ShapeManager shapeManager = Game.f8589i.shapeManager;
            ShapeType shapeType = ShapeType.MULTI_LINE;
            this.f12280d0 = (MultiLine) shapeManager.getFactory(shapeType).obtain();
            this.f12282f0 = (MultiLine) Game.f8589i.shapeManager.getFactory(shapeType).obtain();
        }
        m20747j();
        this.f12280d0.draw(spriteBatch);
        if (this.angle != this.f12270T) {
            this.f12282f0.draw(spriteBatch);
        }
        this.f12283g0.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<Trail> delayedRemovalArray = this.f12283g0;
            if (i < delayedRemovalArray.size) {
                Trail trail = delayedRemovalArray.items[i];
                trail.m20743d(spriteBatch, this.f8844S.gameState.getGameSpeed() * f);
                if (trail.m20742e()) {
                    this.f12283g0.removeIndex(i);
                    Pools.free(trail);
                }
                i++;
            } else {
                delayedRemovalArray.end();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Tower
    public void drawWeapon(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
        int i;
        int i2;
        int i3;
        float f5 = f3 / 128.0f;
        float floatBits = spriteBatch.getColor().toFloatBits();
        if (!isOutOfOrder()) {
            Vector2 vector2 = f12259i0;
            vector2.setZero();
            if (this.f12278b0 > 0.0f) {
                vector2.set(this.f12279c0).scl(this.f12278b0);
                this.f12278b0 -= f4;
            }
            TextureRegionConfig.drawBatch(getWeaponTextures(), spriteBatch, f + (vector2.f5527x * f5), f2 + (vector2.f5528y * f5), f5 * 128.0f, 1.0f, this.angle);
            if (isAbilityInstalled(0)) {
                i = 5;
            } else {
                i = 4;
            }
            float f6 = this.f12267P / 100.0f;
            int i4 = 0;
            while (i4 < i) {
                float f7 = i;
                float f8 = (1.0f / f7) * i4;
                if (f6 > f8) {
                    float f9 = (f6 - f8) * f7;
                    if (f9 > 0.0f) {
                        if (f9 > 1.0f) {
                            f9 = 1.0f;
                        }
                        spriteBatch.setColor(1.0f, 1.0f, 1.0f, f9);
                        TextureRegion textureRegion = Game.f8589i.towerManager.f10174F.GAUSS.f12286j;
                        float f10 = 0.5f * f3;
                        Vector2 vector22 = f12259i0;
                        int i5 = i4 * 12;
                        i2 = i4;
                        i3 = i;
                        spriteBatch.draw(textureRegion, (f + f10) - ((vector22.f5527x + 18.0f) * f5), f2 + f10 + ((i5 + 15 + vector22.f5528y) * f5), 18.0f * f5, ((-15) - i5) * f5, f5 * 36.0f, f5 * 24.0f, 1.0f, 1.0f, this.angle);
                        i4 = i2 + 1;
                        i = i3;
                    }
                }
                i2 = i4;
                i3 = i;
                i4 = i2 + 1;
                i = i3;
            }
            spriteBatch.setPackedColor(floatBits);
        }
    }

    @Override // com.prineside.tdi2.Tower
    public void fillTowerMenu(Group group, ObjectMap<String, Object> objectMap) {
        int i;
        int i2;
        int i3;
        Color color;
        Color color2;
        float f;
        float f2;
        super.fillTowerMenu(group, objectMap);
        if (isAbilityInstalled(1)) {
            i = 32;
        } else {
            i = 1;
        }
        if (this.f12267P == 100.0f) {
            i2 = (i * 31) + 1;
        } else {
            i2 = (i * 31) + 2;
        }
        if (this.f12273W >= this.f12266O) {
            i3 = (i2 * 31) + 1;
        } else {
            i3 = (i2 * 31) + 2;
        }
        if (objectMap.size == 0 || !objectMap.get("state", -1).equals(Integer.valueOf(i3))) {
            group.clear();
            PieChartActor pieChartActor = new PieChartActor();
            Array<PieChart.ChartEntryConfig> array = new Array<>(PieChart.ChartEntryConfig.class);
            if (this.f12267P == 100.0f) {
                color = MaterialColor.LIGHT_GREEN.P500;
            } else {
                color = MaterialColor.BLUE.P500;
            }
            array.add(new PieChart.ChartEntryConfig(color, 50.0f, 0.0f));
            if (this.f12267P == 100.0f) {
                color2 = MaterialColor.LIGHT_GREEN.P500;
            } else {
                color2 = MaterialColor.CYAN.P500;
            }
            array.add(new PieChart.ChartEntryConfig(color2, 20.0f, 0.0f));
            array.add(new PieChart.ChartEntryConfig(new Color(0.0f, 0.0f, 0.0f, 0.28f), 30.0f, 0.0f));
            pieChartActor.setPosition(40.0f, 40.0f);
            pieChartActor.setSize(64.0f, 64.0f);
            pieChartActor.setSegmentCount(HttpStatus.SC_OK);
            pieChartActor.setConfigs(array);
            group.addActor(pieChartActor);
            Actor image = new Image(Game.f8589i.assetManager.getDrawable("circle"));
            image.setColor(new Color(724249599));
            image.setSize(36.0f, 36.0f);
            image.setPosition(54.0f, 54.0f);
            group.addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-cubes-stacked-flame"));
            image2.setSize(24.0f, 24.0f);
            image2.setPosition(60.0f, 60.0f);
            group.addActor(image2);
            Actor label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
            label.setColor(MaterialColor.BLUE.P500);
            label.setPosition(120.0f, 78.0f);
            label.setSize(100.0f, 18.0f);
            group.addActor(label);
            Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
            label2.setColor(new Color(1.0f, 1.0f, 1.0f, 0.56f));
            label2.setPosition(120.0f, 52.0f);
            label2.setSize(100.0f, 16.0f);
            group.addActor(label2);
            if (this.f12273W < this.f12266O) {
                label2.setText("Loading resources");
                image2.setDrawable(Game.f8589i.assetManager.getDrawable("icon-cubes-stacked-flame"));
            } else if (this.f12267P == 100.0f) {
                label2.setText("Waiting for target");
                image2.setDrawable(Game.f8589i.assetManager.getDrawable("icon-crosshair"));
            } else {
                label2.setText("Recharging");
                image2.setDrawable(Game.f8589i.assetManager.getDrawable("icon-battery"));
            }
            if (isAbilityInstalled(1)) {
                PieChartActor pieChartActor2 = new PieChartActor();
                Array<PieChart.ChartEntryConfig> array2 = new Array<>(PieChart.ChartEntryConfig.class);
                array2.add(new PieChart.ChartEntryConfig(MaterialColor.AMBER.P500, 20.0f, 0.0f));
                array2.add(new PieChart.ChartEntryConfig(new Color(0.0f, 0.0f, 0.0f, 0.28f), 30.0f, 0.0f));
                pieChartActor2.setPosition(302.0f, 40.0f);
                pieChartActor2.setSize(64.0f, 64.0f);
                pieChartActor2.setSegmentCount(HttpStatus.SC_OK);
                pieChartActor2.setConfigs(array2);
                group.addActor(pieChartActor2);
                Actor image3 = new Image(Game.f8589i.assetManager.getDrawable("circle"));
                image3.setColor(new Color(724249599));
                image3.setSize(36.0f, 36.0f);
                image3.setPosition(316.0f, 54.0f);
                group.addActor(image3);
                Label label3 = new Label("XP", Game.f8589i.assetManager.getLabelStyle(21));
                label3.setSize(36.0f, 36.0f);
                label3.setAlignment(1);
                label3.setPosition(316.0f, 54.0f);
                group.addActor(label3);
                Actor label4 = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
                label4.setColor(MaterialColor.RED.P500);
                label4.setPosition(382.0f, 78.0f);
                label4.setSize(100.0f, 18.0f);
                group.addActor(label4);
                Actor label5 = new Label(Game.f8589i.localeManager.i18n.get("bonus_damage"), Game.f8589i.assetManager.getLabelStyle(21));
                label5.setColor(new Color(1.0f, 1.0f, 1.0f, 0.56f));
                label5.setPosition(382.0f, 52.0f);
                label5.setSize(100.0f, 16.0f);
                group.addActor(label5);
                objectMap.put("xpChart", pieChartActor2);
                objectMap.put("xpTitle", label4);
            }
            objectMap.put("state", Integer.valueOf(i3));
            objectMap.put("chargingChart", pieChartActor);
            objectMap.put("chargingTitle", label);
        }
        Label label6 = (Label) objectMap.get("chargingTitle");
        float f3 = this.f12267P;
        if (f3 == 0.0f) {
            float f4 = this.f12273W;
            StringBuilder stringBuilder = f12262l0;
            stringBuilder.setLength(0);
            stringBuilder.append((int) f4).append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH).append((int) ((f4 % 1.0f) * 10.0f)).append(" / ").append(this.f12266O);
            label6.setText(stringBuilder);
            label6.setColor(MaterialColor.BLUE.P500);
        } else if (f3 == 100.0f) {
            label6.setText(Game.f8589i.localeManager.i18n.get("tower_status_charged"));
            label6.setColor(MaterialColor.LIGHT_GREEN.P500);
        } else {
            float f5 = (100.0f - f3) / this.f12268Q;
            StringBuilder stringBuilder2 = f12262l0;
            stringBuilder2.setLength(0);
            stringBuilder2.append((int) f5).append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH).append((int) ((f5 % 1.0f) * 10.0f)).append(Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND"));
            label6.setText(stringBuilder2);
            label6.setColor(MaterialColor.CYAN.P500);
        }
        int i4 = this.f12266O;
        if (i4 <= 0) {
            f2 = 1.0f;
            f = 1.0f;
        } else {
            float f6 = this.f12273W / i4;
            f = 1.0f;
            if (f6 > 1.0f) {
                f2 = 1.0f;
            } else {
                f2 = f6;
            }
        }
        float f7 = this.f12267P / 100.0f;
        if (f7 > f) {
            f7 = 1.0f;
        }
        PieChartActor pieChartActor3 = (PieChartActor) objectMap.get("chargingChart");
        Array<PieChart.ChartEntryConfig> configs = pieChartActor3.getConfigs();
        configs.get(0).value = f2 * 50.0f;
        configs.get(1).value = f7 * 50.0f;
        configs.get(2).value = (100.0f - configs.get(0).value) - configs.get(1).value;
        pieChartActor3.setConfigs(configs);
        if (isAbilityInstalled(1)) {
            PieChartActor pieChartActor4 = (PieChartActor) objectMap.get("xpChart");
            Array<PieChart.ChartEntryConfig> configs2 = pieChartActor4.getConfigs();
            configs2.get(0).value = this.f12271U / m20750g();
            if (configs2.get(0).value > 1.0f) {
                configs2.get(0).value = 1.0f;
            }
            configs2.get(1).value = 1.0f - configs2.get(0).value;
            pieChartActor4.setConfigs(configs2);
            StringBuilder stringBuilder3 = f12262l0;
            stringBuilder3.setLength(0);
            stringBuilder3.append(MathUtils.round(this.f12272V * this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_IMPROVEMENT_DAMAGE))).append("%");
            ((Label) objectMap.get("xpTitle")).setText(stringBuilder3);
        }
    }

    /* renamed from: g */
    public final float m20750g() {
        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_IMPROVEMENT_XP);
        int i = this.f12272V;
        return floatValue + (i * 50) + ((float) StrictMath.pow(i, 1.25d));
    }

    @Override // com.prineside.tdi2.Tower
    public float getStat(TowerStatType towerStatType) {
        float statFromConfig = Game.f8589i.towerManager.getStatFromConfig(this.type, towerStatType, getUpgradeLevel(), getLevel(), this.f8844S.gameValue);
        TowerStatType towerStatType2 = TowerStatType.DAMAGE;
        if (towerStatType == towerStatType2 && isAbilityInstalled(0)) {
            double d = statFromConfig;
            double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_GAUSS_A_NANO_DAMAGE);
            Double.isNaN(d);
            statFromConfig = (float) (d * percentValueAsMultiplier);
        }
        if (towerStatType == towerStatType2 && isAbilityInstalled(1)) {
            double d2 = statFromConfig;
            double d3 = this.f12272V;
            double percentValueAsMultiplier2 = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_GAUSS_A_IMPROVEMENT_DAMAGE);
            Double.isNaN(d3);
            Double.isNaN(d2);
            return (float) (d2 * ((d3 * percentValueAsMultiplier2) + 1.0d));
        }
        return statFromConfig;
    }

    /* renamed from: h */
    public final void m20749h(Enemy enemy) {
        Miner miner;
        if (enemy != null && enemy.gaussMiningSpeedGiven) {
            return;
        }
        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_ULTIMATE_MINING_TIME);
        Array<Tile> neighbourTiles = getTile().getNeighbourTiles();
        for (int i = 0; i < neighbourTiles.size; i++) {
            Tile tile = neighbourTiles.items[i];
            if (tile.type == TileType.SOURCE && (miner = ((SourceTile) tile).miner) != null) {
                miner.doubleSpeedTimeLeft += floatValue;
            }
        }
        if (enemy != null) {
            enemy.gaussMiningSpeedGiven = true;
        }
    }

    /* renamed from: i */
    public final void m20748i() {
        boolean z;
        boolean z2;
        float f;
        boolean z3;
        int i;
        float f2;
        DamageType damageType;
        Enemy enemy;
        Enemy.EnemyReference enemyReference;
        boolean giveDamage;
        Enemy.EnemyReference enemyReference2;
        boolean z4;
        Array<Enemy.EnemyReference> array = f12258h0;
        array.clear();
        Vector2 vector2 = f12259i0;
        float f3 = 0.0f;
        vector2.set(0.0f, 1.0f).rotateDeg(this.angle).scl(5376.0f).add(getTile().center);
        int intValue = this.f8844S.gameValue.getIntValue(GameValueType.TOWER_GAUSS_A_OVERLOAD_SHOTS);
        if (intValue < 1) {
            intValue = 1;
        }
        char c = 0;
        if (this.f12277a0 % intValue == 0 && isAbilityInstalled(3)) {
            z = true;
            z2 = true;
        } else {
            z = false;
            z2 = false;
        }
        boolean rayCastEnemies = this.f8844S.map.rayCastEnemies(array, getTile().center.f5527x, getTile().center.f5528y, vector2.f5527x, vector2.f5528y, 2.0f, true);
        float f4 = 5296.0f;
        if (rayCastEnemies) {
            float f5 = this.f12264M;
            int i2 = 0;
            float f6 = 5296.0f;
            int i3 = 0;
            while (true) {
                Array<Enemy.EnemyReference> array2 = f12258h0;
                if (i2 < array2.size) {
                    Enemy.EnemyReference enemyReference3 = array2.items[i2];
                    Enemy enemy2 = enemyReference3.enemy;
                    if (enemy2 != null && canAttackEnemy(enemy2)) {
                        TowerType towerType = TowerType.GAUSS;
                        DamageType damageType2 = DamageType.BULLET;
                        float buffedDamageMultiplier = enemy2.getBuffedDamageMultiplier(towerType, damageType2);
                        if (buffedDamageMultiplier != f3) {
                            float f7 = -0.001f;
                            if (this.installedAbilities[c] && enemy2.isVulnerableToSpecial(SpecialDamageType.NANOPARTICLES)) {
                                f7 = (enemy2.maxHealth / buffedDamageMultiplier) * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_GAUSS_A_NANO_HP));
                            }
                            float health = (enemy2.getHealth() / buffedDamageMultiplier) - f7;
                            if (health >= f3) {
                                if (Float.isNaN(health)) {
                                    Logger.error("GaussTower", "canReceiveDamage " + health + " " + enemy2.getHealth() + " " + buffedDamageMultiplier + " " + f7 + " " + enemy2);
                                } else {
                                    if (isAbilityInstalled(2)) {
                                        BonusCoinsBuff obtain = Game.f8589i.buffManager.f9699F.BONUS_COINS.obtain();
                                        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_CONDUCTORS_DURATION);
                                        obtain.setup(floatValue, floatValue * 10.0f, (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_GAUSS_A_CONDUCTORS_COINS), this);
                                        this.f8844S.buff.P_BONUS_COINS.addBuff(enemy2, obtain);
                                    }
                                    if (z) {
                                        DeathExplosionBuff obtain2 = Game.f8589i.buffManager.f9699F.DEATH_EXPLOSION.obtain();
                                        GenericExplosion genericExplosion = (GenericExplosion) Game.f8589i.explosionManager.getFactory(ExplosionType.GENERIC).obtain();
                                        f2 = health;
                                        damageType = damageType2;
                                        enemy = enemy2;
                                        i = i2;
                                        enemyReference = enemyReference3;
                                        f = 80.0f;
                                        genericExplosion.setup(this, 0.0f, 0.0f, enemy2.maxHealth * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_GAUSS_A_OVERLOAD_DAMAGE)), 1.0f, 0, 0.0f, 0.0f, MaterialColor.PURPLE.P400, null);
                                        obtain2.setup(120.0f, 1200.0f, genericExplosion);
                                        this.f8844S.buff.P_DEATH_EXPLOSION.addBuff(enemy, obtain2);
                                        z = false;
                                    } else {
                                        f2 = health;
                                        damageType = damageType2;
                                        enemy = enemy2;
                                        enemyReference = enemyReference3;
                                        i = i2;
                                        f = 80.0f;
                                    }
                                    if (f5 <= f2) {
                                        f6 = getTile().center.dst(enemy.getPosition()) - f;
                                        giveDamage = this.f8844S.enemy.giveDamage(enemy, this, f5, damageType, null, true, null);
                                        enemyReference2 = enemyReference;
                                        z4 = true;
                                    } else {
                                        giveDamage = this.f8844S.enemy.giveDamage(enemy, this, f2, damageType, null, true, null);
                                        enemyReference2 = enemyReference;
                                        Enemy enemy3 = enemyReference2.enemy;
                                        f5 -= f2;
                                        if (isAbilityInstalled(4)) {
                                            m20749h(enemy3);
                                        }
                                        z4 = false;
                                    }
                                    if (giveDamage) {
                                        if (isAbilityInstalled(4)) {
                                            m20749h(null);
                                        }
                                    } else {
                                        Enemy enemy4 = enemyReference2.enemy;
                                        if (enemy4 != null && z2 && enemy4.getHealth() > 0.0f && !enemy4.wasStunnedByGauss) {
                                            StunBuff obtain3 = Game.f8589i.buffManager.f9699F.STUN.obtain();
                                            obtain3.copyDisabled = true;
                                            if (enemy4.canBeBuffed(BuffType.STUN)) {
                                                enemy4.wasStunnedByGauss = true;
                                                float floatValue2 = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_GAUSS_A_OVERLOAD_DURATION);
                                                obtain3.setup(floatValue2, floatValue2 * 10.0f, this.f8924id);
                                                this.f8844S.buff.P_STUN.addBuff(enemy4, obtain3);
                                                int i4 = i3 + 1;
                                                if (this.f8844S.achievement.isActive()) {
                                                    Game.f8589i.achievementManager.setProgress(AchievementType.MASS_STUN_ENEMIES_ONE_SHOT, i4);
                                                }
                                                i3 = i4;
                                            } else {
                                                obtain3.free();
                                            }
                                        }
                                    }
                                    if (z4) {
                                        break;
                                    }
                                    i2 = i + 1;
                                    f3 = 0.0f;
                                    c = 0;
                                }
                            }
                        }
                    }
                    i = i2;
                    i2 = i + 1;
                    f3 = 0.0f;
                    c = 0;
                } else {
                    f = 80.0f;
                    break;
                }
            }
            f4 = f6;
            this.shotCount++;
        } else {
            f = 80.0f;
        }
        f12258h0.clear();
        if (!this.f8844S.gameState.canSkipMediaUpdate()) {
            if (Game.f8589i.settingsManager.isParticlesDrawing() && this.f8844S._particle != null) {
                Vector2 vector22 = f12259i0;
                vector22.set(getTile().center);
                ParticleEffectPool.PooledEffect obtain4 = Game.f8589i.towerManager.f10174F.GAUSS.f12290n.obtain();
                PMath.shiftPointByAngle(vector22, this.angle, f);
                obtain4.setPosition(vector22.f5527x, vector22.f5528y);
                obtain4.getEmitters().get(0).getAngle().setHigh(this.angle + 90.0f);
                ParticleEmitter.ScaledNumericValue angle = obtain4.getEmitters().get(1).getAngle();
                float f8 = this.angle;
                angle.setHigh((f8 - 15.0f) + 90.0f, f8 + 15.0f + 90.0f);
                obtain4.getEmitters().get(1).getAngle().setLow(this.angle + 90.0f);
                obtain4.getEmitters().get(0).getRotation().setHigh(this.angle);
                this.f8844S._particle.addParticle(obtain4, true);
                Trail trail = (Trail) Pools.obtain(Trail.class);
                Vector2 vector23 = f12260j0;
                vector23.set(0.0f, 1.0f).rotateDeg(this.angle).scl(f4).add(vector22);
                trail.m20741f(vector22.f5527x, vector22.f5528y, vector23.f5527x, vector23.f5528y);
                this.f12283g0.add(trail);
            }
            if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate()) {
                BulletSmokeMultiLine obtain5 = Game.f8589i.shapeManager.f10141F.BULLET_SMOKE_MULTI_LINE.obtain();
                float f9 = getTile().center.f5527x;
                float f10 = getTile().center.f5528y;
                float f11 = this.angle;
                Vector2 vector24 = f12259i0;
                PMath.getPointByAngleFromPoint(f9, f10, f11, f, vector24);
                TextureRegion textureRegion = Game.f8589i.towerManager.f10174F.GAUSS.f12288l;
                if (FastRandom.getFloat() < 0.5f) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                obtain5.setTexture(textureRegion, false, z3);
                obtain5.maxSegmentWidth = 23.04f;
                obtain5.maxAlpha = 1.0f;
                obtain5.setColor(MaterialColor.PURPLE.P500);
                float f12 = vector24.f5527x;
                float f13 = vector24.f5528y;
                float f14 = this.angle;
                Vector2 vector25 = f12260j0;
                PMath.getPointByAngleFromPoint(f12, f13, f14, f4, vector25);
                obtain5.setup(vector24.f5527x, vector24.f5528y, vector25.f5527x, vector25.f5528y);
                this.f8844S._projectileTrail.addTrail(obtain5);
            }
            this.f12279c0.set(0.0f, 1.0f).scl(15.36f).rotateDeg(this.angle + 180.0f);
            this.f12278b0 = 1.0f;
            SoundSystem soundSystem = this.f8844S._sound;
            if (soundSystem != null) {
                soundSystem.playShotSound(StaticSoundType.SHOT_GAUSS, this);
            }
        }
        this.f12267P = 0.0f;
        float f15 = this.f12273W - this.f12266O;
        this.f12273W = f15;
        if (f15 < 0.0f) {
            this.f12273W = 0.0f;
        }
        this.f12274X = 0.0f;
        this.f12275Y = false;
        this.f12277a0++;
    }

    /* renamed from: j */
    public final void m20747j() {
        this.f12280d0.reset();
        int i = 0;
        this.f12280d0.setTextureRegion(Game.f8589i.towerManager.f10174F.GAUSS.f12287k, false, false);
        Color color = f12261k0;
        color.set(1.0f, 1.0f, 1.0f, 0.0f);
        Vector2 vector2 = f12259i0;
        vector2.set(getTile().center);
        Vector2 vector22 = f12260j0;
        vector22.set(0.0f, 64.0f);
        vector22.rotateDeg(this.angle);
        this.f12280d0.appendNode(vector2.f5527x, vector2.f5528y, 4.0f, color.toFloatBits(), false);
        int i2 = 0;
        while (i2 < 16) {
            Color color2 = f12261k0;
            i2++;
            color2.f3889a = (1.0f - (i2 / 16)) * 0.28f;
            Vector2 vector23 = f12259i0;
            vector23.add(f12260j0);
            this.f12280d0.appendNode(vector23.f5527x, vector23.f5528y, 4.0f, color2.toFloatBits(), false);
        }
        this.f12280d0.updateAllNodes();
        if (this.f12281e0 != this.f12270T) {
            this.f12282f0.reset();
            this.f12282f0.setTextureRegion(Game.f8589i.towerManager.f10174F.GAUSS.f12287k, false, false);
            Color color3 = f12261k0;
            color3.set(MaterialColor.LIGHT_GREEN.P500);
            color3.f3889a = 0.0f;
            Vector2 vector24 = f12259i0;
            vector24.set(getTile().center);
            Vector2 vector25 = f12260j0;
            vector25.set(0.0f, 64.0f);
            vector25.rotateDeg(this.f12270T);
            this.f12282f0.appendNode(vector24.f5527x, vector24.f5528y, 4.0f, color3.toFloatBits(), false);
            while (i < 16) {
                Color color4 = f12261k0;
                i++;
                color4.f3889a = (1.0f - (i / 16)) * 0.28f;
                Vector2 vector26 = f12259i0;
                vector26.add(f12260j0);
                this.f12282f0.appendNode(vector26.f5527x, vector26.f5528y, 4.0f, color4.toFloatBits(), false);
            }
            this.f12282f0.updateAllNodes();
            this.f12281e0 = this.f12270T;
        }
    }

    @Override // com.prineside.tdi2.Tower
    public void update(float f) {
        GameSystemProvider gameSystemProvider;
        Miner miner;
        ResourceType[] resourceTypeArr;
        int i;
        boolean z;
        if (!isOutOfOrder()) {
            if (this.f12267P == 0.0f && (this.f12273W == 0.0f || this.f12266O == 0)) {
                float f2 = this.angle;
                float f3 = this.f12270T;
                if (f2 != f3) {
                    rotateTo(f3, f, this.f12265N);
                }
                if (this.angle != this.f12270T) {
                    z = true;
                } else {
                    z = false;
                }
                this.f12269R = z;
            } else {
                this.f12269R = false;
            }
            if (!this.f12269R) {
                float f4 = this.f12273W;
                int i2 = this.f12266O;
                if (f4 < i2) {
                    double d = i2 - f4;
                    Array<Tile> neighbourTiles = getTile().getNeighbourTiles();
                    loop0: for (int i3 = 0; i3 < neighbourTiles.size; i3++) {
                        Tile tile = neighbourTiles.items[i3];
                        if (tile.type == TileType.SOURCE && (miner = ((SourceTile) tile).miner) != null) {
                            ResourceType[] resourceTypeArr2 = ResourceType.values;
                            int length = resourceTypeArr2.length;
                            int i4 = 0;
                            while (i4 < length) {
                                ResourceType resourceType = resourceTypeArr2[i4];
                                int i5 = miner.minedResources[resourceType.ordinal()].get();
                                if (i5 > 0) {
                                    double ordinal = resourceType.ordinal();
                                    Double.isNaN(ordinal);
                                    double d2 = (ordinal * 0.25d) + 1.0d;
                                    resourceTypeArr = resourceTypeArr2;
                                    i = length;
                                    int ceil = MathUtils.ceil((float) (d / d2));
                                    if (i5 >= ceil) {
                                        i5 = ceil;
                                    }
                                    this.f8844S.miner.removeResources(miner, resourceType, i5);
                                    double d3 = this.f12273W;
                                    double d4 = i5;
                                    Double.isNaN(d4);
                                    double d5 = d4 * d2;
                                    Double.isNaN(d3);
                                    this.f12273W = (float) (d3 + d5);
                                    d -= d5;
                                    if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                                        if (i5 > 3) {
                                            i5 = 3;
                                        }
                                        for (int i6 = 0; i6 < i5; i6++) {
                                            this.f8844S._particle.addOrbParticle(Game.f8589i.towerManager.f10174F.GAUSS.f12289m[resourceType.ordinal()], 18.0f, miner.getTile().getX(), miner.getTile().getY(), getTile().getX(), getTile().getY());
                                        }
                                    }
                                    if (d <= 0.0d) {
                                        break loop0;
                                    }
                                } else {
                                    resourceTypeArr = resourceTypeArr2;
                                    i = length;
                                }
                                i4++;
                                resourceTypeArr2 = resourceTypeArr;
                                length = i;
                            }
                        }
                    }
                }
            }
            boolean z2 = this.f12269R;
            if (!z2) {
                if (this.f12273W >= this.f12266O) {
                    float f5 = this.f12267P + (this.f12268Q * f);
                    this.f12267P = f5;
                    if (f5 >= 100.0f) {
                        this.f12267P = 100.0f;
                    }
                } else {
                    this.f12267P = 0.0f;
                }
            }
            if (this.f12267P == 100.0f) {
                if (!z2) {
                    if (!this.f12275Y && this.angle == this.f12270T) {
                        float f6 = this.f12276Z + f;
                        this.f12276Z = f6;
                        if (f6 > 0.08f) {
                            Array<Enemy.EnemyReference> array = f12258h0;
                            array.clear();
                            Vector2 vector2 = f12259i0;
                            vector2.set(0.0f, 1.0f).rotateDeg(this.angle).scl(5120.0f).add(getTile().center);
                            if (this.f8844S.map.rayCastEnemies(array, getTile().center.f5527x, getTile().center.f5528y, vector2.f5527x, vector2.f5528y, 1.0f, false)) {
                                int i7 = 0;
                                while (true) {
                                    Array<Enemy.EnemyReference> array2 = f12258h0;
                                    if (i7 >= array2.size) {
                                        break;
                                    } else if (canAttackEnemy(array2.items[i7].enemy)) {
                                        this.f12275Y = true;
                                        if (this.f8844S._sound != null && gameSystemProvider.gameState.getGameSpeed() < 2.1d) {
                                            this.f8844S._sound.playShotSound(StaticSoundType.SHOT_GAUSS_CHARGE, this);
                                        }
                                    } else {
                                        i7++;
                                    }
                                }
                            }
                            f12258h0.clear();
                            this.f12276Z = 0.0f;
                        }
                    } else {
                        float f7 = this.f12274X + f;
                        this.f12274X = f7;
                        if (f7 > 0.65f && !this.attackDisabled) {
                            attack(1);
                            this.f8933w = true;
                        }
                    }
                }
            } else {
                this.f12275Y = false;
                this.f12274X = 0.0f;
            }
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCustomButton(ComplexButton complexButton, boolean z) {
        complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-crosshair"));
        if (z) {
            complexButton.setBackgroundColors(MaterialColor.GREEN.P800, MaterialColor.GREEN.P900, MaterialColor.GREEN.P700, Color.WHITE);
            complexButton.setText(Game.f8589i.localeManager.i18n.get("tap_on_map"));
            return;
        }
        complexButton.setBackgroundColors(MaterialColor.LIGHT_BLUE.P800, MaterialColor.LIGHT_BLUE.P900, MaterialColor.LIGHT_BLUE.P700, Color.WHITE);
        complexButton.setText(Game.f8589i.localeManager.i18n.get("rotate_button"));
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building
    public void drawBase(SpriteCache spriteCache, int i, int i2, MapRenderingSystem.DrawMode drawMode) {
        int[] iArr;
        super.m21894c(spriteCache, i, i2, drawMode);
        for (int i3 : f12263m0) {
            if (isAbilityInstalled(i3)) {
                TextureRegionConfig.drawCache(Game.f8589i.towerManager.f10174F.GAUSS.getAbilityTextures(i3), spriteCache, i, i2, 128.0f);
            }
        }
        super.m21895b(spriteCache, i, i2, drawMode);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12264M = input.readFloat();
        this.f12265N = input.readFloat();
        this.f12266O = input.readVarInt(true);
        this.f12267P = input.readFloat();
        this.f12268Q = input.readFloat();
        this.f12269R = input.readBoolean();
        this.f12270T = input.readFloat();
        this.f12271U = input.readFloat();
        this.f12272V = input.readVarInt(true);
        this.f12273W = input.readFloat();
        this.f12274X = input.readFloat();
        this.f12275Y = input.readBoolean();
        this.f12276Z = input.readFloat();
        this.f12277a0 = input.readVarInt(true);
    }

    @Override // com.prineside.tdi2.Tower
    public void updateCache() {
        super.updateCache();
        this.f12264M = getStatBuffed(TowerStatType.DAMAGE);
        this.f12265N = getStatBuffed(TowerStatType.ROTATION_SPEED);
        this.f12266O = MathUtils.round(getStatBuffed(TowerStatType.RESOURCE_CONSUMPTION));
        this.f12268Q = getStatBuffed(TowerStatType.CHARGING_SPEED);
    }

    @Override // com.prineside.tdi2.Tower, com.prineside.tdi2.Building, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f12264M);
        output.writeFloat(this.f12265N);
        output.writeVarInt(this.f12266O, true);
        output.writeFloat(this.f12267P);
        output.writeFloat(this.f12268Q);
        output.writeBoolean(this.f12269R);
        output.writeFloat(this.f12270T);
        output.writeFloat(this.f12271U);
        output.writeVarInt(this.f12272V, true);
        output.writeFloat(this.f12273W);
        output.writeFloat(this.f12274X);
        output.writeBoolean(this.f12275Y);
        output.writeFloat(this.f12276Z);
        output.writeVarInt(this.f12277a0, true);
    }
}
