package com.badlogic.gdx.math.collision;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes.dex */
public class BoundingBox implements Serializable {

    /* renamed from: d */
    public static final Vector3 f5541d = new Vector3();
    public final Vector3 min = new Vector3();
    public final Vector3 max = new Vector3();

    /* renamed from: a */
    public final Vector3 f5542a = new Vector3();

    /* renamed from: b */
    public final Vector3 f5543b = new Vector3();

    public BoundingBox() {
        clr();
    }

    /* renamed from: a */
    public static final float m23901a(float f, float f2) {
        return f > f2 ? f : f2;
    }

    /* renamed from: b */
    public static final float m23900b(float f, float f2) {
        return f > f2 ? f2 : f;
    }

    public BoundingBox clr() {
        return set(this.min.set(0.0f, 0.0f, 0.0f), this.max.set(0.0f, 0.0f, 0.0f));
    }

    public boolean contains(BoundingBox boundingBox) {
        if (isValid()) {
            Vector3 vector3 = this.min;
            float f = vector3.f5533x;
            Vector3 vector32 = boundingBox.min;
            if (f <= vector32.f5533x && vector3.f5534y <= vector32.f5534y && vector3.f5535z <= vector32.f5535z) {
                Vector3 vector33 = this.max;
                float f2 = vector33.f5533x;
                Vector3 vector34 = boundingBox.max;
                if (f2 < vector34.f5533x || vector33.f5534y < vector34.f5534y || vector33.f5535z < vector34.f5535z) {
                }
            }
            return false;
        }
        return true;
    }

    public BoundingBox ext(Vector3 vector3) {
        Vector3 vector32 = this.min;
        Vector3 vector33 = vector32.set(m23900b(vector32.f5533x, vector3.f5533x), m23900b(this.min.f5534y, vector3.f5534y), m23900b(this.min.f5535z, vector3.f5535z));
        Vector3 vector34 = this.max;
        return set(vector33, vector34.set(Math.max(vector34.f5533x, vector3.f5533x), Math.max(this.max.f5534y, vector3.f5534y), Math.max(this.max.f5535z, vector3.f5535z)));
    }

    public Vector3 getCenter(Vector3 vector3) {
        return vector3.set(this.f5542a);
    }

    public float getCenterX() {
        return this.f5542a.f5533x;
    }

    public float getCenterY() {
        return this.f5542a.f5534y;
    }

    public float getCenterZ() {
        return this.f5542a.f5535z;
    }

    public Vector3 getCorner000(Vector3 vector3) {
        Vector3 vector32 = this.min;
        return vector3.set(vector32.f5533x, vector32.f5534y, vector32.f5535z);
    }

    public Vector3 getCorner001(Vector3 vector3) {
        Vector3 vector32 = this.min;
        return vector3.set(vector32.f5533x, vector32.f5534y, this.max.f5535z);
    }

    public Vector3 getCorner010(Vector3 vector3) {
        Vector3 vector32 = this.min;
        return vector3.set(vector32.f5533x, this.max.f5534y, vector32.f5535z);
    }

    public Vector3 getCorner011(Vector3 vector3) {
        float f = this.min.f5533x;
        Vector3 vector32 = this.max;
        return vector3.set(f, vector32.f5534y, vector32.f5535z);
    }

    public Vector3 getCorner100(Vector3 vector3) {
        float f = this.max.f5533x;
        Vector3 vector32 = this.min;
        return vector3.set(f, vector32.f5534y, vector32.f5535z);
    }

    public Vector3 getCorner101(Vector3 vector3) {
        Vector3 vector32 = this.max;
        return vector3.set(vector32.f5533x, this.min.f5534y, vector32.f5535z);
    }

    public Vector3 getCorner110(Vector3 vector3) {
        Vector3 vector32 = this.max;
        return vector3.set(vector32.f5533x, vector32.f5534y, this.min.f5535z);
    }

    public Vector3 getCorner111(Vector3 vector3) {
        Vector3 vector32 = this.max;
        return vector3.set(vector32.f5533x, vector32.f5534y, vector32.f5535z);
    }

    public float getDepth() {
        return this.f5543b.f5535z;
    }

    public Vector3 getDimensions(Vector3 vector3) {
        return vector3.set(this.f5543b);
    }

    public float getHeight() {
        return this.f5543b.f5534y;
    }

    public Vector3 getMax(Vector3 vector3) {
        return vector3.set(this.max);
    }

    public Vector3 getMin(Vector3 vector3) {
        return vector3.set(this.min);
    }

    public float getWidth() {
        return this.f5543b.f5533x;
    }

    public boolean isValid() {
        Vector3 vector3 = this.min;
        float f = vector3.f5533x;
        Vector3 vector32 = this.max;
        return f <= vector32.f5533x && vector3.f5534y <= vector32.f5534y && vector3.f5535z <= vector32.f5535z;
    }

    public BoundingBox set(BoundingBox boundingBox) {
        return set(boundingBox.min, boundingBox.max);
    }

    public String toString() {
        return "[" + this.min + "|" + this.max + "]";
    }

    public boolean contains(Vector3 vector3) {
        Vector3 vector32 = this.min;
        float f = vector32.f5533x;
        float f2 = vector3.f5533x;
        if (f <= f2) {
            Vector3 vector33 = this.max;
            if (vector33.f5533x >= f2) {
                float f3 = vector32.f5534y;
                float f4 = vector3.f5534y;
                if (f3 <= f4 && vector33.f5534y >= f4) {
                    float f5 = vector32.f5535z;
                    float f6 = vector3.f5535z;
                    if (f5 <= f6 && vector33.f5535z >= f6) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public BoundingBox inf() {
        this.min.set(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        this.max.set(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        this.f5542a.set(0.0f, 0.0f, 0.0f);
        this.f5543b.set(0.0f, 0.0f, 0.0f);
        return this;
    }

    public BoundingBox mul(Matrix4 matrix4) {
        Vector3 vector3 = this.min;
        float f = vector3.f5533x;
        float f2 = vector3.f5534y;
        float f3 = vector3.f5535z;
        Vector3 vector32 = this.max;
        float f4 = vector32.f5533x;
        float f5 = vector32.f5534y;
        float f6 = vector32.f5535z;
        inf();
        Vector3 vector33 = f5541d;
        ext(vector33.set(f, f2, f3).mul(matrix4));
        ext(vector33.set(f, f2, f6).mul(matrix4));
        ext(vector33.set(f, f5, f3).mul(matrix4));
        ext(vector33.set(f, f5, f6).mul(matrix4));
        ext(vector33.set(f4, f2, f3).mul(matrix4));
        ext(vector33.set(f4, f2, f6).mul(matrix4));
        ext(vector33.set(f4, f5, f3).mul(matrix4));
        ext(vector33.set(f4, f5, f6).mul(matrix4));
        return this;
    }

    public BoundingBox set(Vector3 vector3, Vector3 vector32) {
        Vector3 vector33 = this.min;
        float f = vector3.f5533x;
        float f2 = vector32.f5533x;
        if (f >= f2) {
            f = f2;
        }
        float f3 = vector3.f5534y;
        float f4 = vector32.f5534y;
        if (f3 >= f4) {
            f3 = f4;
        }
        float f5 = vector3.f5535z;
        float f6 = vector32.f5535z;
        if (f5 >= f6) {
            f5 = f6;
        }
        vector33.set(f, f3, f5);
        Vector3 vector34 = this.max;
        float f7 = vector3.f5533x;
        float f8 = vector32.f5533x;
        if (f7 <= f8) {
            f7 = f8;
        }
        float f9 = vector3.f5534y;
        float f10 = vector32.f5534y;
        if (f9 <= f10) {
            f9 = f10;
        }
        float f11 = vector3.f5535z;
        float f12 = vector32.f5535z;
        if (f11 <= f12) {
            f11 = f12;
        }
        vector34.set(f7, f9, f11);
        update();
        return this;
    }

    public void update() {
        this.f5542a.set(this.min).add(this.max).scl(0.5f);
        this.f5543b.set(this.max).sub(this.min);
    }

    public boolean intersects(BoundingBox boundingBox) {
        if (!isValid()) {
            return false;
        }
        float abs = Math.abs(this.f5542a.f5533x - boundingBox.f5542a.f5533x);
        float f = (this.f5543b.f5533x / 2.0f) + (boundingBox.f5543b.f5533x / 2.0f);
        float abs2 = Math.abs(this.f5542a.f5534y - boundingBox.f5542a.f5534y);
        float f2 = (this.f5543b.f5534y / 2.0f) + (boundingBox.f5543b.f5534y / 2.0f);
        float abs3 = Math.abs(this.f5542a.f5535z - boundingBox.f5542a.f5535z);
        float f3 = (this.f5543b.f5535z / 2.0f) + (boundingBox.f5543b.f5535z / 2.0f);
        if (abs > f || abs2 > f2 || abs3 > f3) {
            return false;
        }
        return true;
    }

    public BoundingBox ext(BoundingBox boundingBox) {
        Vector3 vector3 = this.min;
        Vector3 vector32 = vector3.set(m23900b(vector3.f5533x, boundingBox.min.f5533x), m23900b(this.min.f5534y, boundingBox.min.f5534y), m23900b(this.min.f5535z, boundingBox.min.f5535z));
        Vector3 vector33 = this.max;
        return set(vector32, vector33.set(m23901a(vector33.f5533x, boundingBox.max.f5533x), m23901a(this.max.f5534y, boundingBox.max.f5534y), m23901a(this.max.f5535z, boundingBox.max.f5535z)));
    }

    public BoundingBox(BoundingBox boundingBox) {
        set(boundingBox);
    }

    public BoundingBox ext(Vector3 vector3, float f) {
        Vector3 vector32 = this.min;
        Vector3 vector33 = vector32.set(m23900b(vector32.f5533x, vector3.f5533x - f), m23900b(this.min.f5534y, vector3.f5534y - f), m23900b(this.min.f5535z, vector3.f5535z - f));
        Vector3 vector34 = this.max;
        return set(vector33, vector34.set(m23901a(vector34.f5533x, vector3.f5533x + f), m23901a(this.max.f5534y, vector3.f5534y + f), m23901a(this.max.f5535z, vector3.f5535z + f)));
    }

    public BoundingBox set(Vector3[] vector3Arr) {
        inf();
        for (Vector3 vector3 : vector3Arr) {
            ext(vector3);
        }
        return this;
    }

    public BoundingBox ext(BoundingBox boundingBox, Matrix4 matrix4) {
        Vector3 vector3 = f5541d;
        Vector3 vector32 = boundingBox.min;
        ext(vector3.set(vector32.f5533x, vector32.f5534y, vector32.f5535z).mul(matrix4));
        Vector3 vector33 = boundingBox.min;
        ext(vector3.set(vector33.f5533x, vector33.f5534y, boundingBox.max.f5535z).mul(matrix4));
        Vector3 vector34 = boundingBox.min;
        ext(vector3.set(vector34.f5533x, boundingBox.max.f5534y, vector34.f5535z).mul(matrix4));
        float f = boundingBox.min.f5533x;
        Vector3 vector35 = boundingBox.max;
        ext(vector3.set(f, vector35.f5534y, vector35.f5535z).mul(matrix4));
        float f2 = boundingBox.max.f5533x;
        Vector3 vector36 = boundingBox.min;
        ext(vector3.set(f2, vector36.f5534y, vector36.f5535z).mul(matrix4));
        Vector3 vector37 = boundingBox.max;
        ext(vector3.set(vector37.f5533x, boundingBox.min.f5534y, vector37.f5535z).mul(matrix4));
        Vector3 vector38 = boundingBox.max;
        ext(vector3.set(vector38.f5533x, vector38.f5534y, boundingBox.min.f5535z).mul(matrix4));
        Vector3 vector39 = boundingBox.max;
        ext(vector3.set(vector39.f5533x, vector39.f5534y, vector39.f5535z).mul(matrix4));
        return this;
    }

    public BoundingBox set(List<Vector3> list) {
        inf();
        for (Vector3 vector3 : list) {
            ext(vector3);
        }
        return this;
    }

    public BoundingBox(Vector3 vector3, Vector3 vector32) {
        set(vector3, vector32);
    }

    public BoundingBox ext(float f, float f2, float f3) {
        Vector3 vector3 = this.min;
        Vector3 vector32 = vector3.set(m23900b(vector3.f5533x, f), m23900b(this.min.f5534y, f2), m23900b(this.min.f5535z, f3));
        Vector3 vector33 = this.max;
        return set(vector32, vector33.set(m23901a(vector33.f5533x, f), m23901a(this.max.f5534y, f2), m23901a(this.max.f5535z, f3)));
    }
}
