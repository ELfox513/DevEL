package com.badlogic.gdx.math;

import java.io.Serializable;
/* loaded from: classes.dex */
public class Matrix4 implements Serializable {
    public static final int M00 = 0;
    public static final int M01 = 4;
    public static final int M02 = 8;
    public static final int M03 = 12;
    public static final int M10 = 1;
    public static final int M11 = 5;
    public static final int M12 = 9;
    public static final int M13 = 13;
    public static final int M20 = 2;
    public static final int M21 = 6;
    public static final int M22 = 10;
    public static final int M23 = 14;
    public static final int M30 = 3;
    public static final int M31 = 7;
    public static final int M32 = 11;
    public static final int M33 = 15;

    /* renamed from: a */
    public static final Quaternion f5462a = new Quaternion();

    /* renamed from: b */
    public static final Quaternion f5463b = new Quaternion();

    /* renamed from: d */
    public static final Vector3 f5464d = new Vector3();

    /* renamed from: k */
    public static final Vector3 f5465k = new Vector3();

    /* renamed from: p */
    public static final Vector3 f5466p = new Vector3();

    /* renamed from: q */
    public static final Vector3 f5467q = new Vector3();

    /* renamed from: r */
    public static final Matrix4 f5468r = new Matrix4();

    /* renamed from: s */
    public static final Vector3 f5469s = new Vector3();

    /* renamed from: t */
    public static final Vector3 f5470t = new Vector3();

    /* renamed from: u */
    public static final Vector3 f5471u = new Vector3();
    public final float[] val;

    public Matrix4() {
        float[] fArr = new float[16];
        this.val = fArr;
        fArr[0] = 1.0f;
        fArr[5] = 1.0f;
        fArr[10] = 1.0f;
        fArr[15] = 1.0f;
    }

    public static void mulVec(float[] fArr, float[] fArr2) {
        float f = fArr2[0];
        float f2 = fArr2[1];
        float f3 = fArr2[2];
        float f4 = (fArr[0] * f) + (fArr[4] * f2) + (fArr[8] * f3) + fArr[12];
        float f5 = (fArr[1] * f) + (fArr[5] * f2) + (fArr[9] * f3) + fArr[13];
        fArr2[0] = f4;
        fArr2[1] = f5;
        fArr2[2] = (f * fArr[2]) + (f2 * fArr[6]) + (f3 * fArr[10]) + fArr[14];
    }

    public static native void mulVec(float[] fArr, float[] fArr2, int i, int i2, int i3);

    public static void prj(float[] fArr, float[] fArr2) {
        float f = fArr2[0];
        float f2 = fArr2[1];
        float f3 = fArr2[2];
        float f4 = 1.0f / ((((fArr[3] * f) + (fArr[7] * f2)) + (fArr[11] * f3)) + fArr[15]);
        fArr2[0] = ((fArr[0] * f) + (fArr[4] * f2) + (fArr[8] * f3) + fArr[12]) * f4;
        fArr2[1] = ((fArr[1] * f) + (fArr[5] * f2) + (fArr[9] * f3) + fArr[13]) * f4;
        fArr2[2] = ((f * fArr[2]) + (f2 * fArr[6]) + (f3 * fArr[10]) + fArr[14]) * f4;
    }

    public static native void prj(float[] fArr, float[] fArr2, int i, int i2, int i3);

    public static void rot(float[] fArr, float[] fArr2) {
        float f = fArr2[0];
        float f2 = fArr2[1];
        float f3 = fArr2[2];
        float f4 = (fArr[0] * f) + (fArr[4] * f2) + (fArr[8] * f3);
        float f5 = (fArr[1] * f) + (fArr[5] * f2) + (fArr[9] * f3);
        fArr2[0] = f4;
        fArr2[1] = f5;
        fArr2[2] = (f * fArr[2]) + (f2 * fArr[6]) + (f3 * fArr[10]);
    }

    public static native void rot(float[] fArr, float[] fArr2, int i, int i2, int i3);

    public Matrix4 avg(Matrix4 matrix4, float f) {
        Vector3 vector3 = f5467q;
        getScale(vector3);
        Vector3 vector32 = f5470t;
        matrix4.getScale(vector32);
        Quaternion quaternion = f5462a;
        getRotation(quaternion);
        Quaternion quaternion2 = f5463b;
        matrix4.getRotation(quaternion2);
        Vector3 vector33 = f5471u;
        getTranslation(vector33);
        Vector3 vector34 = f5469s;
        matrix4.getTranslation(vector34);
        Vector3 scl = vector3.scl(f);
        float f2 = 1.0f - f;
        setToScaling(scl.add(vector32.scl(f2)));
        rotate(quaternion.slerp(quaternion2, f2));
        setTranslation(vector33.scl(f).add(vector34.scl(f2)));
        return this;
    }

    public Matrix4 cpy() {
        return new Matrix4(this);
    }

    public float det() {
        float[] fArr = this.val;
        float f = fArr[3];
        float f2 = fArr[6];
        float f3 = fArr[9];
        float f4 = fArr[12];
        float f5 = fArr[2];
        float f6 = fArr[7];
        float f7 = fArr[5];
        float f8 = fArr[10];
        float f9 = fArr[1];
        float f10 = fArr[11];
        float f11 = fArr[8];
        float f12 = fArr[13];
        float f13 = fArr[4];
        float f14 = fArr[0];
        float f15 = (((((((((((((f * f2) * f3) * f4) - (((f5 * f6) * f3) * f4)) - (((f * f7) * f8) * f4)) + (((f9 * f6) * f8) * f4)) + (((f5 * f7) * f10) * f4)) - (((f9 * f2) * f10) * f4)) - (((f * f2) * f11) * f12)) + (((f5 * f6) * f11) * f12)) + (((f * f13) * f8) * f12)) - (((f14 * f6) * f8) * f12)) - (((f5 * f13) * f10) * f12)) + (f14 * f2 * f10 * f12);
        float f16 = fArr[14];
        float f17 = fArr[15];
        return (((((((((((f15 + (((f * f7) * f11) * f16)) - (((f9 * f6) * f11) * f16)) - (((f * f13) * f3) * f16)) + (((f6 * f14) * f3) * f16)) + (((f9 * f13) * f10) * f16)) - (((f14 * f7) * f10) * f16)) - (((f5 * f7) * f11) * f17)) + (((f9 * f2) * f11) * f17)) + (((f5 * f13) * f3) * f17)) - (((f2 * f14) * f3) * f17)) - (((f9 * f13) * f8) * f17)) + (f14 * f7 * f8 * f17);
    }

    public float det3x3() {
        float[] fArr = this.val;
        float f = fArr[0];
        float f2 = fArr[5];
        float f3 = fArr[10];
        float f4 = fArr[4];
        float f5 = fArr[9];
        float f6 = fArr[2];
        float f7 = (f * f2 * f3) + (f4 * f5 * f6);
        float f8 = fArr[8];
        float f9 = fArr[1];
        float f10 = fArr[6];
        return (((f7 + ((f8 * f9) * f10)) - ((f * f5) * f10)) - ((f4 * f9) * f3)) - ((f8 * f2) * f6);
    }

    public Quaternion getRotation(Quaternion quaternion, boolean z) {
        return quaternion.setFromMatrix(z, this);
    }

    public Vector3 getScale(Vector3 vector3) {
        return vector3.set(getScaleX(), getScaleY(), getScaleZ());
    }

    public float getScaleXSquared() {
        float[] fArr = this.val;
        float f = fArr[0];
        float f2 = fArr[4];
        float f3 = fArr[8];
        return (f * f) + (f2 * f2) + (f3 * f3);
    }

    public float getScaleYSquared() {
        float[] fArr = this.val;
        float f = fArr[1];
        float f2 = fArr[5];
        float f3 = fArr[9];
        return (f * f) + (f2 * f2) + (f3 * f3);
    }

    public float getScaleZSquared() {
        float[] fArr = this.val;
        float f = fArr[2];
        float f2 = fArr[6];
        float f3 = fArr[10];
        return (f * f) + (f2 * f2) + (f3 * f3);
    }

    public float[] getValues() {
        return this.val;
    }

    public Matrix4 inv() {
        float[] fArr = this.val;
        float f = fArr[3];
        float f2 = fArr[6];
        float f3 = fArr[9];
        float f4 = fArr[12];
        float f5 = fArr[2];
        float f6 = fArr[7];
        float f7 = fArr[5];
        float f8 = fArr[10];
        float f9 = fArr[1];
        float f10 = fArr[11];
        float f11 = fArr[8];
        float f12 = fArr[13];
        float f13 = fArr[4];
        float f14 = fArr[0];
        float f15 = fArr[14];
        float f16 = fArr[15];
        float f17 = (((((((((((((((((((((((((f * f2) * f3) * f4) - (((f5 * f6) * f3) * f4)) - (((f * f7) * f8) * f4)) + (((f9 * f6) * f8) * f4)) + (((f5 * f7) * f10) * f4)) - (((f9 * f2) * f10) * f4)) - (((f * f2) * f11) * f12)) + (((f5 * f6) * f11) * f12)) + (((f * f13) * f8) * f12)) - (((f14 * f6) * f8) * f12)) - (((f5 * f13) * f10) * f12)) + (((f14 * f2) * f10) * f12)) + (((f * f7) * f11) * f15)) - (((f9 * f6) * f11) * f15)) - (((f * f13) * f3) * f15)) + (((f14 * f6) * f3) * f15)) + (((f9 * f13) * f10) * f15)) - (((f14 * f7) * f10) * f15)) - (((f5 * f7) * f11) * f16)) + (((f9 * f2) * f11) * f16)) + (((f5 * f13) * f3) * f16)) - (((f14 * f2) * f3) * f16)) - (((f9 * f13) * f8) * f16)) + (f14 * f7 * f8 * f16);
        if (f17 != 0.0f) {
            float f18 = ((((((f3 * f15) * f6) - ((f12 * f8) * f6)) + ((f12 * f2) * f10)) - ((f7 * f15) * f10)) - ((f3 * f2) * f16)) + (f7 * f8 * f16);
            float f19 = ((((((f4 * f8) * f6) - ((f11 * f15) * f6)) - ((f4 * f2) * f10)) + ((f13 * f15) * f10)) + ((f11 * f2) * f16)) - ((f13 * f8) * f16);
            float f20 = ((((((f11 * f12) * f6) - ((f4 * f3) * f6)) + ((f4 * f7) * f10)) - ((f13 * f12) * f10)) - ((f11 * f7) * f16)) + (f13 * f3 * f16);
            float f21 = ((((((f4 * f3) * f2) - ((f11 * f12) * f2)) - ((f4 * f7) * f8)) + ((f13 * f12) * f8)) + ((f11 * f7) * f15)) - ((f13 * f3) * f15);
            float f22 = ((((((f12 * f8) * f) - ((f3 * f15) * f)) - ((f12 * f5) * f10)) + ((f9 * f15) * f10)) + ((f3 * f5) * f16)) - ((f9 * f8) * f16);
            float f23 = ((((((f11 * f15) * f) - ((f4 * f8) * f)) + ((f4 * f5) * f10)) - ((f14 * f15) * f10)) - ((f11 * f5) * f16)) + (f14 * f8 * f16);
            float f24 = ((((((f4 * f3) * f) - ((f11 * f12) * f)) - ((f4 * f9) * f10)) + ((f14 * f12) * f10)) + ((f11 * f9) * f16)) - ((f14 * f3) * f16);
            float f25 = ((((((f11 * f12) * f5) - ((f4 * f3) * f5)) + ((f4 * f9) * f8)) - ((f14 * f12) * f8)) - ((f11 * f9) * f15)) + (f14 * f3 * f15);
            float f26 = ((((((f7 * f15) * f) - ((f12 * f2) * f)) + ((f12 * f5) * f6)) - ((f9 * f15) * f6)) - ((f7 * f5) * f16)) + (f9 * f2 * f16);
            float f27 = ((((((f4 * f2) * f) - ((f13 * f15) * f)) - ((f4 * f5) * f6)) + ((f14 * f15) * f6)) + ((f13 * f5) * f16)) - ((f14 * f2) * f16);
            float f28 = ((((((f13 * f12) * f) - ((f4 * f7) * f)) + ((f4 * f9) * f6)) - ((f14 * f12) * f6)) - ((f13 * f9) * f16)) + (f14 * f7 * f16);
            float f29 = ((((((f4 * f7) * f5) - ((f13 * f12) * f5)) - ((f4 * f9) * f2)) + ((f12 * f14) * f2)) + ((f13 * f9) * f15)) - ((f14 * f7) * f15);
            float f30 = ((((((f3 * f2) * f) - ((f7 * f8) * f)) - ((f3 * f5) * f6)) + ((f9 * f8) * f6)) + ((f7 * f5) * f10)) - ((f9 * f2) * f10);
            float f31 = ((((((f13 * f8) * f) - ((f11 * f2) * f)) + ((f11 * f5) * f6)) - ((f14 * f8) * f6)) - ((f13 * f5) * f10)) + (f14 * f2 * f10);
            float f32 = 1.0f / f17;
            fArr[0] = f18 * f32;
            fArr[1] = f22 * f32;
            fArr[2] = f26 * f32;
            fArr[3] = f30 * f32;
            fArr[4] = f19 * f32;
            fArr[5] = f23 * f32;
            fArr[6] = f27 * f32;
            fArr[7] = f31 * f32;
            fArr[8] = f20 * f32;
            fArr[9] = f24 * f32;
            fArr[10] = f28 * f32;
            fArr[11] = (((((((f11 * f7) * f) - ((f13 * f3) * f)) - ((f11 * f9) * f6)) + ((f14 * f3) * f6)) + ((f13 * f9) * f10)) - ((f14 * f7) * f10)) * f32;
            fArr[12] = f21 * f32;
            fArr[13] = f25 * f32;
            fArr[14] = f29 * f32;
            fArr[15] = (((((((f13 * f3) * f5) - ((f11 * f7) * f5)) + ((f11 * f9) * f2)) - ((f3 * f14) * f2)) - ((f13 * f9) * f8)) + (f14 * f7 * f8)) * f32;
            return this;
        }
        throw new RuntimeException("non-invertible matrix");
    }

    public Matrix4 lerp(Matrix4 matrix4, float f) {
        for (int i = 0; i < 16; i++) {
            float[] fArr = this.val;
            fArr[i] = (fArr[i] * (1.0f - f)) + (matrix4.val[i] * f);
        }
        return this;
    }

    public Matrix4 mul(Matrix4 matrix4) {
        mul(this.val, matrix4.val);
        return this;
    }

    public Matrix4 rotate(Vector3 vector3, float f) {
        if (f == 0.0f) {
            return this;
        }
        Quaternion quaternion = f5462a;
        quaternion.set(vector3, f);
        return rotate(quaternion);
    }

    public Matrix4 rotateRad(Vector3 vector3, float f) {
        if (f == 0.0f) {
            return this;
        }
        Quaternion quaternion = f5462a;
        quaternion.setFromAxisRad(vector3, f);
        return rotate(quaternion);
    }

    public Matrix4 scl(Vector3 vector3) {
        float[] fArr = this.val;
        fArr[0] = fArr[0] * vector3.f5533x;
        fArr[5] = fArr[5] * vector3.f5534y;
        fArr[10] = fArr[10] * vector3.f5535z;
        return this;
    }

    public Matrix4 set(Matrix4 matrix4) {
        return set(matrix4.val);
    }

    public Matrix4 setAsAffine(Affine2 affine2) {
        float[] fArr = this.val;
        fArr[0] = affine2.m00;
        fArr[1] = affine2.m10;
        fArr[4] = affine2.m01;
        fArr[5] = affine2.m11;
        fArr[12] = affine2.m02;
        fArr[13] = affine2.m12;
        return this;
    }

    public Matrix4 setToLookAt(Vector3 vector3, Vector3 vector32) {
        Vector3 vector33 = f5464d;
        vector33.set(vector3).nor();
        Vector3 vector34 = f5465k;
        vector34.set(vector3).crs(vector32).nor();
        Vector3 vector35 = f5466p;
        vector35.set(vector34).crs(vector33).nor();
        idt();
        float[] fArr = this.val;
        fArr[0] = vector34.f5533x;
        fArr[4] = vector34.f5534y;
        fArr[8] = vector34.f5535z;
        fArr[1] = vector35.f5533x;
        fArr[5] = vector35.f5534y;
        fArr[9] = vector35.f5535z;
        fArr[2] = -vector33.f5533x;
        fArr[6] = -vector33.f5534y;
        fArr[10] = -vector33.f5535z;
        return this;
    }

    public Matrix4 setToOrtho2D(float f, float f2, float f3, float f4) {
        setToOrtho(f, f + f3, f2, f2 + f4, 0.0f, 1.0f);
        return this;
    }

    public Matrix4 setToProjection(float f, float f2, float f3, float f4) {
        idt();
        double d = f3;
        Double.isNaN(d);
        float tan = (float) (1.0d / Math.tan((d * 0.017453292519943295d) / 2.0d));
        float f5 = f - f2;
        float[] fArr = this.val;
        fArr[0] = tan / f4;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = tan;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = (f2 + f) / f5;
        fArr[11] = -1.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = ((f2 * 2.0f) * f) / f5;
        fArr[15] = 0.0f;
        return this;
    }

    public Matrix4 setToRotation(Vector3 vector3, float f) {
        if (f == 0.0f) {
            idt();
            return this;
        }
        return set(f5462a.set(vector3, f));
    }

    public Matrix4 setToRotationRad(Vector3 vector3, float f) {
        if (f == 0.0f) {
            idt();
            return this;
        }
        return set(f5462a.setFromAxisRad(vector3, f));
    }

    public Matrix4 setToScaling(Vector3 vector3) {
        idt();
        float[] fArr = this.val;
        fArr[0] = vector3.f5533x;
        fArr[5] = vector3.f5534y;
        fArr[10] = vector3.f5535z;
        return this;
    }

    public Matrix4 setToTranslation(Vector3 vector3) {
        idt();
        float[] fArr = this.val;
        fArr[12] = vector3.f5533x;
        fArr[13] = vector3.f5534y;
        fArr[14] = vector3.f5535z;
        return this;
    }

    public Matrix4 setToTranslationAndScaling(Vector3 vector3, Vector3 vector32) {
        idt();
        float[] fArr = this.val;
        fArr[12] = vector3.f5533x;
        fArr[13] = vector3.f5534y;
        fArr[14] = vector3.f5535z;
        fArr[0] = vector32.f5533x;
        fArr[5] = vector32.f5534y;
        fArr[10] = vector32.f5535z;
        return this;
    }

    public Matrix4 setTranslation(Vector3 vector3) {
        float[] fArr = this.val;
        fArr[12] = vector3.f5533x;
        fArr[13] = vector3.f5534y;
        fArr[14] = vector3.f5535z;
        return this;
    }

    public String toString() {
        return "[" + this.val[0] + "|" + this.val[4] + "|" + this.val[8] + "|" + this.val[12] + "]\n[" + this.val[1] + "|" + this.val[5] + "|" + this.val[9] + "|" + this.val[13] + "]\n[" + this.val[2] + "|" + this.val[6] + "|" + this.val[10] + "|" + this.val[14] + "]\n[" + this.val[3] + "|" + this.val[7] + "|" + this.val[11] + "|" + this.val[15] + "]\n";
    }

    public Matrix4 translate(Vector3 vector3) {
        return translate(vector3.f5533x, vector3.f5534y, vector3.f5535z);
    }

    public Matrix4 trn(Vector3 vector3) {
        float[] fArr = this.val;
        fArr[12] = fArr[12] + vector3.f5533x;
        fArr[13] = fArr[13] + vector3.f5534y;
        fArr[14] = fArr[14] + vector3.f5535z;
        return this;
    }

    public static float det(float[] fArr) {
        float f = fArr[3];
        float f2 = fArr[6];
        float f3 = fArr[9];
        float f4 = fArr[12];
        float f5 = fArr[2];
        float f6 = fArr[7];
        float f7 = fArr[5];
        float f8 = fArr[10];
        float f9 = fArr[1];
        float f10 = fArr[11];
        float f11 = fArr[8];
        float f12 = fArr[13];
        float f13 = fArr[4];
        float f14 = fArr[0];
        float f15 = (((((((((((((f * f2) * f3) * f4) - (((f5 * f6) * f3) * f4)) - (((f * f7) * f8) * f4)) + (((f9 * f6) * f8) * f4)) + (((f5 * f7) * f10) * f4)) - (((f9 * f2) * f10) * f4)) - (((f * f2) * f11) * f12)) + (((f5 * f6) * f11) * f12)) + (((f * f13) * f8) * f12)) - (((f14 * f6) * f8) * f12)) - (((f5 * f13) * f10) * f12)) + (f14 * f2 * f10 * f12);
        float f16 = fArr[14];
        float f17 = fArr[15];
        return (((((((((((f15 + (((f * f7) * f11) * f16)) - (((f9 * f6) * f11) * f16)) - (((f * f13) * f3) * f16)) + (((f6 * f14) * f3) * f16)) + (((f9 * f13) * f10) * f16)) - (((f14 * f7) * f10) * f16)) - (((f5 * f7) * f11) * f17)) + (((f9 * f2) * f11) * f17)) + (((f5 * f13) * f3) * f17)) - (((f2 * f14) * f3) * f17)) - (((f9 * f13) * f8) * f17)) + (f14 * f7 * f8 * f17);
    }

    public static void mul(float[] fArr, float[] fArr2) {
        float f = fArr[0];
        float f2 = fArr2[0];
        float f3 = fArr[4];
        float f4 = fArr2[1];
        float f5 = fArr[8];
        float f6 = fArr2[2];
        float f7 = fArr[12];
        float f8 = fArr2[3];
        float f9 = (f * f2) + (f3 * f4) + (f5 * f6) + (f7 * f8);
        float f10 = fArr2[4];
        float f11 = fArr2[5];
        float f12 = fArr2[6];
        float f13 = fArr2[7];
        float f14 = (f * f10) + (f3 * f11) + (f5 * f12) + (f7 * f13);
        float f15 = fArr2[8];
        float f16 = fArr2[9];
        float f17 = fArr2[10];
        float f18 = fArr2[11];
        float f19 = (f * f15) + (f3 * f16) + (f5 * f17) + (f7 * f18);
        float f20 = fArr2[12];
        float f21 = fArr2[13];
        float f22 = fArr2[14];
        float f23 = fArr2[15];
        float f24 = (f * f20) + (f3 * f21) + (f5 * f22) + (f7 * f23);
        float f25 = fArr[1];
        float f26 = fArr[5];
        float f27 = fArr[9];
        float f28 = fArr[13];
        float f29 = (f25 * f2) + (f26 * f4) + (f27 * f6) + (f28 * f8);
        float f30 = (f25 * f10) + (f26 * f11) + (f27 * f12) + (f28 * f13);
        float f31 = (f25 * f15) + (f26 * f16) + (f27 * f17) + (f28 * f18);
        float f32 = (f25 * f20) + (f26 * f21) + (f27 * f22) + (f28 * f23);
        float f33 = fArr[2];
        float f34 = fArr[6];
        float f35 = fArr[10];
        float f36 = fArr[14];
        float f37 = (f33 * f10) + (f34 * f11) + (f35 * f12) + (f36 * f13);
        float f38 = fArr[3];
        float f39 = fArr[7];
        float f40 = (f2 * f38) + (f4 * f39);
        float f41 = fArr[11];
        float f42 = f40 + (f6 * f41);
        float f43 = fArr[15];
        fArr[0] = f9;
        fArr[1] = f29;
        fArr[2] = (f33 * f2) + (f34 * f4) + (f35 * f6) + (f36 * f8);
        fArr[3] = f42 + (f8 * f43);
        fArr[4] = f14;
        fArr[5] = f30;
        fArr[6] = f37;
        fArr[7] = (f10 * f38) + (f11 * f39) + (f12 * f41) + (f13 * f43);
        fArr[8] = f19;
        fArr[9] = f31;
        fArr[10] = (f33 * f15) + (f34 * f16) + (f35 * f17) + (f36 * f18);
        fArr[11] = (f15 * f38) + (f16 * f39) + (f17 * f41) + (f18 * f43);
        fArr[12] = f24;
        fArr[13] = f32;
        fArr[14] = (f33 * f20) + (f34 * f21) + (f35 * f22) + (f36 * f23);
        fArr[15] = (f38 * f20) + (f39 * f21) + (f41 * f22) + (f43 * f23);
    }

    public void extract4x3Matrix(float[] fArr) {
        float[] fArr2 = this.val;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        fArr[3] = fArr2[4];
        fArr[4] = fArr2[5];
        fArr[5] = fArr2[6];
        fArr[6] = fArr2[8];
        fArr[7] = fArr2[9];
        fArr[8] = fArr2[10];
        fArr[9] = fArr2[12];
        fArr[10] = fArr2[13];
        fArr[11] = fArr2[14];
    }

    public Quaternion getRotation(Quaternion quaternion) {
        return quaternion.setFromMatrix(this);
    }

    public float getScaleX() {
        if (MathUtils.isZero(this.val[4]) && MathUtils.isZero(this.val[8])) {
            return Math.abs(this.val[0]);
        }
        return (float) Math.sqrt(getScaleXSquared());
    }

    public float getScaleY() {
        if (MathUtils.isZero(this.val[1]) && MathUtils.isZero(this.val[9])) {
            return Math.abs(this.val[5]);
        }
        return (float) Math.sqrt(getScaleYSquared());
    }

    public float getScaleZ() {
        if (MathUtils.isZero(this.val[2]) && MathUtils.isZero(this.val[6])) {
            return Math.abs(this.val[10]);
        }
        return (float) Math.sqrt(getScaleZSquared());
    }

    public Vector3 getTranslation(Vector3 vector3) {
        float[] fArr = this.val;
        vector3.f5533x = fArr[12];
        vector3.f5534y = fArr[13];
        vector3.f5535z = fArr[14];
        return vector3;
    }

    public boolean hasRotationOrScaling() {
        if (MathUtils.isEqual(this.val[0], 1.0f) && MathUtils.isEqual(this.val[5], 1.0f) && MathUtils.isEqual(this.val[10], 1.0f) && MathUtils.isZero(this.val[4]) && MathUtils.isZero(this.val[8]) && MathUtils.isZero(this.val[1]) && MathUtils.isZero(this.val[9]) && MathUtils.isZero(this.val[2]) && MathUtils.isZero(this.val[6])) {
            return false;
        }
        return true;
    }

    public Matrix4 idt() {
        float[] fArr = this.val;
        fArr[0] = 1.0f;
        fArr[4] = 0.0f;
        fArr[8] = 0.0f;
        fArr[12] = 0.0f;
        fArr[1] = 0.0f;
        fArr[5] = 1.0f;
        fArr[9] = 0.0f;
        fArr[13] = 0.0f;
        fArr[2] = 0.0f;
        fArr[6] = 0.0f;
        fArr[10] = 1.0f;
        fArr[14] = 0.0f;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[15] = 1.0f;
        return this;
    }

    public Matrix4 mulLeft(Matrix4 matrix4) {
        Matrix4 matrix42 = f5468r;
        matrix42.set(matrix4);
        mul(matrix42.val, this.val);
        return set(matrix42);
    }

    public Matrix4 rotateTowardDirection(Vector3 vector3, Vector3 vector32) {
        Vector3 vector33 = f5464d;
        vector33.set(vector3).nor();
        Vector3 vector34 = f5465k;
        vector34.set(vector3).crs(vector32).nor();
        Vector3 vector35 = f5466p;
        vector35.set(vector34).crs(vector33).nor();
        float[] fArr = this.val;
        float f = fArr[0];
        float f2 = vector34.f5533x;
        float f3 = fArr[4];
        float f4 = vector34.f5534y;
        float f5 = fArr[8];
        float f6 = vector34.f5535z;
        float f7 = (f * f2) + (f3 * f4) + (f5 * f6);
        float f8 = vector35.f5533x;
        float f9 = vector35.f5534y;
        float f10 = vector35.f5535z;
        float f11 = vector33.f5533x;
        float f12 = vector33.f5534y;
        float f13 = vector33.f5535z;
        float f14 = (f * (-f11)) + (f3 * (-f12)) + (f5 * (-f13));
        float f15 = fArr[1];
        float f16 = fArr[5];
        float f17 = fArr[9];
        float f18 = (f15 * f2) + (f16 * f4) + (f17 * f6);
        float f19 = (f15 * (-f11)) + (f16 * (-f12)) + (f17 * (-f13));
        float f20 = fArr[2];
        float f21 = fArr[6];
        float f22 = fArr[10];
        float f23 = (f20 * f2) + (f21 * f4) + (f22 * f6);
        float f24 = fArr[3];
        float f25 = fArr[7];
        float f26 = fArr[11];
        fArr[0] = f7;
        fArr[1] = f18;
        fArr[2] = f23;
        fArr[3] = (f2 * f24) + (f4 * f25) + (f6 * f26);
        fArr[4] = (f * f8) + (f3 * f9) + (f5 * f10);
        fArr[5] = (f15 * f8) + (f16 * f9) + (f17 * f10);
        fArr[6] = (f20 * f8) + (f21 * f9) + (f22 * f10);
        fArr[7] = (f8 * f24) + (f9 * f25) + (f10 * f26);
        fArr[8] = f14;
        fArr[9] = f19;
        fArr[10] = (f20 * (-f11)) + (f21 * (-f12)) + (f22 * (-f13));
        fArr[11] = (f24 * (-f11)) + (f25 * (-f12)) + (f26 * (-f13));
        return this;
    }

    public Matrix4 rotateTowardTarget(Vector3 vector3, Vector3 vector32) {
        Vector3 vector33 = f5467q;
        float f = vector3.f5533x;
        float[] fArr = this.val;
        vector33.set(f - fArr[12], vector3.f5534y - fArr[13], vector3.f5535z - fArr[14]);
        return rotateTowardDirection(vector33, vector32);
    }

    public Matrix4 scale(float f, float f2, float f3) {
        float[] fArr = this.val;
        fArr[0] = fArr[0] * f;
        fArr[4] = fArr[4] * f2;
        fArr[8] = fArr[8] * f3;
        fArr[1] = fArr[1] * f;
        fArr[5] = fArr[5] * f2;
        fArr[9] = fArr[9] * f3;
        fArr[2] = fArr[2] * f;
        fArr[6] = fArr[6] * f2;
        fArr[10] = fArr[10] * f3;
        fArr[3] = fArr[3] * f;
        fArr[7] = fArr[7] * f2;
        fArr[11] = fArr[11] * f3;
        return this;
    }

    public Matrix4 set(float[] fArr) {
        float[] fArr2 = this.val;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        return this;
    }

    public Matrix4 setFromEulerAngles(float f, float f2, float f3) {
        Quaternion quaternion = f5462a;
        quaternion.setEulerAngles(f, f2, f3);
        return set(quaternion);
    }

    public Matrix4 setFromEulerAnglesRad(float f, float f2, float f3) {
        Quaternion quaternion = f5462a;
        quaternion.setEulerAnglesRad(f, f2, f3);
        return set(quaternion);
    }

    public Matrix4 setToOrtho(float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = f2 - f;
        float f8 = f4 - f3;
        float f9 = f6 - f5;
        float[] fArr = this.val;
        fArr[0] = 2.0f / f7;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 2.0f / f8;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = (-2.0f) / f9;
        fArr[11] = 0.0f;
        fArr[12] = (-(f2 + f)) / f7;
        fArr[13] = (-(f4 + f3)) / f8;
        fArr[14] = (-(f6 + f5)) / f9;
        fArr[15] = 1.0f;
        return this;
    }

    public Matrix4 setToOrtho2D(float f, float f2, float f3, float f4, float f5, float f6) {
        setToOrtho(f, f + f3, f2, f2 + f4, f5, f6);
        return this;
    }

    public Matrix4 setToWorld(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        Vector3 vector34 = f5470t;
        vector34.set(vector32).nor();
        Vector3 vector35 = f5469s;
        vector35.set(vector34).crs(vector33).nor();
        Vector3 vector36 = f5471u;
        vector36.set(vector35).crs(vector34).nor();
        set(vector35, vector36, vector34.scl(-1.0f), vector3);
        return this;
    }

    public Matrix4 toNormalMatrix() {
        float[] fArr = this.val;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        return inv().tra();
    }

    public Matrix4 tra() {
        float[] fArr = this.val;
        float f = fArr[4];
        float f2 = fArr[8];
        float f3 = fArr[12];
        float f4 = fArr[9];
        float f5 = fArr[13];
        float f6 = fArr[14];
        fArr[4] = fArr[1];
        fArr[8] = fArr[2];
        fArr[12] = fArr[3];
        fArr[1] = f;
        fArr[9] = fArr[6];
        fArr[13] = fArr[7];
        fArr[2] = f2;
        fArr[6] = f4;
        fArr[14] = fArr[11];
        fArr[3] = f3;
        fArr[7] = f5;
        fArr[11] = f6;
        return this;
    }

    public Matrix4 translate(float f, float f2, float f3) {
        float[] fArr = this.val;
        fArr[12] = fArr[12] + (fArr[0] * f) + (fArr[4] * f2) + (fArr[8] * f3);
        fArr[13] = fArr[13] + (fArr[1] * f) + (fArr[5] * f2) + (fArr[9] * f3);
        fArr[14] = fArr[14] + (fArr[2] * f) + (fArr[6] * f2) + (fArr[10] * f3);
        fArr[15] = fArr[15] + (fArr[3] * f) + (fArr[7] * f2) + (fArr[11] * f3);
        return this;
    }

    public Matrix4(Matrix4 matrix4) {
        this.val = new float[16];
        set(matrix4);
    }

    public Matrix4 rotate(float f, float f2, float f3, float f4) {
        if (f4 == 0.0f) {
            return this;
        }
        Quaternion quaternion = f5462a;
        quaternion.setFromAxis(f, f2, f3, f4);
        return rotate(quaternion);
    }

    public Matrix4 rotateRad(float f, float f2, float f3, float f4) {
        if (f4 == 0.0f) {
            return this;
        }
        Quaternion quaternion = f5462a;
        quaternion.setFromAxisRad(f, f2, f3, f4);
        return rotate(quaternion);
    }

    public Matrix4 set(Quaternion quaternion) {
        return set(quaternion.f5518x, quaternion.f5519y, quaternion.f5520z, quaternion.f5517w);
    }

    public Matrix4 setToRotation(float f, float f2, float f3, float f4) {
        if (f4 == 0.0f) {
            idt();
            return this;
        }
        return set(f5462a.setFromAxis(f, f2, f3, f4));
    }

    public Matrix4 setToRotationRad(float f, float f2, float f3, float f4) {
        if (f4 == 0.0f) {
            idt();
            return this;
        }
        return set(f5462a.setFromAxisRad(f, f2, f3, f4));
    }

    public Matrix4 scl(float f, float f2, float f3) {
        float[] fArr = this.val;
        fArr[0] = fArr[0] * f;
        fArr[5] = fArr[5] * f2;
        fArr[10] = fArr[10] * f3;
        return this;
    }

    public Matrix4 set(float f, float f2, float f3, float f4) {
        return set(0.0f, 0.0f, 0.0f, f, f2, f3, f4);
    }

    public Matrix4 setTranslation(float f, float f2, float f3) {
        float[] fArr = this.val;
        fArr[12] = f;
        fArr[13] = f2;
        fArr[14] = f3;
        return this;
    }

    public Matrix4 trn(float f, float f2, float f3) {
        float[] fArr = this.val;
        fArr[12] = fArr[12] + f;
        fArr[13] = fArr[13] + f2;
        fArr[14] = fArr[14] + f3;
        return this;
    }

    public Matrix4 rotate(Quaternion quaternion) {
        float f = quaternion.f5518x;
        float f2 = quaternion.f5519y;
        float f3 = quaternion.f5520z;
        float f4 = quaternion.f5517w;
        float f5 = f * f;
        float f6 = f * f2;
        float f7 = f * f3;
        float f8 = f * f4;
        float f9 = f2 * f2;
        float f10 = f2 * f3;
        float f11 = f2 * f4;
        float f12 = f3 * f3;
        float f13 = f3 * f4;
        float f14 = 1.0f - ((f9 + f12) * 2.0f);
        float f15 = (f6 - f13) * 2.0f;
        float f16 = (f7 + f11) * 2.0f;
        float f17 = (f6 + f13) * 2.0f;
        float f18 = 1.0f - ((f12 + f5) * 2.0f);
        float f19 = (f10 - f8) * 2.0f;
        float f20 = (f7 - f11) * 2.0f;
        float f21 = (f10 + f8) * 2.0f;
        float f22 = 1.0f - ((f5 + f9) * 2.0f);
        float[] fArr = this.val;
        float f23 = fArr[0];
        float f24 = fArr[4];
        float f25 = fArr[8];
        float f26 = (f23 * f14) + (f24 * f17) + (f25 * f20);
        float f27 = (f23 * f15) + (f24 * f18) + (f25 * f21);
        float f28 = (f23 * f16) + (f24 * f19) + (f25 * f22);
        float f29 = fArr[1];
        float f30 = fArr[5];
        float f31 = fArr[9];
        float f32 = (f29 * f14) + (f30 * f17) + (f31 * f20);
        float f33 = (f29 * f15) + (f30 * f18) + (f31 * f21);
        float f34 = (f29 * f16) + (f30 * f19) + (f31 * f22);
        float f35 = fArr[2];
        float f36 = fArr[6];
        float f37 = fArr[10];
        float f38 = (f35 * f14) + (f36 * f17) + (f37 * f20);
        float f39 = (f35 * f16) + (f36 * f19) + (f37 * f22);
        float f40 = fArr[3];
        float f41 = fArr[7];
        float f42 = fArr[11];
        fArr[0] = f26;
        fArr[1] = f32;
        fArr[2] = f38;
        fArr[3] = (f14 * f40) + (f17 * f41) + (f20 * f42);
        fArr[4] = f27;
        fArr[5] = f33;
        fArr[6] = (f35 * f15) + (f36 * f18) + (f37 * f21);
        fArr[7] = (f15 * f40) + (f18 * f41) + (f21 * f42);
        fArr[8] = f28;
        fArr[9] = f34;
        fArr[10] = f39;
        fArr[11] = (f40 * f16) + (f41 * f19) + (f42 * f22);
        return this;
    }

    public Matrix4 set(Vector3 vector3, Quaternion quaternion) {
        return set(vector3.f5533x, vector3.f5534y, vector3.f5535z, quaternion.f5518x, quaternion.f5519y, quaternion.f5520z, quaternion.f5517w);
    }

    public Matrix4 setToRotation(Vector3 vector3, Vector3 vector32) {
        return set(f5462a.setFromCross(vector3, vector32));
    }

    public Matrix4 setToScaling(float f, float f2, float f3) {
        idt();
        float[] fArr = this.val;
        fArr[0] = f;
        fArr[5] = f2;
        fArr[10] = f3;
        return this;
    }

    public Matrix4 setToTranslation(float f, float f2, float f3) {
        idt();
        float[] fArr = this.val;
        fArr[12] = f;
        fArr[13] = f2;
        fArr[14] = f3;
        return this;
    }

    public Matrix4(float[] fArr) {
        this.val = new float[16];
        set(fArr);
    }

    public Matrix4 set(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        float f8 = f4 * 2.0f;
        float f9 = f5 * 2.0f;
        float f10 = 2.0f * f6;
        float f11 = f7 * f8;
        float f12 = f7 * f9;
        float f13 = f7 * f10;
        float f14 = f8 * f4;
        float f15 = f4 * f9;
        float f16 = f4 * f10;
        float f17 = f9 * f5;
        float f18 = f5 * f10;
        float f19 = f10 * f6;
        float[] fArr = this.val;
        fArr[0] = 1.0f - (f17 + f19);
        fArr[4] = f15 - f13;
        fArr[8] = f16 + f12;
        fArr[12] = f;
        fArr[1] = f15 + f13;
        fArr[5] = 1.0f - (f19 + f14);
        fArr[9] = f18 - f11;
        fArr[13] = f2;
        fArr[2] = f16 - f12;
        fArr[6] = f18 + f11;
        fArr[10] = 1.0f - (f14 + f17);
        fArr[14] = f3;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[15] = 1.0f;
        return this;
    }

    public Matrix4 setToRotation(float f, float f2, float f3, float f4, float f5, float f6) {
        return set(f5462a.setFromCross(f, f2, f3, f4, f5, f6));
    }

    public Matrix4 scl(float f) {
        float[] fArr = this.val;
        fArr[0] = fArr[0] * f;
        fArr[5] = fArr[5] * f;
        fArr[10] = fArr[10] * f;
        return this;
    }

    public Matrix4 setAsAffine(Matrix4 matrix4) {
        float[] fArr = this.val;
        float[] fArr2 = matrix4.val;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[4] = fArr2[4];
        fArr[5] = fArr2[5];
        fArr[12] = fArr2[12];
        fArr[13] = fArr2[13];
        return this;
    }

    public Matrix4 setToTranslationAndScaling(float f, float f2, float f3, float f4, float f5, float f6) {
        idt();
        float[] fArr = this.val;
        fArr[12] = f;
        fArr[13] = f2;
        fArr[14] = f3;
        fArr[0] = f4;
        fArr[5] = f5;
        fArr[10] = f6;
        return this;
    }

    public Matrix4(Quaternion quaternion) {
        this.val = new float[16];
        set(quaternion);
    }

    public Matrix4 avg(Matrix4[] matrix4Arr) {
        float length = 1.0f / matrix4Arr.length;
        Vector3 vector3 = f5467q;
        Matrix4 matrix4 = matrix4Arr[0];
        Vector3 vector32 = f5471u;
        vector3.set(matrix4.getScale(vector32).scl(length));
        f5462a.set(matrix4Arr[0].getRotation(f5463b).exp(length));
        f5470t.set(matrix4Arr[0].getTranslation(vector32).scl(length));
        for (int i = 1; i < matrix4Arr.length; i++) {
            Vector3 vector33 = f5467q;
            Matrix4 matrix42 = matrix4Arr[i];
            Vector3 vector34 = f5471u;
            vector33.add(matrix42.getScale(vector34).scl(length));
            f5462a.mul(matrix4Arr[i].getRotation(f5463b).exp(length));
            f5470t.add(matrix4Arr[i].getTranslation(vector34).scl(length));
        }
        Quaternion quaternion = f5462a;
        quaternion.nor();
        setToScaling(f5467q);
        rotate(quaternion);
        setTranslation(f5470t);
        return this;
    }

    public Matrix4(Vector3 vector3, Quaternion quaternion, Vector3 vector32) {
        this.val = new float[16];
        set(vector3, quaternion, vector32);
    }

    public Matrix4 setToLookAt(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        Vector3 vector34 = f5467q;
        vector34.set(vector32).sub(vector3);
        setToLookAt(vector34, vector33);
        mul(f5468r.setToTranslation(-vector3.f5533x, -vector3.f5534y, -vector3.f5535z));
        return this;
    }

    public static boolean inv(float[] fArr) {
        float det = det(fArr);
        if (det == 0.0f) {
            return false;
        }
        float f = fArr[9];
        float f2 = fArr[14];
        float f3 = fArr[7];
        float f4 = fArr[13];
        float f5 = fArr[10];
        float f6 = fArr[6];
        float f7 = fArr[11];
        float f8 = fArr[5];
        float f9 = fArr[15];
        float f10 = fArr[12];
        float f11 = fArr[8];
        float f12 = fArr[4];
        float f13 = ((((((f10 * f5) * f3) - ((f11 * f2) * f3)) - ((f10 * f6) * f7)) + ((f12 * f2) * f7)) + ((f11 * f6) * f9)) - ((f12 * f5) * f9);
        float f14 = ((((((f11 * f4) * f3) - ((f10 * f) * f3)) + ((f10 * f8) * f7)) - ((f12 * f4) * f7)) - ((f11 * f8) * f9)) + (f12 * f * f9);
        float f15 = ((((((f10 * f) * f6) - ((f11 * f4) * f6)) - ((f10 * f8) * f5)) + ((f12 * f4) * f5)) + ((f11 * f8) * f2)) - ((f12 * f) * f2);
        float f16 = fArr[3];
        float f17 = fArr[2];
        float f18 = fArr[1];
        float f19 = ((((((f4 * f5) * f16) - ((f * f2) * f16)) - ((f4 * f17) * f7)) + ((f18 * f2) * f7)) + ((f * f17) * f9)) - ((f18 * f5) * f9);
        float f20 = fArr[0];
        float f21 = ((((((f11 * f2) * f16) - ((f10 * f5) * f16)) + ((f10 * f17) * f7)) - ((f20 * f2) * f7)) - ((f11 * f17) * f9)) + (f20 * f5 * f9);
        float f22 = ((((((f10 * f) * f16) - ((f11 * f4) * f16)) - ((f10 * f18) * f7)) + ((f20 * f4) * f7)) + ((f11 * f18) * f9)) - ((f20 * f) * f9);
        float f23 = ((((((f11 * f4) * f17) - ((f10 * f) * f17)) + ((f10 * f18) * f5)) - ((f20 * f4) * f5)) - ((f11 * f18) * f2)) + (f20 * f * f2);
        float f24 = ((((((f8 * f2) * f16) - ((f4 * f6) * f16)) + ((f4 * f17) * f3)) - ((f18 * f2) * f3)) - ((f8 * f17) * f9)) + (f18 * f6 * f9);
        float f25 = ((((((f10 * f6) * f16) - ((f12 * f2) * f16)) - ((f10 * f17) * f3)) + ((f20 * f2) * f3)) + ((f12 * f17) * f9)) - ((f20 * f6) * f9);
        float f26 = ((((((f12 * f4) * f16) - ((f10 * f8) * f16)) + ((f10 * f18) * f3)) - ((f20 * f4) * f3)) - ((f12 * f18) * f9)) + (f20 * f8 * f9);
        float f27 = ((((((f10 * f8) * f17) - ((f12 * f4) * f17)) - ((f10 * f18) * f6)) + ((f4 * f20) * f6)) + ((f12 * f18) * f2)) - ((f20 * f8) * f2);
        float f28 = ((((((f * f6) * f16) - ((f8 * f5) * f16)) - ((f * f17) * f3)) + ((f18 * f5) * f3)) + ((f8 * f17) * f7)) - ((f18 * f6) * f7);
        float f29 = ((((((f11 * f8) * f16) - ((f12 * f) * f16)) - ((f11 * f18) * f3)) + ((f20 * f) * f3)) + ((f12 * f18) * f7)) - ((f20 * f8) * f7);
        float f30 = 1.0f / det;
        fArr[0] = (((((((f * f2) * f3) - ((f4 * f5) * f3)) + ((f4 * f6) * f7)) - ((f8 * f2) * f7)) - ((f * f6) * f9)) + (f8 * f5 * f9)) * f30;
        fArr[1] = f19 * f30;
        fArr[2] = f24 * f30;
        fArr[3] = f28 * f30;
        fArr[4] = f13 * f30;
        fArr[5] = f21 * f30;
        fArr[6] = f25 * f30;
        fArr[7] = (((((((f12 * f5) * f16) - ((f11 * f6) * f16)) + ((f11 * f17) * f3)) - ((f20 * f5) * f3)) - ((f12 * f17) * f7)) + (f20 * f6 * f7)) * f30;
        fArr[8] = f14 * f30;
        fArr[9] = f22 * f30;
        fArr[10] = f26 * f30;
        fArr[11] = f29 * f30;
        fArr[12] = f15 * f30;
        fArr[13] = f23 * f30;
        fArr[14] = f27 * f30;
        fArr[15] = (((((((f12 * f) * f17) - ((f11 * f8) * f17)) + ((f11 * f18) * f6)) - ((f * f20) * f6)) - ((f12 * f18) * f5)) + (f20 * f8 * f5)) * f30;
        return true;
    }

    public Matrix4 setToProjection(float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = f5 * 2.0f;
        float f8 = f2 - f;
        float f9 = f4 - f3;
        float f10 = f5 - f6;
        float f11 = (f6 + f5) / f10;
        float f12 = ((f6 * 2.0f) * f5) / f10;
        float[] fArr = this.val;
        fArr[0] = f7 / f8;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = f7 / f9;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = (f2 + f) / f8;
        fArr[9] = (f4 + f3) / f9;
        fArr[10] = f11;
        fArr[11] = -1.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = f12;
        fArr[15] = 0.0f;
        return this;
    }

    public Matrix4 avg(Matrix4[] matrix4Arr, float[] fArr) {
        Vector3 vector3 = f5467q;
        Matrix4 matrix4 = matrix4Arr[0];
        Vector3 vector32 = f5471u;
        vector3.set(matrix4.getScale(vector32).scl(fArr[0]));
        f5462a.set(matrix4Arr[0].getRotation(f5463b).exp(fArr[0]));
        f5470t.set(matrix4Arr[0].getTranslation(vector32).scl(fArr[0]));
        for (int i = 1; i < matrix4Arr.length; i++) {
            Vector3 vector33 = f5467q;
            Matrix4 matrix42 = matrix4Arr[i];
            Vector3 vector34 = f5471u;
            vector33.add(matrix42.getScale(vector34).scl(fArr[i]));
            f5462a.mul(matrix4Arr[i].getRotation(f5463b).exp(fArr[i]));
            f5470t.add(matrix4Arr[i].getTranslation(vector34).scl(fArr[i]));
        }
        Quaternion quaternion = f5462a;
        quaternion.nor();
        setToScaling(f5467q);
        rotate(quaternion);
        setTranslation(f5470t);
        return this;
    }

    public Matrix4 rotate(Vector3 vector3, Vector3 vector32) {
        return rotate(f5462a.setFromCross(vector3, vector32));
    }

    public Matrix4 set(Vector3 vector3, Quaternion quaternion, Vector3 vector32) {
        return set(vector3.f5533x, vector3.f5534y, vector3.f5535z, quaternion.f5518x, quaternion.f5519y, quaternion.f5520z, quaternion.f5517w, vector32.f5533x, vector32.f5534y, vector32.f5535z);
    }

    public Matrix4 set(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        float f11 = f4 * 2.0f;
        float f12 = f5 * 2.0f;
        float f13 = 2.0f * f6;
        float f14 = f7 * f11;
        float f15 = f7 * f12;
        float f16 = f7 * f13;
        float f17 = f11 * f4;
        float f18 = f4 * f12;
        float f19 = f4 * f13;
        float f20 = f12 * f5;
        float f21 = f5 * f13;
        float f22 = f13 * f6;
        float[] fArr = this.val;
        fArr[0] = (1.0f - (f20 + f22)) * f8;
        fArr[4] = (f18 - f16) * f9;
        fArr[8] = (f19 + f15) * f10;
        fArr[12] = f;
        fArr[1] = f8 * (f18 + f16);
        fArr[5] = (1.0f - (f22 + f17)) * f9;
        fArr[9] = (f21 - f14) * f10;
        fArr[13] = f2;
        fArr[2] = f8 * (f19 - f15);
        fArr[6] = f9 * (f21 + f14);
        fArr[10] = (1.0f - (f17 + f20)) * f10;
        fArr[14] = f3;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[15] = 1.0f;
        return this;
    }

    public Matrix4 set(Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34) {
        float[] fArr = this.val;
        fArr[0] = vector3.f5533x;
        fArr[4] = vector3.f5534y;
        fArr[8] = vector3.f5535z;
        fArr[1] = vector32.f5533x;
        fArr[5] = vector32.f5534y;
        fArr[9] = vector32.f5535z;
        fArr[2] = vector33.f5533x;
        fArr[6] = vector33.f5534y;
        fArr[10] = vector33.f5535z;
        fArr[12] = vector34.f5533x;
        fArr[13] = vector34.f5534y;
        fArr[14] = vector34.f5535z;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[15] = 1.0f;
        return this;
    }

    public Matrix4 set(Matrix3 matrix3) {
        float[] fArr = this.val;
        float[] fArr2 = matrix3.val;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        fArr[3] = 0.0f;
        fArr[4] = fArr2[3];
        fArr[5] = fArr2[4];
        fArr[6] = fArr2[5];
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = fArr2[6];
        fArr[13] = fArr2[7];
        fArr[14] = 0.0f;
        fArr[15] = fArr2[8];
        return this;
    }

    public Matrix4 set(Affine2 affine2) {
        float[] fArr = this.val;
        fArr[0] = affine2.m00;
        fArr[1] = affine2.m10;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = affine2.m01;
        fArr[5] = affine2.m11;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = affine2.m02;
        fArr[13] = affine2.m12;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
        return this;
    }
}
