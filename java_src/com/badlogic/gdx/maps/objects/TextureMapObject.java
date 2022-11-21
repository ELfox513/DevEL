package com.badlogic.gdx.maps.objects;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.MapObject;
/* loaded from: classes.dex */
public class TextureMapObject extends MapObject {

    /* renamed from: f */
    public float f5272f;

    /* renamed from: g */
    public float f5273g;

    /* renamed from: h */
    public float f5274h;

    /* renamed from: i */
    public float f5275i;

    /* renamed from: j */
    public float f5276j;

    /* renamed from: k */
    public float f5277k;

    /* renamed from: l */
    public float f5278l;

    /* renamed from: m */
    public TextureRegion f5279m;

    public TextureMapObject() {
        this(null);
    }

    public float getOriginX() {
        return this.f5274h;
    }

    public float getOriginY() {
        return this.f5275i;
    }

    public float getRotation() {
        return this.f5278l;
    }

    public float getScaleX() {
        return this.f5276j;
    }

    public float getScaleY() {
        return this.f5277k;
    }

    public TextureRegion getTextureRegion() {
        return this.f5279m;
    }

    public float getX() {
        return this.f5272f;
    }

    public float getY() {
        return this.f5273g;
    }

    public void setOriginX(float f) {
        this.f5274h = f;
    }

    public void setOriginY(float f) {
        this.f5275i = f;
    }

    public void setRotation(float f) {
        this.f5278l = f;
    }

    public void setScaleX(float f) {
        this.f5276j = f;
    }

    public void setScaleY(float f) {
        this.f5277k = f;
    }

    public void setTextureRegion(TextureRegion textureRegion) {
        this.f5279m = textureRegion;
    }

    public void setX(float f) {
        this.f5272f = f;
    }

    public void setY(float f) {
        this.f5273g = f;
    }

    public TextureMapObject(TextureRegion textureRegion) {
        this.f5272f = 0.0f;
        this.f5273g = 0.0f;
        this.f5274h = 0.0f;
        this.f5275i = 0.0f;
        this.f5276j = 1.0f;
        this.f5277k = 1.0f;
        this.f5278l = 0.0f;
        this.f5279m = textureRegion;
    }
}
