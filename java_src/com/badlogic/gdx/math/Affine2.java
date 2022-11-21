package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.Serializable;
/* loaded from: classes.dex */
public final class Affine2 implements Serializable {
    public float m00 = 1.0f;
    public float m01 = 0.0f;
    public float m02 = 0.0f;
    public float m10 = 0.0f;
    public float m11 = 1.0f;
    public float m12 = 0.0f;

    public Affine2() {
    }

    public float det() {
        return (this.m00 * this.m11) - (this.m01 * this.m10);
    }

    public boolean isIdt() {
        return this.m00 == 1.0f && this.m02 == 0.0f && this.m12 == 0.0f && this.m11 == 1.0f && this.m01 == 0.0f && this.m10 == 0.0f;
    }

    public boolean isTranslation() {
        return this.m00 == 1.0f && this.m11 == 1.0f && this.m01 == 0.0f && this.m10 == 0.0f;
    }

    public Affine2 preRotate(float f) {
        if (f == 0.0f) {
            return this;
        }
        float cosDeg = MathUtils.cosDeg(f);
        float sinDeg = MathUtils.sinDeg(f);
        float f2 = this.m00;
        float f3 = this.m10;
        float f4 = this.m01;
        float f5 = this.m11;
        float f6 = this.m02;
        float f7 = this.m12;
        this.m00 = (cosDeg * f2) - (sinDeg * f3);
        this.m01 = (cosDeg * f4) - (sinDeg * f5);
        this.m02 = (cosDeg * f6) - (sinDeg * f7);
        this.m10 = (f2 * sinDeg) + (f3 * cosDeg);
        this.m11 = (f4 * sinDeg) + (f5 * cosDeg);
        this.m12 = (sinDeg * f6) + (cosDeg * f7);
        return this;
    }

    public Affine2 preRotateRad(float f) {
        if (f == 0.0f) {
            return this;
        }
        float cos = MathUtils.cos(f);
        float sin = MathUtils.sin(f);
        float f2 = this.m00;
        float f3 = this.m10;
        float f4 = this.m01;
        float f5 = this.m11;
        float f6 = this.m02;
        float f7 = this.m12;
        this.m00 = (cos * f2) - (sin * f3);
        this.m01 = (cos * f4) - (sin * f5);
        this.m02 = (cos * f6) - (sin * f7);
        this.m10 = (f2 * sin) + (f3 * cos);
        this.m11 = (f4 * sin) + (f5 * cos);
        this.m12 = (sin * f6) + (cos * f7);
        return this;
    }

    public Affine2 preScale(float f, float f2) {
        this.m00 *= f;
        this.m01 *= f;
        this.m02 *= f;
        this.m10 *= f2;
        this.m11 *= f2;
        this.m12 *= f2;
        return this;
    }

    public Affine2 preShear(float f, float f2) {
        float f3 = this.m00;
        float f4 = this.m10;
        float f5 = this.m01;
        float f6 = this.m11;
        float f7 = this.m02;
        float f8 = this.m12;
        this.m00 = (f * f4) + f3;
        this.m01 = (f * f6) + f5;
        this.m02 = (f * f8) + f7;
        this.m10 = f4 + (f3 * f2);
        this.m11 = f6 + (f5 * f2);
        this.m12 = f8 + (f2 * f7);
        return this;
    }

    public Affine2 preTranslate(float f, float f2) {
        this.m02 += f;
        this.m12 += f2;
        return this;
    }

    public Affine2 rotate(float f) {
        if (f == 0.0f) {
            return this;
        }
        float cosDeg = MathUtils.cosDeg(f);
        float sinDeg = MathUtils.sinDeg(f);
        float f2 = this.m00;
        float f3 = this.m01;
        float f4 = (f2 * cosDeg) + (f3 * sinDeg);
        float f5 = -sinDeg;
        float f6 = (f2 * f5) + (f3 * cosDeg);
        float f7 = this.m10;
        float f8 = this.m11;
        this.m00 = f4;
        this.m01 = f6;
        this.m10 = (f7 * cosDeg) + (sinDeg * f8);
        this.m11 = (f7 * f5) + (f8 * cosDeg);
        return this;
    }

    public Affine2 rotateRad(float f) {
        if (f == 0.0f) {
            return this;
        }
        float cos = MathUtils.cos(f);
        float sin = MathUtils.sin(f);
        float f2 = this.m00;
        float f3 = this.m01;
        float f4 = (f2 * cos) + (f3 * sin);
        float f5 = -sin;
        float f6 = (f2 * f5) + (f3 * cos);
        float f7 = this.m10;
        float f8 = this.m11;
        this.m00 = f4;
        this.m01 = f6;
        this.m10 = (f7 * cos) + (sin * f8);
        this.m11 = (f7 * f5) + (f8 * cos);
        return this;
    }

    public Affine2 scale(float f, float f2) {
        this.m00 *= f;
        this.m01 *= f2;
        this.m10 *= f;
        this.m11 *= f2;
        return this;
    }

    public Affine2 set(Affine2 affine2) {
        this.m00 = affine2.m00;
        this.m01 = affine2.m01;
        this.m02 = affine2.m02;
        this.m10 = affine2.m10;
        this.m11 = affine2.m11;
        this.m12 = affine2.m12;
        return this;
    }

    public Affine2 setToRotation(float f) {
        float cosDeg = MathUtils.cosDeg(f);
        float sinDeg = MathUtils.sinDeg(f);
        this.m00 = cosDeg;
        this.m01 = -sinDeg;
        this.m02 = 0.0f;
        this.m10 = sinDeg;
        this.m11 = cosDeg;
        this.m12 = 0.0f;
        return this;
    }

    public Affine2 setToScaling(float f, float f2) {
        this.m00 = f;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = f2;
        this.m12 = 0.0f;
        return this;
    }

    public Affine2 setToShearing(float f, float f2) {
        this.m00 = 1.0f;
        this.m01 = f;
        this.m02 = 0.0f;
        this.m10 = f2;
        this.m11 = 1.0f;
        this.m12 = 0.0f;
        return this;
    }

    public Affine2 setToTranslation(float f, float f2) {
        this.m00 = 1.0f;
        this.m01 = 0.0f;
        this.m02 = f;
        this.m10 = 0.0f;
        this.m11 = 1.0f;
        this.m12 = f2;
        return this;
    }

    public Affine2 setToTrnRotRadScl(float f, float f2, float f3, float f4, float f5) {
        this.m02 = f;
        this.m12 = f2;
        if (f3 == 0.0f) {
            this.m00 = f4;
            this.m01 = 0.0f;
            this.m10 = 0.0f;
            this.m11 = f5;
        } else {
            float sin = MathUtils.sin(f3);
            float cos = MathUtils.cos(f3);
            this.m00 = cos * f4;
            this.m01 = (-sin) * f5;
            this.m10 = sin * f4;
            this.m11 = cos * f5;
        }
        return this;
    }

    public Affine2 setToTrnRotScl(float f, float f2, float f3, float f4, float f5) {
        this.m02 = f;
        this.m12 = f2;
        if (f3 == 0.0f) {
            this.m00 = f4;
            this.m01 = 0.0f;
            this.m10 = 0.0f;
            this.m11 = f5;
        } else {
            float sinDeg = MathUtils.sinDeg(f3);
            float cosDeg = MathUtils.cosDeg(f3);
            this.m00 = cosDeg * f4;
            this.m01 = (-sinDeg) * f5;
            this.m10 = sinDeg * f4;
            this.m11 = cosDeg * f5;
        }
        return this;
    }

    public Affine2 setToTrnScl(float f, float f2, float f3, float f4) {
        this.m00 = f3;
        this.m01 = 0.0f;
        this.m02 = f;
        this.m10 = 0.0f;
        this.m11 = f4;
        this.m12 = f2;
        return this;
    }

    public Affine2 shear(float f, float f2) {
        float f3 = this.m00;
        float f4 = this.m01;
        this.m00 = (f2 * f4) + f3;
        this.m01 = f4 + (f3 * f);
        float f5 = this.m10;
        float f6 = this.m11;
        this.m10 = (f2 * f6) + f5;
        this.m11 = f6 + (f * f5);
        return this;
    }

    public String toString() {
        return "[" + this.m00 + "|" + this.m01 + "|" + this.m02 + "]\n[" + this.m10 + "|" + this.m11 + "|" + this.m12 + "]\n[0.0|0.0|0.1]";
    }

    public Affine2 translate(float f, float f2) {
        this.m02 += (this.m00 * f) + (this.m01 * f2);
        this.m12 += (this.m10 * f) + (this.m11 * f2);
        return this;
    }

    public void applyTo(Vector2 vector2) {
        float f = vector2.f5527x;
        float f2 = vector2.f5528y;
        vector2.f5527x = (this.m00 * f) + (this.m01 * f2) + this.m02;
        vector2.f5528y = (this.m10 * f) + (this.m11 * f2) + this.m12;
    }

    public Vector2 getTranslation(Vector2 vector2) {
        vector2.f5527x = this.m02;
        vector2.f5528y = this.m12;
        return vector2;
    }

    public Affine2 idt() {
        this.m00 = 1.0f;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = 1.0f;
        this.m12 = 0.0f;
        return this;
    }

    public Affine2 mul(Affine2 affine2) {
        float f = this.m00;
        float f2 = affine2.m00;
        float f3 = this.m01;
        float f4 = affine2.m10;
        float f5 = (f * f2) + (f3 * f4);
        float f6 = affine2.m01;
        float f7 = affine2.m11;
        float f8 = (f * f6) + (f3 * f7);
        float f9 = affine2.m02;
        float f10 = affine2.m12;
        float f11 = (f * f9) + (f3 * f10) + this.m02;
        float f12 = this.m10;
        float f13 = this.m11;
        this.m00 = f5;
        this.m01 = f8;
        this.m02 = f11;
        this.m10 = (f2 * f12) + (f4 * f13);
        this.m11 = (f6 * f12) + (f7 * f13);
        this.m12 = (f12 * f9) + (f13 * f10) + this.m12;
        return this;
    }

    public Affine2 preMul(Affine2 affine2) {
        float f = affine2.m00;
        float f2 = this.m00;
        float f3 = affine2.m01;
        float f4 = this.m10;
        float f5 = (f * f2) + (f3 * f4);
        float f6 = this.m01;
        float f7 = this.m11;
        float f8 = (f * f6) + (f3 * f7);
        float f9 = this.m02;
        float f10 = this.m12;
        float f11 = (f * f9) + (f3 * f10) + affine2.m02;
        float f12 = affine2.m10;
        float f13 = affine2.m11;
        this.m00 = f5;
        this.m01 = f8;
        this.m02 = f11;
        this.m10 = (f2 * f12) + (f4 * f13);
        this.m11 = (f6 * f12) + (f7 * f13);
        this.m12 = (f12 * f9) + (f13 * f10) + affine2.m12;
        return this;
    }

    public Affine2 setToProduct(Affine2 affine2, Affine2 affine22) {
        float f = affine2.m00 * affine22.m00;
        float f2 = affine2.m01;
        float f3 = affine22.m10;
        this.m00 = f + (f2 * f3);
        float f4 = affine2.m00;
        float f5 = affine22.m11;
        this.m01 = (affine22.m01 * f4) + (f2 * f5);
        float f6 = f4 * affine22.m02;
        float f7 = affine2.m01;
        float f8 = affine22.m12;
        this.m02 = f6 + (f7 * f8) + affine2.m02;
        float f9 = affine2.m10 * affine22.m00;
        float f10 = affine2.m11;
        this.m10 = f9 + (f3 * f10);
        float f11 = affine2.m10;
        this.m11 = (affine22.m01 * f11) + (f10 * f5);
        this.m12 = (f11 * affine22.m02) + (affine2.m11 * f8) + affine2.m12;
        return this;
    }

    public Affine2 inv() {
        float det = det();
        if (det != 0.0f) {
            float f = 1.0f / det;
            float f2 = this.m11;
            float f3 = this.m01;
            float f4 = -f3;
            float f5 = this.m12;
            float f6 = this.m02;
            float f7 = this.m10;
            float f8 = this.m00;
            this.m00 = f2 * f;
            this.m01 = f4 * f;
            this.m02 = ((f3 * f5) - (f2 * f6)) * f;
            this.m10 = (-f7) * f;
            this.m11 = f8 * f;
            this.m12 = f * ((f7 * f6) - (f5 * f8));
            return this;
        }
        throw new GdxRuntimeException("Can't invert a singular affine matrix");
    }

    public Affine2 preTranslate(Vector2 vector2) {
        return preTranslate(vector2.f5527x, vector2.f5528y);
    }

    public Affine2 setToRotationRad(float f) {
        float cos = MathUtils.cos(f);
        float sin = MathUtils.sin(f);
        this.m00 = cos;
        this.m01 = -sin;
        this.m02 = 0.0f;
        this.m10 = sin;
        this.m11 = cos;
        this.m12 = 0.0f;
        return this;
    }

    public Affine2 translate(Vector2 vector2) {
        return translate(vector2.f5527x, vector2.f5528y);
    }

    public Affine2(Affine2 affine2) {
        set(affine2);
    }

    public Affine2 scale(Vector2 vector2) {
        return scale(vector2.f5527x, vector2.f5528y);
    }

    public Affine2 preScale(Vector2 vector2) {
        return preScale(vector2.f5527x, vector2.f5528y);
    }

    public Affine2 set(Matrix3 matrix3) {
        float[] fArr = matrix3.val;
        this.m00 = fArr[0];
        this.m01 = fArr[3];
        this.m02 = fArr[6];
        this.m10 = fArr[1];
        this.m11 = fArr[4];
        this.m12 = fArr[7];
        return this;
    }

    public Affine2 setToScaling(Vector2 vector2) {
        return setToScaling(vector2.f5527x, vector2.f5528y);
    }

    public Affine2 setToShearing(Vector2 vector2) {
        return setToShearing(vector2.f5527x, vector2.f5528y);
    }

    public Affine2 setToTranslation(Vector2 vector2) {
        return setToTranslation(vector2.f5527x, vector2.f5528y);
    }

    public Affine2 setToTrnScl(Vector2 vector2, Vector2 vector22) {
        return setToTrnScl(vector2.f5527x, vector2.f5528y, vector22.f5527x, vector22.f5528y);
    }

    public Affine2 shear(Vector2 vector2) {
        return shear(vector2.f5527x, vector2.f5528y);
    }

    public Affine2 setToRotation(float f, float f2) {
        this.m00 = f;
        this.m01 = -f2;
        this.m02 = 0.0f;
        this.m10 = f2;
        this.m11 = f;
        this.m12 = 0.0f;
        return this;
    }

    public Affine2 preShear(Vector2 vector2) {
        return preShear(vector2.f5527x, vector2.f5528y);
    }

    public Affine2 setToTrnRotRadScl(Vector2 vector2, float f, Vector2 vector22) {
        return setToTrnRotRadScl(vector2.f5527x, vector2.f5528y, f, vector22.f5527x, vector22.f5528y);
    }

    public Affine2 setToTrnRotScl(Vector2 vector2, float f, Vector2 vector22) {
        return setToTrnRotScl(vector2.f5527x, vector2.f5528y, f, vector22.f5527x, vector22.f5528y);
    }

    public Affine2 set(Matrix4 matrix4) {
        float[] fArr = matrix4.val;
        this.m00 = fArr[0];
        this.m01 = fArr[4];
        this.m02 = fArr[12];
        this.m10 = fArr[1];
        this.m11 = fArr[5];
        this.m12 = fArr[13];
        return this;
    }
}
