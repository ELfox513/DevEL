package com.badlogic.gdx.utils.viewport;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.utils.Scaling;
/* loaded from: classes.dex */
public class FitViewport extends ScalingViewport {
    public FitViewport(float f, float f2) {
        super(Scaling.fit, f, f2);
    }

    public FitViewport(float f, float f2, Camera camera) {
        super(Scaling.fit, f, f2, camera);
    }
}
