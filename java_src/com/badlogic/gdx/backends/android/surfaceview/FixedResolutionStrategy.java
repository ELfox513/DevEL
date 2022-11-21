package com.badlogic.gdx.backends.android.surfaceview;

import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
/* loaded from: classes.dex */
public class FixedResolutionStrategy implements ResolutionStrategy {

    /* renamed from: a */
    public final int f3858a;

    /* renamed from: b */
    public final int f3859b;

    @Override // com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy
    public ResolutionStrategy.MeasuredDimension calcMeasures(int i, int i2) {
        return new ResolutionStrategy.MeasuredDimension(this.f3858a, this.f3859b);
    }

    public FixedResolutionStrategy(int i, int i2) {
        this.f3858a = i;
        this.f3859b = i2;
    }
}
