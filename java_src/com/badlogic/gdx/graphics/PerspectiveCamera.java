package com.badlogic.gdx.graphics;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public class PerspectiveCamera extends Camera {

    /* renamed from: c */
    public final Vector3 f3921c;
    public float fieldOfView;

    public PerspectiveCamera() {
        this.fieldOfView = 67.0f;
        this.f3921c = new Vector3();
    }

    @Override // com.badlogic.gdx.graphics.Camera
    public void update() {
        update(true);
    }

    @Override // com.badlogic.gdx.graphics.Camera
    public void update(boolean z) {
        this.projection.setToProjection(Math.abs(this.near), Math.abs(this.far), this.fieldOfView, this.viewportWidth / this.viewportHeight);
        Matrix4 matrix4 = this.view;
        Vector3 vector3 = this.position;
        matrix4.setToLookAt(vector3, this.f3921c.set(vector3).add(this.direction), this.f3888up);
        this.combined.set(this.projection);
        Matrix4.mul(this.combined.val, this.view.val);
        if (z) {
            this.invProjectionView.set(this.combined);
            Matrix4.inv(this.invProjectionView.val);
            this.frustum.update(this.invProjectionView);
        }
    }

    public PerspectiveCamera(float f, float f2, float f3) {
        this.fieldOfView = 67.0f;
        this.f3921c = new Vector3();
        this.fieldOfView = f;
        this.viewportWidth = f2;
        this.viewportHeight = f3;
        update();
    }
}
