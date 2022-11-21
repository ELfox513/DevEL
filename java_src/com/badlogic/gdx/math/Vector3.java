package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.NumberUtils;
import java.io.Serializable;
/* loaded from: classes.dex */
public class Vector3 implements Serializable, Vector<Vector3> {

    /* renamed from: X */
    public static final Vector3 f5529X = new Vector3(1.0f, 0.0f, 0.0f);

    /* renamed from: Y */
    public static final Vector3 f5530Y = new Vector3(0.0f, 1.0f, 0.0f);

    /* renamed from: Z */
    public static final Vector3 f5531Z = new Vector3(0.0f, 0.0f, 1.0f);
    public static final Vector3 Zero = new Vector3(0.0f, 0.0f, 0.0f);

    /* renamed from: a */
    public static final Matrix4 f5532a = new Matrix4();

    /* renamed from: x */
    public float f5533x;

    /* renamed from: y */
    public float f5534y;

    /* renamed from: z */
    public float f5535z;

    public Vector3() {
    }

    public static float dot(float f, float f2, float f3, float f4, float f5, float f6) {
        return (f * f4) + (f2 * f5) + (f3 * f6);
    }

    public static float dst2(float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = f4 - f;
        float f8 = f5 - f2;
        float f9 = f6 - f3;
        return (f7 * f7) + (f8 * f8) + (f9 * f9);
    }

    public static float len(float f, float f2, float f3) {
        return (float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3));
    }

    public static float len2(float f, float f2, float f3) {
        return (f * f) + (f2 * f2) + (f3 * f3);
    }

    public Vector3 crs(Vector3 vector3) {
        float f = this.f5534y;
        float f2 = vector3.f5535z;
        float f3 = this.f5535z;
        float f4 = vector3.f5534y;
        float f5 = (f * f2) - (f3 * f4);
        float f6 = vector3.f5533x;
        float f7 = this.f5533x;
        return set(f5, (f3 * f6) - (f2 * f7), (f7 * f4) - (f * f6));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Vector3 vector3 = (Vector3) obj;
        return NumberUtils.floatToIntBits(this.f5533x) == NumberUtils.floatToIntBits(vector3.f5533x) && NumberUtils.floatToIntBits(this.f5534y) == NumberUtils.floatToIntBits(vector3.f5534y) && NumberUtils.floatToIntBits(this.f5535z) == NumberUtils.floatToIntBits(vector3.f5535z);
    }

    public boolean idt(Vector3 vector3) {
        return this.f5533x == vector3.f5533x && this.f5534y == vector3.f5534y && this.f5535z == vector3.f5535z;
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isUnit() {
        return isUnit(1.0E-9f);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isZero() {
        return this.f5533x == 0.0f && this.f5534y == 0.0f && this.f5535z == 0.0f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public float len2() {
        float f = this.f5533x;
        float f2 = this.f5534y;
        float f3 = (f * f) + (f2 * f2);
        float f4 = this.f5535z;
        return f3 + (f4 * f4);
    }

    public Vector3 mul(Matrix4 matrix4) {
        float[] fArr = matrix4.val;
        float f = this.f5533x;
        float f2 = this.f5534y;
        float f3 = (fArr[0] * f) + (fArr[4] * f2);
        float f4 = this.f5535z;
        return set(f3 + (fArr[8] * f4) + fArr[12], (fArr[1] * f) + (fArr[5] * f2) + (fArr[9] * f4) + fArr[13], (f * fArr[2]) + (f2 * fArr[6]) + (f4 * fArr[10]) + fArr[14]);
    }

    public Vector3 mul4x3(float[] fArr) {
        float f = this.f5533x;
        float f2 = this.f5534y;
        float f3 = (fArr[0] * f) + (fArr[3] * f2);
        float f4 = this.f5535z;
        return set(f3 + (fArr[6] * f4) + fArr[9], (fArr[1] * f) + (fArr[4] * f2) + (fArr[7] * f4) + fArr[10], (f * fArr[2]) + (f2 * fArr[5]) + (f4 * fArr[8]) + fArr[11]);
    }

    public Vector3 rotate(float f, float f2, float f3, float f4) {
        return mul(f5532a.setToRotation(f2, f3, f4, f));
    }

    public Vector3 rotateRad(float f, float f2, float f3, float f4) {
        return mul(f5532a.setToRotationRad(f2, f3, f4, f));
    }

    public String toString() {
        return "(" + this.f5533x + "," + this.f5534y + "," + this.f5535z + ")";
    }

    public Vector3 traMul(Matrix4 matrix4) {
        float[] fArr = matrix4.val;
        float f = this.f5533x;
        float f2 = this.f5534y;
        float f3 = (fArr[0] * f) + (fArr[1] * f2);
        float f4 = this.f5535z;
        return set(f3 + (fArr[2] * f4) + fArr[3], (fArr[4] * f) + (fArr[5] * f2) + (fArr[6] * f4) + fArr[7], (f * fArr[8]) + (f2 * fArr[9]) + (f4 * fArr[10]) + fArr[11]);
    }

    public Vector3(float f, float f2, float f3) {
        set(f, f2, f3);
    }

    public static float dst(float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = f4 - f;
        float f8 = f5 - f2;
        float f9 = f6 - f3;
        return (float) Math.sqrt((f7 * f7) + (f8 * f8) + (f9 * f9));
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector3 add(Vector3 vector3) {
        return add(vector3.f5533x, vector3.f5534y, vector3.f5535z);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector3 clamp(float f, float f2) {
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
    public Vector3 cpy() {
        return new Vector3(this);
    }

    public Vector3 crs(float f, float f2, float f3) {
        float f4 = this.f5534y;
        float f5 = this.f5535z;
        float f6 = (f4 * f3) - (f5 * f2);
        float f7 = this.f5533x;
        return set(f6, (f5 * f) - (f3 * f7), (f7 * f2) - (f4 * f));
    }

    @Override // com.badlogic.gdx.math.Vector
    public float dot(Vector3 vector3) {
        return (this.f5533x * vector3.f5533x) + (this.f5534y * vector3.f5534y) + (this.f5535z * vector3.f5535z);
    }

    @Override // com.badlogic.gdx.math.Vector
    public float dst2(Vector3 vector3) {
        float f = vector3.f5533x - this.f5533x;
        float f2 = vector3.f5534y - this.f5534y;
        float f3 = vector3.f5535z - this.f5535z;
        return (f * f) + (f2 * f2) + (f3 * f3);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean epsilonEquals(Vector3 vector3, float f) {
        return vector3 != null && Math.abs(vector3.f5533x - this.f5533x) <= f && Math.abs(vector3.f5534y - this.f5534y) <= f && Math.abs(vector3.f5535z - this.f5535z) <= f;
    }

    public Vector3 fromString(String str) {
        int indexOf = str.indexOf(44, 1);
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(44, i);
        if (indexOf != -1 && indexOf2 != -1 && str.charAt(0) == '(' && str.charAt(str.length() - 1) == ')') {
            try {
                return set(Float.parseFloat(str.substring(1, indexOf)), Float.parseFloat(str.substring(i, indexOf2)), Float.parseFloat(str.substring(indexOf2 + 1, str.length() - 1)));
            } catch (NumberFormatException unused) {
            }
        }
        throw new GdxRuntimeException("Malformed Vector3: " + str);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean hasOppositeDirection(Vector3 vector3) {
        return dot(vector3) < 0.0f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean hasSameDirection(Vector3 vector3) {
        return dot(vector3) > 0.0f;
    }

    public int hashCode() {
        return ((((NumberUtils.floatToIntBits(this.f5533x) + 31) * 31) + NumberUtils.floatToIntBits(this.f5534y)) * 31) + NumberUtils.floatToIntBits(this.f5535z);
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector3 interpolate(Vector3 vector3, float f, Interpolation interpolation) {
        return lerp(vector3, interpolation.apply(0.0f, 1.0f, f));
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
        float f = this.f5533x;
        float f2 = this.f5534y;
        float f3 = (f * f) + (f2 * f2);
        float f4 = this.f5535z;
        return (float) Math.sqrt(f3 + (f4 * f4));
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector3 lerp(Vector3 vector3, float f) {
        float f2 = this.f5533x;
        this.f5533x = f2 + ((vector3.f5533x - f2) * f);
        float f3 = this.f5534y;
        this.f5534y = f3 + ((vector3.f5534y - f3) * f);
        float f4 = this.f5535z;
        this.f5535z = f4 + (f * (vector3.f5535z - f4));
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector3 limit(float f) {
        return limit2(f * f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector3 limit2(float f) {
        float len2 = len2();
        if (len2 > f) {
            scl((float) Math.sqrt(f / len2));
        }
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector3 nor() {
        float len2 = len2();
        return (len2 == 0.0f || len2 == 1.0f) ? this : scl(1.0f / ((float) Math.sqrt(len2)));
    }

    public Vector3 prj(Matrix4 matrix4) {
        float[] fArr = matrix4.val;
        float f = this.f5533x;
        float f2 = this.f5534y;
        float f3 = (fArr[3] * f) + (fArr[7] * f2);
        float f4 = this.f5535z;
        float f5 = 1.0f / ((f3 + (fArr[11] * f4)) + fArr[15]);
        return set(((fArr[0] * f) + (fArr[4] * f2) + (fArr[8] * f4) + fArr[12]) * f5, ((fArr[1] * f) + (fArr[5] * f2) + (fArr[9] * f4) + fArr[13]) * f5, ((f * fArr[2]) + (f2 * fArr[6]) + (f4 * fArr[10]) + fArr[14]) * f5);
    }

    public Vector3 rot(Matrix4 matrix4) {
        float[] fArr = matrix4.val;
        float f = this.f5533x;
        float f2 = this.f5534y;
        float f3 = (fArr[0] * f) + (fArr[4] * f2);
        float f4 = this.f5535z;
        return set(f3 + (fArr[8] * f4), (fArr[1] * f) + (fArr[5] * f2) + (fArr[9] * f4), (f * fArr[2]) + (f2 * fArr[6]) + (f4 * fArr[10]));
    }

    public Vector3 rotate(Vector3 vector3, float f) {
        Matrix4 matrix4 = f5532a;
        matrix4.setToRotation(vector3, f);
        return mul(matrix4);
    }

    public Vector3 rotateRad(Vector3 vector3, float f) {
        Matrix4 matrix4 = f5532a;
        matrix4.setToRotationRad(vector3, f);
        return mul(matrix4);
    }

    public Vector3 set(float f, float f2, float f3) {
        this.f5533x = f;
        this.f5534y = f2;
        this.f5535z = f3;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector3 setLength(float f) {
        return setLength2(f * f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector3 setLength2(float f) {
        float len2 = len2();
        return (len2 == 0.0f || len2 == f) ? this : scl((float) Math.sqrt(f / len2));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector3 setToRandomDirection() {
        return setFromSpherical(MathUtils.random() * 6.2831855f, (float) Math.acos((MathUtils.random() * 2.0f) - 1.0f));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector3 setZero() {
        this.f5533x = 0.0f;
        this.f5534y = 0.0f;
        this.f5535z = 0.0f;
        return this;
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector3 sub(Vector3 vector3) {
        return sub(vector3.f5533x, vector3.f5534y, vector3.f5535z);
    }

    public Vector3 unrotate(Matrix4 matrix4) {
        float[] fArr = matrix4.val;
        float f = this.f5533x;
        float f2 = this.f5534y;
        float f3 = (fArr[0] * f) + (fArr[1] * f2);
        float f4 = this.f5535z;
        return set(f3 + (fArr[2] * f4), (fArr[4] * f) + (fArr[5] * f2) + (fArr[6] * f4), (f * fArr[8]) + (f2 * fArr[9]) + (f4 * fArr[10]));
    }

    public Vector3 untransform(Matrix4 matrix4) {
        float[] fArr = matrix4.val;
        float f = this.f5533x;
        float f2 = fArr[12];
        float f3 = f - f2;
        this.f5533x = f3;
        float f4 = this.f5534y - f2;
        this.f5534y = f4;
        float f5 = this.f5535z - f2;
        this.f5535z = f5;
        return set((fArr[0] * f3) + (fArr[1] * f4) + (fArr[2] * f5), (fArr[4] * f3) + (fArr[5] * f4) + (fArr[6] * f5), (f3 * fArr[8]) + (f4 * fArr[9]) + (f5 * fArr[10]));
    }

    public Vector3 add(float f, float f2, float f3) {
        return set(this.f5533x + f, this.f5534y + f2, this.f5535z + f3);
    }

    public float dot(float f, float f2, float f3) {
        return (this.f5533x * f) + (this.f5534y * f2) + (this.f5535z * f3);
    }

    @Override // com.badlogic.gdx.math.Vector
    public float dst(Vector3 vector3) {
        float f = vector3.f5533x - this.f5533x;
        float f2 = vector3.f5534y - this.f5534y;
        float f3 = vector3.f5535z - this.f5535z;
        return (float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3));
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isCollinear(Vector3 vector3, float f) {
        return isOnLine(vector3, f) && hasSameDirection(vector3);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isCollinearOpposite(Vector3 vector3, float f) {
        return isOnLine(vector3, f) && hasOppositeDirection(vector3);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isOnLine(Vector3 vector3, float f) {
        float f2 = this.f5534y;
        float f3 = vector3.f5535z;
        float f4 = this.f5535z;
        float f5 = vector3.f5534y;
        float f6 = (f2 * f3) - (f4 * f5);
        float f7 = vector3.f5533x;
        float f8 = this.f5533x;
        return len2(f6, (f4 * f7) - (f3 * f8), (f8 * f5) - (f2 * f7)) <= f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isPerpendicular(Vector3 vector3) {
        return MathUtils.isZero(dot(vector3));
    }

    public Vector3 mul(Matrix3 matrix3) {
        float[] fArr = matrix3.val;
        float f = this.f5533x;
        float f2 = this.f5534y;
        float f3 = (fArr[0] * f) + (fArr[3] * f2);
        float f4 = this.f5535z;
        return set(f3 + (fArr[6] * f4), (fArr[1] * f) + (fArr[4] * f2) + (fArr[7] * f4), (f * fArr[2]) + (f2 * fArr[5]) + (f4 * fArr[8]));
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector3 mulAdd(Vector3 vector3, float f) {
        this.f5533x += vector3.f5533x * f;
        this.f5534y += vector3.f5534y * f;
        this.f5535z += vector3.f5535z * f;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.math.Vector
    public Vector3 scl(float f) {
        return set(this.f5533x * f, this.f5534y * f, this.f5535z * f);
    }

    public Vector3 setFromSpherical(float f, float f2) {
        float cos = MathUtils.cos(f2);
        float sin = MathUtils.sin(f2);
        return set(MathUtils.cos(f) * sin, MathUtils.sin(f) * sin, cos);
    }

    public Vector3 slerp(Vector3 vector3, float f) {
        float dot = dot(vector3);
        double d = dot;
        if (d <= 0.9995d && d >= -0.9995d) {
            double acos = ((float) Math.acos(d)) * f;
            float sin = (float) Math.sin(acos);
            float f2 = vector3.f5533x - (this.f5533x * dot);
            float f3 = vector3.f5534y - (this.f5534y * dot);
            float f4 = vector3.f5535z - (this.f5535z * dot);
            float f5 = (f2 * f2) + (f3 * f3) + (f4 * f4);
            float f6 = 1.0f;
            if (f5 >= 1.0E-4f) {
                f6 = 1.0f / ((float) Math.sqrt(f5));
            }
            float f7 = sin * f6;
            return scl((float) Math.cos(acos)).add(f2 * f7, f3 * f7, f4 * f7).nor();
        }
        return lerp(vector3, f);
    }

    public Vector3 sub(float f, float f2, float f3) {
        return set(this.f5533x - f, this.f5534y - f2, this.f5535z - f3);
    }

    public Vector3 traMul(Matrix3 matrix3) {
        float[] fArr = matrix3.val;
        float f = this.f5533x;
        float f2 = this.f5534y;
        float f3 = (fArr[0] * f) + (fArr[1] * f2);
        float f4 = this.f5535z;
        return set(f3 + (fArr[2] * f4), (fArr[3] * f) + (fArr[4] * f2) + (fArr[5] * f4), (f * fArr[6]) + (f2 * fArr[7]) + (f4 * fArr[8]));
    }

    public Vector3(Vector3 vector3) {
        set(vector3);
    }

    public Vector3 add(float f) {
        return set(this.f5533x + f, this.f5534y + f, this.f5535z + f);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isCollinear(Vector3 vector3) {
        return isOnLine(vector3) && hasSameDirection(vector3);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isCollinearOpposite(Vector3 vector3) {
        return isOnLine(vector3) && hasOppositeDirection(vector3);
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isOnLine(Vector3 vector3) {
        float f = this.f5534y;
        float f2 = vector3.f5535z;
        float f3 = this.f5535z;
        float f4 = vector3.f5534y;
        float f5 = (f * f2) - (f3 * f4);
        float f6 = vector3.f5533x;
        float f7 = this.f5533x;
        return len2(f5, (f3 * f6) - (f2 * f7), (f7 * f4) - (f * f6)) <= 1.0E-6f;
    }

    @Override // com.badlogic.gdx.math.Vector
    public boolean isPerpendicular(Vector3 vector3, float f) {
        return MathUtils.isZero(dot(vector3), f);
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector3 scl(Vector3 vector3) {
        return set(this.f5533x * vector3.f5533x, this.f5534y * vector3.f5534y, this.f5535z * vector3.f5535z);
    }

    public Vector3 sub(float f) {
        return set(this.f5533x - f, this.f5534y - f, this.f5535z - f);
    }

    public float dst2(float f, float f2, float f3) {
        float f4 = f - this.f5533x;
        float f5 = f2 - this.f5534y;
        float f6 = f3 - this.f5535z;
        return (f4 * f4) + (f5 * f5) + (f6 * f6);
    }

    public boolean epsilonEquals(float f, float f2, float f3, float f4) {
        return Math.abs(f - this.f5533x) <= f4 && Math.abs(f2 - this.f5534y) <= f4 && Math.abs(f3 - this.f5535z) <= f4;
    }

    public Vector3 mul(Quaternion quaternion) {
        return quaternion.transform(this);
    }

    public Vector3 scl(float f, float f2, float f3) {
        return set(this.f5533x * f, this.f5534y * f2, this.f5535z * f3);
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector3 set(Vector3 vector3) {
        return set(vector3.f5533x, vector3.f5534y, vector3.f5535z);
    }

    public Vector3(float[] fArr) {
        set(fArr[0], fArr[1], fArr[2]);
    }

    @Override // com.badlogic.gdx.math.Vector
    public Vector3 mulAdd(Vector3 vector3, Vector3 vector32) {
        this.f5533x += vector3.f5533x * vector32.f5533x;
        this.f5534y += vector3.f5534y * vector32.f5534y;
        this.f5535z += vector3.f5535z * vector32.f5535z;
        return this;
    }

    public Vector3 set(float[] fArr) {
        return set(fArr[0], fArr[1], fArr[2]);
    }

    public float dst(float f, float f2, float f3) {
        float f4 = f - this.f5533x;
        float f5 = f2 - this.f5534y;
        float f6 = f3 - this.f5535z;
        return (float) Math.sqrt((f4 * f4) + (f5 * f5) + (f6 * f6));
    }

    public Vector3 set(Vector2 vector2, float f) {
        return set(vector2.f5527x, vector2.f5528y, f);
    }

    public Vector3(Vector2 vector2, float f) {
        set(vector2.f5527x, vector2.f5528y, f);
    }

    public boolean epsilonEquals(Vector3 vector3) {
        return epsilonEquals(vector3, 1.0E-6f);
    }

    public boolean epsilonEquals(float f, float f2, float f3) {
        return epsilonEquals(f, f2, f3, 1.0E-6f);
    }
}
