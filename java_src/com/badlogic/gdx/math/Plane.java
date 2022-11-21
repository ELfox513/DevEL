package com.badlogic.gdx.math;

import java.io.Serializable;
/* loaded from: classes.dex */
public class Plane implements Serializable {

    /* renamed from: d */
    public float f5487d;
    public final Vector3 normal;

    /* loaded from: classes.dex */
    public enum PlaneSide {
        OnPlane,
        Back,
        Front
    }

    public Plane() {
        this.normal = new Vector3();
        this.f5487d = 0.0f;
    }

    public float distance(Vector3 vector3) {
        return this.normal.dot(vector3) + this.f5487d;
    }

    public float getD() {
        return this.f5487d;
    }

    public Vector3 getNormal() {
        return this.normal;
    }

    public boolean isFrontFacing(Vector3 vector3) {
        return this.normal.dot(vector3) <= 0.0f;
    }

    public void set(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        this.normal.set(vector3).sub(vector32).crs(vector32.f5533x - vector33.f5533x, vector32.f5534y - vector33.f5534y, vector32.f5535z - vector33.f5535z).nor();
        this.f5487d = -vector3.dot(this.normal);
    }

    public PlaneSide testPoint(Vector3 vector3) {
        float dot = this.normal.dot(vector3) + this.f5487d;
        if (dot == 0.0f) {
            return PlaneSide.OnPlane;
        }
        if (dot < 0.0f) {
            return PlaneSide.Back;
        }
        return PlaneSide.Front;
    }

    public String toString() {
        return this.normal.toString() + ", " + this.f5487d;
    }

    public void set(float f, float f2, float f3, float f4) {
        this.normal.set(f, f2, f3);
        this.f5487d = f4;
    }

    public Plane(Vector3 vector3, float f) {
        Vector3 vector32 = new Vector3();
        this.normal = vector32;
        this.f5487d = 0.0f;
        vector32.set(vector3).nor();
        this.f5487d = f;
    }

    public void set(Vector3 vector3, Vector3 vector32) {
        this.normal.set(vector32);
        this.f5487d = -vector3.dot(vector32);
    }

    public PlaneSide testPoint(float f, float f2, float f3) {
        float dot = this.normal.dot(f, f2, f3) + this.f5487d;
        if (dot == 0.0f) {
            return PlaneSide.OnPlane;
        }
        if (dot < 0.0f) {
            return PlaneSide.Back;
        }
        return PlaneSide.Front;
    }

    public void set(float f, float f2, float f3, float f4, float f5, float f6) {
        this.normal.set(f4, f5, f6);
        this.f5487d = -((f * f4) + (f2 * f5) + (f3 * f6));
    }

    public Plane(Vector3 vector3, Vector3 vector32) {
        Vector3 vector33 = new Vector3();
        this.normal = vector33;
        this.f5487d = 0.0f;
        vector33.set(vector3).nor();
        this.f5487d = -vector33.dot(vector32);
    }

    public void set(Plane plane) {
        this.normal.set(plane.normal);
        this.f5487d = plane.f5487d;
    }

    public Plane(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        this.normal = new Vector3();
        this.f5487d = 0.0f;
        set(vector3, vector32, vector33);
    }
}
