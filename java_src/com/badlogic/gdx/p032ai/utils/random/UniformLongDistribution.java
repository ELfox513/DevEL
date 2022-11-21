package com.badlogic.gdx.p032ai.utils.random;

import com.badlogic.gdx.math.MathUtils;
/* renamed from: com.badlogic.gdx.ai.utils.random.UniformLongDistribution */
/* loaded from: classes.dex */
public final class UniformLongDistribution extends LongDistribution {

    /* renamed from: a */
    public final long f3517a;

    /* renamed from: b */
    public final long f3518b;

    public UniformLongDistribution(long j) {
        this(0L, j);
    }

    public long getHigh() {
        return this.f3518b;
    }

    public long getLow() {
        return this.f3517a;
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public long nextLong() {
        long j = this.f3517a;
        double nextDouble = MathUtils.random.nextDouble();
        double d = this.f3518b - this.f3517a;
        Double.isNaN(d);
        return j + ((long) (nextDouble * d));
    }

    public UniformLongDistribution(long j, long j2) {
        this.f3517a = j;
        this.f3518b = j2;
    }
}
