package com.badlogic.gdx.maps;

import com.badlogic.gdx.graphics.Color;
/* loaded from: classes.dex */
public class MapObject {

    /* renamed from: a */
    public String f5260a = "";

    /* renamed from: b */
    public float f5261b = 1.0f;

    /* renamed from: c */
    public boolean f5262c = true;

    /* renamed from: d */
    public MapProperties f5263d = new MapProperties();

    /* renamed from: e */
    public Color f5264e = Color.WHITE.cpy();

    public Color getColor() {
        return this.f5264e;
    }

    public String getName() {
        return this.f5260a;
    }

    public float getOpacity() {
        return this.f5261b;
    }

    public MapProperties getProperties() {
        return this.f5263d;
    }

    public boolean isVisible() {
        return this.f5262c;
    }

    public void setColor(Color color) {
        this.f5264e = color;
    }

    public void setName(String str) {
        this.f5260a = str;
    }

    public void setOpacity(float f) {
        this.f5261b = f;
    }

    public void setVisible(boolean z) {
        this.f5262c = z;
    }
}
