package com.badlogic.gdx.p032ai.utils.random;

import com.badlogic.gdx.math.MathUtils;
/* renamed from: com.badlogic.gdx.ai.utils.random.UniformFloatDistribution */
/* loaded from: classes.dex */
public final class UniformFloatDistribution extends FloatDistribution {

    /* renamed from: a */
    public final float f3513a;

    /* renamed from: b */
    public final float f3514b;

    public UniformFloatDistribution(float f) {
        this(0.0f, f);
    }

    public float getHigh() {
        return this.f3514b;
    }

    public float getLow() {
        return this.f3513a;
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public float nextFloat() {
        return MathUtils.random(this.f3513a, this.f3514b);
    }

    public UniformFloatDistribution(float f, float f2) {
        this.f3513a = f;
        this.f3514b = f2;
    }
}
