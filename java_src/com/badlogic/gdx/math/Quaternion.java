package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.NumberUtils;
import java.io.Serializable;
/* loaded from: classes.dex */
public class Quaternion implements Serializable {

    /* renamed from: a */
    public static Quaternion f5515a = new Quaternion(0.0f, 0.0f, 0.0f, 0.0f);

    /* renamed from: b */
    public static Quaternion f5516b = new Quaternion(0.0f, 0.0f, 0.0f, 0.0f);

    /* renamed from: w */
    public float f5517w;

    /* renamed from: x */
    public float f5518x;

    /* renamed from: y */
    public float f5519y;

    /* renamed from: z */
    public float f5520z;

    public Quaternion(float f, float f2, float f3, float f4) {
        set(f, f2, f3, f4);
    }

    public static final float dot(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        return (f * f5) + (f2 * f6) + (f3 * f7) + (f4 * f8);
    }

    public static final float len(float f, float f2, float f3, float f4) {
        return (float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3) + (f4 * f4));
    }

    public static final float len2(float f, float f2, float f3, float f4) {
        return (f * f) + (f2 * f2) + (f3 * f3) + (f4 * f4);
    }

    public Quaternion add(Quaternion quaternion) {
        this.f5518x += quaternion.f5518x;
        this.f5519y += quaternion.f5519y;
        this.f5520z += quaternion.f5520z;
        this.f5517w += quaternion.f5517w;
        return this;
    }

    public Quaternion cpy() {
        return new Quaternion(this);
    }

    public float dot(Quaternion quaternion) {
        return (this.f5518x * quaternion.f5518x) + (this.f5519y * quaternion.f5519y) + (this.f5520z * quaternion.f5520z) + (this.f5517w * quaternion.f5517w);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Quaternion)) {
            return false;
        }
        Quaternion quaternion = (Quaternion) obj;
        return NumberUtils.floatToRawIntBits(this.f5517w) == NumberUtils.floatToRawIntBits(quaternion.f5517w) && NumberUtils.floatToRawIntBits(this.f5518x) == NumberUtils.floatToRawIntBits(quaternion.f5518x) && NumberUtils.floatToRawIntBits(this.f5519y) == NumberUtils.floatToRawIntBits(quaternion.f5519y) && NumberUtils.floatToRawIntBits(this.f5520z) == NumberUtils.floatToRawIntBits(quaternion.f5520z);
    }

    public float getAngle() {
        return getAngleRad() * 57.295776f;
    }

    public float getAngleAround(float f, float f2, float f3) {
        return getAngleAroundRad(f, f2, f3) * 57.295776f;
    }

    public float getAngleAroundRad(float f, float f2, float f3) {
        float dot = Vector3.dot(this.f5518x, this.f5519y, this.f5520z, f, f2, f3);
        float len2 = len2(f * dot, f2 * dot, f3 * dot, this.f5517w);
        if (MathUtils.isZero(len2)) {
            return 0.0f;
        }
        double d = dot < 0.0f ? -this.f5517w : this.f5517w;
        double sqrt = Math.sqrt(len2);
        Double.isNaN(d);
        return (float) (Math.acos(MathUtils.clamp((float) (d / sqrt), -1.0f, 1.0f)) * 2.0d);
    }

    public float getAngleRad() {
        float f = this.f5517w;
        if (f > 1.0f) {
            f /= len();
        }
        return (float) (Math.acos(f) * 2.0d);
    }

    public float getAxisAngle(Vector3 vector3) {
        return getAxisAngleRad(vector3) * 57.295776f;
    }

    public int getGimbalPole() {
        float f = (this.f5519y * this.f5518x) + (this.f5520z * this.f5517w);
        if (f > 0.499f) {
            return 1;
        }
        return f < -0.499f ? -1 : 0;
    }

    public float getPitch() {
        return getPitchRad() * 57.295776f;
    }

    public float getRoll() {
        return getRollRad() * 57.295776f;
    }

    public void getSwingTwist(float f, float f2, float f3, Quaternion quaternion, Quaternion quaternion2) {
        float dot = Vector3.dot(this.f5518x, this.f5519y, this.f5520z, f, f2, f3);
        quaternion2.set(f * dot, f2 * dot, f3 * dot, this.f5517w).nor();
        if (dot < 0.0f) {
            quaternion2.mul(-1.0f);
        }
        quaternion.set(quaternion2).conjugate().mulLeft(this);
    }

    public float getYaw() {
        return getYawRad() * 57.295776f;
    }

    public float getYawRad() {
        if (getGimbalPole() == 0) {
            float f = this.f5519y;
            float f2 = this.f5518x;
            return MathUtils.atan2(((this.f5517w * f) + (this.f5520z * f2)) * 2.0f, 1.0f - (((f * f) + (f2 * f2)) * 2.0f));
        }
        return 0.0f;
    }

    public Quaternion idt() {
        return set(0.0f, 0.0f, 0.0f, 1.0f);
    }

    public boolean isIdentity() {
        return MathUtils.isZero(this.f5518x) && MathUtils.isZero(this.f5519y) && MathUtils.isZero(this.f5520z) && MathUtils.isEqual(this.f5517w, 1.0f);
    }

    public float len2() {
        float f = this.f5518x;
        float f2 = this.f5519y;
        float f3 = (f * f) + (f2 * f2);
        float f4 = this.f5520z;
        float f5 = f3 + (f4 * f4);
        float f6 = this.f5517w;
        return f5 + (f6 * f6);
    }

    public Quaternion mul(Quaternion quaternion) {
        float f = this.f5517w;
        float f2 = quaternion.f5518x;
        float f3 = this.f5518x;
        float f4 = quaternion.f5517w;
        float f5 = this.f5519y;
        float f6 = quaternion.f5520z;
        float f7 = this.f5520z;
        float f8 = quaternion.f5519y;
        this.f5518x = (((f * f2) + (f3 * f4)) + (f5 * f6)) - (f7 * f8);
        this.f5519y = (((f * f8) + (f5 * f4)) + (f7 * f2)) - (f3 * f6);
        this.f5520z = (((f * f6) + (f7 * f4)) + (f3 * f8)) - (f5 * f2);
        this.f5517w = (((f * f4) - (f3 * f2)) - (f5 * f8)) - (f7 * f6);
        return this;
    }

    public Quaternion mulLeft(Quaternion quaternion) {
        float f = quaternion.f5517w;
        float f2 = this.f5518x;
        float f3 = quaternion.f5518x;
        float f4 = this.f5517w;
        float f5 = quaternion.f5519y;
        float f6 = this.f5520z;
        float f7 = quaternion.f5520z;
        float f8 = this.f5519y;
        this.f5518x = (((f * f2) + (f3 * f4)) + (f5 * f6)) - (f7 * f8);
        this.f5519y = (((f * f8) + (f5 * f4)) + (f7 * f2)) - (f3 * f6);
        this.f5520z = (((f * f6) + (f7 * f4)) + (f3 * f8)) - (f5 * f2);
        this.f5517w = (((f * f4) - (f3 * f2)) - (f5 * f8)) - (f7 * f6);
        return this;
    }

    public Quaternion set(float f, float f2, float f3, float f4) {
        this.f5518x = f;
        this.f5519y = f2;
        this.f5520z = f3;
        this.f5517w = f4;
        return this;
    }

    public Quaternion setEulerAngles(float f, float f2, float f3) {
        return setEulerAnglesRad(f * 0.017453292f, f2 * 0.017453292f, f3 * 0.017453292f);
    }

    public Quaternion setFromAxes(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        return setFromAxes(false, f, f2, f3, f4, f5, f6, f7, f8, f9);
    }

    public Quaternion setFromAxis(Vector3 vector3, float f) {
        return setFromAxis(vector3.f5533x, vector3.f5534y, vector3.f5535z, f);
    }

    public Quaternion setFromAxisRad(Vector3 vector3, float f) {
        return setFromAxisRad(vector3.f5533x, vector3.f5534y, vector3.f5535z, f);
    }

    public Quaternion setFromCross(Vector3 vector3, Vector3 vector32) {
        float f = vector3.f5534y;
        float f2 = vector32.f5535z;
        float f3 = vector3.f5535z;
        float f4 = vector32.f5534y;
        float f5 = (f * f2) - (f3 * f4);
        float f6 = vector32.f5533x;
        float f7 = vector3.f5533x;
        return setFromAxisRad(f5, (f3 * f6) - (f2 * f7), (f7 * f4) - (f * f6), (float) Math.acos(MathUtils.clamp(vector3.dot(vector32), -1.0f, 1.0f)));
    }

    public Quaternion setFromMatrix(boolean z, Matrix4 matrix4) {
        float[] fArr = matrix4.val;
        return setFromAxes(z, fArr[0], fArr[4], fArr[8], fArr[1], fArr[5], fArr[9], fArr[2], fArr[6], fArr[10]);
    }

    public Quaternion slerp(Quaternion quaternion, float f) {
        float f2 = (this.f5518x * quaternion.f5518x) + (this.f5519y * quaternion.f5519y) + (this.f5520z * quaternion.f5520z) + (this.f5517w * quaternion.f5517w);
        float f3 = f2 < 0.0f ? -f2 : f2;
        float f4 = 1.0f - f;
        if (1.0f - f3 > 0.1d) {
            float acos = (float) Math.acos(f3);
            float sin = 1.0f / ((float) Math.sin(acos));
            f4 = ((float) Math.sin(f4 * acos)) * sin;
            f = ((float) Math.sin(f * acos)) * sin;
        }
        if (f2 < 0.0f) {
            f = -f;
        }
        this.f5518x = (this.f5518x * f4) + (quaternion.f5518x * f);
        this.f5519y = (this.f5519y * f4) + (quaternion.f5519y * f);
        this.f5520z = (this.f5520z * f4) + (quaternion.f5520z * f);
        this.f5517w = (f4 * this.f5517w) + (f * quaternion.f5517w);
        return this;
    }

    public String toString() {
        return "[" + this.f5518x + "|" + this.f5519y + "|" + this.f5520z + "|" + this.f5517w + "]";
    }

    public Quaternion conjugate() {
        this.f5518x = -this.f5518x;
        this.f5519y = -this.f5519y;
        this.f5520z = -this.f5520z;
        return this;
    }

    public float dot(float f, float f2, float f3, float f4) {
        return (this.f5518x * f) + (this.f5519y * f2) + (this.f5520z * f3) + (this.f5517w * f4);
    }

    public float getAngleAround(Vector3 vector3) {
        return getAngleAround(vector3.f5533x, vector3.f5534y, vector3.f5535z);
    }

    public float getAxisAngleRad(Vector3 vector3) {
        if (this.f5517w > 1.0f) {
            nor();
        }
        float acos = (float) (Math.acos(this.f5517w) * 2.0d);
        float f = this.f5517w;
        double sqrt = Math.sqrt(1.0f - (f * f));
        if (sqrt < 9.999999974752427E-7d) {
            vector3.f5533x = this.f5518x;
            vector3.f5534y = this.f5519y;
            vector3.f5535z = this.f5520z;
        } else {
            double d = this.f5518x;
            Double.isNaN(d);
            vector3.f5533x = (float) (d / sqrt);
            double d2 = this.f5519y;
            Double.isNaN(d2);
            vector3.f5534y = (float) (d2 / sqrt);
            double d3 = this.f5520z;
            Double.isNaN(d3);
            vector3.f5535z = (float) (d3 / sqrt);
        }
        return acos;
    }

    public int hashCode() {
        return ((((((NumberUtils.floatToRawIntBits(this.f5517w) + 31) * 31) + NumberUtils.floatToRawIntBits(this.f5518x)) * 31) + NumberUtils.floatToRawIntBits(this.f5519y)) * 31) + NumberUtils.floatToRawIntBits(this.f5520z);
    }

    public boolean isIdentity(float f) {
        return MathUtils.isZero(this.f5518x, f) && MathUtils.isZero(this.f5519y, f) && MathUtils.isZero(this.f5520z, f) && MathUtils.isEqual(this.f5517w, 1.0f, f);
    }

    public float len() {
        float f = this.f5518x;
        float f2 = this.f5519y;
        float f3 = (f * f) + (f2 * f2);
        float f4 = this.f5520z;
        float f5 = f3 + (f4 * f4);
        float f6 = this.f5517w;
        return (float) Math.sqrt(f5 + (f6 * f6));
    }

    public Quaternion setEulerAnglesRad(float f, float f2, float f3) {
        double d = f3 * 0.5f;
        float sin = (float) Math.sin(d);
        float cos = (float) Math.cos(d);
        double d2 = f2 * 0.5f;
        float sin2 = (float) Math.sin(d2);
        float cos2 = (float) Math.cos(d2);
        double d3 = f * 0.5f;
        float sin3 = (float) Math.sin(d3);
        float cos3 = (float) Math.cos(d3);
        float f4 = cos3 * sin2;
        float f5 = sin3 * cos2;
        float f6 = cos3 * cos2;
        float f7 = sin3 * sin2;
        this.f5518x = (f4 * cos) + (f5 * sin);
        this.f5519y = (f5 * cos) - (f4 * sin);
        this.f5520z = (f6 * sin) - (f7 * cos);
        this.f5517w = (f6 * cos) + (f7 * sin);
        return this;
    }

    public Quaternion setFromAxes(boolean z, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        float f10;
        if (z) {
            float len = 1.0f / Vector3.len(f, f2, f3);
            float len2 = 1.0f / Vector3.len(f4, f5, f6);
            float len3 = 1.0f / Vector3.len(f7, f8, f9);
            f *= len;
            f2 *= len;
            f3 *= len;
            f4 *= len2;
            f5 *= len2;
            f6 *= len2;
            f7 *= len3;
            f8 *= len3;
            f9 *= len3;
        }
        if (f + f5 + f9 >= 0.0f) {
            float sqrt = (float) Math.sqrt(f10 + 1.0f);
            this.f5517w = sqrt * 0.5f;
            float f11 = 0.5f / sqrt;
            this.f5518x = (f8 - f6) * f11;
            this.f5519y = (f3 - f7) * f11;
            this.f5520z = (f4 - f2) * f11;
        } else if (f > f5 && f > f9) {
            double d = f;
            Double.isNaN(d);
            double d2 = f5;
            Double.isNaN(d2);
            double d3 = (d + 1.0d) - d2;
            double d4 = f9;
            Double.isNaN(d4);
            float sqrt2 = (float) Math.sqrt(d3 - d4);
            this.f5518x = sqrt2 * 0.5f;
            float f12 = 0.5f / sqrt2;
            this.f5519y = (f4 + f2) * f12;
            this.f5520z = (f3 + f7) * f12;
            this.f5517w = (f8 - f6) * f12;
        } else if (f5 > f9) {
            double d5 = f5;
            Double.isNaN(d5);
            double d6 = f;
            Double.isNaN(d6);
            double d7 = (d5 + 1.0d) - d6;
            double d8 = f9;
            Double.isNaN(d8);
            float sqrt3 = (float) Math.sqrt(d7 - d8);
            this.f5519y = sqrt3 * 0.5f;
            float f13 = 0.5f / sqrt3;
            this.f5518x = (f4 + f2) * f13;
            this.f5520z = (f8 + f6) * f13;
            this.f5517w = (f3 - f7) * f13;
        } else {
            double d9 = f9;
            Double.isNaN(d9);
            double d10 = f;
            Double.isNaN(d10);
            double d11 = (d9 + 1.0d) - d10;
            double d12 = f5;
            Double.isNaN(d12);
            float sqrt4 = (float) Math.sqrt(d11 - d12);
            this.f5520z = sqrt4 * 0.5f;
            float f14 = 0.5f / sqrt4;
            this.f5518x = (f3 + f7) * f14;
            this.f5519y = (f8 + f6) * f14;
            this.f5517w = (f4 - f2) * f14;
        }
        return this;
    }

    public Quaternion setFromAxis(float f, float f2, float f3, float f4) {
        return setFromAxisRad(f, f2, f3, f4 * 0.017453292f);
    }

    public Quaternion setFromAxisRad(float f, float f2, float f3, float f4) {
        float len = Vector3.len(f, f2, f3);
        if (len == 0.0f) {
            return idt();
        }
        float f5 = 1.0f / len;
        double d = (f4 < 0.0f ? 6.2831855f - ((-f4) % 6.2831855f) : f4 % 6.2831855f) / 2.0f;
        float sin = (float) Math.sin(d);
        return set(f * f5 * sin, f2 * f5 * sin, f5 * f3 * sin, (float) Math.cos(d)).nor();
    }

    public Quaternion setFromMatrix(Matrix4 matrix4) {
        return setFromMatrix(false, matrix4);
    }

    public void toMatrix(float[] fArr) {
        float f = this.f5518x;
        float f2 = f * f;
        float f3 = this.f5519y;
        float f4 = f * f3;
        float f5 = this.f5520z;
        float f6 = f * f5;
        float f7 = this.f5517w;
        float f8 = f * f7;
        float f9 = f3 * f3;
        float f10 = f3 * f5;
        float f11 = f3 * f7;
        float f12 = f5 * f5;
        float f13 = f5 * f7;
        fArr[0] = 1.0f - ((f9 + f12) * 2.0f);
        fArr[4] = (f4 - f13) * 2.0f;
        fArr[8] = (f6 + f11) * 2.0f;
        fArr[12] = 0.0f;
        fArr[1] = (f4 + f13) * 2.0f;
        fArr[5] = 1.0f - ((f12 + f2) * 2.0f);
        fArr[9] = (f10 - f8) * 2.0f;
        fArr[13] = 0.0f;
        fArr[2] = (f6 - f11) * 2.0f;
        fArr[6] = (f10 + f8) * 2.0f;
        fArr[10] = 1.0f - ((f2 + f9) * 2.0f);
        fArr[14] = 0.0f;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[15] = 1.0f;
    }

    public Vector3 transform(Vector3 vector3) {
        f5516b.set(this);
        f5516b.conjugate();
        f5516b.mulLeft(f5515a.set(vector3.f5533x, vector3.f5534y, vector3.f5535z, 0.0f)).mulLeft(this);
        Quaternion quaternion = f5516b;
        vector3.f5533x = quaternion.f5518x;
        vector3.f5534y = quaternion.f5519y;
        vector3.f5535z = quaternion.f5520z;
        return vector3;
    }

    public Quaternion() {
        idt();
    }

    public Quaternion exp(float f) {
        float f2;
        float len = len();
        double d = len;
        float pow = (float) Math.pow(d, f);
        float acos = (float) Math.acos(this.f5517w / len);
        if (Math.abs(acos) < 0.001d) {
            f2 = (pow * f) / len;
        } else {
            double d2 = pow;
            double sin = Math.sin(f * acos);
            Double.isNaN(d2);
            double d3 = d2 * sin;
            double sin2 = Math.sin(acos);
            Double.isNaN(d);
            f2 = (float) (d3 / (d * sin2));
        }
        double d4 = pow;
        double cos = Math.cos(f * acos);
        Double.isNaN(d4);
        this.f5517w = (float) (d4 * cos);
        this.f5518x *= f2;
        this.f5519y *= f2;
        this.f5520z *= f2;
        nor();
        return this;
    }

    public float getPitchRad() {
        int gimbalPole = getGimbalPole();
        if (gimbalPole == 0) {
            return (float) Math.asin(MathUtils.clamp(((this.f5517w * this.f5518x) - (this.f5520z * this.f5519y)) * 2.0f, -1.0f, 1.0f));
        }
        return gimbalPole * 3.1415927f * 0.5f;
    }

    public float getRollRad() {
        int gimbalPole = getGimbalPole();
        if (gimbalPole == 0) {
            float f = this.f5517w;
            float f2 = this.f5520z;
            float f3 = this.f5519y;
            float f4 = this.f5518x;
            return MathUtils.atan2(((f * f2) + (f3 * f4)) * 2.0f, 1.0f - (((f4 * f4) + (f2 * f2)) * 2.0f));
        }
        return gimbalPole * 2.0f * MathUtils.atan2(this.f5519y, this.f5517w);
    }

    public Quaternion nor() {
        float len2 = len2();
        if (len2 != 0.0f && !MathUtils.isEqual(len2, 1.0f)) {
            float sqrt = (float) Math.sqrt(len2);
            this.f5517w /= sqrt;
            this.f5518x /= sqrt;
            this.f5519y /= sqrt;
            this.f5520z /= sqrt;
        }
        return this;
    }

    public Quaternion setFromMatrix(boolean z, Matrix3 matrix3) {
        float[] fArr = matrix3.val;
        return setFromAxes(z, fArr[0], fArr[3], fArr[6], fArr[1], fArr[4], fArr[7], fArr[2], fArr[5], fArr[8]);
    }

    public Quaternion setFromCross(float f, float f2, float f3, float f4, float f5, float f6) {
        return setFromAxisRad((f2 * f6) - (f3 * f5), (f3 * f4) - (f6 * f), (f * f5) - (f2 * f4), (float) Math.acos(MathUtils.clamp(Vector3.dot(f, f2, f3, f4, f5, f6), -1.0f, 1.0f)));
    }

    public Quaternion setFromMatrix(Matrix3 matrix3) {
        return setFromMatrix(false, matrix3);
    }

    public Quaternion(Quaternion quaternion) {
        set(quaternion);
    }

    public Quaternion add(float f, float f2, float f3, float f4) {
        this.f5518x += f;
        this.f5519y += f2;
        this.f5520z += f3;
        this.f5517w += f4;
        return this;
    }

    public float getAngleAroundRad(Vector3 vector3) {
        return getAngleAroundRad(vector3.f5533x, vector3.f5534y, vector3.f5535z);
    }

    public void getSwingTwist(Vector3 vector3, Quaternion quaternion, Quaternion quaternion2) {
        getSwingTwist(vector3.f5533x, vector3.f5534y, vector3.f5535z, quaternion, quaternion2);
    }

    public Quaternion set(Quaternion quaternion) {
        return set(quaternion.f5518x, quaternion.f5519y, quaternion.f5520z, quaternion.f5517w);
    }

    public Quaternion mul(float f, float f2, float f3, float f4) {
        float f5 = this.f5517w;
        float f6 = this.f5518x;
        float f7 = this.f5519y;
        float f8 = this.f5520z;
        this.f5518x = (((f5 * f) + (f6 * f4)) + (f7 * f3)) - (f8 * f2);
        this.f5519y = (((f5 * f2) + (f7 * f4)) + (f8 * f)) - (f6 * f3);
        this.f5520z = (((f5 * f3) + (f8 * f4)) + (f6 * f2)) - (f7 * f);
        this.f5517w = (((f5 * f4) - (f6 * f)) - (f7 * f2)) - (f8 * f3);
        return this;
    }

    public Quaternion mulLeft(float f, float f2, float f3, float f4) {
        float f5 = this.f5518x;
        float f6 = this.f5517w;
        float f7 = this.f5520z;
        float f8 = this.f5519y;
        this.f5518x = (((f4 * f5) + (f * f6)) + (f2 * f7)) - (f3 * f8);
        this.f5519y = (((f4 * f8) + (f2 * f6)) + (f3 * f5)) - (f * f7);
        this.f5520z = (((f4 * f7) + (f3 * f6)) + (f * f8)) - (f2 * f5);
        this.f5517w = (((f4 * f6) - (f * f5)) - (f2 * f8)) - (f3 * f7);
        return this;
    }

    public Quaternion set(Vector3 vector3, float f) {
        return setFromAxis(vector3.f5533x, vector3.f5534y, vector3.f5535z, f);
    }

    public Quaternion(Vector3 vector3, float f) {
        set(vector3, f);
    }

    public Quaternion slerp(Quaternion[] quaternionArr) {
        float length = 1.0f / quaternionArr.length;
        set(quaternionArr[0]).exp(length);
        for (int i = 1; i < quaternionArr.length; i++) {
            mul(f5515a.set(quaternionArr[i]).exp(length));
        }
        nor();
        return this;
    }

    public Quaternion mul(float f) {
        this.f5518x *= f;
        this.f5519y *= f;
        this.f5520z *= f;
        this.f5517w *= f;
        return this;
    }

    public Quaternion slerp(Quaternion[] quaternionArr, float[] fArr) {
        set(quaternionArr[0]).exp(fArr[0]);
        for (int i = 1; i < quaternionArr.length; i++) {
            mul(f5515a.set(quaternionArr[i]).exp(fArr[i]));
        }
        nor();
        return this;
    }
}
