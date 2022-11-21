package com.badlogic.gdx.backends.android.surfaceview;

import android.view.View;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
/* loaded from: classes.dex */
public class FillResolutionStrategy implements ResolutionStrategy {
    @Override // com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy
    public ResolutionStrategy.MeasuredDimension calcMeasures(int i, int i2) {
        return new ResolutionStrategy.MeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
    }
}
