package com.badlogic.gdx.p032ai.utils.random;

import com.badlogic.gdx.math.MathUtils;
/* renamed from: com.badlogic.gdx.ai.utils.random.UniformIntegerDistribution */
/* loaded from: classes.dex */
public final class UniformIntegerDistribution extends IntegerDistribution {

    /* renamed from: a */
    public final int f3515a;

    /* renamed from: b */
    public final int f3516b;

    public UniformIntegerDistribution(int i) {
        this(0, i);
    }

    public int getHigh() {
        return this.f3516b;
    }

    public int getLow() {
        return this.f3515a;
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public int nextInt() {
        return MathUtils.random(this.f3515a, this.f3516b);
    }

    public UniformIntegerDistribution(int i, int i2) {
        this.f3515a = i;
        this.f3516b = i2;
    }
}
