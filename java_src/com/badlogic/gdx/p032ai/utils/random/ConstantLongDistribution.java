package com.badlogic.gdx.p032ai.utils.random;
/* renamed from: com.badlogic.gdx.ai.utils.random.ConstantLongDistribution */
/* loaded from: classes.dex */
public final class ConstantLongDistribution extends LongDistribution {

    /* renamed from: a */
    public final long f3494a;
    public static final ConstantLongDistribution NEGATIVE_ONE = new ConstantLongDistribution(-1);
    public static final ConstantLongDistribution ZERO = new ConstantLongDistribution(0);
    public static final ConstantLongDistribution ONE = new ConstantLongDistribution(1);

    public long getValue() {
        return this.f3494a;
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public long nextLong() {
        return this.f3494a;
    }

    public ConstantLongDistribution(long j) {
        this.f3494a = j;
    }
}
