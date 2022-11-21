package com.prineside.tdi2.enemies.bosses;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enemies.bosses.MetaphorBossEnemy;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.util.Arrays;
import java.util.Comparator;
@REGS
/* loaded from: classes2.dex */
public class MetaphorBossEnemy extends Enemy {

    /* renamed from: y */
    public static final Comparator<LegConfig> f9216y = new Comparator() { // from class: com.prineside.tdi2.enemies.bosses.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m21826d;
            m21826d = MetaphorBossEnemy.m21826d((MetaphorBossEnemy.LegConfig) obj, (MetaphorBossEnemy.LegConfig) obj2);
            return m21826d;
        }
    };
    public int creepCount;
    @NAGS

    /* renamed from: v */
    public LegConfig[] f9217v;
    @NAGS

    /* renamed from: w */
    public LegConfig[] f9218w;
    @NAGS

    /* renamed from: x */
    public ParticleEffectPool.PooledEffect f9219x;

    /* loaded from: classes2.dex */
    public class LegConfig {

        /* renamed from: g */
        public int f9226g;

        /* renamed from: k */
        public float f9230k;

        /* renamed from: l */
        public float f9231l;

        /* renamed from: m */
        public float f9232m;

        /* renamed from: n */
        public float f9233n;

        /* renamed from: a */
        public float f9220a = 0.5f;

        /* renamed from: b */
        public float f9221b = 1.3f;

        /* renamed from: c */
        public float f9222c = 44.979996f;

        /* renamed from: d */
        public float f9223d = 153.4f;

        /* renamed from: e */
        public float f9224e = ((0.5f * 153.4f) * 0.5f) * 153.4f;

        /* renamed from: f */
        public float f9225f = ((1.3f * 153.4f) * 1.3f) * 153.4f;

        /* renamed from: h */
        public Vector2 f9227h = new Vector2();

        /* renamed from: i */
        public Vector2 f9228i = new Vector2(Float.MIN_VALUE, Float.MIN_VALUE);

        /* renamed from: j */
        public Vector2 f9229j = new Vector2(Float.MIN_VALUE, Float.MIN_VALUE);

        /* renamed from: o */
        public float f9234o = 0.0f;

        /* renamed from: p */
        public float f9235p = 1.0f;

        /* renamed from: q */
        public float f9236q = 0.0f;

        /* renamed from: r */
        public final Vector2 f9237r = new Vector2();

        /* renamed from: c */
        public final void m21823c(float f, float f2, float f3) {
            m21822d(f, f2, f3, (FastRandom.getFloat() * 0.1f) + 0.001f, this.f9233n);
        }

        public LegConfig(int i, float f, float f2, float f3, float f4, float f5) {
            this.f9226g = i;
            this.f9227h.set(f, f2);
            this.f9230k = f3;
            this.f9231l = f4;
            this.f9233n = f5;
            this.f9232m = PMath.getDistanceBetweenAngles(f3, f4);
        }

        /* renamed from: d */
        public final void m21822d(float f, float f2, float f3, float f4, float f5) {
            float f6 = this.f9230k;
            this.f9228i.set(this.f9227h).add(PMath.getPointByAngleFromPoint(0.0f, 0.0f, f6 + ((this.f9231l - f6) * f4), this.f9223d * f5)).rotate(f3).add(f, f2);
            m21821e(f, f2, f3);
            this.f9234o = 1.0f;
        }

        /* renamed from: e */
        public final float m21821e(float f, float f2, float f3) {
            this.f9237r.set(this.f9227h);
            this.f9237r.rotate(f3);
            Vector2 vector2 = this.f9237r;
            float f4 = f2 + vector2.f5528y;
            Vector2 vector22 = this.f9228i;
            return PMath.getAngleBetweenPoints(f + vector2.f5527x, f4, vector22.f5527x, vector22.f5528y) - f3;
        }

        /* renamed from: f */
        public final float m21820f(float f) {
            float distanceBetweenAngles = PMath.getDistanceBetweenAngles(this.f9230k, f);
            float f2 = this.f9232m;
            float f3 = distanceBetweenAngles / f2;
            if (f2 < 0.0f) {
                return (-distanceBetweenAngles) / (-f2);
            }
            return f3;
        }

        /* renamed from: g */
        public final Vector2 m21819g(float f, float f2, float f3) {
            this.f9237r.set(this.f9227h);
            this.f9237r.rotate(f3);
            this.f9237r.add(f, f2);
            return this.f9237r;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0077  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0093  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0099  */
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m21818h(float r12, float r13, float r14, float r15) {
            /*
                r11 = this;
                float r5 = r11.f9233n
                float r0 = r11.m21821e(r13, r14, r15)
                float r0 = r11.m21820f(r0)
                r1 = 1036831949(0x3dcccccd, float:0.1)
                r6 = 1065353216(0x3f800000, float:1.0)
                r2 = -1082130432(0xffffffffbf800000, float:-1.0)
                r7 = 0
                int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
                if (r3 >= 0) goto L21
                r3 = 1065336439(0x3f7fbe77, float:0.999)
                float r4 = com.prineside.tdi2.utils.FastRandom.getFloat()
                float r4 = r4 * r1
                float r3 = r3 - r4
                goto L32
            L21:
                int r3 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                if (r3 <= 0) goto L30
                r3 = 981668463(0x3a83126f, float:0.001)
                float r4 = com.prineside.tdi2.utils.FastRandom.getFloat()
                float r4 = r4 * r1
                float r3 = r3 + r4
                goto L32
            L30:
                r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            L32:
                com.badlogic.gdx.math.Vector2 r1 = r11.f9228i
                float r1 = r1.f5527x
                r8 = 1
                int r1 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
                if (r1 != 0) goto L48
                r1 = 990057071(0x3b03126f, float:0.002)
                float r3 = com.prineside.tdi2.utils.FastRandom.getFloat()
                r4 = 1065286107(0x3f7ef9db, float:0.996)
                float r3 = r3 * r4
                float r3 = r3 + r1
            L48:
                int r1 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
                if (r1 != 0) goto L72
                com.badlogic.gdx.math.Vector2 r1 = r11.m21819g(r13, r14, r15)
                com.badlogic.gdx.math.Vector2 r4 = r11.f9228i
                float r9 = r4.f5527x
                float r4 = r4.f5528y
                float r10 = r1.f5527x
                float r1 = r1.f5528y
                float r1 = com.prineside.tdi2.utils.PMath.getSquareDistanceBetweenPoints(r9, r4, r10, r1)
                float r4 = r11.f9224e
                r9 = 1045220557(0x3e4ccccd, float:0.2)
                int r4 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
                if (r4 >= 0) goto L6b
            L67:
                float r9 = r9 * r0
                r4 = r9
                goto L73
            L6b:
                float r4 = r11.f9225f
                int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
                if (r1 <= 0) goto L72
                goto L67
            L72:
                r4 = r3
            L73:
                int r1 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
                if (r1 == 0) goto L89
                r0 = r11
                r1 = r13
                r2 = r14
                r3 = r15
                r0.m21822d(r1, r2, r3, r4, r5)
                float r0 = r11.m21821e(r13, r14, r15)
                float r0 = r11.m21820f(r0)
                r11.f9236q = r0
                goto L8b
            L89:
                r11.f9236q = r0
            L8b:
                com.badlogic.gdx.math.Vector2 r0 = r11.f9229j
                float r1 = r0.f5527x
                int r1 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
                if (r1 != 0) goto L99
                com.badlogic.gdx.math.Vector2 r12 = r11.f9228i
                r0.set(r12)
                goto Lb8
            L99:
                float r1 = r11.f9234o
                int r2 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
                if (r2 == 0) goto Lb8
                r2 = 1084227584(0x40a00000, float:5.0)
                float r12 = r12 * r2
                float r1 = r1 - r12
                r11.f9234o = r1
                int r12 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
                if (r12 > 0) goto Lb2
                com.badlogic.gdx.math.Vector2 r12 = r11.f9228i
                r0.set(r12)
                r11.f9234o = r7
                goto Lb8
            Lb2:
                com.badlogic.gdx.math.Vector2 r12 = r11.f9228i
                float r6 = r6 - r1
                r0.lerp(r12, r6)
            Lb8:
                com.badlogic.gdx.math.Vector2 r12 = r11.m21819g(r13, r14, r15)
                float r13 = r12.f5527x
                float r12 = r12.f5528y
                com.badlogic.gdx.math.Vector2 r14 = r11.f9229j
                float r15 = r14.f5527x
                float r14 = r14.f5528y
                float r12 = com.prineside.tdi2.utils.PMath.getDistanceBetweenPoints(r13, r12, r15, r14)
                float r13 = r11.f9223d
                float r12 = r12 / r13
                r11.f9235p = r12
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.enemies.bosses.MetaphorBossEnemy.LegConfig.m21818h(float, float, float, float):void");
        }

        /* renamed from: b */
        public void m21824b(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
            Vector2 m21819g = m21819g(f, f2, f3);
            TextureRegion textureRegion = Game.f8589i.enemyManager.f9783F.METAPHOR_BOSS.f9241t;
            float f5 = m21819g.f5527x;
            float f6 = m21819g.f5528y;
            Vector2 vector2 = this.f9229j;
            DrawUtils.texturedLine(spriteBatch, textureRegion, f5, f6, f5 + ((vector2.f5527x - f5) * f4), f6 + ((vector2.f5528y - f6) * f4), this.f9222c);
        }
    }

    /* loaded from: classes2.dex */
    public static class MetaphorBossEnemyFactory extends Enemy.Factory<MetaphorBossEnemy> {

        /* renamed from: r */
        public TextureRegion f9239r;

        /* renamed from: s */
        public TextureRegion f9240s;

        /* renamed from: t */
        public TextureRegion f9241t;

        /* renamed from: u */
        public ParticleEffectPool f9242u;

        public MetaphorBossEnemyFactory() {
            super(EnemyType.METAPHOR_BOSS);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.RED.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9239r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9239r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public MetaphorBossEnemy create() {
            return new MetaphorBossEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9239r = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss-metaphor");
            this.f9240s = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss-metaphor-body");
            this.f9241t = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss-metaphor-leg");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/smoke-cloud.prt"), Game.f8589i.assetManager.getTextureRegion("particle-twist").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9242u = new ParticleEffectPool(particleEffect, 1, 8);
        }
    }

    /* renamed from: d */
    public static /* synthetic */ int m21826d(LegConfig legConfig, LegConfig legConfig2) {
        return Float.compare(legConfig2.f9235p, legConfig.f9235p);
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean canHaveRandomSideShift() {
        return false;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean dynamicPathfindingAllowed() {
        return false;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getAbilityVulnerability(AbilityType abilityType) {
        return abilityType == AbilityType.BALL_LIGHTNING ? 0.1f : 1.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 100.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return true;
    }

    public MetaphorBossEnemy() {
        super(EnemyType.METAPHOR_BOSS);
        this.creepCount = 0;
        reset();
    }

    public static void main(String[] strArr) {
        System.out.println(PMath.normalizeAngle(PMath.getAngleBetweenPoints(0.0f, 0.0f, 51.0f, -46.0f)));
        System.out.println(PMath.normalizeAngle(PMath.getAngleBetweenPoints(0.0f, 0.0f, 35.0f, -64.0f)));
    }

    /* renamed from: c */
    public final void m21827c() {
        LegConfig[] legConfigArr = new LegConfig[8];
        this.f9217v = legConfigArr;
        this.f9218w = new LegConfig[8];
        legConfigArr[0] = new LegConfig(0, -10.0f, 14.0f, 25.0f, 75.0f, 1.2f);
        this.f9217v[1] = new LegConfig(1, 10.0f, 14.0f, 335.0f, 285.0f, 1.2f);
        this.f9217v[2] = new LegConfig(0, -9.0f, 2.0f, 63.0f, 113.0f, 1.0f);
        this.f9217v[3] = new LegConfig(1, 9.0f, 2.0f, 297.0f, 247.0f, 1.0f);
        this.f9217v[4] = new LegConfig(0, -11.0f, -6.0f, 101.0f, 129.0f, 0.85f);
        this.f9217v[5] = new LegConfig(1, 11.0f, -6.0f, 259.0f, 231.0f, 0.85f);
        this.f9217v[6] = new LegConfig(0, -8.0f, -14.0f, 133.0f, 167.0f, 0.7f);
        this.f9217v[7] = new LegConfig(1, 8.0f, -14.0f, 227.0f, 193.0f, 0.7f);
        LegConfig[] legConfigArr2 = this.f9217v;
        LegConfig[] legConfigArr3 = this.f9218w;
        System.arraycopy(legConfigArr2, 0, legConfigArr3, 0, legConfigArr3.length);
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawBatch(SpriteBatch spriteBatch, float f, Color color) {
        LegConfig[] legConfigArr;
        LegConfig[] legConfigArr2;
        if (this.f9219x == null && Game.f8589i.settingsManager.isParticlesDrawing()) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.enemyManager.f9783F.METAPHOR_BOSS.f9242u.obtain();
            this.f9219x = obtain;
            obtain.start();
        }
        ParticleEffectPool.PooledEffect pooledEffect = this.f9219x;
        if (pooledEffect != null) {
            Vector2 vector2 = this.drawPosition;
            pooledEffect.setPosition(vector2.f5527x, vector2.f5528y);
            this.f9219x.draw(spriteBatch, f);
        }
        if (this.f9217v == null) {
            m21827c();
        }
        for (LegConfig legConfig : this.f9217v) {
            if (legConfig != null) {
                Vector2 vector22 = this.drawPosition;
                legConfig.m21818h(this.f8844S.gameState.getGameSpeed() * f, vector22.f5527x, vector22.f5528y, this.drawAngle);
            }
        }
        LegConfig[] legConfigArr3 = this.f9217v;
        if (legConfigArr3[0].f9236q > 0.75f && legConfigArr3[1].f9236q > 0.75f) {
            LegConfig legConfig2 = legConfigArr3[FastRandom.getInt(2)];
            Vector2 vector23 = this.drawPosition;
            legConfig2.m21823c(vector23.f5527x, vector23.f5528y, this.drawAngle);
        }
        Arrays.sort(this.f9218w, f9216y);
        for (LegConfig legConfig3 : this.f9218w) {
            if (legConfig3 != null) {
                Vector2 vector24 = this.drawPosition;
                legConfig3.m21824b(spriteBatch, vector24.f5527x, vector24.f5528y, this.drawAngle, this.drawScale);
            }
        }
        float regionWidth = Game.f8589i.enemyManager.f9783F.METAPHOR_BOSS.f9240s.getRegionWidth() * 1.8f * (this.drawScale + (MathUtils.sin(this.existsTime * 4.0f) * 0.05f));
        TextureRegion textureRegion = Game.f8589i.enemyManager.f9783F.METAPHOR_BOSS.f9240s;
        Vector2 vector25 = this.drawPosition;
        float f2 = regionWidth * 0.5f;
        spriteBatch.draw(textureRegion, vector25.f5527x - f2, vector25.f5528y - f2, f2, f2, regionWidth, regionWidth, 1.0f, 1.0f, this.drawAngle);
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBuffedDamageMultiplier(TowerType towerType, DamageType damageType) {
        float f = 1.0f - (this.creepCount * 0.02f);
        if (f < 0.0f) {
            f = 0.0f;
        }
        return super.getBuffedDamageMultiplier(towerType, damageType) * f;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.creepCount = input.readVarInt(true);
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.creepCount = 0;
        this.f9217v = null;
        this.f9218w = null;
        this.f9219x = null;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.creepCount, true);
    }
}
