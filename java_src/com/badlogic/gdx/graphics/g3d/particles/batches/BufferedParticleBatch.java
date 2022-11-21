package com.badlogic.gdx.graphics.g3d.particles.batches;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.g3d.particles.ParticleSorter;
import com.badlogic.gdx.graphics.g3d.particles.renderers.ParticleControllerRenderData;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public abstract class BufferedParticleBatch<T extends ParticleControllerRenderData> implements ParticleBatch<T> {

    /* renamed from: a */
    public Array<T> f4598a;

    /* renamed from: b */
    public int f4599b;

    /* renamed from: d */
    public int f4600d = 0;

    /* renamed from: k */
    public ParticleSorter f4601k = new ParticleSorter.Distance();

    /* renamed from: p */
    public Camera f4602p;

    /* renamed from: a */
    public abstract void mo24101a(int[] iArr);

    public abstract void allocParticlesData(int i);

    public int getBufferedCount() {
        return this.f4599b;
    }

    public ParticleSorter getSorter() {
        return this.f4601k;
    }

    public void resetCapacity() {
        this.f4599b = 0;
        this.f4600d = 0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch
    public void begin() {
        this.f4598a.clear();
        this.f4599b = 0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch
    public void draw(T t) {
        if (t.controller.particles.size > 0) {
            this.f4598a.add(t);
            this.f4599b += t.controller.particles.size;
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch
    public void end() {
        int i = this.f4599b;
        if (i > 0) {
            ensureCapacity(i);
            mo24101a(this.f4601k.sort(this.f4598a));
        }
    }

    public void ensureCapacity(int i) {
        if (this.f4600d >= i) {
            return;
        }
        this.f4601k.ensureCapacity(i);
        allocParticlesData(i);
        this.f4600d = i;
    }

    public void setCamera(Camera camera) {
        this.f4602p = camera;
        this.f4601k.setCamera(camera);
    }

    public void setSorter(ParticleSorter particleSorter) {
        this.f4601k = particleSorter;
        particleSorter.setCamera(this.f4602p);
        particleSorter.ensureCapacity(this.f4600d);
    }

    public BufferedParticleBatch(Class<T> cls) {
        this.f4598a = new Array<>(false, 10, cls);
    }
}
