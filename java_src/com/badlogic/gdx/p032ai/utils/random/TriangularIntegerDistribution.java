package com.badlogic.gdx.p032ai.utils.random;

import com.badlogic.gdx.math.MathUtils;
/* renamed from: com.badlogic.gdx.ai.utils.random.TriangularIntegerDistribution */
/* loaded from: classes.dex */
public final class TriangularIntegerDistribution extends IntegerDistribution {

    /* renamed from: a */
    public final int f3505a;

    /* renamed from: b */
    public final int f3506b;

    /* renamed from: c */
    public final float f3507c;

    public TriangularIntegerDistribution(int i) {
        this(-i, i);
    }

    public int getHigh() {
        return this.f3506b;
    }

    public int getLow() {
        return this.f3505a;
    }

    public float getMode() {
        return this.f3507c;
    }

    public TriangularIntegerDistribution(int i, int i2) {
        this(i, i2, (i + i2) * 0.5f);
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public int nextInt() {
        float randomTriangular;
        int i = this.f3505a;
        int i2 = -i;
        int i3 = this.f3506b;
        if (i2 == i3 && this.f3507c == 0.0f) {
            randomTriangular = MathUtils.randomTriangular(i3);
        } else {
            randomTriangular = MathUtils.randomTriangular(i, i3, this.f3507c);
        }
        return Math.round(randomTriangular);
    }

    public TriangularIntegerDistribution(int i, int i2, float f) {
        this.f3505a = i;
        this.f3506b = i2;
        this.f3507c = f;
    }
}
