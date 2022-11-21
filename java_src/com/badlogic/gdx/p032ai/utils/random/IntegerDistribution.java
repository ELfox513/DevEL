package com.badlogic.gdx.p032ai.utils.random;
/* renamed from: com.badlogic.gdx.ai.utils.random.IntegerDistribution */
/* loaded from: classes.dex */
public abstract class IntegerDistribution implements Distribution {
    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public double nextDouble() {
        return nextInt();
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public float nextFloat() {
        return nextInt();
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public long nextLong() {
        return nextInt();
    }
}
