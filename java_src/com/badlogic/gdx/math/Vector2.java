package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.NumberUtils;
import java.io.Serializable;
/* loaded from: classes.dex */
public class Vector2 implements Serializable, Vector<Vector2> {

    /* renamed from: X */
    public static final Vector2 f5525X = new Vector2(1.0f, 0.0f);

    /* renamed from: Y */
    public static final Vector2 f5526Y = new Vector2(0.0f, 1.0f);
    public static final Vector2 Zero = new Vector2(0.0f, 0.0f);

    /* renamed from: x */
    public float f5527x;

    /* renamed from: y */
    public float f5528y;

    public Vector2() {
    }

    public static float dot(float f, float f2, float f3, float f4) {
        return (f * f3) + (f2 * f4);
    }

    public static float dst2(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        return (f5 * f5) + (f6 * f6);
    }

    public static float len(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    public static float len2(float f, float f2) {
        return (f * f) + (f2 * f2);
    }

    @Deprecated
    public float angle() {
        float atan2 = ((float) Math.atan2(this.f5528y, this.f5527x)) * 57.295776f;
        return atan2 < 0.0f ? atan2 + 360.0f : atan2;
    }

    public float angleDeg() {
        float atan2 = ((float) Math.atan2(this.f5528y, this.f5527x)) * 57.295776f;
        return atan2 < 0.0f ? atan2 + 360.0f : atan2;
    }

    public float angleRad() {
        return (float) Math.atan2(this.f5528y, this.f5527x);
    }

    public float crs(Vector2 vector2) {
        return (this.f5527x * vector2.f5528y) - (this.f5528y * vector2.f5527x);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Vector2 vector2 = (Vector2) obj;
        return NumberUtils.floatToIntBits(this.f5527x) == NumberUtils.floatToIntBits(vector2.f5527x) && NumberUtils.floatToIntBits(this.f5528y) == NumberUtils.floatToIntBits(vector2.f5528y);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isUnit() {
        return isUnit(1.0E-9f);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isZero() {
        return this.f5527x == 0.0f && this.f5528y == 0.0f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public float len2() {
        float f = this.f5527x;
        float f2 = this.f5528y;
        return (f * f) + (f2 * f2);
    }

    @Deprecated
    public Vector2 rotate(float f) {
        return rotateRad(f * 0.017453292f);
    }

    @Deprecated
    public Vector2 rotateAround(Vector2 vector2, float f) {
        return sub(vector2).rotateDeg(f).add(vector2);
    }

    public Vector2 rotateAroundDeg(Vector2 vector2, float f) {
        return sub(vector2).rotateDeg(f).add(vector2);
    }

    public Vector2 rotateAroundRad(Vector2 vector2, float f) {
        return sub(vector2).rotateRad(f).add(vector2);
    }

    public Vector2 rotateDeg(float f) {
        return rotateRad(f * 0.017453292f);
    }

    public Vector2 rotateRad(float f) {
        double d = f;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        float f2 = this.f5527x;
        float f3 = this.f5528y;
        this.f5527x = (f2 * cos) - (f3 * sin);
        this.f5528y = (f2 * sin) + (f3 * cos);
        return this;
    }

    @Deprecated
    public Vector2 setAngle(float f) {
        return setAngleRad(f * 0.017453292f);
    }

    public Vector2 setAngleDeg(float f) {
        return setAngleRad(f * 0.017453292f);
    }

    public String toString() {
        return "(" + this.f5527x + "," + this.f5528y + ")";
    }

    public Vector2(float f, float f2) {
        this.f5527x = f;
        this.f5528y = f2;
    }

    public static float dst(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector2 add(Vector2 vector2) {
        this.f5527x += vector2.f5527x;
        this.f5528y += vector2.f5528y;
        return this;
    }

    @Deprecated
    public float angle(Vector2 vector2) {
        return ((float) Math.atan2(crs(vector2), dot(vector2))) * 57.295776f;
    }

    public float angleDeg(Vector2 vector2) {
        float atan2 = ((float) Math.atan2(vector2.crs(this), vector2.dot(this))) * 57.295776f;
        return atan2 < 0.0f ? atan2 + 360.0f : atan2;
    }

    public float angleRad(Vector2 vector2) {
        return (float) Math.atan2(vector2.crs(this), vector2.dot(this));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector2 clamp(float f, float f2) {
        float len2 = len2();
        if (len2 == 0.0f) {
            return this;
        }
        float f3 = f2 * f2;
        if (len2 > f3) {
            return scl((float) Math.sqrt(f3 / len2));
        }
        float f4 = f * f;
        return len2 < f4 ? scl((float) Math.sqrt(f4 / len2)) : this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector2 cpy() {
        return new Vector2(this);
    }

    public float crs(float f, float f2) {
        return (this.f5527x * f2) - (this.f5528y * f);
    }

    @Override // com.badlogic.gdx.math.Vector
    public float dot(Vector2 vector2) {
        return (this.f5527x * vector2.f5527x) + (this.f5528y * vector2.f5528y);
    }

    @Override // com.badlogic.gdx.math.Vector
    public float dst2(Vector2 vector2) {
        float f = vector2.f5527x - this.f5527x;
        float f2 = vector2.f5528y - this.f5528y;
        return (f * f) + (f2 * f2);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean epsilonEquals(Vector2 vector2, float f) {
        return vector2 != null && Math.abs(vector2.f5527x - this.f5527x) <= f && Math.abs(vector2.f5528y - this.f5528y) <= f;
    }

    public Vector2 fromString(String str) {
        int indexOf = str.indexOf(44, 1);
        if (indexOf != -1 && str.charAt(0) == '(' && str.charAt(str.length() - 1) == ')') {
            try {
                return set(Float.parseFloat(str.substring(1, indexOf)), Float.parseFloat(str.substring(indexOf + 1, str.length() - 1)));
            } catch (NumberFormatException unused) {
            }
        }
        throw new GdxRuntimeException("Malformed Vector2: " + str);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean hasOppositeDirection(Vector2 vector2) {
        return dot(vector2) < 0.0f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean hasSameDirection(Vector2 vector2) {
        return dot(vector2) > 0.0f;
    }

    public int hashCode() {
        return ((NumberUtils.floatToIntBits(this.f5527x) + 31) * 31) + NumberUtils.floatToIntBits(this.f5528y);
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector2 interpolate(Vector2 vector2, float f, Interpolation interpolation) {
        return lerp(vector2, interpolation.apply(f));
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isUnit(float f) {
        return Math.abs(len2() - 1.0f) < f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isZero(float f) {
        return len2() < f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public float len() {
        float f = this.f5527x;
        float f2 = this.f5528y;
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector2 lerp(Vector2 vector2, float f) {
        float f2 = 1.0f - f;
        this.f5527x = (this.f5527x * f2) + (vector2.f5527x * f);
        this.f5528y = (this.f5528y * f2) + (vector2.f5528y * f);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector2 limit(float f) {
        return limit2(f * f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector2 limit2(float f) {
        float len2 = len2();
        return len2 > f ? scl((float) Math.sqrt(f / len2)) : this;
    }

    public Vector2 mul(Matrix3 matrix3) {
        float f = this.f5527x;
        float[] fArr = matrix3.val;
        float f2 = this.f5528y;
        this.f5527x = (fArr[0] * f) + (fArr[3] * f2) + fArr[6];
        this.f5528y = (f * fArr[1]) + (f2 * fArr[4]) + fArr[7];
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector2 nor() {
        float len = len();
        if (len != 0.0f) {
            this.f5527x /= len;
            this.f5528y /= len;
        }
        return this;
    }

    public Vector2 rotate90(int i) {
        float f = this.f5527x;
        if (i >= 0) {
            this.f5527x = -this.f5528y;
            this.f5528y = f;
        } else {
            this.f5527x = this.f5528y;
            this.f5528y = -f;
        }
        return this;
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector2 set(Vector2 vector2) {
        this.f5527x = vector2.f5527x;
        this.f5528y = vector2.f5528y;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector2 setLength(float f) {
        return setLength2(f * f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector2 setLength2(float f) {
        float len2 = len2();
        return (len2 == 0.0f || len2 == f) ? this : scl((float) Math.sqrt(f / len2));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector2 setToRandomDirection() {
        float random = MathUtils.random(0.0f, 6.2831855f);
        return set(MathUtils.cos(random), MathUtils.sin(random));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector2 setZero() {
        this.f5527x = 0.0f;
        this.f5528y = 0.0f;
        return this;
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector2 sub(Vector2 vector2) {
        this.f5527x -= vector2.f5527x;
        this.f5528y -= vector2.f5528y;
        return this;
    }

    public float dot(float f, float f2) {
        return (this.f5527x * f) + (this.f5528y * f2);
    }

    @Override // com.badlogic.gdx.math.Vector
    public float dst(Vector2 vector2) {
        float f = vector2.f5527x - this.f5527x;
        float f2 = vector2.f5528y - this.f5528y;
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isCollinear(Vector2 vector2, float f) {
        return isOnLine(vector2, f) && dot(vector2) > 0.0f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isCollinearOpposite(Vector2 vector2, float f) {
        return isOnLine(vector2, f) && dot(vector2) < 0.0f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isOnLine(Vector2 vector2) {
        return MathUtils.isZero((this.f5527x * vector2.f5528y) - (this.f5528y * vector2.f5527x));
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isPerpendicular(Vector2 vector2) {
        return MathUtils.isZero(dot(vector2));
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector2 mulAdd(Vector2 vector2, float f) {
        this.f5527x += vector2.f5527x * f;
        this.f5528y += vector2.f5528y * f;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector2 scl(float f) {
        this.f5527x *= f;
        this.f5528y *= f;
        return this;
    }

    public Vector2 setAngleRad(float f) {
        set(len(), 0.0f);
        rotateRad(f);
        return this;
    }

    public Vector2 add(float f, float f2) {
        this.f5527x += f;
        this.f5528y += f2;
        return this;
    }

    public float dst2(float f, float f2) {
        float f3 = f - this.f5527x;
        float f4 = f2 - this.f5528y;
        return (f3 * f3) + (f4 * f4);
    }

    public boolean epsilonEquals(float f, float f2, float f3) {
        return Math.abs(f - this.f5527x) <= f3 && Math.abs(f2 - this.f5528y) <= f3;
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isCollinear(Vector2 vector2) {
        return isOnLine(vector2) && dot(vector2) > 0.0f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isCollinearOpposite(Vector2 vector2) {
        return isOnLine(vector2) && dot(vector2) < 0.0f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isOnLine(Vector2 vector2, float f) {
        return MathUtils.isZero((this.f5527x * vector2.f5528y) - (this.f5528y * vector2.f5527x), f);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isPerpendicular(Vector2 vector2, float f) {
        return MathUtils.isZero(dot(vector2), f);
    }

    public Vector2 set(float f, float f2) {
        this.f5527x = f;
        this.f5528y = f2;
        return this;
    }

    public Vector2 sub(float f, float f2) {
        this.f5527x -= f;
        this.f5528y -= f2;
        return this;
    }

    public Vector2(Vector2 vector2) {
        set(vector2);
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector2 mulAdd(Vector2 vector2, Vector2 vector22) {
        this.f5527x += vector2.f5527x * vector22.f5527x;
        this.f5528y += vector2.f5528y * vector22.f5528y;
        return this;
    }

    public Vector2 scl(float f, float f2) {
        this.f5527x *= f;
        this.f5528y *= f2;
        return this;
    }

    public float dst(float f, float f2) {
        float f3 = f - this.f5527x;
        float f4 = f2 - this.f5528y;
        return (float) Math.sqrt((f3 * f3) + (f4 * f4));
    }

    public boolean epsilonEquals(Vector2 vector2) {
        return epsilonEquals(vector2, 1.0E-6f);
    }

    public boolean epsilonEquals(float f, float f2) {
        return epsilonEquals(f, f2, 1.0E-6f);
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector2 scl(Vector2 vector2) {
        this.f5527x *= vector2.f5527x;
        this.f5528y *= vector2.f5528y;
        return this;
    }
}
