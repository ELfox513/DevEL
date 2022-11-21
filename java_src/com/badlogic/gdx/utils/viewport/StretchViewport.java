package com.badlogic.gdx.utils.viewport;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.utils.Scaling;
/* loaded from: classes.dex */
public class StretchViewport extends ScalingViewport {
    public StretchViewport(float f, float f2) {
        super(Scaling.stretch, f, f2);
    }

    public StretchViewport(float f, float f2, Camera camera) {
        super(Scaling.stretch, f, f2, camera);
    }
}
