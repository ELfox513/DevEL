package com.badlogic.gdx.audio.analysis;
/* loaded from: classes.dex */
public class FFT extends FourierTransform {

    /* renamed from: l */
    public int[] f3570l;

    /* renamed from: m */
    public float[] f3571m;

    /* renamed from: n */
    public float[] f3572n;

    @Override // com.badlogic.gdx.audio.analysis.FourierTransform
    public void forward(float[] fArr) {
        if (fArr.length == this.f3573a) {
            m24341b(fArr);
            m24348g(fArr);
            m24344k();
            m24340c();
            return;
        }
        throw new IllegalArgumentException("FFT.forward: The length of the passed sample buffer must be equal to timeSize().");
    }

    /* renamed from: g */
    public final void m24348g(float[] fArr) {
        for (int i = 0; i < fArr.length; i++) {
            this.f3577e[i] = fArr[this.f3570l[i]];
            this.f3578f[i] = 0.0f;
        }
    }

    @Override // com.badlogic.gdx.audio.analysis.FourierTransform
    public void inverse(float[] fArr) {
        if (fArr.length <= this.f3577e.length) {
            for (int i = 0; i < this.f3573a; i++) {
                float[] fArr2 = this.f3578f;
                fArr2[i] = fArr2[i] * (-1.0f);
            }
            m24349f();
            m24344k();
            for (int i2 = 0; i2 < fArr.length; i2++) {
                float[] fArr3 = this.f3577e;
                fArr[i2] = fArr3[i2] / fArr3.length;
            }
            return;
        }
        throw new IllegalArgumentException("FFT.inverse: the passed array's length must equal FFT.timeSize().");
    }

    /* renamed from: j */
    public final float m24345j(int i) {
        return this.f3572n[i];
    }

    /* renamed from: k */
    public final void m24344k() {
        for (int i = 1; i < this.f3577e.length; i *= 2) {
            float m24345j = m24345j(i);
            float m24343l = m24343l(i);
            float f = 1.0f;
            float f2 = 0.0f;
            int i2 = 0;
            while (i2 < i) {
                int i3 = i2;
                while (true) {
                    float[] fArr = this.f3577e;
                    if (i3 < fArr.length) {
                        int i4 = i3 + i;
                        float f3 = fArr[i4];
                        float[] fArr2 = this.f3578f;
                        float f4 = fArr2[i4];
                        float f5 = (f * f3) - (f2 * f4);
                        float f6 = (f4 * f) + (f3 * f2);
                        fArr[i4] = fArr[i3] - f5;
                        fArr2[i4] = fArr2[i3] - f6;
                        fArr[i3] = fArr[i3] + f5;
                        fArr2[i3] = fArr2[i3] + f6;
                        i3 += i * 2;
                    }
                }
                f2 = (f2 * m24345j) + (f * m24343l);
                i2++;
                f = (f * m24345j) - (f2 * m24343l);
            }
        }
    }

    /* renamed from: l */
    public final float m24343l(int i) {
        return this.f3571m[i];
    }

    @Override // com.badlogic.gdx.audio.analysis.FourierTransform
    public void scaleBand(int i, float f) {
        if (f >= 0.0f) {
            float[] fArr = this.f3579g;
            float f2 = fArr[i];
            if (f2 != 0.0f) {
                float[] fArr2 = this.f3577e;
                fArr2[i] = fArr2[i] / f2;
                float[] fArr3 = this.f3578f;
                fArr3[i] = fArr3[i] / fArr[i];
                float f3 = fArr[i] * f;
                fArr[i] = f3;
                fArr2[i] = fArr2[i] * f3;
                fArr3[i] = fArr3[i] * fArr[i];
            }
            if (i != 0) {
                int i2 = this.f3573a;
                if (i != i2 / 2) {
                    float[] fArr4 = this.f3577e;
                    fArr4[i2 - i] = fArr4[i];
                    float[] fArr5 = this.f3578f;
                    fArr5[i2 - i] = -fArr5[i];
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Can't scale a frequency band by a negative value.");
    }

    @Override // com.badlogic.gdx.audio.analysis.FourierTransform
    public void setBand(int i, float f) {
        if (f >= 0.0f) {
            float[] fArr = this.f3577e;
            float f2 = fArr[i];
            if (f2 == 0.0f && this.f3578f[i] == 0.0f) {
                fArr[i] = f;
                this.f3579g[i] = f;
            } else {
                float[] fArr2 = this.f3579g;
                fArr[i] = f2 / fArr2[i];
                float[] fArr3 = this.f3578f;
                fArr3[i] = fArr3[i] / fArr2[i];
                fArr2[i] = f;
                fArr[i] = fArr[i] * f;
                fArr3[i] = fArr3[i] * fArr2[i];
            }
            if (i != 0) {
                int i2 = this.f3573a;
                if (i != i2 / 2) {
                    fArr[i2 - i] = fArr[i];
                    float[] fArr4 = this.f3578f;
                    fArr4[i2 - i] = -fArr4[i];
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Can't set a frequency band to a negative value.");
    }

    @Override // com.badlogic.gdx.audio.analysis.FourierTransform
    /* renamed from: a */
    public void mo24342a() {
        int i = this.f3573a;
        this.f3579g = new float[(i / 2) + 1];
        this.f3577e = new float[i];
        this.f3578f = new float[i];
    }

    /* renamed from: f */
    public final void m24349f() {
        float[] fArr = new float[this.f3577e.length];
        float[] fArr2 = new float[this.f3578f.length];
        int i = 0;
        while (true) {
            float[] fArr3 = this.f3577e;
            if (i < fArr3.length) {
                int i2 = this.f3570l[i];
                fArr[i] = fArr3[i2];
                fArr2[i] = this.f3578f[i2];
                i++;
            } else {
                this.f3577e = fArr;
                this.f3578f = fArr2;
                return;
            }
        }
    }

    /* renamed from: h */
    public final void m24347h() {
        int i = this.f3573a;
        int[] iArr = new int[i];
        this.f3570l = iArr;
        iArr[0] = 0;
        int i2 = i / 2;
        int i3 = 1;
        while (i3 < i) {
            for (int i4 = 0; i4 < i3; i4++) {
                int[] iArr2 = this.f3570l;
                iArr2[i4 + i3] = iArr2[i4] + i2;
            }
            i3 <<= 1;
            i2 >>= 1;
        }
    }

    /* renamed from: i */
    public final void m24346i() {
        int i = this.f3573a;
        this.f3571m = new float[i];
        this.f3572n = new float[i];
        for (int i2 = 0; i2 < i; i2++) {
            double d = (-3.1415927f) / i2;
            this.f3571m[i2] = (float) Math.sin(d);
            this.f3572n[i2] = (float) Math.cos(d);
        }
    }

    public FFT(int i, float f) {
        super(i, f);
        if ((i & (i - 1)) == 0) {
            m24347h();
            m24346i();
            return;
        }
        throw new IllegalArgumentException("FFT: timeSize must be a power of two.");
    }

    public void forward(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        int i = this.f3573a;
        if (length == i && fArr2.length == i) {
            m24338e(fArr, fArr2);
            m24349f();
            m24344k();
            m24340c();
            return;
        }
        throw new IllegalArgumentException("FFT.forward: The length of the passed buffers must be equal to timeSize().");
    }
}
