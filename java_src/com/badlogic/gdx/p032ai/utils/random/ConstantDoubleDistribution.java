package com.badlogic.gdx.p032ai.utils.random;
/* renamed from: com.badlogic.gdx.ai.utils.random.ConstantDoubleDistribution */
/* loaded from: classes.dex */
public final class ConstantDoubleDistribution extends DoubleDistribution {

    /* renamed from: a */
    public final double f3491a;
    public static final ConstantDoubleDistribution NEGATIVE_ONE = new ConstantDoubleDistribution(-1.0d);
    public static final ConstantDoubleDistribution ZERO = new ConstantDoubleDistribution(0.0d);
    public static final ConstantDoubleDistribution ONE = new ConstantDoubleDistribution(1.0d);

    public double getValue() {
        return this.f3491a;
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public double nextDouble() {
        return this.f3491a;
    }

    public ConstantDoubleDistribution(double d) {
        this.f3491a = d;
    }
}
