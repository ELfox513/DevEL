package com.badlogic.gdx.graphics.g3d.particles.renderers;

import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent;
import com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch;
import com.badlogic.gdx.graphics.g3d.particles.batches.PointSpriteParticleBatch;
/* loaded from: classes.dex */
public class PointSpriteRenderer extends ParticleControllerRenderer<PointSpriteControllerRenderData, PointSpriteParticleBatch> {
    public PointSpriteRenderer() {
        super(new PointSpriteControllerRenderData());
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public ParticleControllerComponent copy() {
        return new PointSpriteRenderer((PointSpriteParticleBatch) this.f4690w);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.renderers.ParticleControllerRenderer
    public boolean isCompatible(ParticleBatch<?> particleBatch) {
        return particleBatch instanceof PointSpriteParticleBatch;
    }

    public PointSpriteRenderer(PointSpriteParticleBatch pointSpriteParticleBatch) {
        this();
        setBatch(pointSpriteParticleBatch);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        ((PointSpriteControllerRenderData) this.f4691x).positionChannel = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Position);
        ((PointSpriteControllerRenderData) this.f4691x).regionChannel = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.TextureRegion, ParticleChannels.TextureRegionInitializer.get());
        ((PointSpriteControllerRenderData) this.f4691x).colorChannel = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Color, ParticleChannels.ColorInitializer.get());
        ((PointSpriteControllerRenderData) this.f4691x).scaleChannel = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Scale, ParticleChannels.ScaleInitializer.get());
        ((PointSpriteControllerRenderData) this.f4691x).rotationChannel = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Rotation2D, ParticleChannels.Rotation2dInitializer.get());
    }
}
