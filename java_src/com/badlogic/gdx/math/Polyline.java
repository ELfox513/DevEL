package com.badlogic.gdx.math;
/* loaded from: classes.dex */
public class Polyline implements Shape2D {

    /* renamed from: a */
    public float[] f5500a;

    /* renamed from: b */
    public float[] f5501b;

    /* renamed from: d */
    public float f5502d;

    /* renamed from: k */
    public float f5503k;

    /* renamed from: p */
    public float f5504p;

    /* renamed from: q */
    public float f5505q;

    /* renamed from: r */
    public float f5506r;

    /* renamed from: s */
    public float f5507s;

    /* renamed from: t */
    public float f5508t;

    /* renamed from: u */
    public float f5509u;

    /* renamed from: v */
    public float f5510v;

    /* renamed from: w */
    public boolean f5511w;

    /* renamed from: x */
    public boolean f5512x;

    /* renamed from: y */
    public boolean f5513y;

    /* renamed from: z */
    public Rectangle f5514z;

    public Polyline() {
        this.f5507s = 1.0f;
        this.f5508t = 1.0f;
        this.f5511w = true;
        this.f5512x = true;
        this.f5513y = true;
        this.f5500a = new float[0];
    }

    public void calculateLength() {
        this.f5512x = true;
    }

    public void calculateScaledLength() {
        this.f5511w = true;
    }

    @Override // com.badlogic.gdx.math.Shape2D
    public boolean contains(float f, float f2) {
        return false;
    }

    @Override // com.badlogic.gdx.math.Shape2D
    public boolean contains(Vector2 vector2) {
        return false;
    }

    public void dirty() {
        this.f5513y = true;
    }

    public float getOriginX() {
        return this.f5504p;
    }

    public float getOriginY() {
        return this.f5505q;
    }

    public float getRotation() {
        return this.f5506r;
    }

    public float getScaleX() {
        return this.f5507s;
    }

    public float getScaleY() {
        return this.f5508t;
    }

    public float[] getVertices() {
        return this.f5500a;
    }

    public float getX() {
        return this.f5502d;
    }

    public float getY() {
        return this.f5503k;
    }

    public void setVertices(float[] fArr) {
        if (fArr.length >= 4) {
            this.f5500a = fArr;
            this.f5513y = true;
            return;
        }
        throw new IllegalArgumentException("polylines must contain at least 2 points.");
    }

    public float getLength() {
        if (!this.f5512x) {
            return this.f5509u;
        }
        int i = 0;
        this.f5512x = false;
        this.f5509u = 0.0f;
        int length = this.f5500a.length - 2;
        while (i < length) {
            float[] fArr = this.f5500a;
            int i2 = i + 2;
            float f = fArr[i2] - fArr[i];
            float f2 = fArr[i + 1] - fArr[i + 3];
            this.f5509u += (float) Math.sqrt((f * f) + (f2 * f2));
            i = i2;
        }
        return this.f5509u;
    }

    public float getScaledLength() {
        if (!this.f5511w) {
            return this.f5510v;
        }
        int i = 0;
        this.f5511w = false;
        this.f5510v = 0.0f;
        int length = this.f5500a.length - 2;
        while (i < length) {
            float[] fArr = this.f5500a;
            int i2 = i + 2;
            float f = fArr[i2];
            float f2 = this.f5507s;
            float f3 = (f * f2) - (fArr[i] * f2);
            float f4 = fArr[i + 1];
            float f5 = this.f5508t;
            float f6 = (f4 * f5) - (fArr[i + 3] * f5);
            this.f5510v += (float) Math.sqrt((f3 * f3) + (f6 * f6));
            i = i2;
        }
        return this.f5510v;
    }

    public float[] getTransformedVertices() {
        boolean z;
        if (!this.f5513y) {
            return this.f5501b;
        }
        this.f5513y = false;
        float[] fArr = this.f5500a;
        float[] fArr2 = this.f5501b;
        if (fArr2 == null || fArr2.length < fArr.length) {
            this.f5501b = new float[fArr.length];
        }
        float[] fArr3 = this.f5501b;
        float f = this.f5502d;
        float f2 = this.f5503k;
        float f3 = this.f5504p;
        float f4 = this.f5505q;
        float f5 = this.f5507s;
        float f6 = this.f5508t;
        if (f5 == 1.0f && f6 == 1.0f) {
            z = false;
        } else {
            z = true;
        }
        float f7 = this.f5506r;
        float cosDeg = MathUtils.cosDeg(f7);
        float sinDeg = MathUtils.sinDeg(f7);
        int length = fArr.length;
        for (int i = 0; i < length; i += 2) {
            float f8 = fArr[i] - f3;
            int i2 = i + 1;
            float f9 = fArr[i2] - f4;
            if (z) {
                f8 *= f5;
                f9 *= f6;
            }
            if (f7 != 0.0f) {
                f9 = (f8 * sinDeg) + (f9 * cosDeg);
                f8 = (cosDeg * f8) - (sinDeg * f9);
            }
            fArr3[i] = f8 + f + f3;
            fArr3[i2] = f2 + f9 + f4;
        }
        return fArr3;
    }

    public void rotate(float f) {
        this.f5506r += f;
        this.f5513y = true;
    }

    public void scale(float f) {
        this.f5507s += f;
        this.f5508t += f;
        this.f5513y = true;
        this.f5511w = true;
    }

    public void setOrigin(float f, float f2) {
        this.f5504p = f;
        this.f5505q = f2;
        this.f5513y = true;
    }

    public void setPosition(float f, float f2) {
        this.f5502d = f;
        this.f5503k = f2;
        this.f5513y = true;
    }

    public void setRotation(float f) {
        this.f5506r = f;
        this.f5513y = true;
    }

    public void setScale(float f, float f2) {
        this.f5507s = f;
        this.f5508t = f2;
        this.f5513y = true;
        this.f5511w = true;
    }

    public void translate(float f, float f2) {
        this.f5502d += f;
        this.f5503k += f2;
        this.f5513y = true;
    }

    public Rectangle getBoundingRectangle() {
        float[] transformedVertices = getTransformedVertices();
        float f = transformedVertices[0];
        float f2 = transformedVertices[1];
        int length = transformedVertices.length;
        float f3 = f2;
        float f4 = f3;
        float f5 = f;
        for (int i = 2; i < length; i += 2) {
            float f6 = transformedVertices[i];
            if (f > f6) {
                f = f6;
            }
            float f7 = transformedVertices[i + 1];
            if (f3 > f7) {
                f3 = f7;
            }
            if (f5 < f6) {
                f5 = f6;
            }
            if (f4 < f7) {
                f4 = f7;
            }
        }
        if (this.f5514z == null) {
            this.f5514z = new Rectangle();
        }
        Rectangle rectangle = this.f5514z;
        rectangle.f5523x = f;
        rectangle.f5524y = f3;
        rectangle.width = f5 - f;
        rectangle.height = f4 - f3;
        return rectangle;
    }

    public Polyline(float[] fArr) {
        this.f5507s = 1.0f;
        this.f5508t = 1.0f;
        this.f5511w = true;
        this.f5512x = true;
        this.f5513y = true;
        if (fArr.length >= 4) {
            this.f5500a = fArr;
            return;
        }
        throw new IllegalArgumentException("polylines must contain at least 2 points.");
    }
}
