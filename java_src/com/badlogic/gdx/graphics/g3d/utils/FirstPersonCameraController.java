package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.IntIntMap;
/* loaded from: classes.dex */
public class FirstPersonCameraController extends InputAdapter {

    /* renamed from: a */
    public final Camera f4844a;

    /* renamed from: b */
    public final IntIntMap f4845b = new IntIntMap();
    public int strafeLeftKey = 29;
    public int strafeRightKey = 32;
    public int forwardKey = 51;
    public int backwardKey = 47;
    public int upKey = 45;
    public int downKey = 33;
    public boolean autoUpdate = true;

    /* renamed from: d */
    public float f4846d = 5.0f;

    /* renamed from: k */
    public float f4847k = 0.5f;

    /* renamed from: p */
    public final Vector3 f4848p = new Vector3();

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean keyDown(int i) {
        this.f4845b.put(i, i);
        return true;
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean keyUp(int i) {
        this.f4845b.remove(i, 0);
        return true;
    }

    public void setDegreesPerPixel(float f) {
        this.f4847k = f;
    }

    public void setVelocity(float f) {
        this.f4846d = f;
    }

    public void update() {
        update(Gdx.graphics.getDeltaTime());
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean touchDragged(int i, int i2, int i3) {
        float f = (-Gdx.input.getDeltaX()) * this.f4847k;
        float f2 = (-Gdx.input.getDeltaY()) * this.f4847k;
        Camera camera = this.f4844a;
        camera.direction.rotate(camera.f3888up, f);
        this.f4848p.set(this.f4844a.direction).crs(this.f4844a.f3888up).nor();
        this.f4844a.direction.rotate(this.f4848p, f2);
        return true;
    }

    public void update(float f) {
        if (this.f4845b.containsKey(this.forwardKey)) {
            this.f4848p.set(this.f4844a.direction).nor().scl(this.f4846d * f);
            this.f4844a.position.add(this.f4848p);
        }
        if (this.f4845b.containsKey(this.backwardKey)) {
            this.f4848p.set(this.f4844a.direction).nor().scl((-f) * this.f4846d);
            this.f4844a.position.add(this.f4848p);
        }
        if (this.f4845b.containsKey(this.strafeLeftKey)) {
            this.f4848p.set(this.f4844a.direction).crs(this.f4844a.f3888up).nor().scl((-f) * this.f4846d);
            this.f4844a.position.add(this.f4848p);
        }
        if (this.f4845b.containsKey(this.strafeRightKey)) {
            this.f4848p.set(this.f4844a.direction).crs(this.f4844a.f3888up).nor().scl(this.f4846d * f);
            this.f4844a.position.add(this.f4848p);
        }
        if (this.f4845b.containsKey(this.upKey)) {
            this.f4848p.set(this.f4844a.f3888up).nor().scl(this.f4846d * f);
            this.f4844a.position.add(this.f4848p);
        }
        if (this.f4845b.containsKey(this.downKey)) {
            this.f4848p.set(this.f4844a.f3888up).nor().scl((-f) * this.f4846d);
            this.f4844a.position.add(this.f4848p);
        }
        if (this.autoUpdate) {
            this.f4844a.update(true);
        }
    }

    public FirstPersonCameraController(Camera camera) {
        this.f4844a = camera;
    }
}
