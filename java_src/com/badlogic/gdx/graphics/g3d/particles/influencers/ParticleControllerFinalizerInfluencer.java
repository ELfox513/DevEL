package com.badlogic.gdx.graphics.g3d.particles.influencers;

import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ParticleController;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class ParticleControllerFinalizerInfluencer extends Influencer {

    /* renamed from: A */
    public boolean f4665A;

    /* renamed from: B */
    public boolean f4666B;

    /* renamed from: w */
    public ParallelArray.FloatChannel f4667w;

    /* renamed from: x */
    public ParallelArray.FloatChannel f4668x;

    /* renamed from: y */
    public ParallelArray.FloatChannel f4669y;

    /* renamed from: z */
    public ParallelArray.ObjectChannel<ParticleController> f4670z;

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        this.f4667w = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Position);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public ParticleControllerFinalizerInfluencer copy() {
        return new ParticleControllerFinalizerInfluencer();
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void init() {
        boolean z;
        ParallelArray.ObjectChannel<ParticleController> objectChannel = (ParallelArray.ObjectChannel) this.f4525a.particles.getChannel(ParticleChannels.ParticleController);
        this.f4670z = objectChannel;
        if (objectChannel != null) {
            this.f4668x = (ParallelArray.FloatChannel) this.f4525a.particles.getChannel(ParticleChannels.Scale);
            ParallelArray.FloatChannel floatChannel = (ParallelArray.FloatChannel) this.f4525a.particles.getChannel(ParticleChannels.Rotation3D);
            this.f4669y = floatChannel;
            boolean z2 = true;
            if (this.f4668x != null) {
                z = true;
            } else {
                z = false;
            }
            this.f4665A = z;
            if (floatChannel == null) {
                z2 = false;
            }
            this.f4666B = z2;
            return;
        }
        throw new GdxRuntimeException("ParticleController channel not found, specify an influencer which will allocate it please.");
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
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
            ParticleController particleController = this.f4670z.data[i2];
            if (this.f4665A) {
                f = this.f4668x.data[i2];
            } else {
                f = 1.0f;
            }
            if (this.f4666B) {
                ParallelArray.FloatChannel floatChannel = this.f4669y;
                int i4 = floatChannel.strideSize * i2;
                float[] fArr = floatChannel.data;
                float f6 = fArr[i4 + 0];
                float f7 = fArr[i4 + 1];
                float f8 = fArr[i4 + 2];
                f5 = fArr[i4 + 3];
                f3 = f7;
                f4 = f8;
                f2 = f6;
            } else {
                f2 = 0.0f;
                f3 = 0.0f;
                f4 = 0.0f;
                f5 = 1.0f;
            }
            float[] fArr2 = this.f4667w.data;
            particleController.setTransform(fArr2[i3 + 0], fArr2[i3 + 1], fArr2[i3 + 2], f2, f3, f4, f5, f);
            particleController.update();
            i2++;
            i3 += this.f4667w.strideSize;
        }
    }
}
