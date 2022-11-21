package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public class OrthographicCamera extends Camera {
    public float zoom = 1.0f;

    /* renamed from: c */
    public final Vector3 f3920c = new Vector3();

    public OrthographicCamera() {
        this.near = 0.0f;
    }

    public void rotate(float f) {
        rotate(this.direction, f);
    }

    public void setToOrtho(boolean z) {
        setToOrtho(z, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
    }

    public void translate(float f, float f2) {
        translate(f, f2, 0.0f);
    }

    @Override // com.badlogic.gdx.graphics.Camera
    public void update() {
        update(true);
    }

    public void setToOrtho(boolean z, float f, float f2) {
        if (z) {
            this.f3888up.set(0.0f, -1.0f, 0.0f);
            this.direction.set(0.0f, 0.0f, 1.0f);
        } else {
            this.f3888up.set(0.0f, 1.0f, 0.0f);
            this.direction.set(0.0f, 0.0f, -1.0f);
        }
        Vector3 vector3 = this.position;
        float f3 = this.zoom;
        vector3.set((f3 * f) / 2.0f, (f3 * f2) / 2.0f, 0.0f);
        this.viewportWidth = f;
        this.viewportHeight = f2;
        update();
    }

    public void translate(Vector2 vector2) {
        translate(vector2.f5527x, vector2.f5528y, 0.0f);
    }

    @Override // com.badlogic.gdx.graphics.Camera
    public void update(boolean z) {
        Matrix4 matrix4 = this.projection;
        float f = this.zoom;
        float f2 = this.viewportWidth;
        float f3 = this.viewportHeight;
        matrix4.setToOrtho(((-f2) * f) / 2.0f, (f2 / 2.0f) * f, (-(f3 / 2.0f)) * f, (f * f3) / 2.0f, this.near, this.far);
        Matrix4 matrix42 = this.view;
        Vector3 vector3 = this.position;
        matrix42.setToLookAt(vector3, this.f3920c.set(vector3).add(this.direction), this.f3888up);
        this.combined.set(this.projection);
        Matrix4.mul(this.combined.val, this.view.val);
        if (z) {
            this.invProjectionView.set(this.combined);
            Matrix4.inv(this.invProjectionView.val);
            this.frustum.update(this.invProjectionView);
        }
    }

    public OrthographicCamera(float f, float f2) {
        this.viewportWidth = f;
        this.viewportHeight = f2;
        this.near = 0.0f;
        update();
    }
}
