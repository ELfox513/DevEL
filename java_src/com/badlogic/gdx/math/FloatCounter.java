package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class FloatCounter implements Pool.Poolable {
    public float average;
    public int count;
    public float latest;
    public float max;
    public final WindowedMean mean;
    public float min;
    public float total;
    public float value;

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.count = 0;
        this.total = 0.0f;
        this.min = Float.MAX_VALUE;
        this.max = -3.4028235E38f;
        this.average = 0.0f;
        this.latest = 0.0f;
        this.value = 0.0f;
        WindowedMean windowedMean = this.mean;
        if (windowedMean != null) {
            windowedMean.clear();
        }
    }

    public String toString() {
        return "FloatCounter{count=" + this.count + ", total=" + this.total + ", min=" + this.min + ", max=" + this.max + ", average=" + this.average + ", latest=" + this.latest + ", value=" + this.value + '}';
    }

    public void put(float f) {
        this.latest = f;
        float f2 = this.total + f;
        this.total = f2;
        int i = this.count + 1;
        this.count = i;
        this.average = f2 / i;
        WindowedMean windowedMean = this.mean;
        if (windowedMean != null) {
            windowedMean.addValue(f);
            this.value = this.mean.getMean();
        } else {
            this.value = f;
        }
        WindowedMean windowedMean2 = this.mean;
        if (windowedMean2 == null || windowedMean2.hasEnoughData()) {
            float f3 = this.value;
            if (f3 < this.min) {
                this.min = f3;
            }
            if (f3 > this.max) {
                this.max = f3;
            }
        }
    }

    public FloatCounter(int i) {
        WindowedMean windowedMean;
        if (i > 1) {
            windowedMean = new WindowedMean(i);
        } else {
            windowedMean = null;
        }
        this.mean = windowedMean;
        reset();
    }
}
