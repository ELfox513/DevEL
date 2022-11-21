package com.badlogic.gdx.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.FloatCounter;
/* loaded from: classes.dex */
public class PerformanceCounter {

    /* renamed from: a */
    public long f6694a;

    /* renamed from: b */
    public long f6695b;
    public float current;
    public final FloatCounter load;
    public final String name;
    public final FloatCounter time;
    public boolean valid;

    public PerformanceCounter(String str) {
        this(str, 5);
    }

    public void tick() {
        long nanoTime = TimeUtils.nanoTime();
        long j = this.f6695b;
        if (j > 0) {
            tick(((float) (nanoTime - j)) * 1.0E-9f);
        }
        this.f6695b = nanoTime;
    }

    public String toString() {
        return toString(new StringBuilder()).toString();
    }

    public PerformanceCounter(String str, int i) {
        this.f6694a = 0L;
        this.f6695b = 0L;
        this.current = 0.0f;
        this.valid = false;
        this.name = str;
        this.time = new FloatCounter(i);
        this.load = new FloatCounter(1);
    }

    public void reset() {
        this.time.reset();
        this.load.reset();
        this.f6694a = 0L;
        this.f6695b = 0L;
        this.current = 0.0f;
        this.valid = false;
    }

    public void stop() {
        if (this.f6694a > 0) {
            this.current += ((float) (TimeUtils.nanoTime() - this.f6694a)) * 1.0E-9f;
            this.f6694a = 0L;
            this.valid = true;
        }
    }

    public void start() {
        this.f6694a = TimeUtils.nanoTime();
        this.valid = false;
    }

    public StringBuilder toString(StringBuilder stringBuilder) {
        stringBuilder.append(this.name).append(": [time: ").append(this.time.value).append(", load: ").append(this.load.value).append("]");
        return stringBuilder;
    }

    public void tick(float f) {
        if (!this.valid) {
            Gdx.app.error("PerformanceCounter", "Invalid data, check if you called PerformanceCounter#stop()");
            return;
        }
        this.time.put(this.current);
        float f2 = f == 0.0f ? 0.0f : this.current / f;
        FloatCounter floatCounter = this.load;
        if (f <= 1.0f) {
            f2 = (f2 * f) + ((1.0f - f) * floatCounter.latest);
        }
        floatCounter.put(f2);
        this.current = 0.0f;
        this.valid = false;
    }
}
