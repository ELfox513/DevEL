package com.badlogic.gdx.maps.objects;

import com.badlogic.gdx.maps.MapObject;
import com.badlogic.gdx.math.Ellipse;
/* loaded from: classes.dex */
public class EllipseMapObject extends MapObject {

    /* renamed from: f */
    public Ellipse f5268f;

    public EllipseMapObject() {
        this(0.0f, 0.0f, 1.0f, 1.0f);
    }

    public Ellipse getEllipse() {
        return this.f5268f;
    }

    public EllipseMapObject(float f, float f2, float f3, float f4) {
        this.f5268f = new Ellipse(f, f2, f3, f4);
    }
}
