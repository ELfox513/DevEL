package com.badlogic.gdx.math.collision;

import com.badlogic.gdx.math.Vector3;
import java.io.Serializable;
/* loaded from: classes.dex */
public class Segment implements Serializable {

    /* renamed from: a */
    public final Vector3 f5545a;

    /* renamed from: b */
    public final Vector3 f5546b;

    public Segment(Vector3 vector3, Vector3 vector32) {
        Vector3 vector33 = new Vector3();
        this.f5545a = vector33;
        Vector3 vector34 = new Vector3();
        this.f5546b = vector34;
        vector33.set(vector3);
        vector34.set(vector32);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Segment segment = (Segment) obj;
        return this.f5545a.equals(segment.f5545a) && this.f5546b.equals(segment.f5546b);
    }

    public float len() {
        return this.f5545a.dst(this.f5546b);
    }

    public float len2() {
        return this.f5545a.dst2(this.f5546b);
    }

    public int hashCode() {
        return ((this.f5545a.hashCode() + 71) * 71) + this.f5546b.hashCode();
    }

    public Segment(float f, float f2, float f3, float f4, float f5, float f6) {
        Vector3 vector3 = new Vector3();
        this.f5545a = vector3;
        Vector3 vector32 = new Vector3();
        this.f5546b = vector32;
        vector3.set(f, f2, f3);
        vector32.set(f4, f5, f6);
    }
}
