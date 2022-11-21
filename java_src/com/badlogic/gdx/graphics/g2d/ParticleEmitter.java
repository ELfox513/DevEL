package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.utils.Array;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
/* loaded from: classes.dex */
public class ParticleEmitter {

    /* renamed from: A */
    public int f4067A;

    /* renamed from: B */
    public int f4068B;

    /* renamed from: C */
    public float f4069C;

    /* renamed from: D */
    public float f4070D;

    /* renamed from: E */
    public String f4071E;

    /* renamed from: F */
    public Array<String> f4072F;

    /* renamed from: G */
    public int f4073G;

    /* renamed from: H */
    public boolean[] f4074H;

    /* renamed from: I */
    public boolean f4075I;

    /* renamed from: J */
    public boolean f4076J;

    /* renamed from: K */
    public boolean f4077K;

    /* renamed from: L */
    public int f4078L;

    /* renamed from: M */
    public boolean f4079M;

    /* renamed from: N */
    public BoundingBox f4080N;

    /* renamed from: O */
    public int f4081O;

    /* renamed from: P */
    public int f4082P;

    /* renamed from: Q */
    public int f4083Q;

    /* renamed from: R */
    public int f4084R;

    /* renamed from: S */
    public int f4085S;

    /* renamed from: T */
    public int f4086T;

    /* renamed from: U */
    public int f4087U;

    /* renamed from: V */
    public float f4088V;

    /* renamed from: W */
    public float f4089W;

    /* renamed from: X */
    public float f4090X;

    /* renamed from: Y */
    public float f4091Y;

    /* renamed from: Z */
    public float f4092Z;

    /* renamed from: a */
    public RangedNumericValue f4093a;

    /* renamed from: a0 */
    public float f4094a0;

    /* renamed from: b */
    public IndependentScaledNumericValue f4095b;

    /* renamed from: b0 */
    public boolean f4096b0;

    /* renamed from: c */
    public RangedNumericValue f4097c;

    /* renamed from: c0 */
    public boolean f4098c0;

    /* renamed from: d */
    public IndependentScaledNumericValue f4099d;

    /* renamed from: d0 */
    public boolean f4100d0;
    public float duration;
    public float durationTimer;

    /* renamed from: e */
    public ScaledNumericValue f4101e;

    /* renamed from: e0 */
    public boolean f4102e0;

    /* renamed from: f */
    public ScaledNumericValue f4103f;

    /* renamed from: f0 */
    public boolean f4104f0;

    /* renamed from: g */
    public ScaledNumericValue f4105g;

    /* renamed from: g0 */
    public boolean f4106g0;

    /* renamed from: h */
    public ScaledNumericValue f4107h;

    /* renamed from: h0 */
    public boolean f4108h0;

    /* renamed from: i */
    public ScaledNumericValue f4109i;

    /* renamed from: j */
    public ScaledNumericValue f4110j;

    /* renamed from: k */
    public ScaledNumericValue f4111k;

    /* renamed from: l */
    public ScaledNumericValue f4112l;

    /* renamed from: m */
    public ScaledNumericValue f4113m;

    /* renamed from: n */
    public GradientColorValue f4114n;

    /* renamed from: o */
    public RangedNumericValue f4115o;

    /* renamed from: p */
    public RangedNumericValue f4116p;

    /* renamed from: q */
    public ScaledNumericValue f4117q;

    /* renamed from: r */
    public ScaledNumericValue f4118r;

    /* renamed from: s */
    public SpawnShapeValue f4119s;

    /* renamed from: t */
    public RangedNumericValue[] f4120t;

    /* renamed from: u */
    public RangedNumericValue[] f4121u;

    /* renamed from: v */
    public RangedNumericValue[] f4122v;

    /* renamed from: w */
    public float f4123w;

    /* renamed from: x */
    public Array<Sprite> f4124x;

    /* renamed from: y */
    public SpriteMode f4125y;

    /* renamed from: z */
    public Particle[] f4126z;

    /* loaded from: classes.dex */
    public static class GradientColorValue extends ParticleValue {

        /* renamed from: e */
        public static float[] f4130e = new float[4];

        /* renamed from: c */
        public float[] f4131c = {1.0f, 1.0f, 1.0f};

        /* renamed from: d */
        public float[] f4132d = {0.0f};

        public float[] getColors() {
            return this.f4131c;
        }

        public float[] getTimeline() {
            return this.f4132d;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void load(BufferedReader bufferedReader) {
            super.load(bufferedReader);
            if (!this.f4157a) {
                return;
            }
            this.f4131c = new float[ParticleEmitter.m24200l(bufferedReader, "colorsCount")];
            int i = 0;
            int i2 = 0;
            while (true) {
                float[] fArr = this.f4131c;
                if (i2 >= fArr.length) {
                    break;
                }
                fArr[i2] = ParticleEmitter.m24201k(bufferedReader, "colors" + i2);
                i2++;
            }
            this.f4132d = new float[ParticleEmitter.m24200l(bufferedReader, "timelineCount")];
            while (true) {
                float[] fArr2 = this.f4132d;
                if (i >= fArr2.length) {
                    return;
                }
                fArr2[i] = ParticleEmitter.m24201k(bufferedReader, "timeline" + i);
                i++;
            }
        }

        public void setColors(float[] fArr) {
            this.f4131c = fArr;
        }

        public void setTimeline(float[] fArr) {
            this.f4132d = fArr;
        }

        public float[] getColor(float f) {
            float[] fArr = this.f4132d;
            int length = fArr.length;
            int i = 1;
            int i2 = 0;
            while (true) {
                if (i < length) {
                    if (fArr[i] > f) {
                        break;
                    }
                    i2 = i;
                    i++;
                } else {
                    i = -1;
                    break;
                }
            }
            float f2 = fArr[i2];
            int i3 = i2 * 3;
            float[] fArr2 = this.f4131c;
            float f3 = fArr2[i3];
            float f4 = fArr2[i3 + 1];
            float f5 = fArr2[i3 + 2];
            if (i == -1) {
                float[] fArr3 = f4130e;
                fArr3[0] = f3;
                fArr3[1] = f4;
                fArr3[2] = f5;
                return fArr3;
            }
            float f6 = (f - f2) / (fArr[i] - f2);
            int i4 = i * 3;
            float[] fArr4 = f4130e;
            fArr4[0] = f3 + ((fArr2[i4] - f3) * f6);
            fArr4[1] = f4 + ((fArr2[i4 + 1] - f4) * f6);
            fArr4[2] = f5 + ((fArr2[i4 + 2] - f5) * f6);
            return fArr4;
        }

        public GradientColorValue() {
            this.f4158b = true;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void save(Writer writer) {
            super.save(writer);
            if (!this.f4157a) {
                return;
            }
            writer.write("colorsCount: " + this.f4131c.length + "\n");
            for (int i = 0; i < this.f4131c.length; i++) {
                writer.write("colors" + i + ": " + this.f4131c[i] + "\n");
            }
            writer.write("timelineCount: " + this.f4132d.length + "\n");
            for (int i2 = 0; i2 < this.f4132d.length; i2++) {
                writer.write("timeline" + i2 + ": " + this.f4132d[i2] + "\n");
            }
        }

        public void load(GradientColorValue gradientColorValue) {
            super.load((ParticleValue) gradientColorValue);
            float[] fArr = new float[gradientColorValue.f4131c.length];
            this.f4131c = fArr;
            System.arraycopy(gradientColorValue.f4131c, 0, fArr, 0, fArr.length);
            float[] fArr2 = new float[gradientColorValue.f4132d.length];
            this.f4132d = fArr2;
            System.arraycopy(gradientColorValue.f4132d, 0, fArr2, 0, fArr2.length);
        }
    }

    /* loaded from: classes.dex */
    public static class Particle extends Sprite {

        /* renamed from: A */
        public float f4135A;

        /* renamed from: B */
        public float f4136B;

        /* renamed from: C */
        public float f4137C;

        /* renamed from: D */
        public float f4138D;

        /* renamed from: E */
        public float f4139E;

        /* renamed from: F */
        public float f4140F;

        /* renamed from: G */
        public float f4141G;

        /* renamed from: H */
        public float f4142H;

        /* renamed from: I */
        public float f4143I;

        /* renamed from: J */
        public float f4144J;

        /* renamed from: K */
        public float f4145K;

        /* renamed from: L */
        public float f4146L;

        /* renamed from: M */
        public float f4147M;

        /* renamed from: N */
        public float f4148N;

        /* renamed from: O */
        public float[] f4149O;

        /* renamed from: P */
        public int f4150P;

        /* renamed from: u */
        public int f4151u;

        /* renamed from: v */
        public int f4152v;

        /* renamed from: w */
        public float f4153w;

        /* renamed from: x */
        public float f4154x;

        /* renamed from: y */
        public float f4155y;

        /* renamed from: z */
        public float f4156z;

        public Particle(Sprite sprite) {
            super(sprite);
        }
    }

    /* loaded from: classes.dex */
    public static class ParticleValue {

        /* renamed from: a */
        public boolean f4157a;

        /* renamed from: b */
        public boolean f4158b;

        public boolean isActive() {
            return this.f4158b || this.f4157a;
        }

        public boolean isAlwaysActive() {
            return this.f4158b;
        }

        public void load(BufferedReader bufferedReader) {
            if (!this.f4158b) {
                this.f4157a = ParticleEmitter.m24203i(bufferedReader, "active");
            } else {
                this.f4157a = true;
            }
        }

        public void setActive(boolean z) {
            this.f4157a = z;
        }

        public void setAlwaysActive(boolean z) {
            this.f4158b = z;
        }

        public void save(Writer writer) {
            if (!this.f4158b) {
                writer.write("active: " + this.f4157a + "\n");
                return;
            }
            this.f4157a = true;
        }

        public void load(ParticleValue particleValue) {
            this.f4157a = particleValue.f4157a;
            this.f4158b = particleValue.f4158b;
        }
    }

    /* loaded from: classes.dex */
    public static class RangedNumericValue extends ParticleValue {

        /* renamed from: c */
        public float f4159c;

        /* renamed from: d */
        public float f4160d;

        public float getLowMax() {
            return this.f4160d;
        }

        public float getLowMin() {
            return this.f4159c;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void load(BufferedReader bufferedReader) {
            super.load(bufferedReader);
            if (this.f4157a) {
                this.f4159c = ParticleEmitter.m24201k(bufferedReader, "lowMin");
                this.f4160d = ParticleEmitter.m24201k(bufferedReader, "lowMax");
            }
        }

        public float newLowValue() {
            float f = this.f4159c;
            return f + ((this.f4160d - f) * MathUtils.random());
        }

        public void setLow(float f) {
            this.f4159c = f;
            this.f4160d = f;
        }

        public void setLowMax(float f) {
            this.f4160d = f;
        }

        public void setLowMin(float f) {
            this.f4159c = f;
        }

        public void scale(float f) {
            this.f4159c *= f;
            this.f4160d *= f;
        }

        public void set(RangedNumericValue rangedNumericValue) {
            this.f4159c = rangedNumericValue.f4159c;
            this.f4160d = rangedNumericValue.f4160d;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void save(Writer writer) {
            super.save(writer);
            if (!this.f4157a) {
                return;
            }
            writer.write("lowMin: " + this.f4159c + "\n");
            writer.write("lowMax: " + this.f4160d + "\n");
        }

        public void setLow(float f, float f2) {
            this.f4159c = f;
            this.f4160d = f2;
        }

        public void load(RangedNumericValue rangedNumericValue) {
            super.load((ParticleValue) rangedNumericValue);
            this.f4160d = rangedNumericValue.f4160d;
            this.f4159c = rangedNumericValue.f4159c;
        }
    }

    /* loaded from: classes.dex */
    public static class ScaledNumericValue extends RangedNumericValue {

        /* renamed from: e */
        public float[] f4161e = {1.0f};

        /* renamed from: f */
        public float[] f4162f = {0.0f};

        /* renamed from: g */
        public float f4163g;

        /* renamed from: h */
        public float f4164h;

        /* renamed from: i */
        public boolean f4165i;

        public float getHighMax() {
            return this.f4164h;
        }

        public float getHighMin() {
            return this.f4163g;
        }

        public float[] getScaling() {
            return this.f4161e;
        }

        public float[] getTimeline() {
            return this.f4162f;
        }

        public boolean isRelative() {
            return this.f4165i;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.RangedNumericValue, com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void load(BufferedReader bufferedReader) {
            super.load(bufferedReader);
            if (!this.f4157a) {
                return;
            }
            this.f4163g = ParticleEmitter.m24201k(bufferedReader, "highMin");
            this.f4164h = ParticleEmitter.m24201k(bufferedReader, "highMax");
            this.f4165i = ParticleEmitter.m24203i(bufferedReader, "relative");
            this.f4161e = new float[ParticleEmitter.m24200l(bufferedReader, "scalingCount")];
            int i = 0;
            int i2 = 0;
            while (true) {
                float[] fArr = this.f4161e;
                if (i2 >= fArr.length) {
                    break;
                }
                fArr[i2] = ParticleEmitter.m24201k(bufferedReader, "scaling" + i2);
                i2++;
            }
            this.f4162f = new float[ParticleEmitter.m24200l(bufferedReader, "timelineCount")];
            while (true) {
                float[] fArr2 = this.f4162f;
                if (i >= fArr2.length) {
                    return;
                }
                fArr2[i] = ParticleEmitter.m24201k(bufferedReader, "timeline" + i);
                i++;
            }
        }

        public float newHighValue() {
            float f = this.f4163g;
            return f + ((this.f4164h - f) * MathUtils.random());
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.RangedNumericValue
        public void set(RangedNumericValue rangedNumericValue) {
            if (rangedNumericValue instanceof ScaledNumericValue) {
                set((ScaledNumericValue) rangedNumericValue);
            } else {
                super.set(rangedNumericValue);
            }
        }

        public void setHigh(float f) {
            this.f4163g = f;
            this.f4164h = f;
        }

        public void setHighMax(float f) {
            this.f4164h = f;
        }

        public void setHighMin(float f) {
            this.f4163g = f;
        }

        public void setRelative(boolean z) {
            this.f4165i = z;
        }

        public void setScaling(float[] fArr) {
            this.f4161e = fArr;
        }

        public void setTimeline(float[] fArr) {
            this.f4162f = fArr;
        }

        public float getScale(float f) {
            float[] fArr = this.f4162f;
            int length = fArr.length;
            int i = 1;
            while (true) {
                if (i < length) {
                    if (fArr[i] > f) {
                        break;
                    }
                    i++;
                } else {
                    i = -1;
                    break;
                }
            }
            if (i == -1) {
                return this.f4161e[length - 1];
            }
            float[] fArr2 = this.f4161e;
            int i2 = i - 1;
            float f2 = fArr2[i2];
            float f3 = fArr[i2];
            return f2 + ((fArr2[i] - f2) * ((f - f3) / (fArr[i] - f3)));
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.RangedNumericValue, com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void save(Writer writer) {
            super.save(writer);
            if (!this.f4157a) {
                return;
            }
            writer.write("highMin: " + this.f4163g + "\n");
            writer.write("highMax: " + this.f4164h + "\n");
            writer.write("relative: " + this.f4165i + "\n");
            writer.write("scalingCount: " + this.f4161e.length + "\n");
            for (int i = 0; i < this.f4161e.length; i++) {
                writer.write("scaling" + i + ": " + this.f4161e[i] + "\n");
            }
            writer.write("timelineCount: " + this.f4162f.length + "\n");
            for (int i2 = 0; i2 < this.f4162f.length; i2++) {
                writer.write("timeline" + i2 + ": " + this.f4162f[i2] + "\n");
            }
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.RangedNumericValue
        public void scale(float f) {
            super.scale(f);
            this.f4163g *= f;
            this.f4164h *= f;
        }

        public void setHigh(float f, float f2) {
            this.f4163g = f;
            this.f4164h = f2;
        }

        public void set(ScaledNumericValue scaledNumericValue) {
            super.set((RangedNumericValue) scaledNumericValue);
            this.f4163g = scaledNumericValue.f4163g;
            this.f4164h = scaledNumericValue.f4164h;
            float[] fArr = this.f4161e;
            int length = fArr.length;
            float[] fArr2 = scaledNumericValue.f4161e;
            if (length != fArr2.length) {
                this.f4161e = Arrays.copyOf(fArr2, fArr2.length);
            } else {
                System.arraycopy(fArr2, 0, fArr, 0, fArr.length);
            }
            float[] fArr3 = this.f4162f;
            int length2 = fArr3.length;
            float[] fArr4 = scaledNumericValue.f4162f;
            if (length2 != fArr4.length) {
                this.f4162f = Arrays.copyOf(fArr4, fArr4.length);
            } else {
                System.arraycopy(fArr4, 0, fArr3, 0, fArr3.length);
            }
            this.f4165i = scaledNumericValue.f4165i;
        }

        public void load(ScaledNumericValue scaledNumericValue) {
            super.load((RangedNumericValue) scaledNumericValue);
            this.f4164h = scaledNumericValue.f4164h;
            this.f4163g = scaledNumericValue.f4163g;
            float[] fArr = new float[scaledNumericValue.f4161e.length];
            this.f4161e = fArr;
            System.arraycopy(scaledNumericValue.f4161e, 0, fArr, 0, fArr.length);
            float[] fArr2 = new float[scaledNumericValue.f4162f.length];
            this.f4162f = fArr2;
            System.arraycopy(scaledNumericValue.f4162f, 0, fArr2, 0, fArr2.length);
            this.f4165i = scaledNumericValue.f4165i;
        }
    }

    /* loaded from: classes.dex */
    public enum SpawnEllipseSide {
        both,
        top,
        bottom
    }

    /* loaded from: classes.dex */
    public enum SpawnShape {
        point,
        line,
        square,
        ellipse
    }

    /* loaded from: classes.dex */
    public enum SpriteMode {
        single,
        random,
        animated
    }

    public ParticleEmitter() {
        this.f4093a = new RangedNumericValue();
        this.f4095b = new IndependentScaledNumericValue();
        this.f4097c = new RangedNumericValue();
        this.f4099d = new IndependentScaledNumericValue();
        this.f4101e = new ScaledNumericValue();
        this.f4103f = new ScaledNumericValue();
        this.f4105g = new ScaledNumericValue();
        this.f4107h = new ScaledNumericValue();
        this.f4109i = new ScaledNumericValue();
        this.f4110j = new ScaledNumericValue();
        this.f4111k = new ScaledNumericValue();
        this.f4112l = new ScaledNumericValue();
        this.f4113m = new ScaledNumericValue();
        this.f4114n = new GradientColorValue();
        this.f4115o = new ScaledNumericValue();
        this.f4116p = new ScaledNumericValue();
        this.f4117q = new ScaledNumericValue();
        this.f4118r = new ScaledNumericValue();
        this.f4119s = new SpawnShapeValue();
        this.f4125y = SpriteMode.single;
        this.f4068B = 4;
        this.duration = 1.0f;
        this.f4104f0 = true;
        this.f4106g0 = false;
        this.f4108h0 = true;
        m24205g();
    }

    /* renamed from: i */
    public static boolean m24203i(BufferedReader bufferedReader, String str) {
        return Boolean.parseBoolean(m24199m(bufferedReader, str));
    }

    /* renamed from: j */
    public static boolean m24202j(String str) {
        return Boolean.parseBoolean(m24198n(str));
    }

    /* renamed from: k */
    public static float m24201k(BufferedReader bufferedReader, String str) {
        return Float.parseFloat(m24199m(bufferedReader, str));
    }

    /* renamed from: l */
    public static int m24200l(BufferedReader bufferedReader, String str) {
        return Integer.parseInt(m24199m(bufferedReader, str));
    }

    /* renamed from: n */
    public static String m24198n(String str) {
        return str.substring(str.indexOf(":") + 1).trim();
    }

    public void allowCompletion() {
        this.f4079M = true;
        this.durationTimer = this.duration;
    }

    public boolean cleansUpBlendFunction() {
        return this.f4108h0;
    }

    public void draw(Batch batch) {
        if (this.f4106g0) {
            batch.setBlendFunction(1, GL20.GL_ONE_MINUS_SRC_ALPHA);
        } else if (this.f4104f0) {
            batch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
        } else {
            batch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        }
        Particle[] particleArr = this.f4126z;
        boolean[] zArr = this.f4074H;
        int length = zArr.length;
        for (int i = 0; i < length; i++) {
            if (zArr[i]) {
                particleArr[i].draw(batch);
            }
        }
        if (this.f4108h0) {
            if (this.f4104f0 || this.f4106g0) {
                batch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
            }
        }
    }

    public int getActiveCount() {
        return this.f4073G;
    }

    public ScaledNumericValue getAngle() {
        return this.f4110j;
    }

    public RangedNumericValue getDelay() {
        return this.f4093a;
    }

    public RangedNumericValue getDuration() {
        return this.f4097c;
    }

    public ScaledNumericValue getEmission() {
        return this.f4101e;
    }

    public ScaledNumericValue getGravity() {
        return this.f4112l;
    }

    public Array<String> getImagePaths() {
        return this.f4072F;
    }

    public ScaledNumericValue getLife() {
        return this.f4099d;
    }

    public ScaledNumericValue getLifeOffset() {
        return this.f4095b;
    }

    public int getMaxParticleCount() {
        return this.f4068B;
    }

    public int getMinParticleCount() {
        return this.f4067A;
    }

    public String getName() {
        return this.f4071E;
    }

    public ScaledNumericValue getRotation() {
        return this.f4107h;
    }

    public ScaledNumericValue getSpawnHeight() {
        return this.f4118r;
    }

    public SpawnShapeValue getSpawnShape() {
        return this.f4119s;
    }

    public ScaledNumericValue getSpawnWidth() {
        return this.f4117q;
    }

    public SpriteMode getSpriteMode() {
        return this.f4125y;
    }

    public Array<Sprite> getSprites() {
        return this.f4124x;
    }

    public GradientColorValue getTint() {
        return this.f4114n;
    }

    public ScaledNumericValue getTransparency() {
        return this.f4113m;
    }

    public ScaledNumericValue getVelocity() {
        return this.f4109i;
    }

    public ScaledNumericValue getWind() {
        return this.f4111k;
    }

    public float getX() {
        return this.f4069C;
    }

    public RangedNumericValue getXOffsetValue() {
        return this.f4115o;
    }

    public ScaledNumericValue getXScale() {
        return this.f4103f;
    }

    public float getY() {
        return this.f4070D;
    }

    public RangedNumericValue getYOffsetValue() {
        return this.f4116p;
    }

    public ScaledNumericValue getYScale() {
        return this.f4105g;
    }

    /* renamed from: h */
    public Particle m24204h(Sprite sprite) {
        return new Particle(sprite);
    }

    public boolean isAdditive() {
        return this.f4104f0;
    }

    public boolean isAligned() {
        return this.f4100d0;
    }

    public boolean isAttached() {
        return this.f4096b0;
    }

    public boolean isBehind() {
        return this.f4102e0;
    }

    public boolean isContinuous() {
        return this.f4098c0;
    }

    public boolean isPremultipliedAlpha() {
        return this.f4106g0;
    }

    public void reset() {
        this.f4083Q = 0;
        this.durationTimer = this.duration;
        boolean[] zArr = this.f4074H;
        int length = zArr.length;
        for (int i = 0; i < length; i++) {
            zArr[i] = false;
        }
        this.f4073G = 0;
        start();
    }

    public void scaleSize(float f) {
        if (f == 1.0f) {
            return;
        }
        scaleSize(f, f);
    }

    public void setAdditive(boolean z) {
        this.f4104f0 = z;
    }

    public void setAligned(boolean z) {
        this.f4100d0 = z;
    }

    public void setAttached(boolean z) {
        this.f4096b0 = z;
    }

    public void setBehind(boolean z) {
        this.f4102e0 = z;
    }

    public void setCleansUpBlendFunction(boolean z) {
        this.f4108h0 = z;
    }

    public void setContinuous(boolean z) {
        this.f4098c0 = z;
    }

    public void setImagePaths(Array<String> array) {
        this.f4072F = array;
    }

    public void setMinParticleCount(int i) {
        this.f4067A = i;
    }

    public void setName(String str) {
        this.f4071E = str;
    }

    public void setPremultipliedAlpha(boolean z) {
        this.f4106g0 = z;
    }

    public void setSpriteMode(SpriteMode spriteMode) {
        this.f4125y = spriteMode;
    }

    public void start() {
        this.f4075I = true;
        this.f4079M = false;
        m24197o();
    }

    /* renamed from: com.badlogic.gdx.graphics.g2d.ParticleEmitter$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11971 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4127a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f4128b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f4129c;

        static {
            int[] iArr = new int[SpawnShape.values().length];
            f4129c = iArr;
            try {
                iArr[SpawnShape.square.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4129c[SpawnShape.ellipse.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4129c[SpawnShape.line.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[SpawnEllipseSide.values().length];
            f4128b = iArr2;
            try {
                iArr2[SpawnEllipseSide.top.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4128b[SpawnEllipseSide.bottom.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[SpriteMode.values().length];
            f4127a = iArr3;
            try {
                iArr3[SpriteMode.single.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4127a[SpriteMode.animated.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4127a[SpriteMode.random.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class IndependentScaledNumericValue extends ScaledNumericValue {

        /* renamed from: j */
        public boolean f4133j;

        public boolean isIndependent() {
            return this.f4133j;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ScaledNumericValue, com.badlogic.gdx.graphics.g2d.ParticleEmitter.RangedNumericValue, com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void load(BufferedReader bufferedReader) {
            super.load(bufferedReader);
            if (bufferedReader.markSupported()) {
                bufferedReader.mark(100);
            }
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                if (readLine.contains("independent")) {
                    this.f4133j = Boolean.parseBoolean(ParticleEmitter.m24198n(readLine));
                    return;
                } else if (bufferedReader.markSupported()) {
                    bufferedReader.reset();
                    return;
                } else {
                    Gdx.app.error("ParticleEmitter", "The loaded particle effect descriptor file uses an old invalid format. Please download the latest version of the Particle Editor tool and recreate the file by loading and saving it again.");
                    throw new IOException("The loaded particle effect descriptor file uses an old invalid format. Please download the latest version of the Particle Editor tool and recreate the file by loading and saving it again.");
                }
            }
            throw new IOException("Missing value: independent");
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ScaledNumericValue, com.badlogic.gdx.graphics.g2d.ParticleEmitter.RangedNumericValue
        public void set(RangedNumericValue rangedNumericValue) {
            if (rangedNumericValue instanceof IndependentScaledNumericValue) {
                set((IndependentScaledNumericValue) rangedNumericValue);
            } else {
                super.set(rangedNumericValue);
            }
        }

        public void setIndependent(boolean z) {
            this.f4133j = z;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ScaledNumericValue, com.badlogic.gdx.graphics.g2d.ParticleEmitter.RangedNumericValue, com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void save(Writer writer) {
            super.save(writer);
            writer.write("independent: " + this.f4133j + "\n");
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ScaledNumericValue
        public void set(ScaledNumericValue scaledNumericValue) {
            if (scaledNumericValue instanceof IndependentScaledNumericValue) {
                set((IndependentScaledNumericValue) scaledNumericValue);
            } else {
                super.set(scaledNumericValue);
            }
        }

        public void set(IndependentScaledNumericValue independentScaledNumericValue) {
            super.set((ScaledNumericValue) independentScaledNumericValue);
            this.f4133j = independentScaledNumericValue.f4133j;
        }

        public void load(IndependentScaledNumericValue independentScaledNumericValue) {
            super.load((ScaledNumericValue) independentScaledNumericValue);
            this.f4133j = independentScaledNumericValue.f4133j;
        }
    }

    /* loaded from: classes.dex */
    public static class NumericValue extends ParticleValue {

        /* renamed from: c */
        public float f4134c;

        public float getValue() {
            return this.f4134c;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void load(BufferedReader bufferedReader) {
            super.load(bufferedReader);
            if (this.f4157a) {
                this.f4134c = ParticleEmitter.m24201k(bufferedReader, "value");
            }
        }

        public void setValue(float f) {
            this.f4134c = f;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void save(Writer writer) {
            super.save(writer);
            if (!this.f4157a) {
                return;
            }
            writer.write("value: " + this.f4134c + "\n");
        }

        public void load(NumericValue numericValue) {
            super.load((ParticleValue) numericValue);
            this.f4134c = numericValue.f4134c;
        }
    }

    /* loaded from: classes.dex */
    public static class SpawnShapeValue extends ParticleValue {

        /* renamed from: d */
        public boolean f4169d;

        /* renamed from: c */
        public SpawnShape f4168c = SpawnShape.point;

        /* renamed from: e */
        public SpawnEllipseSide f4170e = SpawnEllipseSide.both;

        public SpawnShape getShape() {
            return this.f4168c;
        }

        public SpawnEllipseSide getSide() {
            return this.f4170e;
        }

        public boolean isEdges() {
            return this.f4169d;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void load(BufferedReader bufferedReader) {
            super.load(bufferedReader);
            if (this.f4157a) {
                SpawnShape valueOf = SpawnShape.valueOf(ParticleEmitter.m24199m(bufferedReader, "shape"));
                this.f4168c = valueOf;
                if (valueOf == SpawnShape.ellipse) {
                    this.f4169d = ParticleEmitter.m24203i(bufferedReader, "edges");
                    this.f4170e = SpawnEllipseSide.valueOf(ParticleEmitter.m24199m(bufferedReader, "side"));
                }
            }
        }

        public void setEdges(boolean z) {
            this.f4169d = z;
        }

        public void setShape(SpawnShape spawnShape) {
            this.f4168c = spawnShape;
        }

        public void setSide(SpawnEllipseSide spawnEllipseSide) {
            this.f4170e = spawnEllipseSide;
        }

        @Override // com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
        public void save(Writer writer) {
            super.save(writer);
            if (!this.f4157a) {
                return;
            }
            writer.write("shape: " + this.f4168c + "\n");
            if (this.f4168c == SpawnShape.ellipse) {
                writer.write("edges: " + this.f4169d + "\n");
                writer.write("side: " + this.f4170e + "\n");
            }
        }

        public void load(SpawnShapeValue spawnShapeValue) {
            super.load((ParticleValue) spawnShapeValue);
            this.f4168c = spawnShapeValue.f4168c;
            this.f4169d = spawnShapeValue.f4169d;
            this.f4170e = spawnShapeValue.f4170e;
        }
    }

    /* renamed from: a */
    public final void m24211a(int i) {
        Sprite first;
        float f;
        float random;
        float random2;
        float f2;
        int i2 = C11971.f4127a[this.f4125y.ordinal()];
        if (i2 != 1 && i2 != 2) {
            if (i2 != 3) {
                first = null;
            } else {
                first = this.f4124x.random();
            }
        } else {
            first = this.f4124x.first();
        }
        Particle[] particleArr = this.f4126z;
        Particle particle = particleArr[i];
        if (particle == null) {
            particle = m24204h(first);
            particleArr[i] = particle;
            particle.flip(this.f4076J, this.f4077K);
        } else {
            particle.set(first);
        }
        float f3 = this.durationTimer / this.duration;
        int i3 = this.f4078L;
        if (this.f4099d.f4133j) {
            m24209c();
        }
        if (this.f4095b.f4133j) {
            m24210b();
        }
        int scale = this.f4086T + ((int) (this.f4087U * this.f4099d.getScale(f3)));
        particle.f4151u = scale;
        particle.f4152v = scale;
        ScaledNumericValue scaledNumericValue = this.f4109i;
        if (scaledNumericValue.f4157a) {
            particle.f4137C = scaledNumericValue.newLowValue();
            particle.f4138D = this.f4109i.newHighValue();
            if (!this.f4109i.isRelative()) {
                particle.f4138D -= particle.f4137C;
            }
        }
        particle.f4139E = this.f4110j.newLowValue();
        particle.f4140F = this.f4110j.newHighValue();
        if (!this.f4110j.isRelative()) {
            particle.f4140F -= particle.f4139E;
        }
        int i4 = i3 & 2;
        if (i4 == 0) {
            f = particle.f4139E + (particle.f4140F * this.f4110j.getScale(0.0f));
            particle.f4139E = f;
            particle.f4141G = MathUtils.cosDeg(f);
            particle.f4142H = MathUtils.sinDeg(f);
        } else {
            f = 0.0f;
        }
        float width = first.getWidth();
        float height = first.getHeight();
        particle.f4153w = this.f4103f.newLowValue() / width;
        particle.f4154x = this.f4103f.newHighValue() / width;
        if (!this.f4103f.isRelative()) {
            particle.f4154x -= particle.f4153w;
        }
        ScaledNumericValue scaledNumericValue2 = this.f4105g;
        if (scaledNumericValue2.f4157a) {
            particle.f4155y = scaledNumericValue2.newLowValue() / height;
            particle.f4156z = this.f4105g.newHighValue() / height;
            if (!this.f4105g.isRelative()) {
                particle.f4156z -= particle.f4155y;
            }
            particle.setScale(particle.f4153w + (particle.f4154x * this.f4103f.getScale(0.0f)), particle.f4155y + (particle.f4156z * this.f4105g.getScale(0.0f)));
        } else {
            particle.setScale(particle.f4153w + (particle.f4154x * this.f4103f.getScale(0.0f)));
        }
        ScaledNumericValue scaledNumericValue3 = this.f4107h;
        if (scaledNumericValue3.f4157a) {
            particle.f4135A = scaledNumericValue3.newLowValue();
            particle.f4136B = this.f4107h.newHighValue();
            if (!this.f4107h.isRelative()) {
                particle.f4136B -= particle.f4135A;
            }
            float scale2 = particle.f4135A + (particle.f4136B * this.f4107h.getScale(0.0f));
            if (this.f4100d0) {
                scale2 += f;
            }
            particle.setRotation(scale2);
        }
        ScaledNumericValue scaledNumericValue4 = this.f4111k;
        if (scaledNumericValue4.f4157a) {
            particle.f4145K = scaledNumericValue4.newLowValue();
            particle.f4146L = this.f4111k.newHighValue();
            if (!this.f4111k.isRelative()) {
                particle.f4146L -= particle.f4145K;
            }
        }
        ScaledNumericValue scaledNumericValue5 = this.f4112l;
        if (scaledNumericValue5.f4157a) {
            particle.f4147M = scaledNumericValue5.newLowValue();
            particle.f4148N = this.f4112l.newHighValue();
            if (!this.f4112l.isRelative()) {
                particle.f4148N -= particle.f4147M;
            }
        }
        float[] fArr = particle.f4149O;
        if (fArr == null) {
            fArr = new float[3];
            particle.f4149O = fArr;
        }
        float[] color = this.f4114n.getColor(0.0f);
        fArr[0] = color[0];
        fArr[1] = color[1];
        fArr[2] = color[2];
        particle.f4143I = this.f4113m.newLowValue();
        particle.f4144J = this.f4113m.newHighValue() - particle.f4143I;
        float f4 = this.f4069C;
        RangedNumericValue rangedNumericValue = this.f4115o;
        if (rangedNumericValue.f4157a) {
            f4 += rangedNumericValue.newLowValue();
        }
        float f5 = this.f4070D;
        RangedNumericValue rangedNumericValue2 = this.f4116p;
        if (rangedNumericValue2.f4157a) {
            f5 += rangedNumericValue2.newLowValue();
        }
        int i5 = C11971.f4129c[this.f4119s.f4168c.ordinal()];
        if (i5 != 1) {
            if (i5 != 2) {
                if (i5 == 3) {
                    float scale3 = this.f4088V + (this.f4089W * this.f4117q.getScale(f3));
                    float scale4 = this.f4090X + (this.f4091Y * this.f4118r.getScale(f3));
                    if (scale3 != 0.0f) {
                        float random3 = MathUtils.random() * scale3;
                        f4 += random3;
                        f5 += random3 * (scale4 / scale3);
                    } else {
                        f5 += scale4 * MathUtils.random();
                    }
                }
            } else {
                float scale5 = this.f4088V + (this.f4089W * this.f4117q.getScale(f3));
                float f6 = scale5 / 2.0f;
                float scale6 = (this.f4090X + (this.f4091Y * this.f4118r.getScale(f3))) / 2.0f;
                if (f6 != 0.0f && scale6 != 0.0f) {
                    float f7 = f6 / scale6;
                    SpawnShapeValue spawnShapeValue = this.f4119s;
                    if (spawnShapeValue.f4169d) {
                        int i6 = C11971.f4128b[spawnShapeValue.f4170e.ordinal()];
                        if (i6 != 1) {
                            if (i6 != 2) {
                                f2 = MathUtils.random(360.0f);
                            } else {
                                f2 = MathUtils.random(179.0f);
                            }
                        } else {
                            f2 = -MathUtils.random(179.0f);
                        }
                        float cosDeg = MathUtils.cosDeg(f2);
                        float sinDeg = MathUtils.sinDeg(f2);
                        f4 += cosDeg * f6;
                        f5 += (f6 * sinDeg) / f7;
                        if (i4 == 0) {
                            particle.f4139E = f2;
                            particle.f4141G = cosDeg;
                            particle.f4142H = sinDeg;
                        }
                    } else {
                        float f8 = f6 * f6;
                        do {
                            random = MathUtils.random(scale5) - f6;
                            random2 = MathUtils.random(scale5) - f6;
                        } while ((random * random) + (random2 * random2) > f8);
                        f4 += random;
                        f5 += random2 / f7;
                    }
                }
            }
        } else {
            float scale7 = this.f4088V + (this.f4089W * this.f4117q.getScale(f3));
            float scale8 = this.f4090X + (this.f4091Y * this.f4118r.getScale(f3));
            f4 += MathUtils.random(scale7) - (scale7 / 2.0f);
            f5 += MathUtils.random(scale8) - (scale8 / 2.0f);
        }
        particle.setBounds(f4 - (width / 2.0f), f5 - (height / 2.0f), width, height);
        int scale9 = (int) (this.f4084R + (this.f4085S * this.f4095b.getScale(f3)));
        if (scale9 > 0) {
            int i7 = particle.f4152v;
            if (scale9 >= i7) {
                scale9 = i7 - 1;
            }
            m24196p(particle, scale9 / 1000.0f, scale9);
        }
    }

    public void addParticle() {
        int i = this.f4073G;
        if (i == this.f4068B) {
            return;
        }
        boolean[] zArr = this.f4074H;
        int length = zArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (!zArr[i2]) {
                m24211a(i2);
                zArr[i2] = true;
                this.f4073G = i + 1;
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
        m24211a(r3);
        r0[r3] = true;
        r2 = r2 + 1;
        r3 = r3 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addParticles(int r7) {
        /*
            r6 = this;
            int r0 = r6.f4068B
            int r1 = r6.f4073G
            int r0 = r0 - r1
            int r7 = java.lang.Math.min(r7, r0)
            if (r7 != 0) goto Lc
            return
        Lc:
            boolean[] r0 = r6.f4074H
            int r1 = r0.length
            r2 = 0
            r3 = 0
        L11:
            if (r2 >= r7) goto L28
        L13:
            if (r3 >= r1) goto L28
            boolean r4 = r0[r3]
            if (r4 != 0) goto L25
            r6.m24211a(r3)
            int r4 = r3 + 1
            r5 = 1
            r0[r3] = r5
            int r2 = r2 + 1
            r3 = r4
            goto L11
        L25:
            int r3 = r3 + 1
            goto L13
        L28:
            int r0 = r6.f4073G
            int r0 = r0 + r7
            r6.f4073G = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g2d.ParticleEmitter.addParticles(int):void");
    }

    /* renamed from: b */
    public final void m24210b() {
        int i;
        IndependentScaledNumericValue independentScaledNumericValue = this.f4095b;
        if (independentScaledNumericValue.f4157a) {
            i = (int) independentScaledNumericValue.newLowValue();
        } else {
            i = 0;
        }
        this.f4084R = i;
        this.f4085S = (int) this.f4095b.newHighValue();
        if (!this.f4095b.isRelative()) {
            this.f4085S -= this.f4084R;
        }
    }

    /* renamed from: c */
    public final void m24209c() {
        this.f4086T = (int) this.f4099d.newLowValue();
        this.f4087U = (int) this.f4099d.newHighValue();
        if (!this.f4099d.isRelative()) {
            this.f4087U -= this.f4086T;
        }
    }

    /* renamed from: d */
    public RangedNumericValue[] m24208d() {
        if (this.f4122v == null) {
            this.f4122v = r0;
            RangedNumericValue[] rangedNumericValueArr = {this.f4109i, this.f4111k, this.f4112l};
        }
        return this.f4122v;
    }

    /* renamed from: e */
    public RangedNumericValue[] m24207e() {
        if (this.f4120t == null) {
            this.f4120t = r0;
            RangedNumericValue[] rangedNumericValueArr = {this.f4103f, this.f4117q, this.f4115o};
        }
        return this.f4120t;
    }

    /* renamed from: f */
    public RangedNumericValue[] m24206f() {
        if (this.f4121u == null) {
            this.f4121u = r0;
            RangedNumericValue[] rangedNumericValueArr = {this.f4105g, this.f4118r, this.f4116p};
        }
        return this.f4121u;
    }

    public void flipY() {
        ScaledNumericValue scaledNumericValue = this.f4110j;
        scaledNumericValue.setHigh(-scaledNumericValue.getHighMin(), -this.f4110j.getHighMax());
        ScaledNumericValue scaledNumericValue2 = this.f4110j;
        scaledNumericValue2.setLow(-scaledNumericValue2.getLowMin(), -this.f4110j.getLowMax());
        ScaledNumericValue scaledNumericValue3 = this.f4112l;
        scaledNumericValue3.setHigh(-scaledNumericValue3.getHighMin(), -this.f4112l.getHighMax());
        ScaledNumericValue scaledNumericValue4 = this.f4112l;
        scaledNumericValue4.setLow(-scaledNumericValue4.getLowMin(), -this.f4112l.getLowMax());
        ScaledNumericValue scaledNumericValue5 = this.f4111k;
        scaledNumericValue5.setHigh(-scaledNumericValue5.getHighMin(), -this.f4111k.getHighMax());
        ScaledNumericValue scaledNumericValue6 = this.f4111k;
        scaledNumericValue6.setLow(-scaledNumericValue6.getLowMin(), -this.f4111k.getLowMax());
        ScaledNumericValue scaledNumericValue7 = this.f4107h;
        scaledNumericValue7.setHigh(-scaledNumericValue7.getHighMin(), -this.f4107h.getHighMax());
        ScaledNumericValue scaledNumericValue8 = this.f4107h;
        scaledNumericValue8.setLow(-scaledNumericValue8.getLowMin(), -this.f4107h.getLowMax());
        RangedNumericValue rangedNumericValue = this.f4116p;
        rangedNumericValue.setLow(-rangedNumericValue.getLowMin(), -this.f4116p.getLowMax());
    }

    /* renamed from: g */
    public final void m24205g() {
        this.f4124x = new Array<>();
        this.f4072F = new Array<>();
        this.f4097c.setAlwaysActive(true);
        this.f4101e.setAlwaysActive(true);
        this.f4099d.setAlwaysActive(true);
        this.f4103f.setAlwaysActive(true);
        this.f4113m.setAlwaysActive(true);
        this.f4119s.setAlwaysActive(true);
        this.f4117q.setAlwaysActive(true);
        this.f4118r.setAlwaysActive(true);
    }

    public BoundingBox getBoundingBox() {
        if (this.f4080N == null) {
            this.f4080N = new BoundingBox();
        }
        Particle[] particleArr = this.f4126z;
        boolean[] zArr = this.f4074H;
        BoundingBox boundingBox = this.f4080N;
        boundingBox.inf();
        int length = zArr.length;
        for (int i = 0; i < length; i++) {
            if (zArr[i]) {
                Rectangle boundingRectangle = particleArr[i].getBoundingRectangle();
                boundingBox.ext(boundingRectangle.f5523x, boundingRectangle.f5524y, 0.0f);
                boundingBox.ext(boundingRectangle.f5523x + boundingRectangle.width, boundingRectangle.f5524y + boundingRectangle.height, 0.0f);
            }
        }
        return boundingBox;
    }

    public float getPercentComplete() {
        if (this.f4094a0 < this.f4092Z) {
            return 0.0f;
        }
        return Math.min(1.0f, this.durationTimer / this.duration);
    }

    public boolean isComplete() {
        if ((this.f4098c0 && !this.f4079M) || this.f4094a0 < this.f4092Z || this.durationTimer < this.duration || this.f4073G != 0) {
            return false;
        }
        return true;
    }

    public void load(BufferedReader bufferedReader) {
        try {
            this.f4071E = m24199m(bufferedReader, "name");
            bufferedReader.readLine();
            this.f4093a.load(bufferedReader);
            bufferedReader.readLine();
            this.f4097c.load(bufferedReader);
            bufferedReader.readLine();
            setMinParticleCount(m24200l(bufferedReader, "minParticleCount"));
            setMaxParticleCount(m24200l(bufferedReader, "maxParticleCount"));
            bufferedReader.readLine();
            this.f4101e.load(bufferedReader);
            bufferedReader.readLine();
            this.f4099d.load(bufferedReader);
            bufferedReader.readLine();
            this.f4095b.load(bufferedReader);
            bufferedReader.readLine();
            this.f4115o.load(bufferedReader);
            bufferedReader.readLine();
            this.f4116p.load(bufferedReader);
            bufferedReader.readLine();
            this.f4119s.load(bufferedReader);
            bufferedReader.readLine();
            this.f4117q.load(bufferedReader);
            bufferedReader.readLine();
            this.f4118r.load(bufferedReader);
            if (bufferedReader.readLine().trim().equals("- Scale -")) {
                this.f4103f.load(bufferedReader);
                this.f4105g.setActive(false);
            } else {
                this.f4103f.load(bufferedReader);
                bufferedReader.readLine();
                this.f4105g.load(bufferedReader);
            }
            bufferedReader.readLine();
            this.f4109i.load(bufferedReader);
            bufferedReader.readLine();
            this.f4110j.load(bufferedReader);
            bufferedReader.readLine();
            this.f4107h.load(bufferedReader);
            bufferedReader.readLine();
            this.f4111k.load(bufferedReader);
            bufferedReader.readLine();
            this.f4112l.load(bufferedReader);
            bufferedReader.readLine();
            this.f4114n.load(bufferedReader);
            bufferedReader.readLine();
            this.f4113m.load(bufferedReader);
            bufferedReader.readLine();
            this.f4096b0 = m24203i(bufferedReader, "attached");
            this.f4098c0 = m24203i(bufferedReader, "continuous");
            this.f4100d0 = m24203i(bufferedReader, "aligned");
            this.f4104f0 = m24203i(bufferedReader, "additive");
            this.f4102e0 = m24203i(bufferedReader, "behind");
            String readLine = bufferedReader.readLine();
            if (readLine.startsWith("premultipliedAlpha")) {
                this.f4106g0 = m24202j(readLine);
                readLine = bufferedReader.readLine();
            }
            if (readLine.startsWith("spriteMode")) {
                this.f4125y = SpriteMode.valueOf(m24198n(readLine));
                bufferedReader.readLine();
            }
            Array<String> array = new Array<>();
            while (true) {
                String readLine2 = bufferedReader.readLine();
                if (readLine2 == null || readLine2.isEmpty()) {
                    break;
                }
                array.add(readLine2);
            }
            setImagePaths(array);
        } catch (RuntimeException e) {
            if (this.f4071E == null) {
                throw e;
            }
            throw new RuntimeException("Error parsing emitter: " + this.f4071E, e);
        }
    }

    /* renamed from: o */
    public final void m24197o() {
        float f;
        RangedNumericValue rangedNumericValue = this.f4093a;
        if (rangedNumericValue.f4157a) {
            f = rangedNumericValue.newLowValue();
        } else {
            f = 0.0f;
        }
        this.f4092Z = f;
        this.f4094a0 = 0.0f;
        this.durationTimer -= this.duration;
        this.duration = this.f4097c.newLowValue();
        this.f4081O = (int) this.f4101e.newLowValue();
        this.f4082P = (int) this.f4101e.newHighValue();
        if (!this.f4101e.isRelative()) {
            this.f4082P -= this.f4081O;
        }
        if (!this.f4099d.f4133j) {
            m24209c();
        }
        if (!this.f4095b.f4133j) {
            m24210b();
        }
        this.f4088V = this.f4117q.newLowValue();
        this.f4089W = this.f4117q.newHighValue();
        if (!this.f4117q.isRelative()) {
            this.f4089W -= this.f4088V;
        }
        this.f4090X = this.f4118r.newLowValue();
        this.f4091Y = this.f4118r.newHighValue();
        if (!this.f4118r.isRelative()) {
            this.f4091Y -= this.f4090X;
        }
        this.f4078L = 0;
        ScaledNumericValue scaledNumericValue = this.f4110j;
        if (scaledNumericValue.f4157a && scaledNumericValue.f4162f.length > 1) {
            this.f4078L = 0 | 2;
        }
        if (this.f4109i.f4157a) {
            this.f4078L |= 8;
        }
        if (this.f4103f.f4162f.length > 1) {
            this.f4078L |= 1;
        }
        ScaledNumericValue scaledNumericValue2 = this.f4105g;
        if (scaledNumericValue2.f4157a && scaledNumericValue2.f4162f.length > 1) {
            this.f4078L |= 1;
        }
        ScaledNumericValue scaledNumericValue3 = this.f4107h;
        if (scaledNumericValue3.f4157a && scaledNumericValue3.f4162f.length > 1) {
            this.f4078L |= 4;
        }
        if (this.f4111k.f4157a) {
            this.f4078L |= 16;
        }
        if (this.f4112l.f4157a) {
            this.f4078L |= 32;
        }
        if (this.f4114n.f4132d.length > 1) {
            this.f4078L |= 64;
        }
        if (this.f4125y == SpriteMode.animated) {
            this.f4078L |= 128;
        }
    }

    /* renamed from: p */
    public final boolean m24196p(Particle particle, float f, int i) {
        float[] fArr;
        float f2;
        float f3;
        int i2 = particle.f4152v - i;
        if (i2 <= 0) {
            return false;
        }
        particle.f4152v = i2;
        float f4 = 1.0f;
        float f5 = 1.0f - (i2 / particle.f4151u);
        int i3 = this.f4078L;
        if ((i3 & 1) != 0) {
            if (this.f4105g.f4157a) {
                particle.setScale(particle.f4153w + (particle.f4154x * this.f4103f.getScale(f5)), particle.f4155y + (particle.f4156z * this.f4105g.getScale(f5)));
            } else {
                particle.setScale(particle.f4153w + (particle.f4154x * this.f4103f.getScale(f5)));
            }
        }
        if ((i3 & 8) != 0) {
            float scale = (particle.f4137C + (particle.f4138D * this.f4109i.getScale(f5))) * f;
            if ((i3 & 2) != 0) {
                float scale2 = particle.f4139E + (particle.f4140F * this.f4110j.getScale(f5));
                f2 = MathUtils.cosDeg(scale2) * scale;
                f3 = scale * MathUtils.sinDeg(scale2);
                if ((i3 & 4) != 0) {
                    float scale3 = particle.f4135A + (particle.f4136B * this.f4107h.getScale(f5));
                    if (this.f4100d0) {
                        scale3 += scale2;
                    }
                    particle.setRotation(scale3);
                }
            } else {
                f2 = scale * particle.f4141G;
                f3 = scale * particle.f4142H;
                if (this.f4100d0 || (i3 & 4) != 0) {
                    float scale4 = particle.f4135A + (particle.f4136B * this.f4107h.getScale(f5));
                    if (this.f4100d0) {
                        scale4 += particle.f4139E;
                    }
                    particle.setRotation(scale4);
                }
            }
            if ((i3 & 16) != 0) {
                f2 += (particle.f4145K + (particle.f4146L * this.f4111k.getScale(f5))) * f;
            }
            if ((i3 & 32) != 0) {
                f3 += (particle.f4147M + (particle.f4148N * this.f4112l.getScale(f5))) * f;
            }
            particle.translate(f2, f3);
        } else if ((i3 & 4) != 0) {
            particle.setRotation(particle.f4135A + (particle.f4136B * this.f4107h.getScale(f5)));
        }
        if ((i3 & 64) != 0) {
            fArr = this.f4114n.getColor(f5);
        } else {
            fArr = particle.f4149O;
        }
        if (this.f4106g0) {
            if (this.f4104f0) {
                f4 = 0.0f;
            }
            float scale5 = particle.f4143I + (particle.f4144J * this.f4113m.getScale(f5));
            particle.setColor(fArr[0] * scale5, fArr[1] * scale5, fArr[2] * scale5, scale5 * f4);
        } else {
            particle.setColor(fArr[0], fArr[1], fArr[2], particle.f4143I + (particle.f4144J * this.f4113m.getScale(f5)));
        }
        if ((i3 & 128) != 0) {
            int i4 = this.f4124x.size;
            int min = Math.min((int) (f5 * i4), i4 - 1);
            if (particle.f4150P != min) {
                Sprite sprite = this.f4124x.get(min);
                float width = particle.getWidth();
                float height = particle.getHeight();
                particle.setRegion(sprite);
                particle.setSize(sprite.getWidth(), sprite.getHeight());
                particle.setOrigin(sprite.getOriginX(), sprite.getOriginY());
                particle.translate((width - sprite.getWidth()) / 2.0f, (height - sprite.getHeight()) / 2.0f);
                particle.f4150P = min;
            }
        }
        return true;
    }

    public void preAllocateParticles() {
        if (!this.f4124x.isEmpty()) {
            int i = 0;
            while (true) {
                Particle[] particleArr = this.f4126z;
                if (i < particleArr.length) {
                    if (particleArr[i] == null) {
                        Particle m24204h = m24204h(this.f4124x.first());
                        particleArr[i] = m24204h;
                        m24204h.flip(this.f4076J, this.f4077K);
                    }
                    i++;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalStateException("ParticleEmitter.setSprites() must have been called before preAllocateParticles()");
        }
    }

    public void save(Writer writer) {
        writer.write(this.f4071E + "\n");
        writer.write("- Delay -\n");
        this.f4093a.save(writer);
        writer.write("- Duration - \n");
        this.f4097c.save(writer);
        writer.write("- Count - \n");
        writer.write("min: " + this.f4067A + "\n");
        writer.write("max: " + this.f4068B + "\n");
        writer.write("- Emission - \n");
        this.f4101e.save(writer);
        writer.write("- Life - \n");
        this.f4099d.save(writer);
        writer.write("- Life Offset - \n");
        this.f4095b.save(writer);
        writer.write("- X Offset - \n");
        this.f4115o.save(writer);
        writer.write("- Y Offset - \n");
        this.f4116p.save(writer);
        writer.write("- Spawn Shape - \n");
        this.f4119s.save(writer);
        writer.write("- Spawn Width - \n");
        this.f4117q.save(writer);
        writer.write("- Spawn Height - \n");
        this.f4118r.save(writer);
        writer.write("- X Scale - \n");
        this.f4103f.save(writer);
        writer.write("- Y Scale - \n");
        this.f4105g.save(writer);
        writer.write("- Velocity - \n");
        this.f4109i.save(writer);
        writer.write("- Angle - \n");
        this.f4110j.save(writer);
        writer.write("- Rotation - \n");
        this.f4107h.save(writer);
        writer.write("- Wind - \n");
        this.f4111k.save(writer);
        writer.write("- Gravity - \n");
        this.f4112l.save(writer);
        writer.write("- Tint - \n");
        this.f4114n.save(writer);
        writer.write("- Transparency - \n");
        this.f4113m.save(writer);
        writer.write("- Options - \n");
        writer.write("attached: " + this.f4096b0 + "\n");
        writer.write("continuous: " + this.f4098c0 + "\n");
        writer.write("aligned: " + this.f4100d0 + "\n");
        writer.write("additive: " + this.f4104f0 + "\n");
        writer.write("behind: " + this.f4102e0 + "\n");
        writer.write("premultipliedAlpha: " + this.f4106g0 + "\n");
        writer.write("spriteMode: " + this.f4125y.toString() + "\n");
        writer.write("- Image Paths -\n");
        Array.ArrayIterator<String> it = this.f4072F.iterator();
        while (it.hasNext()) {
            writer.write(it.next() + "\n");
        }
        writer.write("\n");
    }

    public void scaleMotion(float f) {
        if (f == 1.0f) {
            return;
        }
        for (RangedNumericValue rangedNumericValue : m24208d()) {
            rangedNumericValue.scale(f);
        }
    }

    public void scaleSize(float f, float f2) {
        if (f == 1.0f && f2 == 1.0f) {
            return;
        }
        for (RangedNumericValue rangedNumericValue : m24207e()) {
            rangedNumericValue.scale(f);
        }
        for (RangedNumericValue rangedNumericValue2 : m24206f()) {
            rangedNumericValue2.scale(f2);
        }
    }

    public void setFlip(boolean z, boolean z2) {
        this.f4076J = z;
        this.f4077K = z2;
        Particle[] particleArr = this.f4126z;
        if (particleArr == null) {
            return;
        }
        int length = particleArr.length;
        for (int i = 0; i < length; i++) {
            Particle particle = this.f4126z[i];
            if (particle != null) {
                particle.flip(z, z2);
            }
        }
    }

    public void setMaxParticleCount(int i) {
        this.f4068B = i;
        this.f4074H = new boolean[i];
        this.f4073G = 0;
        this.f4126z = new Particle[i];
    }

    public void setPosition(float f, float f2) {
        if (this.f4096b0) {
            float f3 = f - this.f4069C;
            float f4 = f2 - this.f4070D;
            boolean[] zArr = this.f4074H;
            int length = zArr.length;
            for (int i = 0; i < length; i++) {
                if (zArr[i]) {
                    this.f4126z[i].translate(f3, f4);
                }
            }
        }
        this.f4069C = f;
        this.f4070D = f2;
    }

    public void setSprites(Array<Sprite> array) {
        this.f4124x = array;
        if (array.size == 0) {
            return;
        }
        int length = this.f4126z.length;
        for (int i = 0; i < length; i++) {
            Particle particle = this.f4126z[i];
            if (particle != null) {
                Sprite sprite = null;
                int i2 = C11971.f4127a[this.f4125y.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 3) {
                            sprite = array.random();
                        }
                    } else {
                        float f = 1.0f - (particle.f4152v / particle.f4151u);
                        int i3 = array.size;
                        int min = Math.min((int) (f * i3), i3 - 1);
                        particle.f4150P = min;
                        sprite = array.get(min);
                    }
                } else {
                    sprite = array.first();
                }
                particle.setRegion(sprite);
                particle.setOrigin(sprite.getOriginX(), sprite.getOriginY());
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(float r9) {
        /*
            Method dump skipped, instructions count: 181
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g2d.ParticleEmitter.update(float):void");
    }

    /* renamed from: m */
    public static String m24199m(BufferedReader bufferedReader, String str) {
        String readLine = bufferedReader.readLine();
        if (readLine != null) {
            return m24198n(readLine);
        }
        throw new IOException("Missing value: " + str);
    }

    public void matchMotion(ParticleEmitter particleEmitter) {
        RangedNumericValue[] m24208d = m24208d();
        RangedNumericValue[] m24208d2 = particleEmitter.m24208d();
        for (int i = 0; i < m24208d.length; i++) {
            m24208d[i].set(m24208d2[i]);
        }
    }

    public void matchSize(ParticleEmitter particleEmitter) {
        matchXSize(particleEmitter);
        matchYSize(particleEmitter);
    }

    public void matchXSize(ParticleEmitter particleEmitter) {
        RangedNumericValue[] m24207e = m24207e();
        RangedNumericValue[] m24207e2 = particleEmitter.m24207e();
        for (int i = 0; i < m24207e.length; i++) {
            m24207e[i].set(m24207e2[i]);
        }
    }

    public void matchYSize(ParticleEmitter particleEmitter) {
        RangedNumericValue[] m24206f = m24206f();
        RangedNumericValue[] m24206f2 = particleEmitter.m24206f();
        for (int i = 0; i < m24206f.length; i++) {
            m24206f[i].set(m24206f2[i]);
        }
    }

    public void draw(Batch batch, float f) {
        float f2 = this.f4123w + (f * 1000.0f);
        this.f4123w = f2;
        if (f2 < 1.0f) {
            draw(batch);
            return;
        }
        int i = (int) f2;
        float f3 = i;
        this.f4123w = f2 - f3;
        if (this.f4106g0) {
            batch.setBlendFunction(1, GL20.GL_ONE_MINUS_SRC_ALPHA);
        } else if (this.f4104f0) {
            batch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
        } else {
            batch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        }
        Particle[] particleArr = this.f4126z;
        boolean[] zArr = this.f4074H;
        int i2 = this.f4073G;
        int length = zArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (zArr[i3]) {
                Particle particle = particleArr[i3];
                if (m24196p(particle, f, i)) {
                    particle.draw(batch);
                } else {
                    zArr[i3] = false;
                    i2--;
                }
            }
        }
        this.f4073G = i2;
        if (this.f4108h0 && (this.f4104f0 || this.f4106g0)) {
            batch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        }
        float f4 = this.f4094a0;
        if (f4 < this.f4092Z) {
            this.f4094a0 = f4 + f3;
            return;
        }
        if (this.f4075I) {
            this.f4075I = false;
            addParticle();
        }
        float f5 = this.durationTimer;
        if (f5 < this.duration) {
            this.durationTimer = f5 + f3;
        } else if (!this.f4098c0 || this.f4079M) {
            return;
        } else {
            m24197o();
        }
        this.f4083Q += i;
        float scale = this.f4081O + (this.f4082P * this.f4101e.getScale(this.durationTimer / this.duration));
        if (scale > 0.0f) {
            float f6 = 1000.0f / scale;
            int i4 = this.f4083Q;
            if (i4 >= f6) {
                int min = Math.min((int) (i4 / f6), this.f4068B - i2);
                this.f4083Q = (int) (((int) (this.f4083Q - (min * f6))) % f6);
                addParticles(min);
            }
        }
        int i5 = this.f4067A;
        if (i2 < i5) {
            addParticles(i5 - i2);
        }
    }

    public ParticleEmitter(BufferedReader bufferedReader) {
        this.f4093a = new RangedNumericValue();
        this.f4095b = new IndependentScaledNumericValue();
        this.f4097c = new RangedNumericValue();
        this.f4099d = new IndependentScaledNumericValue();
        this.f4101e = new ScaledNumericValue();
        this.f4103f = new ScaledNumericValue();
        this.f4105g = new ScaledNumericValue();
        this.f4107h = new ScaledNumericValue();
        this.f4109i = new ScaledNumericValue();
        this.f4110j = new ScaledNumericValue();
        this.f4111k = new ScaledNumericValue();
        this.f4112l = new ScaledNumericValue();
        this.f4113m = new ScaledNumericValue();
        this.f4114n = new GradientColorValue();
        this.f4115o = new ScaledNumericValue();
        this.f4116p = new ScaledNumericValue();
        this.f4117q = new ScaledNumericValue();
        this.f4118r = new ScaledNumericValue();
        this.f4119s = new SpawnShapeValue();
        this.f4125y = SpriteMode.single;
        this.f4068B = 4;
        this.duration = 1.0f;
        this.f4104f0 = true;
        this.f4106g0 = false;
        this.f4108h0 = true;
        m24205g();
        load(bufferedReader);
    }

    public ParticleEmitter(ParticleEmitter particleEmitter) {
        this.f4093a = new RangedNumericValue();
        this.f4095b = new IndependentScaledNumericValue();
        this.f4097c = new RangedNumericValue();
        this.f4099d = new IndependentScaledNumericValue();
        this.f4101e = new ScaledNumericValue();
        this.f4103f = new ScaledNumericValue();
        this.f4105g = new ScaledNumericValue();
        this.f4107h = new ScaledNumericValue();
        this.f4109i = new ScaledNumericValue();
        this.f4110j = new ScaledNumericValue();
        this.f4111k = new ScaledNumericValue();
        this.f4112l = new ScaledNumericValue();
        this.f4113m = new ScaledNumericValue();
        this.f4114n = new GradientColorValue();
        this.f4115o = new ScaledNumericValue();
        this.f4116p = new ScaledNumericValue();
        this.f4117q = new ScaledNumericValue();
        this.f4118r = new ScaledNumericValue();
        this.f4119s = new SpawnShapeValue();
        this.f4125y = SpriteMode.single;
        this.f4068B = 4;
        this.duration = 1.0f;
        this.f4104f0 = true;
        this.f4106g0 = false;
        this.f4108h0 = true;
        this.f4124x = new Array<>(particleEmitter.f4124x);
        this.f4071E = particleEmitter.f4071E;
        this.f4072F = new Array<>(particleEmitter.f4072F);
        setMaxParticleCount(particleEmitter.f4068B);
        this.f4067A = particleEmitter.f4067A;
        this.f4093a.load(particleEmitter.f4093a);
        this.f4097c.load(particleEmitter.f4097c);
        this.f4101e.load(particleEmitter.f4101e);
        this.f4099d.load(particleEmitter.f4099d);
        this.f4095b.load(particleEmitter.f4095b);
        this.f4103f.load(particleEmitter.f4103f);
        this.f4105g.load(particleEmitter.f4105g);
        this.f4107h.load(particleEmitter.f4107h);
        this.f4109i.load(particleEmitter.f4109i);
        this.f4110j.load(particleEmitter.f4110j);
        this.f4111k.load(particleEmitter.f4111k);
        this.f4112l.load(particleEmitter.f4112l);
        this.f4113m.load(particleEmitter.f4113m);
        this.f4114n.load(particleEmitter.f4114n);
        this.f4115o.load(particleEmitter.f4115o);
        this.f4116p.load(particleEmitter.f4116p);
        this.f4117q.load(particleEmitter.f4117q);
        this.f4118r.load(particleEmitter.f4118r);
        this.f4119s.load(particleEmitter.f4119s);
        this.f4096b0 = particleEmitter.f4096b0;
        this.f4098c0 = particleEmitter.f4098c0;
        this.f4100d0 = particleEmitter.f4100d0;
        this.f4102e0 = particleEmitter.f4102e0;
        this.f4104f0 = particleEmitter.f4104f0;
        this.f4106g0 = particleEmitter.f4106g0;
        this.f4108h0 = particleEmitter.f4108h0;
        this.f4125y = particleEmitter.f4125y;
        setPosition(particleEmitter.getX(), particleEmitter.getY());
    }
}
