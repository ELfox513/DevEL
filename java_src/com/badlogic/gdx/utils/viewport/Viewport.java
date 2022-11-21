package com.badlogic.gdx.utils.viewport;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.glutils.HdpiUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.Ray;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
/* loaded from: classes.dex */
public abstract class Viewport {

    /* renamed from: a */
    public Camera f6966a;

    /* renamed from: b */
    public float f6967b;

    /* renamed from: c */
    public float f6968c;

    /* renamed from: d */
    public int f6969d;

    /* renamed from: e */
    public int f6970e;

    /* renamed from: f */
    public int f6971f;

    /* renamed from: g */
    public int f6972g;

    /* renamed from: h */
    public final Vector3 f6973h = new Vector3();

    public void apply() {
        apply(false);
    }

    public void calculateScissors(Matrix4 matrix4, Rectangle rectangle, Rectangle rectangle2) {
        ScissorStack.calculateScissors(this.f6966a, this.f6969d, this.f6970e, this.f6971f, this.f6972g, matrix4, rectangle, rectangle2);
    }

    public int getBottomGutterHeight() {
        return this.f6970e;
    }

    public Camera getCamera() {
        return this.f6966a;
    }

    public int getLeftGutterWidth() {
        return this.f6969d;
    }

    public Ray getPickRay(float f, float f2) {
        return this.f6966a.getPickRay(f, f2, this.f6969d, this.f6970e, this.f6971f, this.f6972g);
    }

    public int getRightGutterWidth() {
        return Gdx.graphics.getWidth() - (this.f6969d + this.f6971f);
    }

    public int getRightGutterX() {
        return this.f6969d + this.f6971f;
    }

    public int getScreenHeight() {
        return this.f6972g;
    }

    public int getScreenWidth() {
        return this.f6971f;
    }

    public int getScreenX() {
        return this.f6969d;
    }

    public int getScreenY() {
        return this.f6970e;
    }

    public int getTopGutterHeight() {
        return Gdx.graphics.getHeight() - (this.f6970e + this.f6972g);
    }

    public int getTopGutterY() {
        return this.f6970e + this.f6972g;
    }

    public float getWorldHeight() {
        return this.f6968c;
    }

    public float getWorldWidth() {
        return this.f6967b;
    }

    public Vector2 project(Vector2 vector2) {
        this.f6973h.set(vector2.f5527x, vector2.f5528y, 1.0f);
        this.f6966a.project(this.f6973h, this.f6969d, this.f6970e, this.f6971f, this.f6972g);
        Vector3 vector3 = this.f6973h;
        vector2.set(vector3.f5533x, vector3.f5534y);
        return vector2;
    }

    public void setCamera(Camera camera) {
        this.f6966a = camera;
    }

    public void setScreenHeight(int i) {
        this.f6972g = i;
    }

    public void setScreenWidth(int i) {
        this.f6971f = i;
    }

    public void setScreenX(int i) {
        this.f6969d = i;
    }

    public void setScreenY(int i) {
        this.f6970e = i;
    }

    public void setWorldHeight(float f) {
        this.f6968c = f;
    }

    public void setWorldWidth(float f) {
        this.f6967b = f;
    }

    public Vector2 unproject(Vector2 vector2) {
        this.f6973h.set(vector2.f5527x, vector2.f5528y, 1.0f);
        this.f6966a.unproject(this.f6973h, this.f6969d, this.f6970e, this.f6971f, this.f6972g);
        Vector3 vector3 = this.f6973h;
        vector2.set(vector3.f5533x, vector3.f5534y);
        return vector2;
    }

    public final void update(int i, int i2) {
        update(i, i2, false);
    }

    public void apply(boolean z) {
        HdpiUtils.glViewport(this.f6969d, this.f6970e, this.f6971f, this.f6972g);
        Camera camera = this.f6966a;
        float f = this.f6967b;
        camera.viewportWidth = f;
        float f2 = this.f6968c;
        camera.viewportHeight = f2;
        if (z) {
            camera.position.set(f / 2.0f, f2 / 2.0f, 0.0f);
        }
        this.f6966a.update();
    }

    public void setScreenBounds(int i, int i2, int i3, int i4) {
        this.f6969d = i;
        this.f6970e = i2;
        this.f6971f = i3;
        this.f6972g = i4;
    }

    public void setScreenPosition(int i, int i2) {
        this.f6969d = i;
        this.f6970e = i2;
    }

    public void setScreenSize(int i, int i2) {
        this.f6971f = i;
        this.f6972g = i2;
    }

    public void setWorldSize(float f, float f2) {
        this.f6967b = f;
        this.f6968c = f2;
    }

    public Vector2 toScreenCoordinates(Vector2 vector2, Matrix4 matrix4) {
        this.f6973h.set(vector2.f5527x, vector2.f5528y, 0.0f);
        this.f6973h.mul(matrix4);
        this.f6966a.project(this.f6973h, this.f6969d, this.f6970e, this.f6971f, this.f6972g);
        Vector3 vector3 = this.f6973h;
        Vector3 vector32 = this.f6973h;
        vector3.f5534y = Gdx.graphics.getHeight() - vector32.f5534y;
        vector2.f5527x = vector32.f5533x;
        vector2.f5528y = vector32.f5534y;
        return vector2;
    }

    public void update(int i, int i2, boolean z) {
        apply(z);
    }

    public Vector3 project(Vector3 vector3) {
        this.f6966a.project(vector3, this.f6969d, this.f6970e, this.f6971f, this.f6972g);
        return vector3;
    }

    public Vector3 unproject(Vector3 vector3) {
        this.f6966a.unproject(vector3, this.f6969d, this.f6970e, this.f6971f, this.f6972g);
        return vector3;
    }
}
