package com.badlogic.gdx.maps.objects;

import com.badlogic.gdx.maps.MapObject;
import com.badlogic.gdx.math.Polygon;
/* loaded from: classes.dex */
public class PolygonMapObject extends MapObject {

    /* renamed from: f */
    public Polygon f5269f;

    public PolygonMapObject() {
        this(new float[0]);
    }

    public Polygon getPolygon() {
        return this.f5269f;
    }

    public void setPolygon(Polygon polygon) {
        this.f5269f = polygon;
    }

    public PolygonMapObject(float[] fArr) {
        this.f5269f = new Polygon(fArr);
    }

    public PolygonMapObject(Polygon polygon) {
        this.f5269f = polygon;
    }
}
