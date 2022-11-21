package com.prineside.tdi2.systems;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFontCache;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Polygon;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntFloatMap;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.PooledCustomEffect;
import com.prineside.tdi2.utils.StringFormatter;
import java.util.Arrays;
@NAGS
/* loaded from: classes2.dex */
public class ParticleSystem extends GameSystem {

    /* renamed from: H */
    public static final float[] f11653H;

    /* renamed from: I */
    public static final Vector2 f11654I;

    /* renamed from: J */
    public static final StringBuilder f11655J;

    /* renamed from: K */
    public static final float[] f11656K;

    /* renamed from: L */
    public static final Color f11657L;

    /* renamed from: M */
    public static final Vector2 f11658M;

    /* renamed from: N */
    public static final Vector2 f11659N;

    /* renamed from: B */
    public float f11661B;

    /* renamed from: C */
    public int f11662C;

    /* renamed from: D */
    public int f11663D;

    /* renamed from: F */
    public int f11665F;

    /* renamed from: z */
    public BitmapFontCache f11681z;

    /* renamed from: a */
    public final Array<ParticleEffect> f11667a = new Array<>(false, 16, ParticleEffect.class);

    /* renamed from: b */
    public final Array<ParticleEffect> f11668b = new Array<>(false, 16, ParticleEffect.class);

    /* renamed from: d */
    public final DelayedRemovalArray<XpOrbParticle> f11669d = new DelayedRemovalArray<>(XpOrbParticle.class);

    /* renamed from: k */
    public final DelayedRemovalArray<ShatterPolygon> f11670k = new DelayedRemovalArray<>(ShatterPolygon.class);

    /* renamed from: p */
    public final DelayedRemovalArray<ShatterPolygon> f11671p = new DelayedRemovalArray<>(ShatterPolygon.class);

    /* renamed from: q */
    public final DelayedRemovalArray<CoinParticle> f11672q = new DelayedRemovalArray<>(CoinParticle.class);

    /* renamed from: r */
    public final DelayedRemovalArray<DamageParticle> f11673r = new DelayedRemovalArray<>(DamageParticle.class);

    /* renamed from: s */
    public final DelayedRemovalArray<FlashParticle> f11674s = new DelayedRemovalArray<>(FlashParticle.class);

    /* renamed from: t */
    public final Pool<XpOrbParticle> f11675t = new Pool<XpOrbParticle>() { // from class: com.prineside.tdi2.systems.ParticleSystem.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public XpOrbParticle newObject() {
            return new XpOrbParticle();
        }
    };

    /* renamed from: u */
    public final Pool<ShatterPolygon> f11676u = new Pool<ShatterPolygon>() { // from class: com.prineside.tdi2.systems.ParticleSystem.2
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public ShatterPolygon newObject() {
            return new ShatterPolygon();
        }
    };

    /* renamed from: v */
    public final Pool<CoinParticle> f11677v = new Pool<CoinParticle>() { // from class: com.prineside.tdi2.systems.ParticleSystem.3
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public CoinParticle newObject() {
            return new CoinParticle();
        }
    };

    /* renamed from: w */
    public final Pool<DamageParticle> f11678w = new Pool<DamageParticle>() { // from class: com.prineside.tdi2.systems.ParticleSystem.4
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public DamageParticle newObject() {
            return new DamageParticle();
        }
    };

    /* renamed from: x */
    public final Pool<FlashParticle> f11679x = new Pool<FlashParticle>() { // from class: com.prineside.tdi2.systems.ParticleSystem.5
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public FlashParticle newObject() {
            return new FlashParticle();
        }
    };

    /* renamed from: y */
    public final IntMap<BitmapFontCache> f11680y = new IntMap<>();

    /* renamed from: E */
    public final IntIntMap f11664E = new IntIntMap();

    /* renamed from: G */
    public final IntFloatMap f11666G = new IntFloatMap();

    /* renamed from: A */
    public TextureRegion f11660A = Game.f8589i.assetManager.getTextureRegion("coin-small");

    /* loaded from: classes2.dex */
    public static class CoinParticle {

        /* renamed from: a */
        public Vector2 f11687a;

        /* renamed from: b */
        public float f11688b;

        /* renamed from: c */
        public float f11689c;

        /* renamed from: d */
        public int f11690d;

        public CoinParticle() {
            this.f11687a = new Vector2();
        }
    }

    /* loaded from: classes2.dex */
    public static class DamageParticle {

        /* renamed from: a */
        public Vector2 f11691a = new Vector2();

        /* renamed from: b */
        public BitmapFontCache f11692b = new BitmapFontCache(Game.f8589i.assetManager.getFont(21));

        /* renamed from: c */
        public float f11693c;

        /* renamed from: d */
        public float f11694d;

        /* renamed from: e */
        public float f11695e;

        /* renamed from: f */
        public int f11696f;
    }

    /* loaded from: classes2.dex */
    public static class FlashParticle {
        public Color color;
        public Texture texture;
        public float time;
        public float[] vertices;

        public FlashParticle() {
            this.vertices = new float[20];
            this.color = Color.WHITE.cpy();
        }
    }

    /* loaded from: classes2.dex */
    public static class ShatterPolygon implements Pool.Poolable {

        /* renamed from: a */
        public Polygon f11697a;

        /* renamed from: b */
        public float[] f11698b;

        /* renamed from: d */
        public Vector2 f11699d;

        /* renamed from: k */
        public float[] f11700k;

        /* renamed from: p */
        public float f11701p;

        /* renamed from: q */
        public float f11702q;

        /* renamed from: r */
        public float f11703r;

        /* renamed from: s */
        public Texture f11704s;

        /* renamed from: t */
        public Color f11705t;

        /* renamed from: u */
        public float f11706u;

        /* renamed from: v */
        public Interpolation f11707v;

        public ShatterPolygon() {
            this.f11697a = new Polygon();
            this.f11698b = new float[8];
            this.f11699d = new Vector2();
            this.f11700k = new float[8];
            this.f11705t = Color.WHITE.cpy();
        }

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.f11706u = 0.0f;
            this.f11704s = null;
        }

        public void draw(SpriteBatch spriteBatch, float[] fArr, float f) {
            float apply = this.f11707v.apply(this.f11703r / this.f11701p);
            float f2 = apply - this.f11706u;
            this.f11706u = apply;
            float f3 = 1.0f - (this.f11703r / this.f11701p);
            ParticleSystem.f11657L.set(this.f11705t);
            ParticleSystem.f11657L.f3889a *= Interpolation.pow5Out.apply(f3);
            float floatBits = ParticleSystem.f11657L.toFloatBits();
            Polygon polygon = this.f11697a;
            Vector2 vector2 = this.f11699d;
            polygon.translate(vector2.f5527x * f2, vector2.f5528y * f2);
            this.f11697a.rotate(this.f11702q * 270.0f * (1.5f - f3) * f2);
            float[] transformedVertices = this.f11697a.getTransformedVertices();
            for (int i = 0; i < 4; i++) {
                int i2 = i * 5;
                int i3 = i * 2;
                fArr[i2] = transformedVertices[i3];
                int i4 = i3 + 1;
                fArr[i2 + 1] = transformedVertices[i4];
                fArr[i2 + 2] = floatBits;
                float[] fArr2 = this.f11698b;
                fArr[i2 + 3] = fArr2[i3];
                fArr[i2 + 4] = fArr2[i4];
            }
            this.f11703r += f;
            spriteBatch.draw(this.f11704s, fArr, 0, 20);
        }
    }

    /* loaded from: classes2.dex */
    public static class XpOrbParticle {

        /* renamed from: a */
        public TextureRegion f11708a;

        /* renamed from: b */
        public float f11709b;

        /* renamed from: c */
        public Vector2 f11710c;

        /* renamed from: d */
        public Vector2 f11711d;

        /* renamed from: e */
        public Vector2 f11712e;

        /* renamed from: f */
        public Vector2 f11713f;

        public XpOrbParticle() {
            this.f11710c = new Vector2();
            this.f11711d = new Vector2();
            this.f11712e = new Vector2();
            this.f11713f = new Vector2();
        }
    }

    public void addFlashParticle(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        addFlashParticle(textureRegion, f, f2, f3, f4, f5, f6, f7, Color.WHITE);
    }

    public void addOrbParticle(TextureRegion textureRegion, float f, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (!this.f8844S.state.canSkipMediaUpdate() && Game.f8589i.settingsManager.isParticlesDrawing() && (i6 = this.f11664E.get((i5 = ((((((31 + i) * 31) + i2) * 31) + i3) * 31) + i4), 0)) < 4) {
            XpOrbParticle obtain = this.f11675t.obtain();
            obtain.f11712e.set(1.0f, 0.0f).rotateDeg(FastRandom.getFloat() * 360.0f).scl(FastRandom.getFloat() * 64.0f * 0.8f).add((i * 128) + 64, (i2 * 128) + 64);
            obtain.f11711d.set(1.0f, 0.0f).rotateDeg(FastRandom.getFloat() * 360.0f).scl(FastRandom.getFloat() * 64.0f * 3.0f);
            obtain.f11713f.set(1.0f, 0.0f).rotateDeg(FastRandom.getFloat() * 360.0f).scl(FastRandom.getFloat() * 64.0f * 0.4f).add((i3 * 128) + 64, (i4 * 128) + 64);
            obtain.f11710c.set(obtain.f11712e);
            obtain.f11708a = textureRegion;
            obtain.f11709b = f;
            this.f11669d.add(obtain);
            this.f11664E.put(i5, i6 + 1);
        }
    }

    public void addParticle(ParticleEffect particleEffect, LimitedParticleType limitedParticleType, float f, float f2) {
        int ordinal = ((((((int) (f / 64.0f)) + 31) * 31) + ((int) (f2 / 64.0f))) * 31) + limitedParticleType.ordinal();
        if (this.f11666G.get(ordinal, 0.0f) <= 0.0f) {
            addParticle(particleEffect, true);
            this.f11666G.put(ordinal, f11653H[limitedParticleType.ordinal()]);
            this.f11662C++;
            return;
        }
        freeParticle(particleEffect);
        this.f11663D++;
    }

    public void addShatterParticle(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5) {
        addShatterParticle(textureRegion, f, f2, f3, f4, f5, Color.WHITE, Interpolation.linear, true);
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return false;
    }

    /* renamed from: b */
    public final BitmapFontCache m20929b(int i, float f, float f2) {
        BitmapFontCache bitmapFontCache;
        if (i < 32) {
            if (!this.f11680y.containsKey(i)) {
                bitmapFontCache = new BitmapFontCache(Game.f8589i.assetManager.getFont(21));
                StringBuilder stringBuilder = f11655J;
                stringBuilder.setLength(0);
                stringBuilder.append(i);
                bitmapFontCache.addText(stringBuilder, 0.0f, 0.0f);
                this.f11680y.put(i, bitmapFontCache);
                bitmapFontCache.setUseIntegerPositions(false);
            } else {
                bitmapFontCache = this.f11680y.get(i);
            }
        } else {
            bitmapFontCache = this.f11681z;
            bitmapFontCache.clear();
            bitmapFontCache.addText(StringFormatter.compactNumber(i, false), 0.0f, 0.0f);
        }
        bitmapFontCache.translate((-bitmapFontCache.getX()) + f, (-bitmapFontCache.getY()) + f2);
        return bitmapFontCache;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Particle";
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
    }

    public boolean willParticleBeSkipped() {
        return this.f8844S.state.canSkipMediaUpdate();
    }

    static {
        float[] fArr = new float[LimitedParticleType.values.length];
        f11653H = fArr;
        Arrays.fill(fArr, Config.UPDATE_DELTA_TIME * 4.0f);
        fArr[LimitedParticleType.EXPLOSION_FIREBALL.ordinal()] = Config.UPDATE_DELTA_TIME * 1.0f;
        fArr[LimitedParticleType.EXPLOSION_MISSILE.ordinal()] = Config.UPDATE_DELTA_TIME * 8.0f;
        fArr[LimitedParticleType.EXPLOSION_CANNON.ordinal()] = Config.UPDATE_DELTA_TIME * 8.0f;
        fArr[LimitedParticleType.ENEMY_HIT.ordinal()] = Config.UPDATE_DELTA_TIME * 5.0f;
        fArr[LimitedParticleType.ENEMY_DEAD.ordinal()] = Config.UPDATE_DELTA_TIME * 4.0f;
        fArr[LimitedParticleType.RESOURCE_MINED.ordinal()] = Config.UPDATE_DELTA_TIME * 5.0f;
        f11654I = new Vector2();
        f11655J = new StringBuilder();
        f11656K = new float[20];
        f11657L = Color.WHITE.cpy();
        f11658M = new Vector2();
        f11659N = new Vector2();
    }

    public ParticleSystem() {
        BitmapFontCache bitmapFontCache = new BitmapFontCache(Game.f8589i.assetManager.getFont(21));
        this.f11681z = bitmapFontCache;
        bitmapFontCache.setUseIntegerPositions(false);
    }

    public static void freeParticle(ParticleEffect particleEffect) {
        if (particleEffect instanceof ParticleEffectPool.PooledEffect) {
            ((ParticleEffectPool.PooledEffect) particleEffect).free();
        } else if (particleEffect instanceof PooledCustomEffect) {
            ((PooledCustomEffect) particleEffect).free();
        }
    }

    public void addCoinParticle(float f, float f2, int i) {
        if (!this.f8844S.state.canSkipMediaUpdate() && Game.f8589i.settingsManager.isParticlesDrawing()) {
            CoinParticle obtain = this.f11677v.obtain();
            obtain.f11687a.set(f, f2);
            obtain.f11688b = (FastRandom.getFloat() * 32.0f) + 64.0f;
            obtain.f11689c = 0.0f;
            obtain.f11690d = i;
            this.f11672q.add(obtain);
        }
    }

    public void addDamageParticle(float f, float f2, int i, float f3) {
        if (!this.f8844S.state.canSkipMediaUpdate() && Game.f8589i.settingsManager.isParticlesDrawing()) {
            DamageParticle obtain = this.f11678w.obtain();
            obtain.f11691a.set(f, 16.0f + f2);
            obtain.f11693c = 80.0f;
            obtain.f11694d = 0.0f;
            obtain.f11696f = i;
            obtain.f11695e = f3;
            BitmapFontCache bitmapFontCache = obtain.f11692b;
            bitmapFontCache.clear();
            bitmapFontCache.addText(StringFormatter.compactNumber(i, false), 0.0f, 0.0f);
            bitmapFontCache.translate((-bitmapFontCache.getX()) + f, (-bitmapFontCache.getY()) + f2);
            float f4 = obtain.f11695e;
            if (f4 < 1.0f) {
                bitmapFontCache.setColor(MaterialColor.RED.P300);
            } else if (f4 > 1.0f) {
                bitmapFontCache.setColor(MaterialColor.GREEN.P300);
            } else {
                bitmapFontCache.setColor(MaterialColor.YELLOW.P300);
            }
            this.f11673r.add(obtain);
        }
    }

    public void addFlashParticle(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, Color color) {
        if (this.f8844S.gameState.canSkipMediaUpdate() || !Game.f8589i.settingsManager.isParticlesDrawing()) {
            return;
        }
        FlashParticle obtain = this.f11679x.obtain();
        obtain.time = 0.0f;
        obtain.texture = textureRegion.getTexture();
        obtain.color.set(color);
        DrawUtils.bakeVertices(obtain.vertices, textureRegion, f - f3, f2 - f4, f3, f4, f5, f6, 1.0f, 1.0f, f7);
        this.f11674s.add(obtain);
    }

    public void addShatterParticle(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, Color color, Interpolation interpolation, boolean z) {
        if (this.f8844S.gameState.canSkipMediaUpdate() || !Game.f8589i.settingsManager.isParticlesDrawing()) {
            return;
        }
        Interpolation interpolation2 = interpolation == null ? Interpolation.linear : interpolation;
        float f6 = f3 * 0.5f;
        float f7 = f - f6;
        float f8 = f2 - f6;
        float f9 = f3 * f5;
        DelayedRemovalArray<ShatterPolygon> delayedRemovalArray = z ? this.f11671p : this.f11670k;
        float f10 = (FastRandom.getFloat() * 0.5f) + 0.25f;
        float f11 = (FastRandom.getFloat() * 0.5f) + 0.25f;
        float f12 = (FastRandom.getFloat() * 0.5f) + 0.25f;
        float f13 = (FastRandom.getFloat() * 0.5f) + 0.25f;
        float f14 = (FastRandom.getFloat() * 0.5f) + 0.25f;
        float f15 = (FastRandom.getFloat() * 0.5f) + 0.25f;
        float u2 = textureRegion.getU2();
        float u = textureRegion.getU();
        float v2 = textureRegion.getV2();
        float v = textureRegion.getV();
        float f16 = u - u2;
        float f17 = u2 + (f16 * f14);
        float f18 = v - v2;
        float f19 = v2 + (f18 * f15);
        float f20 = v2 + (f18 * f10);
        float f21 = u2 + (f16 * f11);
        float f22 = v2 + (f18 * f12);
        float f23 = u2 + (f16 * f13);
        ShatterPolygon obtain = this.f11676u.obtain();
        obtain.f11704s = textureRegion.getTexture();
        obtain.f11705t.set(color);
        obtain.f11707v = interpolation2;
        obtain.f11700k[0] = 0.0f;
        float f24 = f10 * f9;
        obtain.f11700k[1] = f24;
        obtain.f11700k[2] = 0.0f;
        obtain.f11700k[3] = f9;
        float f25 = f11 * f9;
        obtain.f11700k[4] = f25;
        obtain.f11700k[5] = f9;
        float f26 = f14 * f9;
        obtain.f11700k[6] = f26;
        float f27 = f15 * f9;
        obtain.f11700k[7] = f27;
        obtain.f11697a.setVertices(obtain.f11700k);
        obtain.f11698b[0] = u2;
        obtain.f11698b[1] = f20;
        obtain.f11698b[2] = u2;
        obtain.f11698b[3] = v;
        obtain.f11698b[4] = f21;
        obtain.f11698b[5] = v;
        obtain.f11698b[6] = f17;
        obtain.f11698b[7] = f19;
        obtain.f11697a.setPosition(f7, f8);
        float f28 = f9 * 0.5f;
        obtain.f11697a.setOrigin(f28, f28);
        obtain.f11697a.setRotation(f4);
        obtain.f11701p = (FastRandom.getFloat() * 0.5f) + 0.6f;
        obtain.f11702q = (FastRandom.getFloat() * 0.5f) - 1.0f;
        obtain.f11703r = 0.0f;
        obtain.f11699d.set(0.0f, (FastRandom.getFloat() * 256.0f) + 128.0f).rotateDeg((FastRandom.getFloat() * 60.0f) + 15.0f + f4);
        delayedRemovalArray.add(obtain);
        ShatterPolygon obtain2 = this.f11676u.obtain();
        obtain2.f11704s = textureRegion.getTexture();
        obtain2.f11705t.set(color);
        obtain2.f11707v = interpolation2;
        obtain2.f11700k[0] = f26;
        obtain2.f11700k[1] = f27;
        obtain2.f11700k[2] = f25;
        obtain2.f11700k[3] = f9;
        obtain2.f11700k[4] = f9;
        obtain2.f11700k[5] = f9;
        obtain2.f11700k[6] = f9;
        float f29 = f9 * f12;
        obtain2.f11700k[7] = f29;
        obtain2.f11697a.setVertices(obtain2.f11700k);
        obtain2.f11698b[0] = f17;
        obtain2.f11698b[1] = f19;
        obtain2.f11698b[2] = f21;
        obtain2.f11698b[3] = v;
        obtain2.f11698b[4] = u;
        obtain2.f11698b[5] = v;
        obtain2.f11698b[6] = u;
        obtain2.f11698b[7] = f22;
        obtain2.f11697a.setPosition(f7, f8);
        obtain2.f11697a.setOrigin(f28, f28);
        obtain2.f11697a.setRotation(f4);
        obtain2.f11701p = (FastRandom.getFloat() * 0.5f) + 0.6f;
        obtain2.f11703r = 0.0f;
        obtain2.f11699d.set(0.0f, (FastRandom.getFloat() * 256.0f) + 128.0f).rotateDeg((FastRandom.getFloat() * 60.0f) + 15.0f + 270.0f + f4);
        delayedRemovalArray.add(obtain2);
        ShatterPolygon obtain3 = this.f11676u.obtain();
        obtain3.f11704s = textureRegion.getTexture();
        obtain3.f11705t.set(color);
        obtain3.f11707v = interpolation2;
        obtain3.f11700k[0] = f9;
        obtain3.f11700k[1] = f29;
        obtain3.f11700k[2] = f9;
        obtain3.f11700k[3] = 0.0f;
        float f30 = f9 * f13;
        obtain3.f11700k[4] = f30;
        obtain3.f11700k[5] = 0.0f;
        obtain3.f11700k[6] = f26;
        obtain3.f11700k[7] = f27;
        obtain3.f11697a.setVertices(obtain3.f11700k);
        obtain3.f11698b[0] = u;
        obtain3.f11698b[1] = f22;
        obtain3.f11698b[2] = u;
        obtain3.f11698b[3] = v2;
        obtain3.f11698b[4] = f23;
        obtain3.f11698b[5] = v2;
        obtain3.f11698b[6] = f17;
        obtain3.f11698b[7] = f19;
        obtain3.f11697a.setPosition(f7, f8);
        obtain3.f11697a.setOrigin(f28, f28);
        obtain3.f11697a.setRotation(f4);
        obtain3.f11701p = (FastRandom.getFloat() * 0.5f) + 0.6f;
        obtain3.f11703r = 0.0f;
        obtain3.f11699d.set(0.0f, (FastRandom.getFloat() * 256.0f) + 128.0f).rotateDeg((FastRandom.getFloat() * 60.0f) + 15.0f + 180.0f + f4);
        delayedRemovalArray.add(obtain3);
        ShatterPolygon obtain4 = this.f11676u.obtain();
        obtain4.f11704s = textureRegion.getTexture();
        obtain4.f11705t.set(color);
        obtain4.f11707v = interpolation2;
        obtain4.f11700k[0] = f26;
        obtain4.f11700k[1] = f27;
        obtain4.f11700k[2] = f30;
        obtain4.f11700k[3] = 0.0f;
        obtain4.f11700k[4] = 0.0f;
        obtain4.f11700k[5] = 0.0f;
        obtain4.f11700k[6] = 0.0f;
        obtain4.f11700k[7] = f24;
        obtain4.f11697a.setVertices(obtain4.f11700k);
        obtain4.f11698b[0] = f17;
        obtain4.f11698b[1] = f19;
        obtain4.f11698b[2] = f23;
        obtain4.f11698b[3] = v2;
        obtain4.f11698b[4] = u2;
        obtain4.f11698b[5] = v2;
        obtain4.f11698b[6] = u2;
        obtain4.f11698b[7] = f20;
        obtain4.f11697a.setPosition(f7, f8);
        obtain4.f11697a.setOrigin(f28, f28);
        obtain4.f11697a.setRotation(f4);
        obtain4.f11701p = (FastRandom.getFloat() * 0.5f) + 0.6f;
        obtain4.f11703r = 0.0f;
        obtain4.f11699d.set(0.0f, (FastRandom.getFloat() * 256.0f) + 128.0f).rotateDeg((FastRandom.getFloat() * 60.0f) + 15.0f + 90.0f + f4);
        delayedRemovalArray.add(obtain4);
    }

    public void addXpOrbParticle(float f, int i, int i2, int i3, int i4) {
        int i5 = (int) (f / 5.0f);
        if (i5 < 1) {
            i5 = 1;
        }
        float f2 = 12.0f;
        int i6 = 0;
        while (true) {
            if (i5 <= 4) {
                break;
            }
            i5 /= 2;
            f2 *= 1.25f;
            i6++;
            if (i6 == 7) {
                if (i5 > 4) {
                    i5 = 4;
                }
            }
        }
        for (int i7 = 0; i7 < i5; i7++) {
            addOrbParticle(Game.f8589i.modifierManager.f9900F.BALANCE.orbTexture, f2, i, i2, i3, i4);
        }
    }

    /* renamed from: c */
    public final void m20928c(SpriteBatch spriteBatch, DelayedRemovalArray<ShatterPolygon> delayedRemovalArray, float f) {
        if (delayedRemovalArray.size != 0) {
            delayedRemovalArray.begin();
            for (int i = 0; i < delayedRemovalArray.size; i++) {
                ShatterPolygon shatterPolygon = delayedRemovalArray.items[i];
                shatterPolygon.draw(spriteBatch, f11656K, f);
                if (shatterPolygon.f11703r > shatterPolygon.f11701p) {
                    delayedRemovalArray.removeIndex(i);
                    this.f11676u.free(shatterPolygon);
                }
            }
            delayedRemovalArray.end();
        }
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.debugManager.unregisterValue("Particles count");
        Game.f8589i.debugManager.unregisterValue("Limited particles added/skipped");
        Game.f8589i.debugManager.unregisterValue("Particles remove queue");
        this.f11667a.clear();
        this.f11668b.clear();
        this.f11669d.clear();
        this.f11671p.clear();
        this.f11670k.clear();
        this.f11672q.clear();
        this.f11675t.clear();
        this.f11677v.clear();
        this.f11680y.clear();
        this.f11681z = null;
        this.f11660A = null;
        super.dispose();
    }

    public void draw(SpriteBatch spriteBatch, float f, float f2) {
        float f3;
        DelayedRemovalArray<XpOrbParticle> delayedRemovalArray;
        float f4;
        DelayedRemovalArray<CoinParticle> delayedRemovalArray2;
        DelayedRemovalArray<DamageParticle> delayedRemovalArray3;
        DelayedRemovalArray<FlashParticle> delayedRemovalArray4;
        DelayedRemovalArray<XpOrbParticle> delayedRemovalArray5;
        DelayedRemovalArray<FlashParticle> delayedRemovalArray6;
        int i;
        DelayedRemovalArray<DamageParticle> delayedRemovalArray7;
        float f5;
        DelayedRemovalArray<CoinParticle> delayedRemovalArray8;
        float f6;
        float f7;
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null && gameStateSystem.isGameOver()) {
            f3 = f;
        } else {
            f3 = f2;
        }
        if (this.f11670k.size != 0) {
            spriteBatch.end();
            spriteBatch.begin();
            spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
            m20928c(spriteBatch, this.f11670k, f3);
            spriteBatch.end();
            spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
            spriteBatch.begin();
        }
        for (int i2 = this.f11667a.size - 1; i2 >= 0; i2--) {
            ParticleEffect particleEffect = this.f11667a.items[i2];
            if (particleEffect.isComplete()) {
                this.f11667a.removeIndex(i2);
                particleEffect.reset();
                freeParticle(particleEffect);
            } else if (particleEffect.getEmitters().size != 0 && particleEffect.getEmitters().first().getName().charAt(0) == '#') {
                particleEffect.update(f * 0.5f);
            } else {
                particleEffect.update(f3 * 0.5f);
            }
        }
        for (int i3 = this.f11668b.size - 1; i3 >= 0; i3--) {
            ParticleEffect particleEffect2 = this.f11668b.items[i3];
            if (particleEffect2.isComplete()) {
                this.f11668b.removeIndex(i3);
                particleEffect2.reset();
                freeParticle(particleEffect2);
            } else if (particleEffect2.getEmitters().size != 0 && particleEffect2.getEmitters().first().getName().charAt(0) == '#') {
                particleEffect2.update(f * 0.5f);
            } else {
                particleEffect2.update(f3 * 0.5f);
            }
        }
        this.f11669d.begin();
        int i4 = 0;
        while (true) {
            delayedRemovalArray = this.f11669d;
            f4 = 1.0f;
            if (i4 >= delayedRemovalArray.size) {
                break;
            }
            XpOrbParticle xpOrbParticle = delayedRemovalArray.items[i4];
            Vector2 vector2 = f11654I;
            vector2.set(xpOrbParticle.f11713f).sub(xpOrbParticle.f11712e).nor().scl(384.0f);
            Vector2 vector22 = xpOrbParticle.f11711d;
            vector22.mulAdd(vector22, (-f3) * 1.0f);
            xpOrbParticle.f11711d.mulAdd(vector2, f3);
            xpOrbParticle.f11712e.mulAdd(xpOrbParticle.f11711d, f3);
            if (xpOrbParticle.f11712e.dst2(xpOrbParticle.f11713f) < 16.0f) {
                this.f11669d.removeIndex(i4);
                this.f11675t.free(xpOrbParticle);
            }
            i4++;
        }
        delayedRemovalArray.end();
        this.f11672q.begin();
        int i5 = 0;
        while (true) {
            delayedRemovalArray2 = this.f11672q;
            if (i5 >= delayedRemovalArray2.size) {
                break;
            }
            CoinParticle coinParticle = delayedRemovalArray2.items[i5];
            float apply = Interpolation.pow2Out.apply(1.0f - (coinParticle.f11689c / 1.5f)) * coinParticle.f11688b;
            coinParticle.f11687a.f5528y += apply * f3;
            float f8 = coinParticle.f11689c + f3;
            coinParticle.f11689c = f8;
            if (f8 >= 1.5f) {
                this.f11672q.removeIndex(i5);
                this.f11677v.free(coinParticle);
            }
            i5++;
        }
        delayedRemovalArray2.end();
        this.f11673r.begin();
        int i6 = 0;
        while (true) {
            delayedRemovalArray3 = this.f11673r;
            if (i6 >= delayedRemovalArray3.size) {
                break;
            }
            DamageParticle damageParticle = delayedRemovalArray3.items[i6];
            float apply2 = Interpolation.pow2Out.apply(1.0f - (damageParticle.f11694d / 1.5f)) * damageParticle.f11693c;
            damageParticle.f11691a.f5528y -= apply2 * f3;
            float f9 = damageParticle.f11694d + f3;
            damageParticle.f11694d = f9;
            if (f9 >= 1.5f) {
                this.f11673r.removeIndex(i6);
                this.f11678w.free(damageParticle);
            }
            i6++;
        }
        delayedRemovalArray3.end();
        this.f11674s.begin();
        int i7 = 0;
        while (true) {
            delayedRemovalArray4 = this.f11674s;
            if (i7 >= delayedRemovalArray4.size) {
                break;
            }
            FlashParticle flashParticle = delayedRemovalArray4.items[i7];
            float f10 = flashParticle.time + f3;
            flashParticle.time = f10;
            if (f10 >= 0.17f) {
                delayedRemovalArray4.removeIndex(i7);
                this.f11679x.free(flashParticle);
            }
            i7++;
        }
        delayedRemovalArray4.end();
        if (Game.f8589i.debugManager.isEnabled()) {
            Game.f8589i.debugManager.registerValue("Particles count").append(this.f11667a.size);
        }
        if (Game.f8589i.debugManager.isEnabled()) {
            Game.f8589i.debugManager.registerValue("Limited particles added/skipped").append(this.f11662C).append("/").append(this.f11663D);
        }
        spriteBatch.setColor(Color.WHITE);
        int i8 = this.f11667a.size;
        for (int i9 = 0; i9 < i8; i9++) {
            this.f11667a.items[i9].draw(spriteBatch);
        }
        spriteBatch.setColor(Color.WHITE);
        float f11 = this.f11661B - (f3 * 360.0f);
        this.f11661B = f11;
        if (f11 < 0.0f) {
            this.f11661B = f11 + 360.0f;
        }
        if (this.f8844S._mapRendering.getDrawMode() == MapRenderingSystem.DrawMode.DETAILED) {
            spriteBatch.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        }
        this.f11669d.begin();
        int i10 = 0;
        while (true) {
            delayedRemovalArray5 = this.f11669d;
            if (i10 >= delayedRemovalArray5.size) {
                break;
            }
            XpOrbParticle xpOrbParticle2 = delayedRemovalArray5.items[i10];
            Vector2 vector23 = xpOrbParticle2.f11712e;
            float f12 = vector23.f5527x;
            float f13 = vector23.f5528y;
            Vector2 vector24 = xpOrbParticle2.f11713f;
            Vector2 vector25 = xpOrbParticle2.f11712e;
            float f14 = vector25.f5527x;
            float f15 = vector25.f5528y;
            Vector2 vector26 = xpOrbParticle2.f11710c;
            float min = StrictMath.min(PMath.getSquareDistanceBetweenPoints(f12, f13, vector24.f5527x, vector24.f5528y) / 256.0f, PMath.getSquareDistanceBetweenPoints(f14, f15, vector26.f5527x, vector26.f5528y) / 256.0f);
            if (min > f4) {
                f7 = 1.0f;
            } else {
                f7 = min;
            }
            TextureRegion textureRegion = xpOrbParticle2.f11708a;
            Vector2 vector27 = xpOrbParticle2.f11712e;
            float f16 = vector27.f5527x;
            float f17 = xpOrbParticle2.f11709b;
            spriteBatch.draw(textureRegion, f16 - (f17 * 0.5f), vector27.f5528y - (f17 * 0.5f), f17 * 0.5f, f17 * 0.5f, f17, f17, f7, f7, this.f11661B);
            i10++;
            f4 = 1.0f;
        }
        delayedRemovalArray5.end();
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        if (Game.f8589i.settingsManager.isFlyingCoinsEnabled()) {
            this.f11672q.begin();
            int i11 = 0;
            while (true) {
                delayedRemovalArray8 = this.f11672q;
                if (i11 >= delayedRemovalArray8.size) {
                    break;
                }
                CoinParticle coinParticle2 = delayedRemovalArray8.items[i11];
                float f18 = coinParticle2.f11689c;
                if (1.5f - f18 < 0.3f) {
                    f6 = (1.5f - f18) / 0.3f;
                } else {
                    f6 = 1.0f;
                }
                spriteBatch.setColor(1.0f, 1.0f, 1.0f, f6);
                TextureRegion textureRegion2 = this.f11660A;
                Vector2 vector28 = coinParticle2.f11687a;
                spriteBatch.draw(textureRegion2, vector28.f5527x - 34.0f, vector28.f5528y - 12.0f, 24.0f, 24.0f);
                int i12 = coinParticle2.f11690d;
                Vector2 vector29 = coinParticle2.f11687a;
                m20929b(i12, vector29.f5527x, vector29.f5528y + 7.0f).draw(spriteBatch, f6);
                i11++;
            }
            delayedRemovalArray8.end();
            spriteBatch.setColor(Color.WHITE);
        }
        this.f11674s.begin();
        int i13 = 0;
        while (true) {
            delayedRemovalArray6 = this.f11674s;
            if (i13 >= delayedRemovalArray6.size) {
                break;
            }
            FlashParticle flashParticle2 = delayedRemovalArray6.items[i13];
            Color color = f11657L;
            color.set(flashParticle2.color);
            color.f3889a = (0.17f - flashParticle2.time) / 0.17f;
            float floatBits = color.toFloatBits();
            for (int i14 = 0; i14 < 4; i14++) {
                flashParticle2.vertices[(i14 * 5) + 2] = floatBits;
            }
            spriteBatch.draw(flashParticle2.texture, flashParticle2.vertices, 0, 20);
            i13++;
        }
        delayedRemovalArray6.end();
        spriteBatch.setColor(Color.WHITE);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DAMAGE_PARTICLES_ENABLED) != 0.0d) {
            DelayedRemovalArray<DamageParticle> delayedRemovalArray9 = this.f11673r;
            if (delayedRemovalArray9.size != 0) {
                delayedRemovalArray9.begin();
                int i15 = 0;
                while (true) {
                    delayedRemovalArray7 = this.f11673r;
                    if (i15 >= delayedRemovalArray7.size) {
                        break;
                    }
                    DamageParticle damageParticle2 = delayedRemovalArray7.items[i15];
                    float f19 = damageParticle2.f11694d;
                    if (1.5f - f19 < 0.3f) {
                        f5 = (1.5f - f19) / 0.3f;
                    } else {
                        f5 = 1.0f;
                    }
                    BitmapFontCache bitmapFontCache = damageParticle2.f11692b;
                    bitmapFontCache.translate(damageParticle2.f11691a.f5527x - bitmapFontCache.getX(), damageParticle2.f11691a.f5528y - damageParticle2.f11692b.getY());
                    damageParticle2.f11692b.draw(spriteBatch, f5);
                    i15++;
                }
                delayedRemovalArray7.end();
                spriteBatch.setColor(Color.WHITE);
            }
        }
        IntFloatMap.Keys keys = this.f11666G.keys();
        while (keys.hasNext) {
            int next = keys.next();
            float f20 = this.f11666G.get(next, 0.0f);
            if (f20 > 0.0f) {
                this.f11666G.put(next, f20 - f3);
            }
        }
        GameStateSystem gameStateSystem2 = this.f8844S.gameState;
        if (gameStateSystem2 != null && (i = gameStateSystem2.updateNumber) != this.f11665F) {
            this.f11665F = i;
            this.f11664E.clear();
        }
        if (this.f11671p.size != 0 || this.f11668b.size != 0) {
            spriteBatch.end();
            spriteBatch.begin();
            spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
            m20928c(spriteBatch, this.f11671p, f3);
            spriteBatch.setColor(Color.WHITE);
            int i16 = this.f11668b.size;
            for (int i17 = 0; i17 < i16; i17++) {
                this.f11668b.items[i17].draw(spriteBatch);
            }
            spriteBatch.setColor(Color.WHITE);
        }
    }

    public void addEnemyHitParticle(Tower tower, Enemy enemy, float f, Projectile projectile) {
        ParticleEffectPool.PooledEffect hitParticle = enemy.getHitParticle();
        float angleBetweenPoints = PMath.getAngleBetweenPoints(tower.getTile().center, enemy.getPosition()) - 90.0f;
        Vector2 vector2 = f11659N;
        vector2.set(1.0f, 0.0f).rotateDeg(angleBetweenPoints).scl(enemy.getSize() * 0.75f);
        Vector2 vector22 = f11658M;
        vector22.set(enemy.getPosition()).add(vector2);
        hitParticle.setPosition(vector22.f5527x, vector22.f5528y);
        ParticleEmitter first = hitParticle.getEmitters().first();
        first.getAngle().setHigh(angleBetweenPoints - 60.0f, angleBetweenPoints + 60.0f);
        ParticleEmitter.GradientColorValue tint = first.getTint();
        float[] colors = tint.getColors();
        Color color = enemy.getColor();
        colors[0] = color.f3892r;
        colors[1] = color.f3891g;
        colors[2] = color.f3890b;
        tint.setColors(colors);
        ParticleEmitter.ScaledNumericValue emission = first.getEmission();
        int i = (int) ((f / enemy.maxHealth) * 50.0f);
        if (i < 3) {
            i = 3;
        }
        emission.setHigh(i);
        this.f8844S._particle.addParticle(hitParticle, LimitedParticleType.ENEMY_HIT, vector22.f5527x, vector22.f5528y);
    }

    public boolean addOpaqueParticle(ParticleEffect particleEffect) {
        if (willParticleBeSkipped()) {
            freeParticle(particleEffect);
            return false;
        }
        this.f11668b.add(particleEffect);
        return true;
    }

    public boolean addParticle(ParticleEffect particleEffect, boolean z) {
        if (willParticleBeSkipped() && z) {
            freeParticle(particleEffect);
            return false;
        }
        this.f11667a.add(particleEffect);
        return true;
    }
}
