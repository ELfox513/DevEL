package com.badlogic.gdx.graphics.g3d.particles;

import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes.dex */
public class ParticleEffect implements Disposable, ResourceData.Configurable {

    /* renamed from: a */
    public Array<ParticleController> f4526a;

    /* renamed from: b */
    public BoundingBox f4527b;

    public ParticleEffect() {
        this.f4526a = new Array<>(true, 3, ParticleController.class);
    }

    public ParticleEffect copy() {
        return new ParticleEffect(this);
    }

    public Array<ParticleController> getControllers() {
        return this.f4526a;
    }

    public void rotate(Quaternion quaternion) {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).rotate(quaternion);
        }
    }

    public void scale(float f, float f2, float f3) {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).scale(f, f2, f3);
        }
    }

    public void update() {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).update();
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).dispose();
        }
    }

    public void draw() {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).draw();
        }
    }

    public void end() {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).end();
        }
    }

    public ParticleController findController(String str) {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            ParticleController particleController = this.f4526a.get(i2);
            if (particleController.name.equals(str)) {
                return particleController;
            }
        }
        return null;
    }

    public BoundingBox getBoundingBox() {
        if (this.f4527b == null) {
            this.f4527b = new BoundingBox();
        }
        BoundingBox boundingBox = this.f4527b;
        boundingBox.inf();
        Array.ArrayIterator<ParticleController> it = this.f4526a.iterator();
        while (it.hasNext()) {
            boundingBox.ext(it.next().getBoundingBox());
        }
        return boundingBox;
    }

    public void init() {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).init();
        }
    }

    public boolean isComplete() {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (!this.f4526a.get(i2).isComplete()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void load(AssetManager assetManager, ResourceData resourceData) {
        Array.ArrayIterator<ParticleController> it = this.f4526a.iterator();
        while (it.hasNext()) {
            it.next().load(assetManager, resourceData);
        }
    }

    public void reset() {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).reset();
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void save(AssetManager assetManager, ResourceData resourceData) {
        Array.ArrayIterator<ParticleController> it = this.f4526a.iterator();
        while (it.hasNext()) {
            it.next().save(assetManager, resourceData);
        }
    }

    public void setBatch(Array<ParticleBatch<?>> array) {
        Array.ArrayIterator<ParticleController> it = this.f4526a.iterator();
        while (it.hasNext()) {
            ParticleController next = it.next();
            Array.ArrayIterator<ParticleBatch<?>> it2 = array.iterator();
            while (it2.hasNext()) {
                if (next.renderer.setBatch(it2.next())) {
                    break;
                }
            }
        }
    }

    public void setTransform(Matrix4 matrix4) {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).setTransform(matrix4);
        }
    }

    public void start() {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).start();
        }
    }

    public void translate(Vector3 vector3) {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).translate(vector3);
        }
    }

    public ParticleEffect(ParticleEffect particleEffect) {
        this.f4526a = new Array<>(true, particleEffect.f4526a.size);
        int i = particleEffect.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.add(particleEffect.f4526a.get(i2).copy());
        }
    }

    public void rotate(Vector3 vector3, float f) {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).rotate(vector3, f);
        }
    }

    public void scale(Vector3 vector3) {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).scale(vector3.f5533x, vector3.f5534y, vector3.f5535z);
        }
    }

    public void update(float f) {
        int i = this.f4526a.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4526a.get(i2).update(f);
        }
    }

    public ParticleEffect(ParticleController... particleControllerArr) {
        this.f4526a = new Array<>(particleControllerArr);
    }
}
