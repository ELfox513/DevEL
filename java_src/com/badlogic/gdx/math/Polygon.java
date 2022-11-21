package com.badlogic.gdx.math;
/* loaded from: classes.dex */
public class Polygon implements Shape2D {

    /* renamed from: a */
    public float[] f5489a;

    /* renamed from: b */
    public float[] f5490b;

    /* renamed from: d */
    public float f5491d;

    /* renamed from: k */
    public float f5492k;

    /* renamed from: p */
    public float f5493p;

    /* renamed from: q */
    public float f5494q;

    /* renamed from: r */
    public float f5495r;

    /* renamed from: s */
    public float f5496s;

    /* renamed from: t */
    public float f5497t;

    /* renamed from: u */
    public boolean f5498u;

    /* renamed from: v */
    public Rectangle f5499v;

    public Polygon() {
        this.f5496s = 1.0f;
        this.f5497t = 1.0f;
        this.f5498u = true;
        this.f5489a = new float[0];
    }

    @Override // com.badlogic.gdx.math.Shape2D
    public boolean contains(float f, float f2) {
        float[] transformedVertices = getTransformedVertices();
        int length = transformedVertices.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            float f3 = transformedVertices[i];
            float f4 = transformedVertices[i + 1];
            int i3 = i + 2;
            float f5 = transformedVertices[i3 % length];
            float f6 = transformedVertices[(i + 3) % length];
            if (((f4 <= f2 && f2 < f6) || (f6 <= f2 && f2 < f4)) && f < (((f5 - f3) / (f6 - f4)) * (f2 - f4)) + f3) {
                i2++;
            }
            i = i3;
        }
        return (i2 & 1) == 1;
    }

    public void dirty() {
        this.f5498u = true;
    }

    public float getOriginX() {
        return this.f5493p;
    }

    public float getOriginY() {
        return this.f5494q;
    }

    public float getRotation() {
        return this.f5495r;
    }

    public float getScaleX() {
        return this.f5496s;
    }

    public float getScaleY() {
        return this.f5497t;
    }

    public int getVertexCount() {
        return this.f5489a.length / 2;
    }

    public float[] getVertices() {
        return this.f5489a;
    }

    public float getX() {
        return this.f5491d;
    }

    public float getY() {
        return this.f5492k;
    }

    public void setVertices(float[] fArr) {
        if (fArr.length >= 6) {
            this.f5489a = fArr;
            this.f5498u = true;
            return;
        }
        throw new IllegalArgumentException("polygons must contain at least 3 points.");
    }

    public float[] getTransformedVertices() {
        boolean z;
        if (!this.f5498u) {
            return this.f5490b;
        }
        this.f5498u = false;
        float[] fArr = this.f5489a;
        float[] fArr2 = this.f5490b;
        if (fArr2 == null || fArr2.length != fArr.length) {
            this.f5490b = new float[fArr.length];
        }
        float[] fArr3 = this.f5490b;
        float f = this.f5491d;
        float f2 = this.f5492k;
        float f3 = this.f5493p;
        float f4 = this.f5494q;
        float f5 = this.f5496s;
        float f6 = this.f5497t;
        if (f5 == 1.0f && f6 == 1.0f) {
            z = false;
        } else {
            z = true;
        }
        float f7 = this.f5495r;
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

    public Vector2 getVertex(int i, Vector2 vector2) {
        if (i >= 0 && i <= getVertexCount()) {
            float[] transformedVertices = getTransformedVertices();
            int i2 = i * 2;
            return vector2.set(transformedVertices[i2], transformedVertices[i2 + 1]);
        }
        throw new IllegalArgumentException("the vertex " + i + " doesn't exist");
    }

    public void rotate(float f) {
        this.f5495r += f;
        this.f5498u = true;
    }

    public void scale(float f) {
        this.f5496s += f;
        this.f5497t += f;
        this.f5498u = true;
    }

    public void setOrigin(float f, float f2) {
        this.f5493p = f;
        this.f5494q = f2;
        this.f5498u = true;
    }

    public void setPosition(float f, float f2) {
        this.f5491d = f;
        this.f5492k = f2;
        this.f5498u = true;
    }

    public void setRotation(float f) {
        this.f5495r = f;
        this.f5498u = true;
    }

    public void setScale(float f, float f2) {
        this.f5496s = f;
        this.f5497t = f2;
        this.f5498u = true;
    }

    public void setVertex(int i, float f, float f2) {
        if (i >= 0) {
            float[] fArr = this.f5489a;
            if (i <= (fArr.length / 2) - 1) {
                int i2 = i * 2;
                fArr[i2] = f;
                fArr[i2 + 1] = f2;
                this.f5498u = true;
                return;
            }
        }
        throw new IllegalArgumentException("the vertex " + i + " doesn't exist");
    }

    public void translate(float f, float f2) {
        this.f5491d += f;
        this.f5492k += f2;
        this.f5498u = true;
    }

    public float area() {
        float[] transformedVertices = getTransformedVertices();
        return GeometryUtils.polygonArea(transformedVertices, 0, transformedVertices.length);
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
        if (this.f5499v == null) {
            this.f5499v = new Rectangle();
        }
        Rectangle rectangle = this.f5499v;
        rectangle.f5523x = f;
        rectangle.f5524y = f3;
        rectangle.width = f5 - f;
        rectangle.height = f4 - f3;
        return rectangle;
    }

    public Vector2 getCentroid(Vector2 vector2) {
        float[] transformedVertices = getTransformedVertices();
        return GeometryUtils.polygonCentroid(transformedVertices, 0, transformedVertices.length, vector2);
    }

    public Polygon(float[] fArr) {
        this.f5496s = 1.0f;
        this.f5497t = 1.0f;
        this.f5498u = true;
        if (fArr.length >= 6) {
            this.f5489a = fArr;
            return;
        }
        throw new IllegalArgumentException("polygons must contain at least 3 points.");
    }

    @Override // com.badlogic.gdx.math.Shape2D
    public boolean contains(Vector2 vector2) {
        return contains(vector2.f5527x, vector2.f5528y);
    }
}
