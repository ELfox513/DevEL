package com.badlogic.gdx.p032ai.utils.random;
/* renamed from: com.badlogic.gdx.ai.utils.random.LongDistribution */
/* loaded from: classes.dex */
public abstract class LongDistribution implements Distribution {
    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public double nextDouble() {
        return nextLong();
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public float nextFloat() {
        return (float) nextLong();
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public int nextInt() {
        return (int) nextLong();
    }
}
