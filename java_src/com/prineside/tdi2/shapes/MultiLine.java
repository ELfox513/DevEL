package com.prineside.tdi2.shapes;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.NumberUtils;
import com.prineside.tdi2.Shape;
/* loaded from: classes2.dex */
public class MultiLine extends Shape {

    /* renamed from: y */
    public static final Color f11335y = new Color();

    /* renamed from: z */
    public static final Vector2 f11336z = new Vector2();

    /* renamed from: a */
    public float[] f11337a;

    /* renamed from: b */
    public float[] f11338b;

    /* renamed from: d */
    public int f11339d;

    /* renamed from: k */
    public final Color f11340k;

    /* renamed from: p */
    public boolean f11341p;

    /* renamed from: q */
    public TextureRegion f11342q;

    /* renamed from: r */
    public boolean f11343r;

    /* renamed from: s */
    public boolean f11344s;

    /* renamed from: t */
    public float f11345t;

    /* renamed from: u */
    public float f11346u;

    /* renamed from: v */
    public float f11347v;

    /* renamed from: w */
    public float f11348w;

    /* renamed from: x */
    public float f11349x;

    /* loaded from: classes2.dex */
    public static class MultiLineFactory extends Shape.Factory<MultiLine> {
        @Override // com.prineside.tdi2.Shape.Factory
        /* renamed from: b */
        public MultiLine mo21056a() {
            return new MultiLine();
        }

        @Override // com.prineside.tdi2.Shape.Factory
        public void setup() {
        }
    }

    /* renamed from: b */
    public final void m21075b() {
        for (int i = 1; i < this.f11339d; i++) {
            m21076a(i);
        }
        this.f11341p = false;
    }

    /* renamed from: c */
    public final int m21074c(int i) {
        if (i < 3) {
            return 2;
        }
        return (i - 1) * 2;
    }

    public boolean getFlip() {
        return this.f11344s;
    }

    public boolean getMirror() {
        return this.f11343r;
    }

    public int getNodeCount() {
        return this.f11339d;
    }

    public TextureRegion getTextureRegion() {
        return this.f11342q;
    }

    public Color getTint() {
        return this.f11340k;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f11339d = 0;
        this.f11342q = null;
        this.f11343r = false;
        this.f11341p = true;
    }

    public void setNodes(float[] fArr, int i) {
        m21073d(i);
        this.f11339d = i;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 4;
            int i4 = i2 * 6;
            float[] fArr2 = this.f11338b;
            fArr2[i4] = fArr[i3];
            fArr2[i4 + 1] = fArr[i3 + 1];
            fArr2[i4 + 2] = fArr[i3 + 2] / 2.0f;
            fArr2[i4 + 3] = fArr[i3 + 3];
        }
        updateAllNodes();
        this.f11341p = true;
    }

    public void setTint(Color color) {
        if (color == null) {
            color = Color.WHITE;
        }
        Color color2 = this.f11340k;
        if (color2.f3889a == color.f3889a && color2.f3892r == color.f3892r && color2.f3891g == color.f3891g && color2.f3890b == color.f3890b) {
            return;
        }
        color2.set(color);
        this.f11341p = true;
    }

    public void updateAllNodes() {
        for (int i = 0; i < this.f11339d; i++) {
            m21070g(i);
        }
        for (int i2 = 1; i2 < this.f11339d; i2++) {
            m21071f(i2);
        }
        this.f11341p = true;
    }

    public MultiLine() {
        this.f11337a = new float[0];
        this.f11338b = new float[0];
        this.f11339d = 0;
        this.f11340k = Color.WHITE.cpy();
        this.f11341p = true;
    }

    /* renamed from: a */
    public final void m21076a(int i) {
        int i2 = i * 6;
        int i3 = i - 1;
        int floatToIntColor = NumberUtils.floatToIntColor(this.f11338b[i2 + 3]);
        Color color = this.f11340k;
        float intToFloatColor = NumberUtils.intToFloatColor(((int) ((floatToIntColor & 255) * color.f3892r)) + (((int) (((floatToIntColor & 65280) >> 8) * color.f3891g)) << 8) + (((int) (((floatToIntColor & 16711680) >> 16) * color.f3890b)) << 16) + (((int) (((floatToIntColor & (-16777216)) >>> 24) * color.f3889a)) << 24));
        int floatToIntColor2 = NumberUtils.floatToIntColor(this.f11338b[(i3 * 6) + 3]);
        Color color2 = this.f11340k;
        float intToFloatColor2 = NumberUtils.intToFloatColor(((int) ((floatToIntColor2 & 255) * color2.f3892r)) + (((int) (((65280 & floatToIntColor2) >> 8) * color2.f3891g)) << 8) + (((int) (((floatToIntColor2 & 16711680) >> 16) * color2.f3890b)) << 16) + (((int) (((floatToIntColor2 & (-16777216)) >>> 24) * color2.f3889a)) << 24));
        int i4 = i3 * 2;
        int i5 = i4 * 20;
        float[] fArr = this.f11337a;
        fArr[i5 + 2] = intToFloatColor2;
        fArr[i5 + 7] = intToFloatColor;
        fArr[i5 + 12] = intToFloatColor;
        fArr[i5 + 17] = intToFloatColor2;
        int i6 = (i4 + 1) * 20;
        fArr[i6 + 2] = intToFloatColor2;
        fArr[i6 + 7] = intToFloatColor;
        fArr[i6 + 12] = intToFloatColor;
        fArr[i6 + 17] = intToFloatColor2;
    }

    public void appendNode(float f, float f2, float f3, float f4, boolean z) {
        m21073d(this.f11339d + 1);
        int i = this.f11339d;
        int i2 = i * 6;
        this.f11339d = i + 1;
        float[] fArr = this.f11338b;
        fArr[i2] = f;
        fArr[i2 + 1] = f2;
        fArr[i2 + 2] = f3 / 2.0f;
        fArr[i2 + 3] = f4;
        if (z) {
            if (i != 0) {
                m21072e(i - 1);
            }
            m21072e(i);
        }
        if (i != 0) {
            m21076a(i);
        }
    }

    @Override // com.prineside.tdi2.Shape, com.prineside.tdi2.ProjectileTrail
    public void draw(Batch batch) {
        if (this.f11339d < 2) {
            return;
        }
        if (this.f11341p) {
            m21075b();
        }
        batch.draw(this.f11342q.getTexture(), this.f11337a, 0, m21074c(this.f11339d) * 20);
    }

    /* renamed from: f */
    public final void m21071f(int i) {
        if (i == 0) {
            return;
        }
        int i2 = i * 6;
        int i3 = i - 1;
        int i4 = i3 * 6;
        int i5 = i3 * 2;
        int i6 = i5 * 20;
        float[] fArr = this.f11337a;
        float[] fArr2 = this.f11338b;
        fArr[i6] = fArr2[i4];
        int i7 = i4 + 1;
        fArr[i6 + 1] = fArr2[i7];
        fArr[i6 + 3] = this.f11346u;
        float f = this.f11348w;
        fArr[i6 + 4] = f;
        fArr[i6 + 5] = fArr2[i2];
        int i8 = i2 + 1;
        fArr[i6 + 6] = fArr2[i8];
        fArr[i6 + 8] = this.f11345t;
        fArr[i6 + 9] = f;
        Vector2 vector2 = f11336z;
        int i9 = i2 + 4;
        int i10 = i2 + 5;
        int i11 = i2 + 2;
        vector2.set(fArr2[i9], fArr2[i10]).scl(this.f11338b[i11]);
        float[] fArr3 = this.f11337a;
        float[] fArr4 = this.f11338b;
        fArr3[i6 + 10] = fArr4[i2] + vector2.f5527x;
        fArr3[i6 + 11] = fArr4[i8] + vector2.f5528y;
        fArr3[i6 + 13] = this.f11345t;
        fArr3[i6 + 14] = this.f11347v;
        int i12 = i4 + 4;
        int i13 = i4 + 5;
        int i14 = i4 + 2;
        vector2.set(fArr4[i12], fArr4[i13]).scl(this.f11338b[i14]);
        float[] fArr5 = this.f11337a;
        float[] fArr6 = this.f11338b;
        fArr5[i6 + 15] = fArr6[i4] + vector2.f5527x;
        fArr5[i6 + 16] = fArr6[i7] + vector2.f5528y;
        fArr5[i6 + 18] = this.f11346u;
        fArr5[i6 + 19] = this.f11347v;
        int i15 = (i5 + 1) * 20;
        vector2.set(fArr6[i12], fArr6[i13]).scl(-this.f11338b[i14]);
        float[] fArr7 = this.f11337a;
        float[] fArr8 = this.f11338b;
        fArr7[i15] = fArr8[i4] + vector2.f5527x;
        fArr7[i15 + 1] = fArr8[i7] + vector2.f5528y;
        fArr7[i15 + 3] = this.f11346u;
        fArr7[i15 + 4] = this.f11349x;
        vector2.set(fArr8[i9], fArr8[i10]).scl(-this.f11338b[i11]);
        float[] fArr9 = this.f11337a;
        float[] fArr10 = this.f11338b;
        fArr9[i15 + 5] = fArr10[i2] + vector2.f5527x;
        fArr9[i15 + 6] = fArr10[i8] + vector2.f5528y;
        float f2 = this.f11345t;
        fArr9[i15 + 8] = f2;
        fArr9[i15 + 9] = this.f11349x;
        fArr9[i15 + 10] = fArr10[i2];
        fArr9[i15 + 11] = fArr10[i8];
        fArr9[i15 + 13] = f2;
        float f3 = this.f11348w;
        fArr9[i15 + 14] = f3;
        fArr9[i15 + 15] = fArr10[i4];
        fArr9[i15 + 16] = fArr10[i7];
        fArr9[i15 + 18] = this.f11346u;
        fArr9[i15 + 19] = f3;
        this.f11341p = true;
    }

    /* renamed from: g */
    public final void m21070g(int i) {
        float f;
        float f2;
        int i2 = this.f11339d;
        if (i2 < 2) {
            return;
        }
        int i3 = i * 6;
        if (i == 0) {
            int i4 = i3 + 6;
            float[] fArr = this.f11338b;
            f2 = fArr[i4] - fArr[i3];
            f = fArr[i4 + 1] - fArr[i3 + 1];
        } else if (i == i2 - 1) {
            int i5 = i3 - 6;
            float[] fArr2 = this.f11338b;
            f2 = fArr2[i3] - fArr2[i5];
            f = fArr2[i3 + 1] - fArr2[i5 + 1];
        } else {
            int i6 = i3 - 6;
            int i7 = i3 + 6;
            float[] fArr3 = this.f11338b;
            f = fArr3[i7 + 1] - fArr3[i6 + 1];
            f2 = fArr3[i7] - fArr3[i6];
        }
        Vector2 vector2 = f11336z;
        vector2.set(f2, f).nor();
        float[] fArr4 = this.f11338b;
        fArr4[i3 + 4] = -vector2.f5528y;
        fArr4[i3 + 5] = vector2.f5527x;
    }

    public void setNodeColor(int i, float f) {
        this.f11338b[(i * 6) + 3] = f;
        if (i != 0) {
            m21076a(i);
        }
    }

    public void setNodePosition(int i, float f, float f2) {
        int i2 = i * 6;
        float[] fArr = this.f11338b;
        fArr[i2] = f;
        fArr[i2 + 1] = f2;
    }

    public void setTextureRegion(TextureRegion textureRegion, boolean z, boolean z2) {
        this.f11342q = textureRegion;
        this.f11343r = z;
        this.f11344s = z2;
        this.f11345t = textureRegion.getU();
        this.f11346u = textureRegion.getU2();
        if (z) {
            if (!z2) {
                this.f11348w = textureRegion.getV();
                this.f11347v = textureRegion.getV2();
            } else {
                this.f11348w = textureRegion.getV2();
                this.f11347v = textureRegion.getV();
            }
            this.f11349x = this.f11347v;
        } else {
            this.f11348w = textureRegion.getV() + ((textureRegion.getV2() - textureRegion.getV()) * 0.5f);
            if (z2) {
                this.f11347v = textureRegion.getV2();
                this.f11349x = textureRegion.getV();
            } else {
                this.f11347v = textureRegion.getV();
                this.f11349x = textureRegion.getV2();
            }
        }
        for (int i = 1; i < this.f11339d; i++) {
            m21071f(i);
        }
    }

    /* renamed from: d */
    public final void m21073d(int i) {
        int m21074c = m21074c(i) * 20;
        if (this.f11337a.length < m21074c) {
            float[] fArr = new float[MathUtils.nextPowerOfTwo(m21074c)];
            float[] fArr2 = this.f11337a;
            System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
            this.f11337a = fArr;
        }
        int i2 = i * 6;
        if (this.f11338b.length < i2) {
            float[] fArr3 = new float[MathUtils.nextPowerOfTwo(i2)];
            float[] fArr4 = this.f11338b;
            System.arraycopy(fArr4, 0, fArr3, 0, fArr4.length);
            this.f11338b = fArr3;
            this.f11341p = true;
        }
    }

    /* renamed from: e */
    public final void m21072e(int i) {
        m21070g(i);
        if (i != 0) {
            m21071f(i);
        }
        if (i != this.f11339d - 1) {
            m21071f(i + 1);
        }
        this.f11341p = true;
    }

    public void setTint(Color color, float f) {
        if (color == null) {
            color = Color.WHITE;
        }
        Color color2 = this.f11340k;
        if (color2.f3889a == f && color2.f3892r == color.f3892r && color2.f3891g == color.f3891g && color2.f3890b == color.f3890b) {
            return;
        }
        color2.set(color);
        this.f11340k.f3889a = f;
        this.f11341p = true;
    }

    public void setNodes(float[] fArr) {
        setNodes(fArr, fArr.length / 4);
    }
}
