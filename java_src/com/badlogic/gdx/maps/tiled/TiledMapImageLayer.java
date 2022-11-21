package com.badlogic.gdx.maps.tiled;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.MapLayer;
/* loaded from: classes.dex */
public class TiledMapImageLayer extends MapLayer {

    /* renamed from: l */
    public TextureRegion f5298l;

    /* renamed from: m */
    public float f5299m;

    /* renamed from: n */
    public float f5300n;

    public TextureRegion getTextureRegion() {
        return this.f5298l;
    }

    public float getX() {
        return this.f5299m;
    }

    public float getY() {
        return this.f5300n;
    }

    public void setTextureRegion(TextureRegion textureRegion) {
        this.f5298l = textureRegion;
    }

    public void setX(float f) {
        this.f5299m = f;
    }

    public void setY(float f) {
        this.f5300n = f;
    }

    public TiledMapImageLayer(TextureRegion textureRegion, float f, float f2) {
        this.f5298l = textureRegion;
        this.f5299m = f;
        this.f5300n = f2;
    }
}
