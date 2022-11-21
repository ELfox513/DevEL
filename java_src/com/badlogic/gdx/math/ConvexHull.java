package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.ShortArray;
/* loaded from: classes.dex */
public class ConvexHull {

    /* renamed from: b */
    public float[] f5382b;

    /* renamed from: a */
    public final IntArray f5381a = new IntArray();

    /* renamed from: c */
    public final FloatArray f5383c = new FloatArray();

    /* renamed from: d */
    public final IntArray f5384d = new IntArray();

    /* renamed from: e */
    public final ShortArray f5385e = new ShortArray(false, 0);

    public IntArray computeIndices(FloatArray floatArray, boolean z, boolean z2) {
        return computeIndices(floatArray.items, 0, floatArray.size, z, z2);
    }

    public FloatArray computePolygon(FloatArray floatArray, boolean z) {
        return computePolygon(floatArray.items, 0, floatArray.size, z);
    }

    /* renamed from: a */
    public final float m23939a(float f, float f2) {
        FloatArray floatArray = this.f5383c;
        int i = floatArray.size;
        float f3 = floatArray.get(i - 4);
        float f4 = floatArray.get(i - 3);
        return ((floatArray.get(i - 2) - f3) * (f2 - f4)) - ((floatArray.peek() - f4) * (f - f3));
    }

    /* renamed from: b */
    public final int m23938b(float[] fArr, int i, int i2) {
        float f;
        float f2 = fArr[i];
        int i3 = i + 1;
        float f3 = fArr[i3];
        int i4 = i;
        while (i4 < i2) {
            while (i4 < i2 && fArr[i4] <= f2) {
                i4 += 2;
            }
            while (true) {
                f = fArr[i2];
                if (f > f2 || (f == f2 && fArr[i2 + 1] < f3)) {
                    i2 -= 2;
                }
            }
            if (i4 < i2) {
                float f4 = fArr[i4];
                fArr[i4] = f;
                fArr[i2] = f4;
                int i5 = i4 + 1;
                float f5 = fArr[i5];
                int i6 = i2 + 1;
                fArr[i5] = fArr[i6];
                fArr[i6] = f5;
            }
        }
        float f6 = fArr[i2];
        if (f2 > f6 || (f2 == f6 && f3 < fArr[i2 + 1])) {
            fArr[i] = f6;
            fArr[i2] = f2;
            int i7 = i2 + 1;
            fArr[i3] = fArr[i7];
            fArr[i7] = f3;
        }
        return i2;
    }

    /* renamed from: c */
    public final int m23937c(float[] fArr, int i, int i2, boolean z, short[] sArr) {
        float f = fArr[i];
        int i3 = i + 1;
        float f2 = fArr[i3];
        int i4 = i;
        while (i4 < i2) {
            while (i4 < i2 && fArr[i4] <= f) {
                i4 += 2;
            }
            if (!z) {
                while (true) {
                    float f3 = fArr[i2];
                    if (f3 <= f && (f3 != f || fArr[i2 + 1] <= f2)) {
                        break;
                    }
                    i2 -= 2;
                }
            } else {
                while (true) {
                    float f4 = fArr[i2];
                    if (f4 <= f && (f4 != f || fArr[i2 + 1] >= f2)) {
                        break;
                    }
                    i2 -= 2;
                }
            }
            if (i4 < i2) {
                float f5 = fArr[i4];
                fArr[i4] = fArr[i2];
                fArr[i2] = f5;
                int i5 = i4 + 1;
                float f6 = fArr[i5];
                int i6 = i2 + 1;
                fArr[i5] = fArr[i6];
                fArr[i6] = f6;
                int i7 = i4 / 2;
                short s = sArr[i7];
                int i8 = i2 / 2;
                sArr[i7] = sArr[i8];
                sArr[i8] = s;
            }
        }
        float f7 = fArr[i2];
        if (f > f7 || (f == f7 && (!z ? f2 > fArr[i2 + 1] : f2 < fArr[i2 + 1]))) {
            fArr[i] = f7;
            fArr[i2] = f;
            int i9 = i2 + 1;
            fArr[i3] = fArr[i9];
            fArr[i9] = f2;
            int i10 = i / 2;
            short s2 = sArr[i10];
            int i11 = i2 / 2;
            sArr[i10] = sArr[i11];
            sArr[i11] = s2;
        }
        return i2;
    }

    public IntArray computeIndices(float[] fArr, boolean z, boolean z2) {
        return computeIndices(fArr, 0, fArr.length, z, z2);
    }

    public FloatArray computePolygon(float[] fArr, boolean z) {
        return computePolygon(fArr, 0, fArr.length, z);
    }

    /* renamed from: d */
    public final void m23936d(float[] fArr, int i) {
        IntArray intArray = this.f5381a;
        intArray.add(0);
        intArray.add((i - 1) - 1);
        while (intArray.size > 0) {
            int pop = intArray.pop();
            int pop2 = intArray.pop();
            if (pop > pop2) {
                int m23938b = m23938b(fArr, pop2, pop);
                int i2 = m23938b - pop2;
                int i3 = pop - m23938b;
                if (i2 > i3) {
                    intArray.add(pop2);
                    intArray.add(m23938b - 2);
                }
                intArray.add(m23938b + 2);
                intArray.add(pop);
                if (i3 >= i2) {
                    intArray.add(pop2);
                    intArray.add(m23938b - 2);
                }
            }
        }
    }

    /* renamed from: e */
    public final void m23935e(float[] fArr, int i, boolean z) {
        int i2 = i / 2;
        this.f5385e.clear();
        this.f5385e.ensureCapacity(i2);
        short[] sArr = this.f5385e.items;
        for (short s = 0; s < i2; s = (short) (s + 1)) {
            sArr[s] = s;
        }
        IntArray intArray = this.f5381a;
        intArray.add(0);
        intArray.add((i - 1) - 1);
        while (intArray.size > 0) {
            int pop = intArray.pop();
            int pop2 = intArray.pop();
            if (pop > pop2) {
                int m23937c = m23937c(fArr, pop2, pop, z, sArr);
                int i3 = m23937c - pop2;
                int i4 = pop - m23937c;
                if (i3 > i4) {
                    intArray.add(pop2);
                    intArray.add(m23937c - 2);
                }
                intArray.add(m23937c + 2);
                intArray.add(pop);
                if (i4 >= i3) {
                    intArray.add(pop2);
                    intArray.add(m23937c - 2);
                }
            }
        }
    }

    public IntArray computeIndices(float[] fArr, int i, int i2, boolean z, boolean z2) {
        if (i2 <= 32767) {
            int i3 = i + i2;
            if (!z) {
                float[] fArr2 = this.f5382b;
                if (fArr2 == null || fArr2.length < i2) {
                    this.f5382b = new float[i2];
                }
                System.arraycopy(fArr, i, this.f5382b, 0, i2);
                fArr = this.f5382b;
                m23935e(fArr, i2, z2);
                i = 0;
            }
            IntArray intArray = this.f5384d;
            intArray.clear();
            FloatArray floatArray = this.f5383c;
            floatArray.clear();
            int i4 = i / 2;
            int i5 = i;
            while (i5 < i3) {
                float f = fArr[i5];
                float f2 = fArr[i5 + 1];
                while (floatArray.size >= 4 && m23939a(f, f2) <= 0.0f) {
                    floatArray.size -= 2;
                    intArray.size--;
                }
                floatArray.add(f);
                floatArray.add(f2);
                intArray.add(i4);
                i5 += 2;
                i4++;
            }
            int i6 = i3 - 4;
            int i7 = i6 / 2;
            int i8 = floatArray.size + 2;
            while (i6 >= i) {
                float f3 = fArr[i6];
                float f4 = fArr[i6 + 1];
                while (floatArray.size >= i8 && m23939a(f3, f4) <= 0.0f) {
                    floatArray.size -= 2;
                    intArray.size--;
                }
                floatArray.add(f3);
                floatArray.add(f4);
                intArray.add(i7);
                i6 -= 2;
                i7--;
            }
            if (!z) {
                short[] sArr = this.f5385e.items;
                int[] iArr = intArray.items;
                int i9 = intArray.size;
                for (int i10 = 0; i10 < i9; i10++) {
                    iArr[i10] = sArr[iArr[i10]];
                }
            }
            return intArray;
        }
        throw new IllegalArgumentException("count must be <= 32767");
    }

    public FloatArray computePolygon(float[] fArr, int i, int i2, boolean z) {
        int i3 = i + i2;
        if (!z) {
            float[] fArr2 = this.f5382b;
            if (fArr2 == null || fArr2.length < i2) {
                this.f5382b = new float[i2];
            }
            System.arraycopy(fArr, i, this.f5382b, 0, i2);
            fArr = this.f5382b;
            m23936d(fArr, i2);
            i = 0;
        }
        FloatArray floatArray = this.f5383c;
        floatArray.clear();
        for (int i4 = i; i4 < i3; i4 += 2) {
            float f = fArr[i4];
            float f2 = fArr[i4 + 1];
            while (floatArray.size >= 4 && m23939a(f, f2) <= 0.0f) {
                floatArray.size -= 2;
            }
            floatArray.add(f);
            floatArray.add(f2);
        }
        int i5 = floatArray.size + 2;
        for (int i6 = i3 - 4; i6 >= i; i6 -= 2) {
            float f3 = fArr[i6];
            float f4 = fArr[i6 + 1];
            while (floatArray.size >= i5 && m23939a(f3, f4) <= 0.0f) {
                floatArray.size -= 2;
            }
            floatArray.add(f3);
            floatArray.add(f4);
        }
        return floatArray;
    }
}
