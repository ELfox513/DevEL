package com.badlogic.gdx.math.collision;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import java.io.Serializable;
/* loaded from: classes.dex */
public class Ray implements Serializable {

    /* renamed from: a */
    public static Vector3 f5544a = new Vector3();
    public final Vector3 direction;
    public final Vector3 origin;

    public Ray() {
        this.origin = new Vector3();
        this.direction = new Vector3();
    }

    public Ray cpy() {
        return new Ray(this.origin, this.direction);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Ray ray = (Ray) obj;
        return this.direction.equals(ray.direction) && this.origin.equals(ray.origin);
    }

    public Vector3 getEndPoint(Vector3 vector3, float f) {
        return vector3.set(this.direction).scl(f).add(this.origin);
    }

    public Ray set(Vector3 vector3, Vector3 vector32) {
        this.origin.set(vector3);
        this.direction.set(vector32).nor();
        return this;
    }

    public String toString() {
        return "ray [" + this.origin + ":" + this.direction + "]";
    }

    public int hashCode() {
        return ((this.direction.hashCode() + 73) * 73) + this.origin.hashCode();
    }

    public Ray mul(Matrix4 matrix4) {
        f5544a.set(this.origin).add(this.direction);
        f5544a.mul(matrix4);
        this.origin.mul(matrix4);
        this.direction.set(f5544a.sub(this.origin)).nor();
        return this;
    }

    public Ray set(float f, float f2, float f3, float f4, float f5, float f6) {
        this.origin.set(f, f2, f3);
        this.direction.set(f4, f5, f6).nor();
        return this;
    }

    public Ray(Vector3 vector3, Vector3 vector32) {
        Vector3 vector33 = new Vector3();
        this.origin = vector33;
        Vector3 vector34 = new Vector3();
        this.direction = vector34;
        vector33.set(vector3);
        vector34.set(vector32).nor();
    }

    public Ray set(Ray ray) {
        this.origin.set(ray.origin);
        this.direction.set(ray.direction).nor();
        return this;
    }
}
