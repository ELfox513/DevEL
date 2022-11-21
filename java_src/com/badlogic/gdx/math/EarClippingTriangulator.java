package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.ShortArray;
/* loaded from: classes.dex */
public class EarClippingTriangulator {

    /* renamed from: b */
    public short[] f5397b;

    /* renamed from: c */
    public float[] f5398c;

    /* renamed from: d */
    public int f5399d;

    /* renamed from: a */
    public final ShortArray f5396a = new ShortArray();

    /* renamed from: e */
    public final IntArray f5400e = new IntArray();

    /* renamed from: f */
    public final ShortArray f5401f = new ShortArray();

    /* renamed from: b */
    public static int m23930b(float f, float f2, float f3, float f4, float f5, float f6) {
        return (int) Math.signum((f * (f6 - f4)) + (f3 * (f2 - f6)) + (f5 * (f4 - f2)));
    }

    public ShortArray computeTriangles(FloatArray floatArray) {
        return computeTriangles(floatArray.items, 0, floatArray.size);
    }

    /* renamed from: f */
    public final int m23926f(int i) {
        return (i + 1) % this.f5399d;
    }

    /* renamed from: g */
    public final int m23925g(int i) {
        if (i == 0) {
            i = this.f5399d;
        }
        return i - 1;
    }

    /* renamed from: a */
    public final int m23931a(int i) {
        short[] sArr = this.f5397b;
        int i2 = sArr[m23925g(i)] * 2;
        int i3 = sArr[i] * 2;
        int i4 = sArr[m23926f(i)] * 2;
        float[] fArr = this.f5398c;
        return m23930b(fArr[i2], fArr[i2 + 1], fArr[i3], fArr[i3 + 1], fArr[i4], fArr[i4 + 1]);
    }

    /* renamed from: c */
    public final void m23929c(int i) {
        short[] sArr = this.f5397b;
        ShortArray shortArray = this.f5401f;
        shortArray.add(sArr[m23925g(i)]);
        shortArray.add(sArr[i]);
        shortArray.add(sArr[m23926f(i)]);
        this.f5396a.removeIndex(i);
        this.f5400e.removeIndex(i);
        this.f5399d--;
    }

    public ShortArray computeTriangles(float[] fArr) {
        return computeTriangles(fArr, 0, fArr.length);
    }

    /* renamed from: d */
    public final int m23928d() {
        int i = this.f5399d;
        for (int i2 = 0; i2 < i; i2++) {
            if (m23927e(i2)) {
                return i2;
            }
        }
        int[] iArr = this.f5400e.items;
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] != -1) {
                return i3;
            }
        }
        return 0;
    }

    /* renamed from: e */
    public final boolean m23927e(int i) {
        int[] iArr = this.f5400e.items;
        if (iArr[i] == -1) {
            return false;
        }
        int m23925g = m23925g(i);
        int m23926f = m23926f(i);
        short[] sArr = this.f5397b;
        int i2 = sArr[m23925g] * 2;
        int i3 = sArr[i] * 2;
        int i4 = sArr[m23926f] * 2;
        float[] fArr = this.f5398c;
        float f = fArr[i2];
        int i5 = 1;
        float f2 = fArr[i2 + 1];
        float f3 = fArr[i3];
        float f4 = fArr[i3 + 1];
        float f5 = fArr[i4];
        float f6 = fArr[i4 + 1];
        int m23926f2 = m23926f(m23926f);
        while (m23926f2 != m23925g) {
            if (iArr[m23926f2] != i5) {
                int i6 = sArr[m23926f2] * 2;
                float f7 = fArr[i6];
                float f8 = fArr[i6 + i5];
                if (m23930b(f5, f6, f, f2, f7, f8) >= 0 && m23930b(f, f2, f3, f4, f7, f8) >= 0 && m23930b(f3, f4, f5, f6, f7, f8) >= 0) {
                    return false;
                }
            }
            m23926f2 = m23926f(m23926f2);
            i5 = 1;
        }
        return true;
    }

    /* renamed from: h */
    public final void m23924h() {
        int i;
        int[] iArr = this.f5400e.items;
        while (true) {
            i = this.f5399d;
            int i2 = 0;
            if (i <= 3) {
                break;
            }
            int m23928d = m23928d();
            m23929c(m23928d);
            int m23925g = m23925g(m23928d);
            if (m23928d != this.f5399d) {
                i2 = m23928d;
            }
            iArr[m23925g] = m23931a(m23925g);
            iArr[i2] = m23931a(i2);
        }
        if (i == 3) {
            ShortArray shortArray = this.f5401f;
            short[] sArr = this.f5397b;
            shortArray.add(sArr[0]);
            shortArray.add(sArr[1]);
            shortArray.add(sArr[2]);
        }
    }

    public ShortArray computeTriangles(float[] fArr, int i, int i2) {
        this.f5398c = fArr;
        int i3 = i2 / 2;
        this.f5399d = i3;
        int i4 = i / 2;
        ShortArray shortArray = this.f5396a;
        shortArray.clear();
        shortArray.ensureCapacity(i3);
        shortArray.size = i3;
        short[] sArr = shortArray.items;
        this.f5397b = sArr;
        if (GeometryUtils.isClockwise(fArr, i, i2)) {
            for (short s = 0; s < i3; s = (short) (s + 1)) {
                sArr[s] = (short) (i4 + s);
            }
        } else {
            int i5 = i3 - 1;
            for (int i6 = 0; i6 < i3; i6++) {
                sArr[i6] = (short) ((i4 + i5) - i6);
            }
        }
        IntArray intArray = this.f5400e;
        intArray.clear();
        intArray.ensureCapacity(i3);
        for (int i7 = 0; i7 < i3; i7++) {
            intArray.add(m23931a(i7));
        }
        ShortArray shortArray2 = this.f5401f;
        shortArray2.clear();
        shortArray2.ensureCapacity(Math.max(0, i3 - 2) * 3);
        m23924h();
        return shortArray2;
    }
}
