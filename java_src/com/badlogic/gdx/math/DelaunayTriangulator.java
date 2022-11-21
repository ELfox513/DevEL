package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.BooleanArray;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.ShortArray;
/* loaded from: classes.dex */
public class DelaunayTriangulator {

    /* renamed from: b */
    public float[] f5389b;

    /* renamed from: a */
    public final IntArray f5388a = new IntArray();

    /* renamed from: c */
    public final ShortArray f5390c = new ShortArray(false, 16);

    /* renamed from: d */
    public final ShortArray f5391d = new ShortArray(false, 0);

    /* renamed from: e */
    public final IntArray f5392e = new IntArray();

    /* renamed from: f */
    public final BooleanArray f5393f = new BooleanArray(false, 16);

    /* renamed from: g */
    public final float[] f5394g = new float[6];

    /* renamed from: h */
    public final Vector2 f5395h = new Vector2();

    public ShortArray computeTriangles(FloatArray floatArray, boolean z) {
        return computeTriangles(floatArray.items, 0, floatArray.size, z);
    }

    /* renamed from: a */
    public final int m23934a(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        float f9;
        float f10;
        float f11;
        float abs = Math.abs(f4 - f6);
        float abs2 = Math.abs(f6 - f8);
        if (abs < 1.0E-6f) {
            if (abs2 < 1.0E-6f) {
                return 2;
            }
            f11 = (f3 + f5) / 2.0f;
            f10 = (((-(f7 - f5)) / (f8 - f6)) * (f11 - ((f7 + f5) / 2.0f))) + ((f8 + f6) / 2.0f);
        } else {
            float f12 = (-(f5 - f3)) / (f6 - f4);
            float f13 = (f3 + f5) / 2.0f;
            float f14 = (f4 + f6) / 2.0f;
            if (abs2 < 1.0E-6f) {
                f9 = (f7 + f5) / 2.0f;
            } else {
                float f15 = (-(f7 - f5)) / (f8 - f6);
                f9 = ((((f12 * f13) - (((f7 + f5) / 2.0f) * f15)) + ((f8 + f6) / 2.0f)) - f14) / (f12 - f15);
            }
            f10 = f14 + (f12 * (f9 - f13));
            f11 = f9;
        }
        float f16 = f5 - f11;
        float f17 = f6 - f10;
        float f18 = (f16 * f16) + (f17 * f17);
        float f19 = f - f11;
        float f20 = f19 * f19;
        float f21 = f2 - f10;
        if (((f21 * f21) + f20) - f18 <= 1.0E-6f) {
            return 0;
        }
        if (f <= f11 || f20 <= f18) {
            return 2;
        }
        return 1;
    }

    /* renamed from: b */
    public final int m23933b(float[] fArr, int i, int i2, short[] sArr) {
        float f;
        float f2 = fArr[i];
        int i3 = i + 2;
        while (i3 < i2) {
            while (i3 < i2 && fArr[i3] <= f2) {
                i3 += 2;
            }
            while (true) {
                f = fArr[i2];
                if (f <= f2) {
                    break;
                }
                i2 -= 2;
            }
            if (i3 < i2) {
                float f3 = fArr[i3];
                fArr[i3] = f;
                fArr[i2] = f3;
                int i4 = i3 + 1;
                float f4 = fArr[i4];
                int i5 = i2 + 1;
                fArr[i4] = fArr[i5];
                fArr[i5] = f4;
                int i6 = i3 / 2;
                short s = sArr[i6];
                int i7 = i2 / 2;
                sArr[i6] = sArr[i7];
                sArr[i7] = s;
            }
        }
        float f5 = fArr[i2];
        if (f2 > f5) {
            fArr[i] = f5;
            fArr[i2] = f2;
            int i8 = i + 1;
            float f6 = fArr[i8];
            int i9 = i2 + 1;
            fArr[i8] = fArr[i9];
            fArr[i9] = f6;
            int i10 = i / 2;
            short s2 = sArr[i10];
            int i11 = i2 / 2;
            sArr[i10] = sArr[i11];
            sArr[i11] = s2;
        }
        return i2;
    }

    /* renamed from: c */
    public final void m23932c(float[] fArr, int i) {
        int i2 = i / 2;
        this.f5391d.clear();
        this.f5391d.ensureCapacity(i2);
        short[] sArr = this.f5391d.items;
        for (short s = 0; s < i2; s = (short) (s + 1)) {
            sArr[s] = s;
        }
        IntArray intArray = this.f5388a;
        intArray.add(0);
        intArray.add((i - 1) - 1);
        while (intArray.size > 0) {
            int pop = intArray.pop();
            int pop2 = intArray.pop();
            if (pop > pop2) {
                int m23933b = m23933b(fArr, pop2, pop, sArr);
                int i3 = m23933b - pop2;
                int i4 = pop - m23933b;
                if (i3 > i4) {
                    intArray.add(pop2);
                    intArray.add(m23933b - 2);
                }
                intArray.add(m23933b + 2);
                intArray.add(pop);
                if (i4 >= i3) {
                    intArray.add(pop2);
                    intArray.add(m23933b - 2);
                }
            }
        }
    }

    public ShortArray computeTriangles(float[] fArr, boolean z) {
        return computeTriangles(fArr, 0, fArr.length, z);
    }

    public void trim(ShortArray shortArray, float[] fArr, float[] fArr2, int i, int i2) {
        short[] sArr = shortArray.items;
        for (int i3 = shortArray.size - 1; i3 >= 0; i3 -= 3) {
            int i4 = i3 - 2;
            int i5 = sArr[i4] * 2;
            int i6 = i3 - 1;
            int i7 = sArr[i6] * 2;
            int i8 = sArr[i3] * 2;
            GeometryUtils.triangleCentroid(fArr[i5], fArr[i5 + 1], fArr[i7], fArr[i7 + 1], fArr[i8], fArr[i8 + 1], this.f5395h);
            Vector2 vector2 = this.f5395h;
            if (!Intersector.isPointInPolygon(fArr2, i, i2, vector2.f5527x, vector2.f5528y)) {
                shortArray.removeIndex(i3);
                shortArray.removeIndex(i6);
                shortArray.removeIndex(i4);
            }
        }
    }

    public ShortArray computeTriangles(float[] fArr, int i, int i2, boolean z) {
        float[] fArr2;
        int i3;
        int i4;
        int i5;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float[] fArr3;
        int i6;
        int i7;
        boolean[] zArr;
        short[] sArr;
        int i8;
        IntArray intArray;
        float[] fArr4;
        ShortArray shortArray;
        BooleanArray booleanArray;
        if (i2 <= 32767) {
            ShortArray shortArray2 = this.f5390c;
            shortArray2.clear();
            if (i2 < 6) {
                return shortArray2;
            }
            shortArray2.ensureCapacity(i2);
            if (z) {
                fArr2 = fArr;
                i3 = i;
            } else {
                float[] fArr5 = this.f5389b;
                if (fArr5 == null || fArr5.length < i2) {
                    this.f5389b = new float[i2];
                }
                System.arraycopy(fArr, i, this.f5389b, 0, i2);
                float[] fArr6 = this.f5389b;
                m23932c(fArr6, i2);
                fArr2 = fArr6;
                i3 = 0;
            }
            int i9 = i3 + i2;
            float f7 = fArr2[0];
            int i10 = 1;
            float f8 = fArr2[1];
            int i11 = i3 + 2;
            float f9 = f7;
            float f10 = f8;
            while (i11 < i9) {
                float f11 = fArr2[i11];
                if (f11 < f9) {
                    f9 = f11;
                }
                if (f11 > f7) {
                    f7 = f11;
                }
                int i12 = i11 + 1;
                float f12 = fArr2[i12];
                if (f12 < f8) {
                    f8 = f12;
                }
                if (f12 > f10) {
                    f10 = f12;
                }
                i11 = i12 + 1;
            }
            float f13 = f7 - f9;
            float f14 = f10 - f8;
            if (f13 <= f14) {
                f13 = f14;
            }
            float f15 = f13 * 20.0f;
            float f16 = (f7 + f9) / 2.0f;
            float f17 = (f10 + f8) / 2.0f;
            float[] fArr7 = this.f5394g;
            fArr7[0] = f16 - f15;
            float f18 = f17 - f15;
            fArr7[1] = f18;
            fArr7[2] = f16;
            fArr7[3] = f17 + f15;
            fArr7[4] = f16 + f15;
            fArr7[5] = f18;
            IntArray intArray2 = this.f5392e;
            intArray2.ensureCapacity(i2 / 2);
            BooleanArray booleanArray2 = this.f5393f;
            booleanArray2.clear();
            booleanArray2.ensureCapacity(i2);
            shortArray2.add(i9);
            shortArray2.add(i9 + 2);
            shortArray2.add(i9 + 4);
            booleanArray2.add(false);
            int i13 = i3;
            while (i13 < i9) {
                float f19 = fArr2[i13];
                float f20 = fArr2[i13 + 1];
                short[] sArr2 = shortArray2.items;
                boolean[] zArr2 = booleanArray2.items;
                int i14 = shortArray2.size - i10;
                while (i14 >= 0) {
                    int i15 = i14 / 3;
                    if (zArr2[i15]) {
                        zArr = zArr2;
                        sArr = sArr2;
                        i8 = i13;
                        booleanArray = booleanArray2;
                        fArr4 = fArr7;
                        shortArray = shortArray2;
                        fArr3 = fArr2;
                        i5 = i3;
                        i6 = i9;
                        i7 = i14;
                        intArray = intArray2;
                    } else {
                        int i16 = i14 - 2;
                        short s = sArr2[i16];
                        short s2 = sArr2[i14 - 1];
                        i5 = i3;
                        short s3 = sArr2[i14];
                        if (s >= i9) {
                            int i17 = s - i9;
                            float f21 = fArr7[i17];
                            f2 = fArr7[i17 + 1];
                            f = f21;
                        } else {
                            f = fArr2[s];
                            f2 = fArr2[s + 1];
                        }
                        if (s2 >= i9) {
                            int i18 = s2 - i9;
                            float f22 = fArr7[i18];
                            f4 = fArr7[i18 + 1];
                            f3 = f22;
                        } else {
                            f3 = fArr2[s2];
                            f4 = fArr2[s2 + 1];
                        }
                        if (s3 >= i9) {
                            int i19 = s3 - i9;
                            float f23 = fArr7[i19];
                            f6 = fArr7[i19 + 1];
                            f5 = f23;
                        } else {
                            f5 = fArr2[s3];
                            f6 = fArr2[s3 + 1];
                        }
                        fArr3 = fArr2;
                        i6 = i9;
                        i7 = i14;
                        zArr = zArr2;
                        float f24 = f;
                        sArr = sArr2;
                        i8 = i13;
                        BooleanArray booleanArray3 = booleanArray2;
                        ShortArray shortArray3 = shortArray2;
                        intArray = intArray2;
                        float f25 = f5;
                        fArr4 = fArr7;
                        int m23934a = m23934a(f19, f20, f24, f2, f3, f4, f25, f6);
                        if (m23934a != 0) {
                            if (m23934a == 1) {
                                zArr[i15] = true;
                            }
                            shortArray = shortArray3;
                            booleanArray = booleanArray3;
                        } else {
                            intArray.add(s, s2, s2, s3);
                            intArray.add(s3, s);
                            shortArray = shortArray3;
                            shortArray.removeRange(i16, i7);
                            booleanArray = booleanArray3;
                            booleanArray.removeIndex(i15);
                        }
                    }
                    i14 = i7 - 3;
                    i3 = i5;
                    booleanArray2 = booleanArray;
                    intArray2 = intArray;
                    sArr2 = sArr;
                    fArr7 = fArr4;
                    fArr2 = fArr3;
                    i9 = i6;
                    zArr2 = zArr;
                    i13 = i8;
                    shortArray2 = shortArray;
                }
                int i20 = i13;
                BooleanArray booleanArray4 = booleanArray2;
                float[] fArr8 = fArr7;
                ShortArray shortArray4 = shortArray2;
                float[] fArr9 = fArr2;
                int i21 = i3;
                int i22 = i9;
                IntArray intArray3 = intArray2;
                int[] iArr = intArray3.items;
                int i23 = intArray3.size;
                int i24 = 0;
                while (i24 < i23) {
                    int i25 = iArr[i24];
                    if (i25 != -1) {
                        int i26 = i24 + 1;
                        int i27 = iArr[i26];
                        boolean z2 = false;
                        for (int i28 = i24 + 2; i28 < i23; i28 += 2) {
                            if (i25 == iArr[i28 + 1] && i27 == iArr[i28]) {
                                iArr[i28] = -1;
                                z2 = true;
                            }
                        }
                        if (!z2) {
                            shortArray4.add(i25);
                            shortArray4.add(iArr[i26]);
                            i4 = i20;
                            shortArray4.add(i4);
                            booleanArray4.add(false);
                            i24 += 2;
                            i20 = i4;
                        }
                    }
                    i4 = i20;
                    i24 += 2;
                    i20 = i4;
                }
                intArray3.clear();
                i3 = i21;
                booleanArray2 = booleanArray4;
                i13 = i20 + 2;
                intArray2 = intArray3;
                fArr7 = fArr8;
                fArr2 = fArr9;
                i9 = i22;
                i10 = 1;
                shortArray2 = shortArray4;
            }
            ShortArray shortArray5 = shortArray2;
            int i29 = i3;
            int i30 = i9;
            short[] sArr3 = shortArray5.items;
            int i31 = shortArray5.size - 1;
            while (i31 >= 0) {
                int i32 = i30;
                if (sArr3[i31] >= i32 || sArr3[i31 - 1] >= i32 || sArr3[i31 - 2] >= i32) {
                    shortArray5.removeIndex(i31);
                    shortArray5.removeIndex(i31 - 1);
                    shortArray5.removeIndex(i31 - 2);
                }
                i31 -= 3;
                i30 = i32;
            }
            if (!z) {
                short[] sArr4 = this.f5391d.items;
                int i33 = shortArray5.size;
                for (int i34 = 0; i34 < i33; i34++) {
                    sArr3[i34] = (short) (sArr4[sArr3[i34] / 2] * 2);
                }
            }
            if (i29 == 0) {
                int i35 = shortArray5.size;
                for (int i36 = 0; i36 < i35; i36++) {
                    sArr3[i36] = (short) (sArr3[i36] / 2);
                }
            } else {
                int i37 = shortArray5.size;
                for (int i38 = 0; i38 < i37; i38++) {
                    sArr3[i38] = (short) ((sArr3[i38] - i29) / 2);
                }
            }
            return shortArray5;
        }
        throw new IllegalArgumentException("count must be <= 32767");
    }
}
