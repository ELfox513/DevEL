package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public class PerformanceCounters {

    /* renamed from: a */
    public long f6696a = 0;
    public final Array<PerformanceCounter> counters = new Array<>();

    public PerformanceCounter add(String str, int i) {
        PerformanceCounter performanceCounter = new PerformanceCounter(str, i);
        this.counters.add(performanceCounter);
        return performanceCounter;
    }

    public void tick() {
        long nanoTime = TimeUtils.nanoTime();
        long j = this.f6696a;
        if (j > 0) {
            tick(((float) (nanoTime - j)) * 1.0E-9f);
        }
        this.f6696a = nanoTime;
    }

    public StringBuilder toString(StringBuilder stringBuilder) {
        stringBuilder.setLength(0);
        for (int i = 0; i < this.counters.size; i++) {
            if (i != 0) {
                stringBuilder.append("; ");
            }
            this.counters.get(i).toString(stringBuilder);
        }
        return stringBuilder;
    }

    public PerformanceCounter add(String str) {
        PerformanceCounter performanceCounter = new PerformanceCounter(str);
        this.counters.add(performanceCounter);
        return performanceCounter;
    }

    public void tick(float f) {
        int i = 0;
        while (true) {
            Array<PerformanceCounter> array = this.counters;
            if (i >= array.size) {
                return;
            }
            array.get(i).tick(f);
            i++;
        }
    }
}
