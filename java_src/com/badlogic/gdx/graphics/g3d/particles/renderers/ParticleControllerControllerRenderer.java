package com.badlogic.gdx.graphics.g3d.particles.renderers;

import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ParticleController;
import com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent;
import com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class ParticleControllerControllerRenderer extends ParticleControllerRenderer {

    /* renamed from: y */
    public ParallelArray.ObjectChannel<ParticleController> f4689y;

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public ParticleControllerComponent copy() {
        return new ParticleControllerControllerRenderer();
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.renderers.ParticleControllerRenderer
    public boolean isCompatible(ParticleBatch particleBatch) {
        return false;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void init() {
        ParallelArray.ObjectChannel<ParticleController> objectChannel = (ParallelArray.ObjectChannel) this.f4525a.particles.getChannel(ParticleChannels.ParticleController);
        this.f4689y = objectChannel;
        if (objectChannel != null) {
            return;
        }
        throw new GdxRuntimeException("ParticleController channel not found, specify an influencer which will allocate it please.");
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.renderers.ParticleControllerRenderer, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void update() {
        int i = this.f4525a.particles.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f4689y.data[i2].draw();
        }
    }
}
