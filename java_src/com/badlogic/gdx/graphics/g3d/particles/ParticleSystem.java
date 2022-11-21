package com.badlogic.gdx.graphics.g3d.particles;

import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.RenderableProvider;
import com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public final class ParticleSystem implements RenderableProvider {

    /* renamed from: d */
    public static ParticleSystem f4554d;

    /* renamed from: a */
    public Array<ParticleBatch<?>> f4555a = new Array<>();

    /* renamed from: b */
    public Array<ParticleEffect> f4556b = new Array<>();

    public void add(ParticleBatch<?> particleBatch) {
        this.f4555a.add(particleBatch);
    }

    public Array<ParticleBatch<?>> getBatches() {
        return this.f4555a;
    }

    public void remove(ParticleEffect particleEffect) {
        this.f4556b.removeValue(particleEffect, true);
    }

    public void removeAll() {
        this.f4556b.clear();
    }

    public void update() {
        Array.ArrayIterator<ParticleEffect> it = this.f4556b.iterator();
        while (it.hasNext()) {
            it.next().update();
        }
    }

    public void updateAndDraw() {
        Array.ArrayIterator<ParticleEffect> it = this.f4556b.iterator();
        while (it.hasNext()) {
            ParticleEffect next = it.next();
            next.update();
            next.draw();
        }
    }

    @Deprecated
    public static ParticleSystem get() {
        if (f4554d == null) {
            f4554d = new ParticleSystem();
        }
        return f4554d;
    }

    public void add(ParticleEffect particleEffect) {
        this.f4556b.add(particleEffect);
    }

    public void begin() {
        Array.ArrayIterator<ParticleBatch<?>> it = this.f4555a.iterator();
        while (it.hasNext()) {
            it.next().begin();
        }
    }

    public void draw() {
        Array.ArrayIterator<ParticleEffect> it = this.f4556b.iterator();
        while (it.hasNext()) {
            it.next().draw();
        }
    }

    public void end() {
        Array.ArrayIterator<ParticleBatch<?>> it = this.f4555a.iterator();
        while (it.hasNext()) {
            it.next().end();
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.RenderableProvider
    public void getRenderables(Array<Renderable> array, Pool<Renderable> pool) {
        Array.ArrayIterator<ParticleBatch<?>> it = this.f4555a.iterator();
        while (it.hasNext()) {
            it.next().getRenderables(array, pool);
        }
    }

    public void update(float f) {
        Array.ArrayIterator<ParticleEffect> it = this.f4556b.iterator();
        while (it.hasNext()) {
            it.next().update(f);
        }
    }

    public void updateAndDraw(float f) {
        Array.ArrayIterator<ParticleEffect> it = this.f4556b.iterator();
        while (it.hasNext()) {
            ParticleEffect next = it.next();
            next.update(f);
            next.draw();
        }
    }
}
