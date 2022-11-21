package com.prineside.tdi2.ibxm;

import com.badlogic.gdx.utils.compression.lzma.Base;
/* loaded from: classes2.dex */
public class Sample {
    public static final int C2_NTSC = 8363;
    public static final int C2_PAL = 8287;
    public static final int FP_MASK = 32767;
    public static final int FP_ONE = 32768;
    public static final int FP_SHIFT = 15;

    /* renamed from: c */
    public static final short[][] f9448c = m21742b();

    /* renamed from: a */
    public int f9449a;

    /* renamed from: b */
    public int f9450b;
    public int fineTune;
    public String name;
    public int panning;
    public int relNote;
    public short[] sampleData;
    public int volume;

    public Sample() {
        this.name = "";
        this.volume = 0;
        this.panning = -1;
        this.relNote = 0;
        this.fineTune = 0;
        this.f9449a = 0;
        this.f9450b = 0;
    }

    /* renamed from: b */
    public static short[][] m21742b() {
        short[][] sArr = new short[8];
        int i = 0;
        while (i < 8) {
            int i2 = i + 1;
            double d = i2;
            Double.isNaN(d);
            sArr[i] = m21743a(1.0d / d);
            i = i2;
        }
        return sArr;
    }

    public boolean looped() {
        return this.f9450b > 1;
    }

    public void setSampleData(short[] sArr, int i, int i2, boolean z) {
        int i3;
        int length = sArr.length;
        if (i < 0 || i > length) {
            i = length;
        }
        if (i2 < 0 || i + i2 > length) {
            i2 = length - i;
        }
        int i4 = i + i2;
        int i5 = i + 8;
        int i6 = i4 + 8;
        if (z) {
            i3 = i2;
        } else {
            i3 = 0;
        }
        short[] sArr2 = new short[i6 + i3 + 16];
        System.arraycopy(sArr, 0, sArr2, 8, i4);
        if (z) {
            int i7 = i5 + i2;
            for (int i8 = 0; i8 < i2; i8++) {
                sArr2[i7 + i8] = sArr2[(i7 - i8) - 1];
            }
            i2 *= 2;
        }
        int i9 = i5 + i2;
        int i10 = i9 + 16;
        while (i9 < i10) {
            sArr2[i9] = sArr2[i9 - i2];
            i9++;
        }
        this.sampleData = sArr2;
        this.f9449a = i5;
        this.f9450b = i2;
    }

    /* renamed from: a */
    public static short[] m21743a(double d) {
        double d2;
        short[] sArr = new short[Base.kNumLenSymbols];
        int i = 0;
        for (int i2 = 0; i2 <= 16; i2++) {
            double d3 = i2;
            Double.isNaN(d3);
            double d4 = ((d3 / 16.0d) + 7.0d) * 3.141592653589793d;
            double d5 = ((d4 * 2.0d) / 16.0d) + 3.141592653589793d;
            int i3 = 0;
            while (i3 < 16) {
                if (d4 != 0.0d) {
                    d2 = Math.sin(d * d4) / d4;
                } else {
                    d2 = d;
                }
                sArr[i] = (short) Math.round(d2 * (((0.35875d - (Math.cos(d5) * 0.48829d)) + (Math.cos(d5 * 2.0d) * 0.14128d)) - (Math.cos(3.0d * d5) * 0.01168d)) * 32767.0d);
                d4 -= 3.141592653589793d;
                d5 -= 0.39269908169872414d;
                i3++;
                i++;
            }
        }
        return sArr;
    }

    public int normaliseSampleIdx(int i) {
        int i2 = this.f9449a;
        int i3 = i - i2;
        if (i3 > 0) {
            int i4 = this.f9450b;
            if (i4 > 1) {
                return i2 + (i3 % i4);
            }
            return i2;
        }
        return i;
    }

    public void resampleLinear(int i, int i2, int i3, int i4, int i5, int[] iArr, int i6, int i7) {
        int i8 = this.f9450b;
        int i9 = this.f9449a + i8;
        int i10 = i + 8;
        if (i10 >= i9) {
            i10 = normaliseSampleIdx(i10);
        }
        short[] sArr = this.sampleData;
        int i11 = i6 << 1;
        int i12 = (i6 + i7) << 1;
        while (i11 < i12) {
            if (i10 >= i9) {
                if (i8 >= 2) {
                    while (i10 >= i9) {
                        i10 -= i8;
                    }
                } else {
                    return;
                }
            }
            short s = sArr[i10];
            int i13 = (((sArr[i10 + 1] - s) * i2) >> 15) + s;
            int i14 = i11 + 1;
            iArr[i11] = iArr[i11] + ((i13 * i4) >> 15);
            i11 = i14 + 1;
            iArr[i14] = iArr[i14] + ((i13 * i5) >> 15);
            int i15 = i2 + i3;
            i10 += i15 >> 15;
            i2 = i15 & 32767;
        }
    }

    public void resampleNearest(int i, int i2, int i3, int i4, int i5, int[] iArr, int i6, int i7) {
        int i8 = this.f9450b;
        int i9 = this.f9449a + i8;
        int i10 = i + 8;
        if (i10 >= i9) {
            i10 = normaliseSampleIdx(i10);
        }
        short[] sArr = this.sampleData;
        int i11 = i6 << 1;
        int i12 = (i6 + i7) << 1;
        while (i11 < i12) {
            if (i10 >= i9) {
                if (i8 >= 2) {
                    while (i10 >= i9) {
                        i10 -= i8;
                    }
                } else {
                    return;
                }
            }
            short s = sArr[i10];
            int i13 = i11 + 1;
            iArr[i11] = iArr[i11] + ((s * i4) >> 15);
            i11 = i13 + 1;
            iArr[i13] = iArr[i13] + ((s * i5) >> 15);
            int i14 = i2 + i3;
            i10 += i14 >> 15;
            i2 = i14 & 32767;
        }
    }

    public void resampleSinc(int i, int i2, int i3, int i4, int i5, int[] iArr, int i6, int i7) {
        int i8;
        if (i3 > 32768) {
            i8 = (i3 >> 15) - 1;
            if (i8 >= 8) {
                i8 = 7;
            }
        } else {
            i8 = 0;
        }
        short[] sArr = f9448c[i8];
        int i9 = this.f9450b;
        int i10 = this.f9449a + i9;
        int i11 = i;
        if (i11 >= i10) {
            i11 = normaliseSampleIdx(i);
        }
        short[] sArr2 = this.sampleData;
        int i12 = (i6 + i7) << 1;
        int i13 = i6 << 1;
        int i14 = i11;
        int i15 = i2;
        while (i13 < i12) {
            if (i14 >= i10) {
                if (i9 >= 2) {
                    while (i14 >= i10) {
                        i14 -= i9;
                    }
                } else {
                    return;
                }
            }
            int i16 = (i15 >> 11) << 4;
            int i17 = i16 + 16;
            int i18 = 0;
            int i19 = 0;
            for (int i20 = 0; i20 < 16; i20++) {
                short s = sArr[i16 + i20];
                short s2 = sArr2[i14 + i20];
                i18 += s * s2;
                i19 += sArr[i17 + i20] * s2;
            }
            int i21 = i18 >> 15;
            int i22 = i21 + ((((i19 >> 15) - i21) * (i15 & 2047)) >> 11);
            int i23 = i13 + 1;
            iArr[i13] = iArr[i13] + ((i22 * i4) >> 15);
            i13 = i23 + 1;
            iArr[i23] = iArr[i23] + ((i22 * i5) >> 15);
            int i24 = i15 + i3;
            i14 += i24 >> 15;
            i15 = i24 & 32767;
        }
    }

    public void toStringBuffer(StringBuffer stringBuffer) {
        stringBuffer.append("Name: " + this.name + '\n');
        stringBuffer.append("Volume: " + this.volume + '\n');
        stringBuffer.append("Panning: " + this.panning + '\n');
        stringBuffer.append("Relative Note: " + this.relNote + '\n');
        stringBuffer.append("Fine Tune: " + this.fineTune + '\n');
        stringBuffer.append("Loop Start: " + this.f9449a + '\n');
        stringBuffer.append("Loop Length: " + this.f9450b + '\n');
    }

    public Sample(Sample sample) {
        this.name = "";
        this.volume = 0;
        this.panning = -1;
        this.relNote = 0;
        this.fineTune = 0;
        this.f9449a = 0;
        this.f9450b = 0;
        this.name = sample.name;
        this.volume = sample.volume;
        this.panning = sample.panning;
        this.relNote = sample.relNote;
        this.fineTune = sample.fineTune;
        this.f9449a = sample.f9449a;
        this.f9450b = sample.f9450b;
        short[] sArr = sample.sampleData;
        if (sArr != null) {
            short[] sArr2 = new short[sArr.length];
            this.sampleData = sArr2;
            System.arraycopy(sample.sampleData, 0, sArr2, 0, sArr2.length);
        }
    }
}
