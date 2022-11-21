package com.badlogic.gdx.p032ai.utils.random;

import com.badlogic.gdx.math.MathUtils;
/* renamed from: com.badlogic.gdx.ai.utils.random.TriangularFloatDistribution */
/* loaded from: classes.dex */
public final class TriangularFloatDistribution extends FloatDistribution {

    /* renamed from: a */
    public final float f3502a;

    /* renamed from: b */
    public final float f3503b;

    /* renamed from: c */
    public final float f3504c;

    public TriangularFloatDistribution(float f) {
        this(-f, f);
    }

    public float getHigh() {
        return this.f3503b;
    }

    public float getLow() {
        return this.f3502a;
    }

    public float getMode() {
        return this.f3504c;
    }

    public TriangularFloatDistribution(float f, float f2) {
        this(f, f2, (f + f2) * 0.5f);
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public float nextFloat() {
        float f = this.f3502a;
        float f2 = this.f3503b;
        if ((-f) == f2 && this.f3504c == 0.0f) {
            return MathUtils.randomTriangular(f2);
        }
        return MathUtils.randomTriangular(f, f2, this.f3504c);
    }

    public TriangularFloatDistribution(float f, float f2, float f3) {
        this.f3502a = f;
        this.f3503b = f2;
        this.f3504c = f3;
    }
}
