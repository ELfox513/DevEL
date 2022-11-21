package com.badlogic.gdx.utils.viewport;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.OrthographicCamera;
/* loaded from: classes.dex */
public class ScreenViewport extends Viewport {

    /* renamed from: i */
    public float f6965i;

    public ScreenViewport() {
        this(new OrthographicCamera());
    }

    public float getUnitsPerPixel() {
        return this.f6965i;
    }

    public void setUnitsPerPixel(float f) {
        this.f6965i = f;
    }

    @Override // com.badlogic.gdx.utils.viewport.Viewport
    public void update(int i, int i2, boolean z) {
        setScreenBounds(0, 0, i, i2);
        float f = this.f6965i;
        setWorldSize(i * f, i2 * f);
        apply(z);
    }

    public ScreenViewport(Camera camera) {
        this.f6965i = 1.0f;
        setCamera(camera);
    }
}
