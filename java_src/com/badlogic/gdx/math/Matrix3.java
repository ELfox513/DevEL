package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.Serializable;
/* loaded from: classes.dex */
public class Matrix3 implements Serializable {
    public static final int M00 = 0;
    public static final int M01 = 3;
    public static final int M02 = 6;
    public static final int M10 = 1;
    public static final int M11 = 4;
    public static final int M12 = 7;
    public static final int M20 = 2;
    public static final int M21 = 5;
    public static final int M22 = 8;

    /* renamed from: a */
    public float[] f5461a;
    public float[] val;

    public Matrix3() {
        this.val = new float[9];
        this.f5461a = new float[9];
        idt();
    }

    /* renamed from: a */
    public static void m23916a(float[] fArr, float[] fArr2) {
        float f = fArr[0];
        float f2 = fArr2[0];
        float f3 = fArr[3];
        float f4 = fArr2[1];
        float f5 = fArr[6];
        float f6 = fArr2[2];
        float f7 = (f * f2) + (f3 * f4) + (f5 * f6);
        float f8 = fArr2[3];
        float f9 = fArr2[4];
        float f10 = fArr2[5];
        float f11 = (f * f8) + (f3 * f9) + (f5 * f10);
        float f12 = fArr2[6];
        float f13 = fArr2[7];
        float f14 = fArr2[8];
        float f15 = (f * f12) + (f3 * f13) + (f5 * f14);
        float f16 = fArr[1];
        float f17 = fArr[4];
        float f18 = fArr[7];
        float f19 = (f16 * f2) + (f17 * f4) + (f18 * f6);
        float f20 = (f16 * f12) + (f17 * f13) + (f18 * f14);
        float f21 = fArr[2];
        float f22 = fArr[5];
        float f23 = (f2 * f21) + (f4 * f22);
        float f24 = fArr[8];
        fArr[0] = f7;
        fArr[1] = f19;
        fArr[2] = f23 + (f6 * f24);
        fArr[3] = f11;
        fArr[4] = (f16 * f8) + (f17 * f9) + (f18 * f10);
        fArr[5] = (f8 * f21) + (f9 * f22) + (f10 * f24);
        fArr[6] = f15;
        fArr[7] = f20;
        fArr[8] = (f21 * f12) + (f22 * f13) + (f24 * f14);
    }

    public float getRotation() {
        float[] fArr = this.val;
        return ((float) Math.atan2(fArr[1], fArr[0])) * 57.295776f;
    }

    public float getRotationRad() {
        float[] fArr = this.val;
        return (float) Math.atan2(fArr[1], fArr[0]);
    }

    public float[] getValues() {
        return this.val;
    }

    public Matrix3 rotate(float f) {
        return rotateRad(f * 0.017453292f);
    }

    public Matrix3 rotateRad(float f) {
        if (f == 0.0f) {
            return this;
        }
        double d = f;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        float[] fArr = this.f5461a;
        fArr[0] = cos;
        fArr[1] = sin;
        fArr[2] = 0.0f;
        fArr[3] = -sin;
        fArr[4] = cos;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        m23916a(this.val, fArr);
        return this;
    }

    public Matrix3 scale(float f, float f2) {
        float[] fArr = this.f5461a;
        fArr[0] = f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = f2;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        m23916a(this.val, fArr);
        return this;
    }

    public Matrix3 scl(float f) {
        float[] fArr = this.val;
        fArr[0] = fArr[0] * f;
        fArr[4] = fArr[4] * f;
        return this;
    }

    public Matrix3 set(Matrix3 matrix3) {
        float[] fArr = matrix3.val;
        float[] fArr2 = this.val;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        return this;
    }

    public Matrix3 setToRotation(float f) {
        return setToRotationRad(f * 0.017453292f);
    }

    public Matrix3 setToRotationRad(float f) {
        double d = f;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        float[] fArr = this.val;
        fArr[0] = cos;
        fArr[1] = sin;
        fArr[2] = 0.0f;
        fArr[3] = -sin;
        fArr[4] = cos;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        return this;
    }

    public Matrix3 setToScaling(float f, float f2) {
        float[] fArr = this.val;
        fArr[0] = f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = f2;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        return this;
    }

    public Matrix3 setToTranslation(float f, float f2) {
        float[] fArr = this.val;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 1.0f;
        fArr[5] = 0.0f;
        fArr[6] = f;
        fArr[7] = f2;
        fArr[8] = 1.0f;
        return this;
    }

    public Matrix3 translate(float f, float f2) {
        float[] fArr = this.val;
        float[] fArr2 = this.f5461a;
        fArr2[0] = 1.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 0.0f;
        fArr2[3] = 0.0f;
        fArr2[4] = 1.0f;
        fArr2[5] = 0.0f;
        fArr2[6] = f;
        fArr2[7] = f2;
        fArr2[8] = 1.0f;
        m23916a(fArr, fArr2);
        return this;
    }

    public Matrix3 trn(Vector2 vector2) {
        float[] fArr = this.val;
        fArr[6] = fArr[6] + vector2.f5527x;
        fArr[7] = fArr[7] + vector2.f5528y;
        return this;
    }

    public float det() {
        float[] fArr = this.val;
        float f = fArr[0];
        float f2 = fArr[4];
        float f3 = fArr[8];
        float f4 = fArr[3];
        float f5 = fArr[7];
        float f6 = fArr[2];
        float f7 = (f * f2 * f3) + (f4 * f5 * f6);
        float f8 = fArr[6];
        float f9 = fArr[1];
        float f10 = fArr[5];
        return (((f7 + ((f8 * f9) * f10)) - ((f * f5) * f10)) - ((f4 * f9) * f3)) - ((f8 * f2) * f6);
    }

    public Vector2 getScale(Vector2 vector2) {
        float[] fArr = this.val;
        float f = fArr[0];
        float f2 = fArr[3];
        vector2.f5527x = (float) Math.sqrt((f * f) + (f2 * f2));
        float f3 = fArr[1];
        float f4 = fArr[4];
        vector2.f5528y = (float) Math.sqrt((f3 * f3) + (f4 * f4));
        return vector2;
    }

    public Vector2 getTranslation(Vector2 vector2) {
        float[] fArr = this.val;
        vector2.f5527x = fArr[6];
        vector2.f5528y = fArr[7];
        return vector2;
    }

    public Matrix3 idt() {
        float[] fArr = this.val;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 1.0f;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        return this;
    }

    public Matrix3 inv() {
        float det = det();
        if (det != 0.0f) {
            float f = 1.0f / det;
            float[] fArr = this.f5461a;
            float[] fArr2 = this.val;
            float f2 = fArr2[4];
            float f3 = fArr2[8];
            float f4 = fArr2[5];
            float f5 = fArr2[7];
            float f6 = (f2 * f3) - (f4 * f5);
            fArr[0] = f6;
            float f7 = fArr2[2];
            float f8 = (f7 * f5) - (fArr2[1] * f3);
            fArr[1] = f8;
            float f9 = fArr2[1];
            float f10 = (f9 * f4) - (f7 * f2);
            fArr[2] = f10;
            float f11 = fArr2[6];
            float f12 = (f4 * f11) - (fArr2[3] * f3);
            fArr[3] = f12;
            float f13 = fArr2[0];
            float f14 = fArr2[2];
            float f15 = (f3 * f13) - (f14 * f11);
            fArr[4] = f15;
            float f16 = fArr2[3];
            float f17 = (f14 * f16) - (f4 * f13);
            fArr[5] = f17;
            float f18 = fArr2[4];
            float f19 = (f16 * f5) - (f11 * f18);
            fArr[6] = f19;
            float f20 = (fArr2[6] * f9) - (f5 * f13);
            fArr[7] = f20;
            float f21 = (f13 * f18) - (f9 * f16);
            fArr[8] = f21;
            fArr2[0] = f6 * f;
            fArr2[1] = f8 * f;
            fArr2[2] = f10 * f;
            fArr2[3] = f12 * f;
            fArr2[4] = f15 * f;
            fArr2[5] = f17 * f;
            fArr2[6] = f19 * f;
            fArr2[7] = f20 * f;
            fArr2[8] = f * f21;
            return this;
        }
        throw new GdxRuntimeException("Can't invert a singular matrix");
    }

    public Matrix3 mul(Matrix3 matrix3) {
        float[] fArr = this.val;
        float f = fArr[0];
        float[] fArr2 = matrix3.val;
        float f2 = fArr2[0];
        float f3 = fArr[3];
        float f4 = fArr2[1];
        float f5 = fArr[6];
        float f6 = fArr2[2];
        float f7 = (f * f2) + (f3 * f4) + (f5 * f6);
        float f8 = fArr2[3];
        float f9 = fArr2[4];
        float f10 = fArr2[5];
        float f11 = (f * f8) + (f3 * f9) + (f5 * f10);
        float f12 = fArr2[6];
        float f13 = fArr2[7];
        float f14 = fArr2[8];
        float f15 = (f * f12) + (f3 * f13) + (f5 * f14);
        float f16 = fArr[1];
        float f17 = fArr[4];
        float f18 = fArr[7];
        float f19 = (f16 * f2) + (f17 * f4) + (f18 * f6);
        float f20 = (f16 * f12) + (f17 * f13) + (f18 * f14);
        float f21 = fArr[2];
        float f22 = fArr[5];
        float f23 = (f2 * f21) + (f4 * f22);
        float f24 = fArr[8];
        fArr[0] = f7;
        fArr[1] = f19;
        fArr[2] = f23 + (f6 * f24);
        fArr[3] = f11;
        fArr[4] = (f16 * f8) + (f17 * f9) + (f18 * f10);
        fArr[5] = (f8 * f21) + (f9 * f22) + (f10 * f24);
        fArr[6] = f15;
        fArr[7] = f20;
        fArr[8] = (f21 * f12) + (f22 * f13) + (f24 * f14);
        return this;
    }

    public Matrix3 mulLeft(Matrix3 matrix3) {
        float[] fArr = this.val;
        float[] fArr2 = matrix3.val;
        float f = fArr2[0];
        float f2 = fArr[0];
        float f3 = fArr2[3];
        float f4 = fArr[1];
        float f5 = fArr2[6];
        float f6 = fArr[2];
        float f7 = (f * f2) + (f3 * f4) + (f5 * f6);
        float f8 = fArr[3];
        float f9 = fArr[4];
        float f10 = fArr[5];
        float f11 = (f * f8) + (f3 * f9) + (f5 * f10);
        float f12 = fArr[6];
        float f13 = fArr[7];
        float f14 = fArr[8];
        float f15 = (f * f12) + (f3 * f13) + (f5 * f14);
        float f16 = fArr2[1];
        float f17 = fArr2[4];
        float f18 = fArr2[7];
        float f19 = (f16 * f2) + (f17 * f4) + (f18 * f6);
        float f20 = (f16 * f12) + (f17 * f13) + (f18 * f14);
        float f21 = fArr2[2];
        float f22 = fArr2[5];
        float f23 = fArr2[8];
        fArr[0] = f7;
        fArr[1] = f19;
        fArr[2] = (f2 * f21) + (f4 * f22) + (f6 * f23);
        fArr[3] = f11;
        fArr[4] = (f16 * f8) + (f17 * f9) + (f18 * f10);
        fArr[5] = (f8 * f21) + (f9 * f22) + (f10 * f23);
        fArr[6] = f15;
        fArr[7] = f20;
        fArr[8] = (f21 * f12) + (f22 * f13) + (f23 * f14);
        return this;
    }

    public Matrix3 set(Affine2 affine2) {
        float[] fArr = this.val;
        fArr[0] = affine2.m00;
        fArr[1] = affine2.m10;
        fArr[2] = 0.0f;
        fArr[3] = affine2.m01;
        fArr[4] = affine2.m11;
        fArr[5] = 0.0f;
        fArr[6] = affine2.m02;
        fArr[7] = affine2.m12;
        fArr[8] = 1.0f;
        return this;
    }

    public Matrix3 setToRotation(Vector3 vector3, float f) {
        return setToRotation(vector3, MathUtils.cosDeg(f), MathUtils.sinDeg(f));
    }

    public String toString() {
        float[] fArr = this.val;
        return "[" + fArr[0] + "|" + fArr[3] + "|" + fArr[6] + "]\n[" + fArr[1] + "|" + fArr[4] + "|" + fArr[7] + "]\n[" + fArr[2] + "|" + fArr[5] + "|" + fArr[8] + "]";
    }

    public Matrix3 transpose() {
        float[] fArr = this.val;
        float f = fArr[1];
        float f2 = fArr[2];
        float f3 = fArr[3];
        float f4 = fArr[5];
        float f5 = fArr[6];
        float f6 = fArr[7];
        fArr[3] = f;
        fArr[6] = f2;
        fArr[1] = f3;
        fArr[7] = f4;
        fArr[2] = f5;
        fArr[5] = f6;
        return this;
    }

    public Matrix3 scl(Vector2 vector2) {
        float[] fArr = this.val;
        fArr[0] = fArr[0] * vector2.f5527x;
        fArr[4] = fArr[4] * vector2.f5528y;
        return this;
    }

    public Matrix3 setToRotation(Vector3 vector3, float f, float f2) {
        float[] fArr = this.val;
        float f3 = 1.0f - f;
        float f4 = vector3.f5533x;
        fArr[0] = (f3 * f4 * f4) + f;
        float f5 = vector3.f5534y;
        float f6 = vector3.f5535z;
        fArr[3] = ((f3 * f4) * f5) - (f6 * f2);
        fArr[6] = (f3 * f6 * f4) + (f5 * f2);
        fArr[1] = (f3 * f4 * f5) + (f6 * f2);
        fArr[4] = (f3 * f5 * f5) + f;
        fArr[7] = ((f3 * f5) * f6) - (f4 * f2);
        fArr[2] = ((f3 * f6) * f4) - (f5 * f2);
        fArr[5] = (f5 * f3 * f6) + (f4 * f2);
        fArr[8] = (f3 * f6 * f6) + f;
        return this;
    }

    public Matrix3 trn(float f, float f2) {
        float[] fArr = this.val;
        fArr[6] = fArr[6] + f;
        fArr[7] = fArr[7] + f2;
        return this;
    }

    public Matrix3(Matrix3 matrix3) {
        this.val = new float[9];
        this.f5461a = new float[9];
        set(matrix3);
    }

    public Matrix3 scl(Vector3 vector3) {
        float[] fArr = this.val;
        fArr[0] = fArr[0] * vector3.f5533x;
        fArr[4] = fArr[4] * vector3.f5534y;
        return this;
    }

    public Matrix3 trn(Vector3 vector3) {
        float[] fArr = this.val;
        fArr[6] = fArr[6] + vector3.f5533x;
        fArr[7] = fArr[7] + vector3.f5534y;
        return this;
    }

    public Matrix3(float[] fArr) {
        this.val = new float[9];
        this.f5461a = new float[9];
        set(fArr);
    }

    public Matrix3 setToScaling(Vector2 vector2) {
        float[] fArr = this.val;
        fArr[0] = vector2.f5527x;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = vector2.f5528y;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        return this;
    }

    public Matrix3 setToTranslation(Vector2 vector2) {
        float[] fArr = this.val;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 1.0f;
        fArr[5] = 0.0f;
        fArr[6] = vector2.f5527x;
        fArr[7] = vector2.f5528y;
        fArr[8] = 1.0f;
        return this;
    }

    public Matrix3 scale(Vector2 vector2) {
        float[] fArr = this.f5461a;
        fArr[0] = vector2.f5527x;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = vector2.f5528y;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        m23916a(this.val, fArr);
        return this;
    }

    public Matrix3 set(Matrix4 matrix4) {
        float[] fArr = this.val;
        float[] fArr2 = matrix4.val;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        fArr[3] = fArr2[4];
        fArr[4] = fArr2[5];
        fArr[5] = fArr2[6];
        fArr[6] = fArr2[8];
        fArr[7] = fArr2[9];
        fArr[8] = fArr2[10];
        return this;
    }

    public Matrix3 translate(Vector2 vector2) {
        float[] fArr = this.val;
        float[] fArr2 = this.f5461a;
        fArr2[0] = 1.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 0.0f;
        fArr2[3] = 0.0f;
        fArr2[4] = 1.0f;
        fArr2[5] = 0.0f;
        fArr2[6] = vector2.f5527x;
        fArr2[7] = vector2.f5528y;
        fArr2[8] = 1.0f;
        m23916a(fArr, fArr2);
        return this;
    }

    public Matrix3 set(float[] fArr) {
        float[] fArr2 = this.val;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        return this;
    }
}
