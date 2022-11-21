package com.badlogic.gdx.p032ai.utils.random;
/* renamed from: com.badlogic.gdx.ai.utils.random.ConstantIntegerDistribution */
/* loaded from: classes.dex */
public final class ConstantIntegerDistribution extends IntegerDistribution {

    /* renamed from: a */
    public final int f3493a;
    public static final ConstantIntegerDistribution NEGATIVE_ONE = new ConstantIntegerDistribution(-1);
    public static final ConstantIntegerDistribution ZERO = new ConstantIntegerDistribution(0);
    public static final ConstantIntegerDistribution ONE = new ConstantIntegerDistribution(1);

    public int getValue() {
        return this.f3493a;
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public int nextInt() {
        return this.f3493a;
    }

    public ConstantIntegerDistribution(int i) {
        this.f3493a = i;
    }
}
