package com.badlogic.gdx.p032ai.utils.random;
/* renamed from: com.badlogic.gdx.ai.utils.random.FloatDistribution */
/* loaded from: classes.dex */
public abstract class FloatDistribution implements Distribution {
    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public double nextDouble() {
        return nextFloat();
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public int nextInt() {
        return (int) nextFloat();
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public long nextLong() {
        return nextFloat();
    }
}
