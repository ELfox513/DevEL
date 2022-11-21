package com.badlogic.gdx.graphics.g3d.particles.renderers;

import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent;
import com.badlogic.gdx.graphics.g3d.particles.batches.BillboardParticleBatch;
import com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch;
/* loaded from: classes.dex */
public class BillboardRenderer extends ParticleControllerRenderer<BillboardControllerRenderData, BillboardParticleBatch> {
    public BillboardRenderer() {
        super(new BillboardControllerRenderData());
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public ParticleControllerComponent copy() {
        return new BillboardRenderer((BillboardParticleBatch) this.f4690w);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.renderers.ParticleControllerRenderer
    public boolean isCompatible(ParticleBatch<?> particleBatch) {
        return particleBatch instanceof BillboardParticleBatch;
    }

    public BillboardRenderer(BillboardParticleBatch billboardParticleBatch) {
        this();
        setBatch(billboardParticleBatch);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        ((BillboardControllerRenderData) this.f4691x).positionChannel = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Position);
        ((BillboardControllerRenderData) this.f4691x).regionChannel = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.TextureRegion, ParticleChannels.TextureRegionInitializer.get());
        ((BillboardControllerRenderData) this.f4691x).colorChannel = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Color, ParticleChannels.ColorInitializer.get());
        ((BillboardControllerRenderData) this.f4691x).scaleChannel = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Scale, ParticleChannels.ScaleInitializer.get());
        ((BillboardControllerRenderData) this.f4691x).rotationChannel = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Rotation2D, ParticleChannels.Rotation2dInitializer.get());
    }
}
