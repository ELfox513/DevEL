package com.badlogic.gdx.maps.objects;

import com.badlogic.gdx.maps.MapObject;
import com.badlogic.gdx.math.Rectangle;
/* loaded from: classes.dex */
public class RectangleMapObject extends MapObject {

    /* renamed from: f */
    public Rectangle f5271f;

    public RectangleMapObject() {
        this(0.0f, 0.0f, 1.0f, 1.0f);
    }

    public Rectangle getRectangle() {
        return this.f5271f;
    }

    public RectangleMapObject(float f, float f2, float f3, float f4) {
        this.f5271f = new Rectangle(f, f2, f3, f4);
    }
}
