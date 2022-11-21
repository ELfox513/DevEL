package com.badlogic.gdx.maps.objects;

import com.badlogic.gdx.maps.MapObject;
import com.badlogic.gdx.math.Circle;
/* loaded from: classes.dex */
public class CircleMapObject extends MapObject {

    /* renamed from: f */
    public Circle f5267f;

    public CircleMapObject() {
        this(0.0f, 0.0f, 1.0f);
    }

    public Circle getCircle() {
        return this.f5267f;
    }

    public CircleMapObject(float f, float f2, float f3) {
        this.f5267f = new Circle(f, f2, f3);
    }
}
