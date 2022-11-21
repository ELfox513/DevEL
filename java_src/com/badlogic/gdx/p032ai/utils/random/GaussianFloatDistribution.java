package com.badlogic.gdx.p032ai.utils.random;

import com.badlogic.gdx.math.MathUtils;
/* renamed from: com.badlogic.gdx.ai.utils.random.GaussianFloatDistribution */
/* loaded from: classes.dex */
public final class GaussianFloatDistribution extends FloatDistribution {
    public static final GaussianFloatDistribution STANDARD_NORMAL = new GaussianFloatDistribution(0.0f, 1.0f);

    /* renamed from: a */
    public final float f3497a;

    /* renamed from: b */
    public final float f3498b;

    public float getMean() {
        return this.f3497a;
    }

    public float getStandardDeviation() {
        return this.f3498b;
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public float nextFloat() {
        return this.f3497a + (((float) MathUtils.random.nextGaussian()) * this.f3498b);
    }

    public GaussianFloatDistribution(float f, float f2) {
        this.f3497a = f;
        this.f3498b = f2;
    }
}
