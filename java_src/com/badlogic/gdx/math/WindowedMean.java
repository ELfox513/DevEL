package com.badlogic.gdx.math;
/* loaded from: classes.dex */
public final class WindowedMean {

    /* renamed from: a */
    public float[] f5536a;

    /* renamed from: c */
    public int f5538c;

    /* renamed from: b */
    public int f5537b = 0;

    /* renamed from: d */
    public float f5539d = 0.0f;

    /* renamed from: e */
    public boolean f5540e = true;

    public void clear() {
        int i = 0;
        this.f5537b = 0;
        this.f5538c = 0;
        while (true) {
            float[] fArr = this.f5536a;
            if (i < fArr.length) {
                fArr[i] = 0.0f;
                i++;
            } else {
                this.f5540e = true;
                return;
            }
        }
    }

    public float getLatest() {
        float[] fArr = this.f5536a;
        int i = this.f5538c;
        if (i - 1 == -1) {
            i = fArr.length;
        }
        return fArr[i - 1];
    }

    public float getOldest() {
        int i = this.f5537b;
        float[] fArr = this.f5536a;
        return i < fArr.length ? fArr[0] : fArr[this.f5538c];
    }

    public int getValueCount() {
        return this.f5537b;
    }

    public int getWindowSize() {
        return this.f5536a.length;
    }

    public boolean hasEnoughData() {
        return this.f5537b >= this.f5536a.length;
    }

    public void addValue(float f) {
        int i = this.f5537b;
        float[] fArr = this.f5536a;
        if (i < fArr.length) {
            this.f5537b = i + 1;
        }
        int i2 = this.f5538c;
        int i3 = i2 + 1;
        this.f5538c = i3;
        fArr[i2] = f;
        if (i3 > fArr.length - 1) {
            this.f5538c = 0;
        }
        this.f5540e = true;
    }

    public float getHighest() {
        float f = Float.MIN_NORMAL;
        int i = 0;
        while (true) {
            float[] fArr = this.f5536a;
            if (i < fArr.length) {
                f = Math.max(f, fArr[i]);
                i++;
            } else {
                return f;
            }
        }
    }

    public float[] getWindowValues() {
        int i = this.f5537b;
        float[] fArr = new float[i];
        if (hasEnoughData()) {
            for (int i2 = 0; i2 < i; i2++) {
                float[] fArr2 = this.f5536a;
                fArr[i2] = fArr2[(this.f5538c + i2) % fArr2.length];
            }
        } else {
            System.arraycopy(this.f5536a, 0, fArr, 0, this.f5537b);
        }
        return fArr;
    }

    public WindowedMean(int i) {
        this.f5536a = new float[i];
    }

    public float getLowest() {
        float f = Float.MAX_VALUE;
        int i = 0;
        while (true) {
            float[] fArr = this.f5536a;
            if (i < fArr.length) {
                f = Math.min(f, fArr[i]);
                i++;
            } else {
                return f;
            }
        }
    }

    public float getMean() {
        float[] fArr;
        float f = 0.0f;
        if (!hasEnoughData()) {
            return 0.0f;
        }
        if (this.f5540e) {
            int i = 0;
            while (true) {
                fArr = this.f5536a;
                if (i >= fArr.length) {
                    break;
                }
                f += fArr[i];
                i++;
            }
            this.f5539d = f / fArr.length;
            this.f5540e = false;
        }
        return this.f5539d;
    }

    public float standardDeviation() {
        float f = 0.0f;
        if (!hasEnoughData()) {
            return 0.0f;
        }
        float mean = getMean();
        int i = 0;
        while (true) {
            float[] fArr = this.f5536a;
            if (i < fArr.length) {
                float f2 = fArr[i];
                f += (f2 - mean) * (f2 - mean);
                i++;
            } else {
                return (float) Math.sqrt(f / fArr.length);
            }
        }
    }
}
