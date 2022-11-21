package com.prineside.tdi2.shapes;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.NumberUtils;
import com.prineside.tdi2.Shape;
/* loaded from: classes2.dex */
public class StraightMultiLine extends Shape {

    /* renamed from: t */
    public static final Color f11384t = new Color();

    /* renamed from: u */
    public static final Vector2 f11385u = new Vector2();

    /* renamed from: v */
    public static final Vector2 f11386v = new Vector2();

    /* renamed from: w */
    public static final Vector2 f11387w = new Vector2();

    /* renamed from: x */
    public static final Vector2 f11388x = new Vector2();

    /* renamed from: a */
    public float[] f11389a;

    /* renamed from: b */
    public float[] f11390b;

    /* renamed from: d */
    public int f11391d;

    /* renamed from: k */
    public float f11392k;

    /* renamed from: p */
    public final Color f11393p;

    /* renamed from: q */
    public boolean f11394q;

    /* renamed from: r */
    public TextureRegion f11395r;

    /* renamed from: s */
    public TextureRegion f11396s;

    /* loaded from: classes2.dex */
    public static class StraightMultiLineFactory extends Shape.Factory<StraightMultiLine> {
        @Override // com.prineside.tdi2.Shape.Factory
        /* renamed from: b */
        public StraightMultiLine mo21056a() {
            return new StraightMultiLine();
        }

        @Override // com.prineside.tdi2.Shape.Factory
        public void setup() {
        }
    }

    /* renamed from: b */
    public final void m21062b() {
        for (int i = 1; i < this.f11391d; i++) {
            m21063a(i);
        }
        this.f11394q = false;
    }

    /* renamed from: c */
    public final int m21061c(int i) {
        if (i < 3) {
            return 3;
        }
        return (i - 1) * 3;
    }

    public TextureRegion getMainTexture() {
        return this.f11395r;
    }

    public int getNodeCount() {
        return this.f11391d;
    }

    public Color getTint() {
        return this.f11393p;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f11391d = 0;
        this.f11395r = null;
        this.f11396s = null;
        this.f11394q = true;
    }

    public void setNodes(float[] fArr, int i) {
        m21060d(i);
        this.f11391d = i;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 3;
            int i4 = i2 * 5;
            float[] fArr2 = this.f11390b;
            fArr2[i4] = fArr[i3];
            fArr2[i4 + 1] = fArr[i3 + 1];
            fArr2[i4 + 2] = fArr[i3 + 2];
        }
        updateAllNodes();
        this.f11394q = true;
    }

    public void setTint(Color color) {
        if (color == null) {
            color = Color.WHITE;
        }
        Color color2 = this.f11393p;
        if (color2.f3889a == color.f3889a && color2.f3892r == color.f3892r && color2.f3891g == color.f3891g && color2.f3890b == color.f3890b) {
            return;
        }
        color2.set(color);
        this.f11394q = true;
    }

    public void updateAllNodes() {
        for (int i = 1; i < this.f11391d; i++) {
            m21058f(i);
        }
        this.f11394q = true;
    }

    public StraightMultiLine() {
        this.f11389a = new float[0];
        this.f11390b = new float[0];
        this.f11391d = 0;
        this.f11392k = 16.0f;
        this.f11393p = Color.WHITE.cpy();
        this.f11394q = true;
    }

    /* renamed from: a */
    public final void m21063a(int i) {
        int i2 = i * 5;
        int i3 = i - 1;
        int floatToIntColor = NumberUtils.floatToIntColor(this.f11390b[i2 + 2]);
        Color color = this.f11393p;
        float intToFloatColor = NumberUtils.intToFloatColor(((int) ((floatToIntColor & 255) * color.f3892r)) + (((int) (((floatToIntColor & 65280) >> 8) * color.f3891g)) << 8) + (((int) (((floatToIntColor & 16711680) >> 16) * color.f3890b)) << 16) + (((int) (((floatToIntColor & (-16777216)) >>> 24) * color.f3889a)) << 24));
        int floatToIntColor2 = NumberUtils.floatToIntColor(this.f11390b[(i3 * 5) + 2]);
        Color color2 = this.f11393p;
        float intToFloatColor2 = NumberUtils.intToFloatColor(((int) ((floatToIntColor2 & 255) * color2.f3892r)) + (((int) (((65280 & floatToIntColor2) >> 8) * color2.f3891g)) << 8) + (((int) (((floatToIntColor2 & 16711680) >> 16) * color2.f3890b)) << 16) + (((int) (((floatToIntColor2 & (-16777216)) >>> 24) * color2.f3889a)) << 24));
        int i4 = i3 * 3;
        int i5 = i4 * 20;
        float[] fArr = this.f11389a;
        fArr[i5 + 2] = intToFloatColor2;
        fArr[i5 + 7] = intToFloatColor2;
        fArr[i5 + 12] = intToFloatColor2;
        fArr[i5 + 17] = intToFloatColor2;
        int i6 = (i4 + 1) * 20;
        fArr[i6 + 2] = intToFloatColor;
        fArr[i6 + 7] = intToFloatColor2;
        fArr[i6 + 12] = intToFloatColor2;
        fArr[i6 + 17] = intToFloatColor;
        int i7 = (i4 + 2) * 20;
        fArr[i7 + 2] = intToFloatColor;
        fArr[i7 + 7] = intToFloatColor;
        fArr[i7 + 12] = intToFloatColor;
        fArr[i7 + 17] = intToFloatColor;
    }

    public void appendNode(float f, float f2, float f3, boolean z) {
        m21060d(this.f11391d + 1);
        int i = this.f11391d;
        int i2 = i * 5;
        this.f11391d = i + 1;
        float[] fArr = this.f11390b;
        fArr[i2] = f;
        fArr[i2 + 1] = f2;
        fArr[i2 + 2] = f3;
        if (z) {
            if (i != 0) {
                m21059e(i - 1);
            }
            m21059e(i);
        }
        if (i != 0) {
            m21063a(i);
        }
    }

    @Override // com.prineside.tdi2.Shape, com.prineside.tdi2.ProjectileTrail
    public void draw(Batch batch) {
        if (this.f11391d < 2) {
            return;
        }
        if (this.f11394q) {
            m21062b();
        }
        batch.draw(this.f11395r.getTexture(), this.f11389a, 0, m21061c(this.f11391d) * 20);
    }

    /* renamed from: e */
    public final void m21059e(int i) {
        if (i != 0) {
            m21058f(i);
        }
        if (i != this.f11391d - 1) {
            m21058f(i + 1);
        }
        this.f11394q = true;
    }

    /* renamed from: f */
    public final void m21058f(int i) {
        if (i == 0) {
            return;
        }
        int i2 = i * 5;
        int i3 = i - 1;
        int i4 = i3 * 5;
        float u2 = this.f11395r.getU2();
        float u = this.f11395r.getU();
        float v2 = this.f11395r.getV2();
        float v = this.f11395r.getV();
        float u22 = this.f11396s.getU2();
        float u3 = this.f11396s.getU();
        float v22 = this.f11396s.getV2();
        float v3 = this.f11396s.getV();
        float[] fArr = this.f11390b;
        float f = fArr[i4];
        float f2 = fArr[i4 + 1];
        float f3 = fArr[i2];
        float f4 = fArr[i2 + 1];
        Vector2 vector2 = f11385u;
        vector2.set(f3 - f, f4 - f2).nor().scl(this.f11392k);
        Vector2 vector22 = f11386v;
        vector22.set(vector2).rotate90(1);
        int i5 = i3 * 3;
        int i6 = i5 * 20;
        Vector2 vector23 = f11387w;
        vector23.set(vector22).scl(-1.0f).add(f, f2);
        float[] fArr2 = this.f11389a;
        fArr2[i6] = vector23.f5527x;
        fArr2[i6 + 1] = vector23.f5528y;
        fArr2[i6 + 3] = u22;
        fArr2[i6 + 4] = v3;
        vector23.add(-vector2.f5527x, -vector2.f5528y);
        float[] fArr3 = this.f11389a;
        fArr3[i6 + 5] = vector23.f5527x;
        fArr3[i6 + 6] = vector23.f5528y;
        fArr3[i6 + 8] = u3;
        fArr3[i6 + 9] = v3;
        vector23.add(vector22.f5527x * 2.0f, vector22.f5528y * 2.0f);
        float[] fArr4 = this.f11389a;
        fArr4[i6 + 10] = vector23.f5527x;
        fArr4[i6 + 11] = vector23.f5528y;
        fArr4[i6 + 13] = u3;
        fArr4[i6 + 14] = v22;
        vector23.add(vector2.f5527x, vector2.f5528y);
        float[] fArr5 = this.f11389a;
        fArr5[i6 + 15] = vector23.f5527x;
        fArr5[i6 + 16] = vector23.f5528y;
        fArr5[i6 + 18] = u22;
        fArr5[i6 + 19] = v22;
        int i7 = (i5 + 1) * 20;
        vector23.set(vector22).scl(-1.0f).add(f3, f4);
        float[] fArr6 = this.f11389a;
        fArr6[i7] = vector23.f5527x;
        fArr6[i7 + 1] = vector23.f5528y;
        fArr6[i7 + 3] = u2;
        fArr6[i7 + 4] = v;
        vector23.set(vector22).scl(-1.0f).add(f, f2);
        float[] fArr7 = this.f11389a;
        fArr7[i7 + 5] = vector23.f5527x;
        fArr7[i7 + 6] = vector23.f5528y;
        fArr7[i7 + 8] = u;
        fArr7[i7 + 9] = v;
        vector23.add(vector22.f5527x * 2.0f, vector22.f5528y * 2.0f);
        float[] fArr8 = this.f11389a;
        fArr8[i7 + 10] = vector23.f5527x;
        fArr8[i7 + 11] = vector23.f5528y;
        fArr8[i7 + 13] = u;
        fArr8[i7 + 14] = v2;
        vector23.set(vector22).add(f3, f4);
        float[] fArr9 = this.f11389a;
        fArr9[i7 + 15] = vector23.f5527x;
        fArr9[i7 + 16] = vector23.f5528y;
        fArr9[i7 + 18] = u2;
        fArr9[i7 + 19] = v2;
        int i8 = (i5 + 2) * 20;
        vector23.set(vector22).scl(-1.0f).add(f3, f4).add(vector2.f5527x, vector2.f5528y);
        float[] fArr10 = this.f11389a;
        fArr10[i8] = vector23.f5527x;
        fArr10[i8 + 1] = vector23.f5528y;
        fArr10[i8 + 3] = u3;
        fArr10[i8 + 4] = v3;
        vector23.set(vector22).scl(-1.0f).add(f3, f4);
        float[] fArr11 = this.f11389a;
        fArr11[i8 + 5] = vector23.f5527x;
        fArr11[i8 + 6] = vector23.f5528y;
        fArr11[i8 + 8] = u22;
        fArr11[i8 + 9] = v3;
        vector23.add(vector22.f5527x * 2.0f, vector22.f5528y * 2.0f);
        float[] fArr12 = this.f11389a;
        fArr12[i8 + 10] = vector23.f5527x;
        fArr12[i8 + 11] = vector23.f5528y;
        fArr12[i8 + 13] = u22;
        fArr12[i8 + 14] = v22;
        vector23.add(vector2.f5527x, vector2.f5528y);
        float[] fArr13 = this.f11389a;
        fArr13[i8 + 15] = vector23.f5527x;
        fArr13[i8 + 16] = vector23.f5528y;
        fArr13[i8 + 18] = u3;
        fArr13[i8 + 19] = v22;
        this.f11394q = true;
    }

    public void setNodeColor(int i, float f) {
        this.f11390b[(i * 5) + 2] = f;
        if (i != 0) {
            m21063a(i);
        }
    }

    public void setNodePosition(int i, float f, float f2) {
        int i2 = i * 5;
        float[] fArr = this.f11390b;
        fArr[i2] = f;
        fArr[i2 + 1] = f2;
    }

    public void setTextureRegion(TextureRegion textureRegion, TextureRegion textureRegion2) {
        this.f11395r = textureRegion;
        this.f11396s = textureRegion2;
        for (int i = 1; i < this.f11391d; i++) {
            m21058f(i);
        }
    }

    public void setWidth(float f) {
        this.f11392k = f * 0.5f;
        updateAllNodes();
    }

    /* renamed from: d */
    public final void m21060d(int i) {
        int m21061c = m21061c(i) * 20;
        if (this.f11389a.length < m21061c) {
            float[] fArr = new float[MathUtils.nextPowerOfTwo(m21061c)];
            float[] fArr2 = this.f11389a;
            System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
            this.f11389a = fArr;
        }
        int i2 = i * 5;
        if (this.f11390b.length < i2) {
            float[] fArr3 = new float[MathUtils.nextPowerOfTwo(i2)];
            float[] fArr4 = this.f11390b;
            System.arraycopy(fArr4, 0, fArr3, 0, fArr4.length);
            this.f11390b = fArr3;
            this.f11394q = true;
        }
    }

    public void setTint(Color color, float f) {
        if (color == null) {
            color = Color.WHITE;
        }
        Color color2 = this.f11393p;
        if (color2.f3889a == f && color2.f3892r == color.f3892r && color2.f3891g == color.f3891g && color2.f3890b == color.f3890b) {
            return;
        }
        color2.set(color);
        this.f11393p.f3889a = f;
        this.f11394q = true;
    }

    public void setNodes(float[] fArr) {
        setNodes(fArr, fArr.length / 3);
    }
}
