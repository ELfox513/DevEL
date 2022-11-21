package com.badlogic.gdx.audio.analysis;
/* loaded from: classes.dex */
public abstract class FourierTransform {
    public static final int HAMMING = 1;
    public static final int NONE = 0;

    /* renamed from: a */
    public int f3573a;

    /* renamed from: b */
    public int f3574b;

    /* renamed from: c */
    public float f3575c;

    /* renamed from: d */
    public int f3576d;

    /* renamed from: e */
    public float[] f3577e;

    /* renamed from: f */
    public float[] f3578f;

    /* renamed from: g */
    public float[] f3579g;

    /* renamed from: h */
    public float[] f3580h;

    /* renamed from: i */
    public int f3581i;

    /* renamed from: j */
    public int f3582j;

    /* renamed from: k */
    public int f3583k;

    /* renamed from: a */
    public abstract void mo24342a();

    public int avgSize() {
        return this.f3580h.length;
    }

    /* renamed from: c */
    public void m24340c() {
        float[] fArr;
        float pow;
        int i = 0;
        while (true) {
            fArr = this.f3579g;
            if (i >= fArr.length) {
                break;
            }
            float f = this.f3577e[i];
            float f2 = this.f3578f[i];
            fArr[i] = (float) Math.sqrt((f * f) + (f2 * f2));
            i++;
        }
        int i2 = this.f3581i;
        if (i2 == 2) {
            int length = fArr.length / this.f3580h.length;
            for (int i3 = 0; i3 < this.f3580h.length; i3++) {
                int i4 = 0;
                float f3 = 0.0f;
                while (i4 < length) {
                    int i5 = (i3 * length) + i4;
                    float[] fArr2 = this.f3579g;
                    if (i5 < fArr2.length) {
                        f3 += fArr2[i5];
                        i4++;
                    }
                }
                this.f3580h[i3] = f3 / (i4 + 1);
            }
        } else if (i2 == 3) {
            int i6 = 0;
            while (true) {
                int i7 = this.f3582j;
                if (i6 < i7) {
                    if (i6 == 0) {
                        pow = 0.0f;
                    } else {
                        pow = (this.f3574b / 2) / ((float) Math.pow(2.0d, i7 - i6));
                    }
                    float pow2 = (((this.f3574b / 2) / ((float) Math.pow(2.0d, (this.f3582j - i6) - 1))) - pow) / this.f3583k;
                    int i8 = 0;
                    while (true) {
                        int i9 = this.f3583k;
                        if (i8 < i9) {
                            float f4 = pow + pow2;
                            this.f3580h[(i9 * i6) + i8] = calcAvg(pow, f4);
                            i8++;
                            pow = f4;
                        }
                    }
                    i6++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: d */
    public void m24339d(float[] fArr) {
        for (int i = 0; i < fArr.length; i++) {
            double d = fArr[i];
            Double.isNaN(d);
            fArr[i] = (float) (d * (0.5400000214576721d - (Math.cos((i * 6.2831855f) / (fArr.length - 1)) * 0.46000000834465027d)));
        }
    }

    public abstract void forward(float[] fArr);

    public void forward(float[] fArr, int i) {
        int length = fArr.length - i;
        int i2 = this.f3573a;
        if (length >= i2) {
            float[] fArr2 = new float[i2];
            System.arraycopy(fArr, i, fArr2, 0, i2);
            forward(fArr2);
            return;
        }
        throw new IllegalArgumentException("FourierTransform.forward: not enough samples in the buffer between " + i + " and " + fArr.length + " to perform a transform.");
    }

    public float getBandWidth() {
        return this.f3575c;
    }

    public float getFreq(float f) {
        return getBand(freqToIndex(f));
    }

    public float[] getImaginaryPart() {
        return this.f3578f;
    }

    public float[] getRealPart() {
        return this.f3577e;
    }

    public float[] getSpectrum() {
        return this.f3579g;
    }

    public int getTimeSize() {
        return this.f3573a;
    }

    public abstract void inverse(float[] fArr);

    public void noAverages() {
        this.f3580h = new float[0];
        this.f3581i = 4;
    }

    public abstract void scaleBand(int i, float f);

    public void scaleFreq(float f, float f2) {
        scaleBand(freqToIndex(f), f2);
    }

    public abstract void setBand(int i, float f);

    public void setFreq(float f, float f2) {
        setBand(freqToIndex(f), f2);
    }

    public int specSize() {
        return this.f3579g.length;
    }

    public int timeSize() {
        return this.f3573a;
    }

    /* renamed from: b */
    public void m24341b(float[] fArr) {
        if (this.f3576d == 1) {
            m24339d(fArr);
        }
    }

    /* renamed from: e */
    public void m24338e(float[] fArr, float[] fArr2) {
        float[] fArr3 = this.f3577e;
        if (fArr3.length != fArr.length && this.f3578f.length != fArr2.length) {
            throw new IllegalArgumentException("This won't work");
        }
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, this.f3578f, 0, fArr2.length);
    }

    public float getAverageCenterFrequency(int i) {
        int i2 = this.f3581i;
        if (i2 == 2) {
            int length = this.f3579g.length / this.f3580h.length;
            return indexToFreq((i * length) + (length / 2));
        }
        float f = 0.0f;
        if (i2 != 3) {
            return 0.0f;
        }
        int i3 = this.f3583k;
        int i4 = i / i3;
        int i5 = i % i3;
        if (i4 != 0) {
            f = (this.f3574b / 2) / ((float) Math.pow(2.0d, this.f3582j - i4));
        }
        float pow = (((this.f3574b / 2) / ((float) Math.pow(2.0d, (this.f3582j - i4) - 1))) - f) / this.f3583k;
        return f + (i5 * pow) + (pow / 2.0f);
    }

    public float getAvg(int i) {
        float[] fArr = this.f3580h;
        if (fArr.length > 0) {
            return fArr[i];
        }
        return 0.0f;
    }

    public float getBand(int i) {
        if (i < 0) {
            i = 0;
        }
        float[] fArr = this.f3579g;
        if (i > fArr.length - 1) {
            i = fArr.length - 1;
        }
        return fArr[i];
    }

    public void linAverages(int i) {
        if (i <= this.f3579g.length / 2) {
            this.f3580h = new float[i];
            this.f3581i = 2;
            return;
        }
        throw new IllegalArgumentException("The number of averages for this transform can be at most " + (this.f3579g.length / 2) + ".");
    }

    public void logAverages(int i, int i2) {
        float f = this.f3574b / 2.0f;
        this.f3582j = 1;
        while (true) {
            f /= 2.0f;
            if (f > i) {
                this.f3582j++;
            } else {
                this.f3583k = i2;
                this.f3580h = new float[this.f3582j * i2];
                this.f3581i = 3;
                return;
            }
        }
    }

    public void window(int i) {
        if (i >= 0 && i <= 1) {
            this.f3576d = i;
            return;
        }
        throw new IllegalArgumentException("Invalid window type.");
    }

    public FourierTransform(int i, float f) {
        this.f3573a = i;
        int i2 = (int) f;
        this.f3574b = i2;
        this.f3575c = (2.0f / i) * (i2 / 2.0f);
        noAverages();
        mo24342a();
        this.f3576d = 0;
    }

    public float calcAvg(float f, float f2) {
        int freqToIndex = freqToIndex(f);
        int freqToIndex2 = freqToIndex(f2);
        float f3 = 0.0f;
        for (int i = freqToIndex; i <= freqToIndex2; i++) {
            f3 += this.f3579g[i];
        }
        return f3 / ((freqToIndex2 - freqToIndex) + 1);
    }

    public int freqToIndex(float f) {
        if (f < getBandWidth() / 2.0f) {
            return 0;
        }
        if (f > (this.f3574b / 2) - (getBandWidth() / 2.0f)) {
            return this.f3579g.length - 1;
        }
        return Math.round(this.f3573a * (f / this.f3574b));
    }

    public float indexToFreq(int i) {
        float bandWidth = getBandWidth();
        if (i == 0) {
            return bandWidth * 0.25f;
        }
        if (i == this.f3579g.length - 1) {
            return ((this.f3574b / 2) - (bandWidth / 2.0f)) + (bandWidth * 0.25f);
        }
        return i * bandWidth;
    }

    public void inverse(float[] fArr, float[] fArr2, float[] fArr3) {
        m24338e(fArr, fArr2);
        inverse(fArr3);
    }
}
