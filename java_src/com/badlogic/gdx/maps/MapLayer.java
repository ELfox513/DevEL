package com.badlogic.gdx.maps;

import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class MapLayer {

    /* renamed from: d */
    public float f5251d;

    /* renamed from: e */
    public float f5252e;

    /* renamed from: f */
    public float f5253f;

    /* renamed from: g */
    public float f5254g;

    /* renamed from: i */
    public MapLayer f5256i;

    /* renamed from: a */
    public String f5248a = "";

    /* renamed from: b */
    public float f5249b = 1.0f;

    /* renamed from: c */
    public boolean f5250c = true;

    /* renamed from: h */
    public boolean f5255h = true;

    /* renamed from: j */
    public MapObjects f5257j = new MapObjects();

    /* renamed from: k */
    public MapProperties f5258k = new MapProperties();

    public String getName() {
        return this.f5248a;
    }

    public MapObjects getObjects() {
        return this.f5257j;
    }

    public float getOffsetX() {
        return this.f5251d;
    }

    public float getOffsetY() {
        return this.f5252e;
    }

    public float getOpacity() {
        return this.f5249b;
    }

    public MapLayer getParent() {
        return this.f5256i;
    }

    public MapProperties getProperties() {
        return this.f5258k;
    }

    public void invalidateRenderOffset() {
        this.f5255h = true;
    }

    public boolean isVisible() {
        return this.f5250c;
    }

    public void setName(String str) {
        this.f5248a = str;
    }

    public void setOpacity(float f) {
        this.f5249b = f;
    }

    public void setVisible(boolean z) {
        this.f5250c = z;
    }

    /* renamed from: a */
    public void m23978a() {
        MapLayer mapLayer = this.f5256i;
        if (mapLayer != null) {
            mapLayer.m23978a();
            this.f5253f = this.f5256i.getRenderOffsetX() + this.f5251d;
            this.f5254g = this.f5256i.getRenderOffsetY() + this.f5252e;
        } else {
            this.f5253f = this.f5251d;
            this.f5254g = this.f5252e;
        }
        this.f5255h = false;
    }

    public float getRenderOffsetX() {
        if (this.f5255h) {
            m23978a();
        }
        return this.f5253f;
    }

    public float getRenderOffsetY() {
        if (this.f5255h) {
            m23978a();
        }
        return this.f5254g;
    }

    public void setOffsetX(float f) {
        this.f5251d = f;
        invalidateRenderOffset();
    }

    public void setOffsetY(float f) {
        this.f5252e = f;
        invalidateRenderOffset();
    }

    public void setParent(MapLayer mapLayer) {
        if (mapLayer != this) {
            this.f5256i = mapLayer;
            return;
        }
        throw new GdxRuntimeException("Can't set self as the parent");
    }
}
