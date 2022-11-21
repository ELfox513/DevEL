package com.badlogic.gdx;
/* loaded from: classes.dex */
public abstract class AbstractGraphics implements Graphics {
    @Override // com.badlogic.gdx.Graphics
    public float getBackBufferScale() {
        return getBackBufferWidth() / getWidth();
    }

    @Override // com.badlogic.gdx.Graphics
    public float getDensity() {
        float ppiX = getPpiX();
        if (ppiX <= 0.0f || ppiX > Float.MAX_VALUE) {
            return 1.0f;
        }
        return ppiX / 160.0f;
    }

    @Override // com.badlogic.gdx.Graphics
    public float getRawDeltaTime() {
        return getDeltaTime();
    }
}
