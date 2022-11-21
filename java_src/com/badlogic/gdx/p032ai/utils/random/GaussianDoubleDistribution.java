package com.badlogic.gdx.p032ai.utils.random;

import com.badlogic.gdx.math.MathUtils;
/* renamed from: com.badlogic.gdx.ai.utils.random.GaussianDoubleDistribution */
/* loaded from: classes.dex */
public final class GaussianDoubleDistribution extends DoubleDistribution {
    public static final GaussianDoubleDistribution STANDARD_NORMAL = new GaussianDoubleDistribution(0.0d, 1.0d);

    /* renamed from: a */
    public final double f3495a;

    /* renamed from: b */
    public final double f3496b;

    public double getMean() {
        return this.f3495a;
    }

    public double getStandardDeviation() {
        return this.f3496b;
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public double nextDouble() {
        return this.f3495a + (MathUtils.random.nextGaussian() * this.f3496b);
    }

    public GaussianDoubleDistribution(double d, double d2) {
        this.f3495a = d;
        this.f3496b = d2;
    }
}
