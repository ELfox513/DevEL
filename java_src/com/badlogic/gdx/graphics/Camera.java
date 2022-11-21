package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Frustum;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.Ray;
/* loaded from: classes.dex */
public abstract class Camera {
    public final Vector3 position = new Vector3();
    public final Vector3 direction = new Vector3(0.0f, 0.0f, -1.0f);

    /* renamed from: up */
    public final Vector3 f3888up = new Vector3(0.0f, 1.0f, 0.0f);
    public final Matrix4 projection = new Matrix4();
    public final Matrix4 view = new Matrix4();
    public final Matrix4 combined = new Matrix4();
    public final Matrix4 invProjectionView = new Matrix4();
    public float near = 1.0f;
    public float far = 100.0f;
    public float viewportWidth = 0.0f;
    public float viewportHeight = 0.0f;
    public final Frustum frustum = new Frustum();

    /* renamed from: a */
    public final Vector3 f3886a = new Vector3();

    /* renamed from: b */
    public final Ray f3887b = new Ray(new Vector3(), new Vector3());

    public Ray getPickRay(float f, float f2, float f3, float f4, float f5, float f6) {
        unproject(this.f3887b.origin.set(f, f2, 0.0f), f3, f4, f5, f6);
        unproject(this.f3887b.direction.set(f, f2, 1.0f), f3, f4, f5, f6);
        Ray ray = this.f3887b;
        ray.direction.sub(ray.origin).nor();
        return this.f3887b;
    }

    public void lookAt(float f, float f2, float f3) {
        this.f3886a.set(f, f2, f3).sub(this.position).nor();
        if (this.f3886a.isZero()) {
            return;
        }
        float dot = this.f3886a.dot(this.f3888up);
        if (Math.abs(dot - 1.0f) < 1.0E-9f) {
            this.f3888up.set(this.direction).scl(-1.0f);
        } else if (Math.abs(dot + 1.0f) < 1.0E-9f) {
            this.f3888up.set(this.direction);
        }
        this.direction.set(this.f3886a);
        normalizeUp();
    }

    public Vector3 project(Vector3 vector3) {
        project(vector3, 0.0f, 0.0f, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        return vector3;
    }

    public void rotate(float f, float f2, float f3, float f4) {
        this.direction.rotate(f, f2, f3, f4);
        this.f3888up.rotate(f, f2, f3, f4);
    }

    public void translate(float f, float f2, float f3) {
        this.position.add(f, f2, f3);
    }

    public Vector3 unproject(Vector3 vector3, float f, float f2, float f3, float f4) {
        vector3.f5533x = (((vector3.f5533x - f) * 2.0f) / f3) - 1.0f;
        vector3.f5534y = ((((Gdx.graphics.getHeight() - vector3.f5534y) - f2) * 2.0f) / f4) - 1.0f;
        vector3.f5535z = (vector3.f5535z * 2.0f) - 1.0f;
        vector3.prj(this.invProjectionView);
        return vector3;
    }

    public abstract void update();

    public abstract void update(boolean z);

    public void normalizeUp() {
        this.f3886a.set(this.direction).crs(this.f3888up);
        this.f3888up.set(this.f3886a).crs(this.direction).nor();
    }

    public Vector3 project(Vector3 vector3, float f, float f2, float f3, float f4) {
        vector3.prj(this.combined);
        vector3.f5533x = ((f3 * (vector3.f5533x + 1.0f)) / 2.0f) + f;
        vector3.f5534y = ((f4 * (vector3.f5534y + 1.0f)) / 2.0f) + f2;
        vector3.f5535z = (vector3.f5535z + 1.0f) / 2.0f;
        return vector3;
    }

    public void rotateAround(Vector3 vector3, Vector3 vector32, float f) {
        this.f3886a.set(vector3);
        this.f3886a.sub(this.position);
        translate(this.f3886a);
        rotate(vector32, f);
        this.f3886a.rotate(vector32, f);
        Vector3 vector33 = this.f3886a;
        translate(-vector33.f5533x, -vector33.f5534y, -vector33.f5535z);
    }

    public void transform(Matrix4 matrix4) {
        this.position.mul(matrix4);
        rotate(matrix4);
    }

    public void translate(Vector3 vector3) {
        this.position.add(vector3);
    }

    public void rotate(Vector3 vector3, float f) {
        this.direction.rotate(vector3, f);
        this.f3888up.rotate(vector3, f);
    }

    public Ray getPickRay(float f, float f2) {
        return getPickRay(f, f2, 0.0f, 0.0f, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
    }

    public void rotate(Matrix4 matrix4) {
        this.direction.rot(matrix4);
        this.f3888up.rot(matrix4);
    }

    public Vector3 unproject(Vector3 vector3) {
        unproject(vector3, 0.0f, 0.0f, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        return vector3;
    }

    public void rotate(Quaternion quaternion) {
        quaternion.transform(this.direction);
        quaternion.transform(this.f3888up);
    }

    public void lookAt(Vector3 vector3) {
        lookAt(vector3.f5533x, vector3.f5534y, vector3.f5535z);
    }
}
