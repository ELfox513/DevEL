package com.prineside.tdi2.shapes;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.FloatArray;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Shape;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public class ChainLightning extends Shape {
    public static final float AVERAGE_SEGMENT_LENGTH = 16.0f;

    /* renamed from: G */
    public static final Color f11269G = Color.WHITE.cpy();

    /* renamed from: H */
    public static final Vector2 f11270H = new Vector2();

    /* renamed from: I */
    public static final Color f11271I = new Color(-1);
    public static final float MAX_SEGMENT_WIDTH = 44.8f;
    public static final float MIN_SEGMENT_WIDTH = 8.96f;

    /* renamed from: A */
    public float f11272A;

    /* renamed from: B */
    public boolean f11273B;

    /* renamed from: C */
    public boolean f11274C;

    /* renamed from: D */
    public float f11275D;

    /* renamed from: E */
    public final Color f11276E;

    /* renamed from: F */
    public final FloatArray f11277F;

    /* renamed from: a */
    public float f11278a;

    /* renamed from: b */
    public float f11279b;

    /* renamed from: d */
    public float f11280d;

    /* renamed from: k */
    public float f11281k;

    /* renamed from: p */
    public float f11282p;

    /* renamed from: q */
    public float f11283q;

    /* renamed from: r */
    public final Vector2 f11284r;

    /* renamed from: s */
    public final Vector2 f11285s;

    /* renamed from: t */
    public float f11286t;

    /* renamed from: u */
    public final MultiLine f11287u;

    /* renamed from: v */
    public int f11288v;

    /* renamed from: w */
    public float[] f11289w;

    /* renamed from: x */
    public boolean f11290x;

    /* renamed from: y */
    public float f11291y;

    /* renamed from: z */
    public float f11292z;

    /* loaded from: classes2.dex */
    public static class ChainLightningFactory extends Shape.Factory<ChainLightning> {
        @Override // com.prineside.tdi2.Shape.Factory
        /* renamed from: b */
        public ChainLightning mo21056a() {
            return new ChainLightning();
        }

        @Override // com.prineside.tdi2.Shape.Factory
        public void setup() {
        }
    }

    public void free() {
        Game.f8589i.shapeManager.f10141F.CHAIN_LIGHTNING.free(this);
    }

    public Color getColor() {
        return this.f11276E;
    }

    public float getExistsTime() {
        return this.f11275D;
    }

    public float getStartX() {
        return this.f11281k;
    }

    public float getStartY() {
        return this.f11282p;
    }

    public boolean isFinished() {
        return this.f11275D > this.f11272A;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f11290x = false;
        this.f11274C = false;
    }

    public void setFadingToEnd(boolean z) {
        this.f11274C = z;
    }

    public void setTexture(TextureRegion textureRegion, boolean z, boolean z2) {
        this.f11287u.setTextureRegion(textureRegion, z, z2);
    }

    public ChainLightning() {
        this.f11284r = new Vector2();
        this.f11285s = new Vector2();
        this.f11286t = 1.0f;
        this.f11288v = 0;
        this.f11276E = new Color(-1);
        this.f11277F = new FloatArray(8);
        this.f11287u = (MultiLine) Game.f8589i.shapeManager.getFactory(ShapeType.MULTI_LINE).obtain();
        reset();
    }

    /* renamed from: a */
    public final void m21083a() {
        float f;
        this.f11277F.clear();
        float f2 = 0.0f;
        this.f11277F.add(0.0f);
        this.f11277F.add(1.0f);
        int i = this.f11288v;
        for (int i2 = 2; i2 < i; i2++) {
            this.f11277F.add(FastRandom.getFloat());
        }
        this.f11277F.sort();
        Vector2 vector2 = f11270H;
        Vector2 vector22 = this.f11284r;
        Vector2 nor = vector2.set(vector22.f5528y, -vector22.f5527x).nor();
        float f3 = this.f11286t * 80.0f;
        float f4 = 1.0f / f3;
        float[] fArr = this.f11289w;
        fArr[0] = this.f11281k;
        fArr[1] = this.f11282p;
        int i3 = 1;
        while (true) {
            int i4 = this.f11288v;
            if (i3 < i4) {
                float[] fArr2 = this.f11277F.items;
                float f5 = fArr2[i3];
                float f6 = this.f11283q * f4 * (f5 - fArr2[i3 - 1]);
                if (f5 > 0.95f) {
                    f = (1.0f - f5) * 20.0f;
                } else {
                    f = 1.0f;
                }
                float f7 = (-f3) + (FastRandom.getFloat() * 2.0f * f3);
                f2 = (f7 - ((f7 - f2) * (1.0f - f6))) * f;
                float[] fArr3 = this.f11289w;
                int i5 = i3 * 4;
                float f8 = this.f11281k;
                Vector2 vector23 = this.f11284r;
                fArr3[i5] = f8 + (vector23.f5527x * f5) + (nor.f5527x * f2);
                fArr3[i5 + 1] = this.f11282p + (f5 * vector23.f5528y) + (nor.f5528y * f2);
                i3++;
            } else {
                this.f11287u.setNodes(this.f11289w, i4);
                Color color = f11269G;
                color.f3889a = 1.0f;
                this.f11287u.setTint(color);
                this.f11290x = true;
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Shape, com.prineside.tdi2.ProjectileTrail
    public void draw(Batch batch) {
        if (!this.f11290x) {
            return;
        }
        this.f11287u.draw(batch);
    }

    public void setColor(Color color) {
        this.f11276E.set(color);
        int i = 0;
        if (this.f11274C) {
            f11271I.set(color);
            while (true) {
                int i2 = this.f11288v;
                if (i < i2) {
                    Color color2 = f11271I;
                    color2.f3889a = color.f3889a * (1.0f - (i / i2));
                    this.f11289w[(i * 4) + 3] = color2.toFloatBits();
                    i++;
                } else {
                    return;
                }
            }
        } else {
            float floatBits = color.toFloatBits();
            while (i < this.f11288v) {
                this.f11289w[(i * 4) + 3] = floatBits;
                i++;
            }
        }
    }

    public void setPosition(float f, float f2, float f3, float f4) {
        this.f11281k = f;
        this.f11282p = f2;
        this.f11283q = PMath.getDistanceBetweenPoints(f, f2, f3, f4);
        float f5 = f3 - f;
        float f6 = f4 - f2;
        this.f11284r.set(f5, f6);
        this.f11285s.set(f5, f6);
        this.f11285s.nor();
        int i = (int) (this.f11283q / this.f11278a);
        if (i < 3) {
            i = 3;
        }
        if (this.f11288v < i) {
            this.f11289w = new float[i * 4];
        }
        this.f11288v = i;
        int i2 = 0;
        while (true) {
            int i3 = this.f11288v;
            if (i2 < i3) {
                float f7 = (i2 / i3) * 2.0f;
                if (f7 > 1.0f) {
                    f7 = 1.0f - (f7 - 1.0f);
                }
                float f8 = this.f11279b;
                this.f11289w[(i2 * 4) + 2] = f8 + ((this.f11280d - f8) * f7);
                i2++;
            } else {
                setColor(this.f11276E);
                return;
            }
        }
    }

    public void setup(float f, float f2, float f3, float f4, float f5, float f6, boolean z, float f7, float f8, float f9) {
        this.f11292z = f5;
        this.f11275D = 0.0f;
        this.f11272A = f6;
        this.f11273B = z;
        this.f11279b = f7;
        this.f11280d = f8;
        this.f11278a = f9;
        this.f11286t = f9 / 16.0f;
        setPosition(f, f2, f3, f4);
    }

    public void update(float f) {
        float f2 = this.f11291y + f;
        this.f11291y = f2;
        float f3 = 0.0f;
        if (!this.f11290x || f2 > this.f11292z) {
            m21083a();
            this.f11291y = 0.0f;
        }
        float f4 = this.f11275D + f;
        this.f11275D = f4;
        if (this.f11273B) {
            float f5 = 1.0f - (f4 / this.f11272A);
            if (f5 >= 0.0f) {
                f3 = f5;
            }
            Color color = f11269G;
            color.f3889a = f3;
            this.f11287u.setTint(color);
        }
    }
}
