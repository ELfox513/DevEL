package com.badlogic.gdx.p032ai.utils.random;
/* renamed from: com.badlogic.gdx.ai.utils.random.ConstantFloatDistribution */
/* loaded from: classes.dex */
public final class ConstantFloatDistribution extends FloatDistribution {

    /* renamed from: a */
    public final float f3492a;
    public static final ConstantFloatDistribution NEGATIVE_ONE = new ConstantFloatDistribution(-1.0f);
    public static final ConstantFloatDistribution ZERO = new ConstantFloatDistribution(0.0f);
    public static final ConstantFloatDistribution ONE = new ConstantFloatDistribution(1.0f);
    public static final ConstantFloatDistribution ZERO_POINT_FIVE = new ConstantFloatDistribution(0.5f);

    public float getValue() {
        return this.f3492a;
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public float nextFloat() {
        return this.f3492a;
    }

    public ConstantFloatDistribution(float f) {
        this.f3492a = f;
    }
}
