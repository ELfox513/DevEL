package com.badlogic.gdx.maps.objects;

import com.badlogic.gdx.maps.MapObject;
import com.badlogic.gdx.math.Polyline;
/* loaded from: classes.dex */
public class PolylineMapObject extends MapObject {

    /* renamed from: f */
    public Polyline f5270f;

    public PolylineMapObject() {
        this(new float[0]);
    }

    public Polyline getPolyline() {
        return this.f5270f;
    }

    public void setPolyline(Polyline polyline) {
        this.f5270f = polyline;
    }

    public PolylineMapObject(float[] fArr) {
        this.f5270f = new Polyline(fArr);
    }

    public PolylineMapObject(Polyline polyline) {
        this.f5270f = polyline;
    }
}
