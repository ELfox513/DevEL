package com.badlogic.gdx.p032ai.utils.random;
/* renamed from: com.badlogic.gdx.ai.utils.random.DoubleDistribution */
/* loaded from: classes.dex */
public abstract class DoubleDistribution implements Distribution {
    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public float nextFloat() {
        return (float) nextDouble();
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public int nextInt() {
        return (int) nextDouble();
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public long nextLong() {
        return (long) nextDouble();
    }
}
