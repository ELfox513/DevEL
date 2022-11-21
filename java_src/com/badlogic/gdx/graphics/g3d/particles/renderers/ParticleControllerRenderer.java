package com.badlogic.gdx.graphics.g3d.particles.renderers;

import com.badlogic.gdx.graphics.g3d.particles.ParticleController;
import com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent;
import com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch;
import com.badlogic.gdx.graphics.g3d.particles.renderers.ParticleControllerRenderData;
/* loaded from: classes.dex */
public abstract class ParticleControllerRenderer<D extends ParticleControllerRenderData, T extends ParticleBatch<D>> extends ParticleControllerComponent {

    /* renamed from: w */
    public T f4690w;

    /* renamed from: x */
    public D f4691x;

    public ParticleControllerRenderer() {
    }

    public abstract boolean isCompatible(ParticleBatch<?> particleBatch);

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void update() {
        this.f4690w.draw(this.f4691x);
    }

    public ParticleControllerRenderer(D d) {
        this.f4691x = d;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void set(ParticleController particleController) {
        super.set(particleController);
        D d = this.f4691x;
        if (d != null) {
            d.controller = this.f4525a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean setBatch(ParticleBatch<?> particleBatch) {
        if (isCompatible(particleBatch)) {
            this.f4690w = particleBatch;
            return true;
        }
        return false;
    }
}
