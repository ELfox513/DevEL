package com.badlogic.gdx.p032ai.utils.random;

import com.badlogic.gdx.math.MathUtils;
/* renamed from: com.badlogic.gdx.ai.utils.random.UniformDoubleDistribution */
/* loaded from: classes.dex */
public final class UniformDoubleDistribution extends DoubleDistribution {

    /* renamed from: a */
    public final double f3511a;

    /* renamed from: b */
    public final double f3512b;

    public UniformDoubleDistribution(double d) {
        this(0.0d, d);
    }

    public double getHigh() {
        return this.f3512b;
    }

    public double getLow() {
        return this.f3511a;
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public double nextDouble() {
        return this.f3511a + (MathUtils.random.nextDouble() * (this.f3512b - this.f3511a));
    }

    public UniformDoubleDistribution(double d, double d2) {
        this.f3511a = d;
        this.f3512b = d2;
    }
}
