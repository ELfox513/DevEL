package com.badlogic.gdx.graphics.g3d.particles.renderers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g3d.ModelInstance;
import com.badlogic.gdx.graphics.g3d.attributes.BlendingAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.ColorAttribute;
import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent;
import com.badlogic.gdx.graphics.g3d.particles.batches.ModelInstanceParticleBatch;
import com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch;
/* loaded from: classes.dex */
public class ModelInstanceRenderer extends ParticleControllerRenderer<ModelInstanceControllerRenderData, ModelInstanceParticleBatch> {

    /* renamed from: A */
    public boolean f4686A;

    /* renamed from: y */
    public boolean f4687y;

    /* renamed from: z */
    public boolean f4688z;

    public ModelInstanceRenderer() {
        super(new ModelInstanceControllerRenderData());
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        ((ModelInstanceControllerRenderData) this.f4691x).positionChannel = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Position);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public ParticleControllerComponent copy() {
        return new ModelInstanceRenderer((ModelInstanceParticleBatch) this.f4690w);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.renderers.ParticleControllerRenderer
    public boolean isCompatible(ParticleBatch<?> particleBatch) {
        return particleBatch instanceof ModelInstanceParticleBatch;
    }

    public ModelInstanceRenderer(ModelInstanceParticleBatch modelInstanceParticleBatch) {
        this();
        setBatch(modelInstanceParticleBatch);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void init() {
        boolean z;
        boolean z2;
        ((ModelInstanceControllerRenderData) this.f4691x).modelInstanceChannel = (ParallelArray.ObjectChannel) this.f4525a.particles.getChannel(ParticleChannels.ModelInstance);
        ((ModelInstanceControllerRenderData) this.f4691x).colorChannel = (ParallelArray.FloatChannel) this.f4525a.particles.getChannel(ParticleChannels.Color);
        ((ModelInstanceControllerRenderData) this.f4691x).scaleChannel = (ParallelArray.FloatChannel) this.f4525a.particles.getChannel(ParticleChannels.Scale);
        ((ModelInstanceControllerRenderData) this.f4691x).rotationChannel = (ParallelArray.FloatChannel) this.f4525a.particles.getChannel(ParticleChannels.Rotation3D);
        D d = this.f4691x;
        boolean z3 = true;
        if (((ModelInstanceControllerRenderData) d).colorChannel != null) {
            z = true;
        } else {
            z = false;
        }
        this.f4687y = z;
        if (((ModelInstanceControllerRenderData) d).scaleChannel != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f4688z = z2;
        if (((ModelInstanceControllerRenderData) d).rotationChannel == null) {
            z3 = false;
        }
        this.f4686A = z3;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.renderers.ParticleControllerRenderer, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void update() {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        int i = this.f4525a.particles.size;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            D d = this.f4691x;
            ModelInstance modelInstance = ((ModelInstanceControllerRenderData) d).modelInstanceChannel.data[i2];
            if (this.f4688z) {
                f = ((ModelInstanceControllerRenderData) d).scaleChannel.data[i2];
            } else {
                f = 1.0f;
            }
            if (this.f4686A) {
                int i4 = ((ModelInstanceControllerRenderData) d).rotationChannel.strideSize * i2;
                float f6 = ((ModelInstanceControllerRenderData) d).rotationChannel.data[i4 + 0];
                float f7 = ((ModelInstanceControllerRenderData) d).rotationChannel.data[i4 + 1];
                float f8 = ((ModelInstanceControllerRenderData) d).rotationChannel.data[i4 + 2];
                f5 = ((ModelInstanceControllerRenderData) d).rotationChannel.data[i4 + 3];
                f2 = f6;
                f3 = f7;
                f4 = f8;
            } else {
                f2 = 0.0f;
                f3 = 0.0f;
                f4 = 0.0f;
                f5 = 1.0f;
            }
            modelInstance.transform.set(((ModelInstanceControllerRenderData) d).positionChannel.data[i3 + 0], ((ModelInstanceControllerRenderData) d).positionChannel.data[i3 + 1], ((ModelInstanceControllerRenderData) d).positionChannel.data[i3 + 2], f2, f3, f4, f5, f, f, f);
            if (this.f4687y) {
                int i5 = ((ModelInstanceControllerRenderData) this.f4691x).colorChannel.strideSize * i2;
                BlendingAttribute blendingAttribute = (BlendingAttribute) modelInstance.materials.get(0).get(BlendingAttribute.Type);
                Color color = ((ColorAttribute) modelInstance.materials.get(0).get(ColorAttribute.Diffuse)).color;
                D d2 = this.f4691x;
                color.f3892r = ((ModelInstanceControllerRenderData) d2).colorChannel.data[i5 + 0];
                color.f3891g = ((ModelInstanceControllerRenderData) d2).colorChannel.data[i5 + 1];
                color.f3890b = ((ModelInstanceControllerRenderData) d2).colorChannel.data[i5 + 2];
                if (blendingAttribute != null) {
                    blendingAttribute.opacity = ((ModelInstanceControllerRenderData) d2).colorChannel.data[i5 + 3];
                }
            }
            i2++;
            i3 += ((ModelInstanceControllerRenderData) this.f4691x).positionChannel.strideSize;
        }
        super.update();
    }
}
